{ pkgs ? import <nixpkgs> { }, ... }:
let inherit (pkgs) lib stdenv;
in rec {
  addFrontMatterToMarkdown = { src, outputName, frontMatter, }:
    let srcText = lib.readFile src;
    in pkgs.writeText outputName ''
      ---
      ${frontMatter}
      ---
      ${srcText}
    '';

  RmdRenderScript = { src, outputFile, outputDir ? null, frontMatter ? ""
    , outputFormat ? "html_document()", runtime ? "static", }:
    let
      srcWithFrontMatter = addFrontMatterToMarkdown {
        inherit frontMatter src;
        outputName = "doc.Rmd";
      };
    in pkgs.writeScript "render.R" ''
      library(rmarkdown)
      render(
        "${srcWithFrontMatter}",
        ${outputFormat},
        "${outputFile}",
        ${if outputDir == null then "getwd()" else ''"${outputDir}"''},
        runtime = "${runtime}",
      )
    '';

  renderRmd = { name, src, outputFile, format ? "html_document()"
    , scriptOpts ? { }, frontMatter ? "", }:
    stdenv.mkDerivation rec {
      inherit name src;
      dontUnpack = true;
      # sourceRoot = ".";
      nativeBuildInputs = with pkgs; [ pandoc R rPackages.rmarkdown ];
      buildPhase = ''
        Rscript $renderScript
      '';

      installPhase = ''
        find -not -name env-vars -type f -exec mv {} $out \;
      '';

      renderScript =
        RmdRenderScript ({ inherit src frontMatter outputFile; } // scriptOpts);
    };

  convert = { basename, src, frontMatter ? "", format ? ''"html_document"''
    , scriptOpts ? { }, }: rec {
      html = renderRmd {
        inherit format scriptOpts src;
        name = "${basename}.html";
        outputFile = "${basename}.html";
        frontMatter = ''
          ${frontMatter}
          output:
            html_document:
              mathjax: null
        '';
      };
      pdf = stdenv.mkDerivation {
        name = "${basename}.pdf";
        dontUnpack = true;
        nativeBuildInputs = with pkgs; [ wkhtmltopdf ];
        buildPhase = ''
          wkhtmltopdf \
            --page-size Letter \
            --minimum-font-size 18 \
            ${html} $out
        '';
        dontInstall = true;
      };
    };

}

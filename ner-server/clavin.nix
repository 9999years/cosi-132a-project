{ fetchMaven }:

let

  _backport-util-concurrent_backport-util-concurrent_3_1_pom = fetchMaven {
    groupId = "backport-util-concurrent";
    artifactId = "backport-util-concurrent";
    version = "3.1";
    type = "pom";
    sha512 =
      "79c356a1580431344b5a9ebda8bb09a97b0696d6b2dd4dbdeee1fc7d2e01073ca0783e29289f30955ac77fa935c9b4403f5bae5f2e06dd5acaf65e038b1110d1";
  };
  _ch_qos_logback_logback-classic_1_1_2_jar = fetchMaven {
    groupId = "ch.qos.logback";
    artifactId = "logback-classic";
    version = "1.1.2";
    type = "jar";
    sha512 =
      "609428551860b4b7dbdcd38634e69bb1366db3e550754576be4297263134dd773164ab61226a334ccb0a108aade02bb1ad15e7124eb5d4e7bdb3b5571b4d9deb";
  };
  _ch_qos_logback_logback-classic_1_1_2_pom = fetchMaven {
    groupId = "ch.qos.logback";
    artifactId = "logback-classic";
    version = "1.1.2";
    type = "pom";
    sha512 =
      "aa5612447e7afefa1b6a5d1eaf92eefc880d495d247b86aac415c8604c80a65a7c33b89fa299ac2419530e4ed81a8ae9d9c81f951380a01b4dbe61660495bd54";
  };
  _ch_qos_logback_logback-core_1_1_2_jar = fetchMaven {
    groupId = "ch.qos.logback";
    artifactId = "logback-core";
    version = "1.1.2";
    type = "jar";
    sha512 =
      "371db1e4ce9219c0213f646d736a488dc1335b0f51273c94213d83964ae9ee8c3e7c63775462c4556cc3c6f27179a6a5dd8323747efba71553587e4e5efd3fe9";
  };
  _ch_qos_logback_logback-core_1_1_2_pom = fetchMaven {
    groupId = "ch.qos.logback";
    artifactId = "logback-core";
    version = "1.1.2";
    type = "pom";
    sha512 =
      "51a091c044e03a8a62f5fd70e04ad3911a8b882992412b4d47a0afb5ef78ff9a970c1366d57ef975dd9c818eb256cdac8caf45fa35633ffc860d6f7ce6fff0c5";
  };
  _ch_qos_logback_logback-parent_1_1_2_pom = fetchMaven {
    groupId = "ch.qos.logback";
    artifactId = "logback-parent";
    version = "1.1.2";
    type = "pom";
    sha512 =
      "56ae46c1fae171821ff867b027a9ac0107413e0bc9bf0fc59a8dd409d100c69e02f390aa8451d59b2782ce5ddf441dfe7e6bd6a7608087758fe83ae32cb667cc";
  };
  _classworlds_classworlds_1_1-alpha-2_pom = fetchMaven {
    groupId = "classworlds";
    artifactId = "classworlds";
    version = "1.1-alpha-2";
    type = "pom";
    sha512 =
      "ac34d6a49e9ec336e129780fa1e03eefdbeb7b764f3c5a703058c9ed7b051168f4ec5c3a68cf03b8337df268a7d494dbdb57fd87bfce2fe7f140261b41837504";
  };
  _classworlds_classworlds_1_1_jar = fetchMaven {
    groupId = "classworlds";
    artifactId = "classworlds";
    version = "1.1";
    type = "jar";
    sha512 =
      "5d1c94fa87cfcd116539b49828656d5ba43c4eb342ccaab149cf891c95bc598b427d7210a43f3f0e9c788cd2b1f281b94b9c159d7c6a239d56c7df82f06ca459";
  };
  _classworlds_classworlds_1_1_pom = fetchMaven {
    groupId = "classworlds";
    artifactId = "classworlds";
    version = "1.1";
    type = "pom";
    sha512 =
      "782a98d55fb3f056aab4615b217c33a96a3aa5d099bebf9a405e260e4f9f1352e8a923adb2cdcf4eb47b7ccbaef7a0886ecc7a0bcf6555b1e0123c1de9ba2f80";
  };
  _com_google_code_findbugs_jsr305_2_0_1_jar = fetchMaven {
    groupId = "com.google.code.findbugs";
    artifactId = "jsr305";
    version = "2.0.1";
    type = "jar";
    sha512 =
      "b3b832489ef9249b22d8a0b9d6eee1895c9d93ef53d5968724a65184cb3f04e17cc74938128b98916da7829c6566be0bc6d60fa8801248cc24620730a060eac6";
  };
  _com_google_code_findbugs_jsr305_2_0_1_pom = fetchMaven {
    groupId = "com.google.code.findbugs";
    artifactId = "jsr305";
    version = "2.0.1";
    type = "pom";
    sha512 =
      "dc41e0f43b5858caa6bc7f3990af965cd1929bc7a9cd90c117ef5015ab47c3032e598f27623b2821b2f5051d0ecf327be55dc850828f37513ce2ab4dcdd4ada2";
  };
  _com_google_collections_google-collections_1_0_jar = fetchMaven {
    groupId = "com.google.collections";
    artifactId = "google-collections";
    version = "1.0";
    type = "jar";
    sha512 =
      "5741bcdf5c2d54daa53a60972d61d0fb3acb68a31ab4a913832de71c47b4abd59b85e760a335d7efde55d4e309824839b09f9224a43c124bd54c634a87a9b7f7";
  };
  _com_google_collections_google-collections_1_0_pom = fetchMaven {
    groupId = "com.google.collections";
    artifactId = "google-collections";
    version = "1.0";
    type = "pom";
    sha512 =
      "f7c03961cb0efdb06aacddc7c6a6e3f74ebe65aa7bbf7e1400d2c3ce334911582eedc7e5848b3bb0a37365244e9973bb716672a00e3fc590815e397dac20d4d1";
  };
  _com_google_google_1_pom = fetchMaven {
    groupId = "com.google";
    artifactId = "google";
    version = "1";
    type = "pom";
    sha512 =
      "60c4b6cb58cc7451e5f6f38162047adfb5be071bd28bf571e593c882cbe94eb838c14bd698d2f4b2d61baaac4e0d3194d5089072187a63b213b89b89f448c885";
  };
  _com_google_guava_guava_14_0_1_jar = fetchMaven {
    groupId = "com.google.guava";
    artifactId = "guava";
    version = "14.0.1";
    type = "jar";
    sha512 =
      "e920540dbdee79fba1a5e0966ae92ac37358aa4126c04a08732e4260916807901d8dea41322037ef7908fc0204281d05a1bfa95401fcfc473630c0bc8e81343a";
  };
  _com_google_guava_guava_14_0_1_pom = fetchMaven {
    groupId = "com.google.guava";
    artifactId = "guava";
    version = "14.0.1";
    type = "pom";
    sha512 =
      "ee64f978381783a94d5bc7c6d15e9725c5549ac24e28ded015cea7da514f27f265d0eb691b528c94557f5ec22765c5c8c62179d62cdf629632b582f4bcf9b4d6";
  };
  _com_google_guava_guava-parent_14_0_1_pom = fetchMaven {
    groupId = "com.google.guava";
    artifactId = "guava-parent";
    version = "14.0.1";
    type = "pom";
    sha512 =
      "a571c2c780c7a3e90499eea07a702ea928dc1ef9943848f836709d5e4295d7433500d7424bbeff7b75d0d70da5127d24604768a16c8aead9088f7de2eb249c81";
  };
  _com_google_protobuf_protobuf-java_2_4_1_jar = fetchMaven {
    groupId = "com.google.protobuf";
    artifactId = "protobuf-java";
    version = "2.4.1";
    type = "jar";
    sha512 =
      "44199d6e2ef27c4434e3c22f33508ac1ad154911933331aed9b2ffffaeafe755b6a43c03367dd95953a8bae43ade12ca5e6e817b432bfc130d51bbdc18611e9a";
  };
  _com_google_protobuf_protobuf-java_2_4_1_pom = fetchMaven {
    groupId = "com.google.protobuf";
    artifactId = "protobuf-java";
    version = "2.4.1";
    type = "pom";
    sha512 =
      "e89cff283bf6e5377a4ec1cac7dd53a98a14afd9d3e1ee3fa834ef206c6c492cdb33a2bf166d75c1c86a213d922fb31295e52ae594ad083559cc8b1a2e2723d7";
  };
  _com_intellij_annotations_9_0_4_jar = fetchMaven {
    groupId = "com.intellij";
    artifactId = "annotations";
    version = "9.0.4";
    type = "jar";
    sha512 =
      "7d111ec55783f631fd81617f6436b7c84fca4e943c6bc44faadfa8168573fc4735e6484110b593ddb7c67f4198b575b996999b3ba48206ac0338c4f6d816e901";
  };
  _com_intellij_annotations_9_0_4_pom = fetchMaven {
    groupId = "com.intellij";
    artifactId = "annotations";
    version = "9.0.4";
    type = "pom";
    sha512 =
      "ca8d11d0a5bc5853d46eff2cf95114803782547cfe4efd843f9288479ea635c8d35c3c5320b1c6e2f04e8ce7fcd27c10dd3939ed760ff696324dac405ee758cf";
  };
  _commons-beanutils_commons-beanutils-core_1_8_3_jar = fetchMaven {
    groupId = "commons-beanutils";
    artifactId = "commons-beanutils-core";
    version = "1.8.3";
    type = "jar";
    sha512 =
      "25e8b092002dc3aa4f371b06698f57b08c89b7efbd5f2a27221b4cf4baf02b6cd268f3bf8a73f5bb383f0232b43a92fa664aae65fec844228ec381a43e8deb92";
  };
  _commons-beanutils_commons-beanutils-core_1_8_3_pom = fetchMaven {
    groupId = "commons-beanutils";
    artifactId = "commons-beanutils-core";
    version = "1.8.3";
    type = "pom";
    sha512 =
      "81a059dc2fad6aea626fbfd5a6404f507c4f3087aae5f487164d78b9629d75f504a789914d468365406a61ea150dc1c927cb141c52ca0504aaeb3aa4b52bccb2";
  };
  _commons-cli_commons-cli_1_0_jar = fetchMaven {
    groupId = "commons-cli";
    artifactId = "commons-cli";
    version = "1.0";
    type = "jar";
    sha512 =
      "ce0dfd6ad89fcc2cd68190067fe2efff917d81dd6410b608057295efdbc5244b623c7e10000d913eff5e0c8cbf156b56a11377313dbfad8c333b9bfaeeaeb63c";
  };
  _commons-cli_commons-cli_1_0_pom = fetchMaven {
    groupId = "commons-cli";
    artifactId = "commons-cli";
    version = "1.0";
    type = "pom";
    sha512 =
      "7753c96b4599504bb444cf44839f825e718dd4193af74a828341dc5a7b560d497a341466969c5dd23f1be62f87c84a9574e431088e3594f7b1a5e22e49ad526f";
  };
  _commons-cli_commons-cli_1_2_jar = fetchMaven {
    groupId = "commons-cli";
    artifactId = "commons-cli";
    version = "1.2";
    type = "jar";
    sha512 =
      "0b8f4610d3a05a589026b1af605cf976f73e6fecb9b9cce9f572e5883ce0a78e8a9cfe48e06257bb68cb8eea080ffe84a2b0b73682036f85dbbb3c03cfdedfaa";
  };
  _commons-cli_commons-cli_1_2_pom = fetchMaven {
    groupId = "commons-cli";
    artifactId = "commons-cli";
    version = "1.2";
    type = "pom";
    sha512 =
      "e7f68aa205c895c72b2c30329e3e8eff4ed16bb9a21a4d8a8e830c995f53de7928c4e6f982e6d5bf162b72f4f64048584807ddc4f5cd0f57d68037c0335b99e9";
  };
  _commons-codec_commons-codec_1_6_jar = fetchMaven {
    groupId = "commons-codec";
    artifactId = "commons-codec";
    version = "1.6";
    type = "jar";
    sha512 =
      "752fca09371e0e228432155533a9b84f0442cafd7f25ebf0c6c2024d541fbba80882e71aee047ec94cd22c0d8114942e967652913412f5cbcf9b816c0e1fc1ad";
  };
  _commons-codec_commons-codec_1_6_pom = fetchMaven {
    groupId = "commons-codec";
    artifactId = "commons-codec";
    version = "1.6";
    type = "pom";
    sha512 =
      "2f106c180a44bf63b7a6d4aa5606b75ae9fdda56fa350a30ecda8931d031227162a2be7e3296f8e0b29147d2cc8aeb878b9635f8780d77812f5379c682367c87";
  };
  _commons-io_commons-io_2_4_jar = fetchMaven {
    groupId = "commons-io";
    artifactId = "commons-io";
    version = "2.4";
    type = "jar";
    sha512 =
      "957a438894a196e534af9ae1e61fb21e16f273952b55a81abb8faf0b139fc031ea940cf477f81704db417d1ce6ff2d9ddd4a2cbf316903b0e2dc1aeaef24f292";
  };
  _commons-io_commons-io_2_4_pom = fetchMaven {
    groupId = "commons-io";
    artifactId = "commons-io";
    version = "2.4";
    type = "pom";
    sha512 =
      "ffa0cf20ea6a6a3e60387c08006864e8b13d6ad02c8b33920d7d420cf2b8db483ad32b0d8c26ca31ebce5a83b05e41b8feb2f9c8753d12d422a503823e1c39bf";
  };
  _commons-lang_commons-lang_2_3_jar = fetchMaven {
    groupId = "commons-lang";
    artifactId = "commons-lang";
    version = "2.3";
    type = "jar";
    sha512 =
      "9363af7ad6ab1add7aed7547a790d7ddfdd1dc72266accec61b4ff69b5708204d689d55a45b328fa68a7961943b28d4328818116ffa9fbca8b9a46db3e5f305c";
  };
  _commons-lang_commons-lang_2_3_pom = fetchMaven {
    groupId = "commons-lang";
    artifactId = "commons-lang";
    version = "2.3";
    type = "pom";
    sha512 =
      "368dd416396b8896ce19e4819b00a7063284b3d2c23d4b1dbbcba432dde33e124c0e214ae921541682c02ef513e6380ae99a01869c748b0abc08f07363759222";
  };
  _commons-lang_commons-lang_2_6_jar = fetchMaven {
    groupId = "commons-lang";
    artifactId = "commons-lang";
    version = "2.6";
    type = "jar";
    sha512 =
      "4a5a3dbe4941c645e2cca068cca5c1882cfe988b02e7cd981d1e51784900767d1deab0e0e0566f559c9fcabb4a180e436d5bb948902d4f4106f37360466afb42";
  };
  _commons-lang_commons-lang_2_6_pom = fetchMaven {
    groupId = "commons-lang";
    artifactId = "commons-lang";
    version = "2.6";
    type = "pom";
    sha512 =
      "01ea576bd45aca8848ac34e59b1bbfa136f7cebf9e1525f3f020d64697aa3370662e71aa29ee0f8b994bbeaf2c4c6c99b91ea097f14c810fac041757ab5c3f96";
  };
  _commons-logging_commons-logging-api_1_1_jar = fetchMaven {
    groupId = "commons-logging";
    artifactId = "commons-logging-api";
    version = "1.1";
    type = "jar";
    sha512 =
      "b82197427492c33c602c3c3c363eefb71c509cf2102f4f21daa7f6d5c33f52da1cff66f5d7db98810c49fd96ab29523fe19a13b274a7c40dd9141587debe66c2";
  };
  _commons-logging_commons-logging-api_1_1_pom = fetchMaven {
    groupId = "commons-logging";
    artifactId = "commons-logging-api";
    version = "1.1";
    type = "pom";
    sha512 =
      "64249b29a4b8c1357f13e2a54adff3836cdd7a4d841ed5186db9d65972a16a49ee017791aa8a79a697b8be5f8dd2dba563917b6e78fe35aad61eaaa108b471dd";
  };
  _com_sun_jersey_contribs_jersey-apache-client4_1_17_1_jar = fetchMaven {
    groupId = "com.sun.jersey.contribs";
    artifactId = "jersey-apache-client4";
    version = "1.17.1";
    type = "jar";
    sha512 =
      "a43cd3a3895e37bf430e06af2991f725e0eda0d38c50341a35ad87c399dd2c94dff71e72a950e2a0533a4589e8f5b32fb93bca0e923dc3ccb3fbae538235ff64";
  };
  _com_sun_jersey_contribs_jersey-apache-client4_1_17_1_pom = fetchMaven {
    groupId = "com.sun.jersey.contribs";
    artifactId = "jersey-apache-client4";
    version = "1.17.1";
    type = "pom";
    sha512 =
      "70a700b3c80f773da35b369ffa9ff9c7ffd72eb4da56c013a48c709f8dcc89f3ae2f5218ee72f8de99e672e3128eb97037d1b9a474d0c4fe739337f8479fda96";
  };
  _com_sun_jersey_contribs_jersey-contribs_1_17_1_pom = fetchMaven {
    groupId = "com.sun.jersey.contribs";
    artifactId = "jersey-contribs";
    version = "1.17.1";
    type = "pom";
    sha512 =
      "8f6de35ee101a5aa8fcdc2ac8def4a900da36fec9c3b3ef1f4df5477ef45edb50ab971ae0ab8634dcb063ec360d4c4e04ef7b8660fe0de088c561f8d4e13c72e";
  };
  _com_sun_jersey_jersey-client_1_17_1_jar = fetchMaven {
    groupId = "com.sun.jersey";
    artifactId = "jersey-client";
    version = "1.17.1";
    type = "jar";
    sha512 =
      "9d32e3fd53a76bc04a81ac36a3a580556758b8d49915952f01c1f47f9cf6261f85273798447fe974376b159663b58b2bf2a4f6263c52ec3c916cd91421dce6d0";
  };
  _com_sun_jersey_jersey-client_1_17_1_pom = fetchMaven {
    groupId = "com.sun.jersey";
    artifactId = "jersey-client";
    version = "1.17.1";
    type = "pom";
    sha512 =
      "f031029f0119dc174f91ccf8912e69a41153b44463189ef46ec0b3315cc75972a68acb2cbbca5af909ede34358215c974605d4039718e7691905917c9ee5d4f3";
  };
  _com_sun_jersey_jersey-core_1_17_1_jar = fetchMaven {
    groupId = "com.sun.jersey";
    artifactId = "jersey-core";
    version = "1.17.1";
    type = "jar";
    sha512 =
      "1c951a72dbec06fb0581b90b9c8ff87c3d71421f0ef114cbe2c09eb8ee93a61a19ae2e4b9ff3e257f30d2e6fcd114d41b4b1c9cbf0be0c639463583d548aaad0";
  };
  _com_sun_jersey_jersey-core_1_17_1_pom = fetchMaven {
    groupId = "com.sun.jersey";
    artifactId = "jersey-core";
    version = "1.17.1";
    type = "pom";
    sha512 =
      "f659ef7074a8ed7c823b0d13e04f44ee2815eadbfa1801398f0d23de5652d43ed223ec23b8487bcd1bb54f7694adb4816ddafd0bf00b2c40f4b5bbf1863e7443";
  };
  _com_sun_jersey_jersey-json_1_17_1_jar = fetchMaven {
    groupId = "com.sun.jersey";
    artifactId = "jersey-json";
    version = "1.17.1";
    type = "jar";
    sha512 =
      "ad0f5200bc92b6140f1bae74e94f93c70f3289e7bba9cc8aff510b8bb69fe375b9b5d7259473b0c230a0224fa056b408e5c324145e71752be6cc77f177e53cca";
  };
  _com_sun_jersey_jersey-json_1_17_1_pom = fetchMaven {
    groupId = "com.sun.jersey";
    artifactId = "jersey-json";
    version = "1.17.1";
    type = "pom";
    sha512 =
      "f273966c116c9b164f4e5c82092e26fde8b15d86755b771f841c20626eca60535b59846a9293c7448100ec1c5b42e0e1fff6a89838789918f5730da6c93e490f";
  };
  _com_sun_jersey_jersey-project_1_17_1_pom = fetchMaven {
    groupId = "com.sun.jersey";
    artifactId = "jersey-project";
    version = "1.17.1";
    type = "pom";
    sha512 =
      "61af48b9ce106868ea76c1eac8a758658238efc303725c4f25a76ecaca455e5a35782090ab6953e2c058271e76e57a4a7488a91fb9991de9ccf754b1773de2fe";
  };
  _com_sun_xml_bind_jaxb-impl_2_2_3-1_jar = fetchMaven {
    groupId = "com.sun.xml.bind";
    artifactId = "jaxb-impl";
    version = "2.2.3-1";
    type = "jar";
    sha512 =
      "6f08a9d34bd66ceb0e4cc6cdd782423a8a7ab775808e90b6c872977c653cd3e2c539a78554a5c8ef9402092ac4fdceac56b77e76b3c2d800d5ee97db0301a683";
  };
  _com_sun_xml_bind_jaxb-impl_2_2_3-1_pom = fetchMaven {
    groupId = "com.sun.xml.bind";
    artifactId = "jaxb-impl";
    version = "2.2.3-1";
    type = "pom";
    sha512 =
      "043cfd5e9caa609edd6c9a4115b6979f6c8f2b5627b36c2883a39f15aa3d783a5234a8e21e4e10586702fc0113590701b8edbf6c9c9ae6350e137961d2b50f69";
  };
  _com_thoughtworks_xstream_xstream_1_4_5_jar = fetchMaven {
    groupId = "com.thoughtworks.xstream";
    artifactId = "xstream";
    version = "1.4.5";
    type = "jar";
    sha512 =
      "1dd85d7eeef2b7820781fd96e45f64d09fe478f63f8f6e6ff08e6821f628bb232f718c428cbcfd4d37ef53841b014f8f75d2931870c32d492b726f7f8468937e";
  };
  _com_thoughtworks_xstream_xstream_1_4_5_pom = fetchMaven {
    groupId = "com.thoughtworks.xstream";
    artifactId = "xstream";
    version = "1.4.5";
    type = "pom";
    sha512 =
      "b96b2a12c3f965c6093b8969640ff78e4418d9a503cac9b04358ed0dc663795d96df7a6f0fe7a5d0c80ba2ec80329c67204b96a3e76607bb77162d724a98c88c";
  };
  _com_thoughtworks_xstream_xstream-parent_1_4_5_pom = fetchMaven {
    groupId = "com.thoughtworks.xstream";
    artifactId = "xstream-parent";
    version = "1.4.5";
    type = "pom";
    sha512 =
      "9e8e82e08af2c415045733a06bf08beef7249b6a469a93e02a449f26916d2787fe68355901ba4dc0c17c9c393a3193286ee9baa7f0417c3b069eacd5eb17b318";
  };
  _javax_inject_javax_inject_1_jar = fetchMaven {
    groupId = "javax.inject";
    artifactId = "javax.inject";
    version = "1";
    type = "jar";
    sha512 =
      "e126b7ccf3e42fd1984a0beef1004a7269a337c202e59e04e8e2af714280d2f2d8d2ba5e6f59481b8dcd34aaf35c966a688d0b48ec7e96f102c274dc0d3b381e";
  };
  _javax_inject_javax_inject_1_pom = fetchMaven {
    groupId = "javax.inject";
    artifactId = "javax.inject";
    version = "1";
    type = "pom";
    sha512 =
      "02f0c773ba24b74f45f6519c653cb118395f81389c7e73a034f82074a3e277f793d77783d794143236b05fc5247af5f69d9b2605d0929b742a5673a55e51f880";
  };
  _javax_validation_validation-api_1_1_0_Final_jar = fetchMaven {
    groupId = "javax.validation";
    artifactId = "validation-api";
    version = "1.1.0.Final";
    type = "jar";
    sha512 =
      "bc137c5f7fa6b7092f9fc233d8be7d21d6767f8aa51c2e934b73692c82d28dbb410f55674d7b5a0e1523b514654339277b535b7f5bb01d457a11aba2eca3bbed";
  };
  _javax_validation_validation-api_1_1_0_Final_pom = fetchMaven {
    groupId = "javax.validation";
    artifactId = "validation-api";
    version = "1.1.0.Final";
    type = "pom";
    sha512 =
      "3b1e69f5b7ab0161509bef87dc441bb263b9a97a835adafabc3b1feb33ef732bd2aeb3fa37314fd0ef67bd111144cc6cfc2f41091ac206aa98f0e6f3d220e05d";
  };
  _javax_ws_rs_jsr311-api_1_1_1_jar = fetchMaven {
    groupId = "javax.ws.rs";
    artifactId = "jsr311-api";
    version = "1.1.1";
    type = "jar";
    sha512 =
      "eede48ca4c30fe25160636cad27fc5732131543d67c59676282e4fd068e56c2e272171c9048dd6b5bc0b0c888bdbc3aa8f9c117c97e42d9309cf049d0bf894bb";
  };
  _javax_ws_rs_jsr311-api_1_1_1_pom = fetchMaven {
    groupId = "javax.ws.rs";
    artifactId = "jsr311-api";
    version = "1.1.1";
    type = "pom";
    sha512 =
      "01adead7f06f661027137e43d94f979bf217286c292d91a22d1bd08d4239d41f29c60362f227e6d1f92443fe7df2e74eae842ba09969b934e0cbe184485e6143";
  };
  _joda-time_joda-time_2_2_jar = fetchMaven {
    groupId = "joda-time";
    artifactId = "joda-time";
    version = "2.2";
    type = "jar";
    sha512 =
      "36b269548fd36e59b6888131f95b7cd7b9500f13f9475fc4e1018661641356675af5cb741796fe2fac3db3dad8c9c000f4e9be9d6f5583460ce01d5b7c236850";
  };
  _joda-time_joda-time_2_2_pom = fetchMaven {
    groupId = "joda-time";
    artifactId = "joda-time";
    version = "2.2";
    type = "pom";
    sha512 =
      "de841f5166b9ff75c7357ef8cafcf5b418f416f6a5e161529eb8f0920751f550ac598efc37a52739f55cee6ba5eeadbfac33a62f56177ab8371cc3fe4cbe2f1c";
  };
  _junit_junit_3_8_1_jar = fetchMaven {
    groupId = "junit";
    artifactId = "junit";
    version = "3.8.1";
    type = "jar";
    sha512 =
      "8e6f9fa5eb3ba93a8b1b5a39e01a81c142b33078264dbd0a2030d60dd26735407249a12e66f5cdcab8056e93a5687124fe66e741c233b4c7a06cc8e49f82e98b";
  };
  _junit_junit_3_8_1_pom = fetchMaven {
    groupId = "junit";
    artifactId = "junit";
    version = "3.8.1";
    type = "pom";
    sha512 =
      "d43bddd7228b108eab508871d64725a730f6f159b0cee0e25a62df61f5362dc4c3e7c3413b5562b22e20934b40b5d994c1b1f66fec0e1a340613913e05203396";
  };
  _junit_junit_3_8_2_jar = fetchMaven {
    groupId = "junit";
    artifactId = "junit";
    version = "3.8.2";
    type = "jar";
    sha512 =
      "29a3084a39cf3f78f766056fbe59d7a14d9e766ce53859260a9a6b5ae4c43223c13f18a688ca721545c98a183a3511ce5369ace8978758a7326a8c1120c0c8a4";
  };
  _junit_junit_3_8_2_pom = fetchMaven {
    groupId = "junit";
    artifactId = "junit";
    version = "3.8.2";
    type = "pom";
    sha512 =
      "b2d08c202b9313ecbfe139494d6bc0ac7ddb1d5e335308b8ac93e10b2d49e5bfd4ae8ea68fa7de375b35749cca924da651b90ce3cd44ea8450425ca0dcf96b03";
  };
  _junit_junit_4_11_jar = fetchMaven {
    groupId = "junit";
    artifactId = "junit";
    version = "4.11";
    type = "jar";
    sha512 =
      "a0de3a1d9924b8703736f27a0e02e243e9f50add113c8fb3477cd8d8e31505df1609755d79ba8f1e1f43c6b5201b409c116ad184978383da6613382727bedc6b";
  };
  _junit_junit_4_11_pom = fetchMaven {
    groupId = "junit";
    artifactId = "junit";
    version = "4.11";
    type = "pom";
    sha512 =
      "e6c7737b827b7148f72a2914a344e3d413bf63e15bdec8eacc38c10a351d06612473698803d30e310ec07243dbfb2273e16e5fcbf89afa7e7950cd8e6472550e";
  };
  _log4j_log4j_1_2_12_jar = fetchMaven {
    groupId = "log4j";
    artifactId = "log4j";
    version = "1.2.12";
    type = "jar";
    sha512 =
      "ea351773463e650804903bc8a936c6c4682035d9c10b8c44b5f9aa23a73a977a699054e0d7a1c9c3aa39f2f103fe67717189f73a821d17106ec2438903fcaa86";
  };
  _log4j_log4j_1_2_12_pom = fetchMaven {
    groupId = "log4j";
    artifactId = "log4j";
    version = "1.2.12";
    type = "pom";
    sha512 =
      "7dbd53b526997698f2936ed8570363af66900140ebaf0369003ff0bf6b80f9488369c062846948cd064defad9505f176d50bfe1ea560f7de524a41badc035e2c";
  };
  _net_java_jvnet-parent_1_pom = fetchMaven {
    groupId = "net.java";
    artifactId = "jvnet-parent";
    version = "1";
    type = "pom";
    sha512 =
      "22fb9b68f57380088955b5526bfc382da87332202bb4741def44af2ec340240d8d2ad1283ffcab0433175fe35ab5540a503aaf9a2e44aad1de005c8915bfabe8";
  };
  _net_sf_jwordnet_jwnl_1_3_3_jar = fetchMaven {
    groupId = "net.sf.jwordnet";
    artifactId = "jwnl";
    version = "1.3.3";
    type = "jar";
    sha512 =
      "ae0a932005a7ed72c653231989f5116c8956dc498081046bba87f627e6338d99fe1e0c5ac8e5b343b9543618efb0b7438e5dcd396c2c41fec23283a3c870f5e6";
  };
  _net_sf_jwordnet_jwnl_1_3_3_pom = fetchMaven {
    groupId = "net.sf.jwordnet";
    artifactId = "jwnl";
    version = "1.3.3";
    type = "pom";
    sha512 =
      "42e58da4b0ec590f34246f9926171ee9175312dbe59b8048436594b8864e52369454b9aa45f44fc175b03fca6e8f7f1f026d80220f96a424202ae3e906bdf7e0";
  };
  _org_apache_apache_10_pom = fetchMaven {
    groupId = "org.apache";
    artifactId = "apache";
    version = "10";
    type = "pom";
    sha512 =
      "d5ec11a0d102169abc3c86baa7c7c8b4e4d9052fb04d86272204f5dec194496e826d7b8a05232ffeabaa5d759f521f2938513d0fcb254d331f9c0b16cea85d27";
  };
  _org_apache_apache_11_pom = fetchMaven {
    groupId = "org.apache";
    artifactId = "apache";
    version = "11";
    type = "pom";
    sha512 =
      "4059f0f01dec786dfce4667b7680f8787679b28533e596a16113b18f8398bd941c3ba089588301ab03e1227631163f613e11dd0c66afbd63661bbb6af069b313";
  };
  _org_apache_apache_13_pom = fetchMaven {
    groupId = "org.apache";
    artifactId = "apache";
    version = "13";
    type = "pom";
    sha512 =
      "3b25f9f51a7ee9647fe2e1287e75a67ccdf3f08055bec20c6a60b290876afc691f16b23ab3df7b733695b828411b716a0b3509c22ec6fb0c5dce4f21811ae434";
  };
  _org_apache_apache_14_pom = fetchMaven {
    groupId = "org.apache";
    artifactId = "apache";
    version = "14";
    type = "pom";
    sha512 =
      "b19f082f40db042db699466158aa2155c1a752bc2f7dd239f982f54ab421c1749cc20deca63b3c7c8ce3aa10e1c87721a98f151c49283a2c9cf085b734cde211";
  };
  _org_apache_apache_3_pom = fetchMaven {
    groupId = "org.apache";
    artifactId = "apache";
    version = "3";
    type = "pom";
    sha512 =
      "2e07dc80988c9cc3ddef4d31dba266aa71f01f25e1e8bf541d3c538c8d7c9c19c7d3c8bcd2a7e19693da311d32911dd677fb4a44e48ceaae25d5ff91cc77bcf7";
  };
  _org_apache_apache_4_pom = fetchMaven {
    groupId = "org.apache";
    artifactId = "apache";
    version = "4";
    type = "pom";
    sha512 =
      "866f80b02dcfa294fbc77dee0c14e019f5b9fd0d7cdf893c2269e93b17b9b6ac49af76ad30952e87b55c8ea5896d812842ff2f05c69a1553b6eebe0a11a5b4fc";
  };
  _org_apache_apache_5_pom = fetchMaven {
    groupId = "org.apache";
    artifactId = "apache";
    version = "5";
    type = "pom";
    sha512 =
      "00be5bc59fa04ad4f9529cd273574df97571c5637d147b6f06566815e145328c3080c296abd18b64757c0d65fe83bba088ac6529ada9876a13402aaf862c4343";
  };
  _org_apache_apache_7_pom = fetchMaven {
    groupId = "org.apache";
    artifactId = "apache";
    version = "7";
    type = "pom";
    sha512 =
      "99a60915e419d1c05d2bcc98dcf61b53d0216e99c7306fb40279993a48664352c59600d6947fe06dce4f524a72c4502b45a146be0742f7fddd7a3d76b177bebd";
  };
  _org_apache_apache_9_pom = fetchMaven {
    groupId = "org.apache";
    artifactId = "apache";
    version = "9";
    type = "pom";
    sha512 =
      "e909813e0e718bcd76b53eefe9da1325dd1254cffb7f11ae5016b53df500da562b1c100a49c171cae87dac3a75b03610f4ffc39c14656c34e61fe93fb4a4a938";
  };
  _org_apache_commons_commons-lang3_3_1_jar = fetchMaven {
    groupId = "org.apache.commons";
    artifactId = "commons-lang3";
    version = "3.1";
    type = "jar";
    sha512 =
      "7173397dbe5af36d712e41c5cf0594b2b41a60eade154031c733511115be07b0bab388ae64515351846a423a5b8602c826fd4b1919cb5b8f672c3bb74a59c1e9";
  };
  _org_apache_commons_commons-lang3_3_1_pom = fetchMaven {
    groupId = "org.apache.commons";
    artifactId = "commons-lang3";
    version = "3.1";
    type = "pom";
    sha512 =
      "9c355831a44dded8a56f1f07dc45a159f173e75584420ada28ecb53d50d4fe8e7eb6b726d992d8e138e60424fa7e52f605ce05c5bdfe497a764d70b1b85eaf2b";
  };
  _org_apache_commons_commons-parent_11_pom = fetchMaven {
    groupId = "org.apache.commons";
    artifactId = "commons-parent";
    version = "11";
    type = "pom";
    sha512 =
      "5b8ed9b97b49eae2318dccf8ed011824b581604a8d0fb89dfd7c3cf4f1913ce4b39a83fbe551cbe7ab3aaab715a058bf79b261b94f8ec3ee8868b9b2154483d2";
  };
  _org_apache_commons_commons-parent_17_pom = fetchMaven {
    groupId = "org.apache.commons";
    artifactId = "commons-parent";
    version = "17";
    type = "pom";
    sha512 =
      "def9edc7f4bcecc148575deabfd3f2c65af35b44b483fb15c03812f831c564c61c93eef7d2fd204a956f2376d1b09cc7450a48bd0331b1c0bbe5bd90ae6e19c3";
  };
  _org_apache_commons_commons-parent_22_pom = fetchMaven {
    groupId = "org.apache.commons";
    artifactId = "commons-parent";
    version = "22";
    type = "pom";
    sha512 =
      "9313d17c9f58d70c3f063b93aa90939c21f72534a42992882f0fe40453b229974abbaedbc1338f7fede18f3f2f0df119100d2edcd1fd389cc45798e7f13c5475";
  };
  _org_apache_commons_commons-parent_25_pom = fetchMaven {
    groupId = "org.apache.commons";
    artifactId = "commons-parent";
    version = "25";
    type = "pom";
    sha512 =
      "216c232cfcd07d2b662f617b7a467b69c9ed1d58cd84f4f3affc4b1daaab5cee343465169f2439c575e69275f5b3b288f1dc324efbed0fb22bcc88ed21a2ecfe";
  };
  _org_apache_httpcomponents_httpclient_4_3_5_jar = fetchMaven {
    groupId = "org.apache.httpcomponents";
    artifactId = "httpclient";
    version = "4.3.5";
    type = "jar";
    sha512 =
      "751f19ac43a5569e023b07a4243d627cd7b6f033917bb28ef76910019651a134ea46924b42f52b03ea37c546df2ecfc8091cd4b63013aac34b0e909e8628b002";
  };
  _org_apache_httpcomponents_httpclient_4_3_5_pom = fetchMaven {
    groupId = "org.apache.httpcomponents";
    artifactId = "httpclient";
    version = "4.3.5";
    type = "pom";
    sha512 =
      "26043754cdd090304776da1a7c4d87785b0523ecfb9ad57757fbc8ac73b9ed17d4e1deefb705a097f8e28911473ca2f06d23fb14572716f14e6fac2ce19db1aa";
  };
  _org_apache_httpcomponents_httpcomponents-client_4_3_5_pom = fetchMaven {
    groupId = "org.apache.httpcomponents";
    artifactId = "httpcomponents-client";
    version = "4.3.5";
    type = "pom";
    sha512 =
      "b0ed753ed39cde7ff8751ff64e9bf86aaf1b0aeb9c998fda30d7d9a34fabbb928e704137ae625acb2d83317167d4fff916c9b749bcb412e39acb4674f399d5e4";
  };
  _org_apache_httpcomponents_httpcomponents-core_4_3_2_pom = fetchMaven {
    groupId = "org.apache.httpcomponents";
    artifactId = "httpcomponents-core";
    version = "4.3.2";
    type = "pom";
    sha512 =
      "7a38d978970c2ab53b4e4a3bcb15c41dd2ecec1526bbf2b48a71342a901c34b8698ef2d1d3bd6b13e56fa62c1f910cf3fdb8e3feac249a26bbaef54c8957d4a1";
  };
  _org_apache_httpcomponents_httpcore_4_3_2_jar = fetchMaven {
    groupId = "org.apache.httpcomponents";
    artifactId = "httpcore";
    version = "4.3.2";
    type = "jar";
    sha512 =
      "e2b26b256af812a6c142bf03c827adea145fb5f30084cd2acc7235b9ae8bee5f08afcdf975318f6ae8e1c2c1f6b7edf9426d61eb1812cc5debc24f7b1b92ee61";
  };
  _org_apache_httpcomponents_httpcore_4_3_2_pom = fetchMaven {
    groupId = "org.apache.httpcomponents";
    artifactId = "httpcore";
    version = "4.3.2";
    type = "pom";
    sha512 =
      "082be118b913e8344df2bc93f32f3011d59e26e143054c9a7353f8c07144abbd4186d1c461f3d840f304f52eec2badd21fc7a6fe36fa02f9eec35548ce492161";
  };
  _org_apache_httpcomponents_project_7_pom = fetchMaven {
    groupId = "org.apache.httpcomponents";
    artifactId = "project";
    version = "7";
    type = "pom";
    sha512 =
      "bbf658ad8f5fc0b54851147add99a134b944801e9579b17fec45486b36694a6bd007ae43bd9d4b5ea1d3a2778a8137a16d2226b7bdf65f0ccfda65d397858b6e";
  };
  _org_apache_lucene_lucene-analyzers-common_4_9_0_jar = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-analyzers-common";
    version = "4.9.0";
    type = "jar";
    sha512 =
      "be669f4b1307dd5dfd6208170cdc5c650b9c1ead937cd7f9eebff51ce98c3be19fb597fa787f0fc096e2f5bc454076ec208e17201ea32289833e9f52af7e0e0e";
  };
  _org_apache_lucene_lucene-analyzers-common_4_9_0_pom = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-analyzers-common";
    version = "4.9.0";
    type = "pom";
    sha512 =
      "8f6c19ba6588b856a1ff65eeb71696a47ae077f721ce5e95d07950791cf0dbe1fbaed120f8a7cc8d5a87caff450f5a3098e0a7f966a17edf865874ce22afff07";
  };
  _org_apache_lucene_lucene-core_4_9_0_jar = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-core";
    version = "4.9.0";
    type = "jar";
    sha512 =
      "ee703f05a894a5338a1686f853bc961864760c5577db0a0bd477947019c000ad260435bbe1811861368f682d0c6ff0509817adcb4d7453744960c240240d3736";
  };
  _org_apache_lucene_lucene-core_4_9_0_pom = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-core";
    version = "4.9.0";
    type = "pom";
    sha512 =
      "742432ab0717fae39098b78fba5f9bfdf7b01aef4a460290349919284833ce9ed122450f050011394f868d4b068d18cd6075179f56573a02a414e4042787d526";
  };
  _org_apache_lucene_lucene-parent_4_9_0_pom = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-parent";
    version = "4.9.0";
    type = "pom";
    sha512 =
      "200c05ba5e0666e5aed851e2d557a125ec230a763f56494bec46059fd7fc9c260fc141492130ef3173a0e9bfb9c8ab4d90755520edc0af1d1044bd0ea6bb6a14";
  };
  _org_apache_lucene_lucene-queries_4_9_0_jar = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-queries";
    version = "4.9.0";
    type = "jar";
    sha512 =
      "bd2173a3e47b88325e90c47ed523ea5100c10a02a3c81c46f7c2fcfc4eac76702a0e3c7a1a7587f395137380a2811d04a95b6cbc0f3ddd2e4fc5bebb4fde901f";
  };
  _org_apache_lucene_lucene-queries_4_9_0_pom = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-queries";
    version = "4.9.0";
    type = "pom";
    sha512 =
      "15b787d04da3ecf414f7ea55bfc9ee8580c119bce85aaabdce80207a87b12d8a9e3e5013fc82a3fb78f9012afcfba7993796c4f70a96ce70b0fd9a20a7f5c4a8";
  };
  _org_apache_lucene_lucene-queryparser_4_9_0_jar = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-queryparser";
    version = "4.9.0";
    type = "jar";
    sha512 =
      "a7cce0e4b3d23798c722463e4781b978625843f24e480c1fbdd86bfc30ae2300768f6714715aeb1b834a3f1a91b934e30f01f4c0d1ade675a1208fb6590d5682";
  };
  _org_apache_lucene_lucene-queryparser_4_9_0_pom = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-queryparser";
    version = "4.9.0";
    type = "pom";
    sha512 =
      "8a18eaf1fbab9fb40bc8f88542dadfc3e92887d241e76dd06c82e6c1a105d61556e847a85a97ab459254c733d71c64e086360049a9f95c73becbade06357ff62";
  };
  _org_apache_lucene_lucene-sandbox_4_9_0_jar = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-sandbox";
    version = "4.9.0";
    type = "jar";
    sha512 =
      "ac73654ada97e592cd96582cd3447809439c94ceed607fab473c3107b9ba2c849929a4abdc3d070c226c654562ba929eb9c5789d4a385845995829bd806dc49f";
  };
  _org_apache_lucene_lucene-sandbox_4_9_0_pom = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-sandbox";
    version = "4.9.0";
    type = "pom";
    sha512 =
      "87c70b6d8972fa6cebefed3f10c876aac9db7f85322f5da294067ca7f2d63d43cd03bef9fe01be111ba3bd37e3d1d133eacc364f0b29b0afbec600af9467c3ca";
  };
  _org_apache_lucene_lucene-solr-grandparent_4_9_0_pom = fetchMaven {
    groupId = "org.apache.lucene";
    artifactId = "lucene-solr-grandparent";
    version = "4.9.0";
    type = "pom";
    sha512 =
      "c8a432922507f2066784832ca64d5b5e7c61960de511ddb7f7929dedd7641ae0c0cfe38295ff5bdb64337ee971c73716343b5954302cfe686e531eec9d3db49c";
  };
  _org_apache_maven_doxia_doxia_1_0-alpha-10_pom = fetchMaven {
    groupId = "org.apache.maven.doxia";
    artifactId = "doxia";
    version = "1.0-alpha-10";
    type = "pom";
    sha512 =
      "3a58edf4a6151002a1d7abb880e7e6360647675dbfbfc2ea9e1e8b4950dbf1a63f2500f066aeaea5ee8b8bb2af84c50d6bf3675cf57937cc5762e56c9f85e4d7";
  };
  _org_apache_maven_doxia_doxia_1_0-alpha-7_pom = fetchMaven {
    groupId = "org.apache.maven.doxia";
    artifactId = "doxia";
    version = "1.0-alpha-7";
    type = "pom";
    sha512 =
      "afbbc3f5e161f84efe1c18e9d57952d1804b867302a69d44e363ab2197e508e7f097f36b5cae2c81de44c9e8bff218364fd96f082b7f4e30e4c340f4edd0f11c";
  };
  _org_apache_maven_doxia_doxia-sink-api_1_0-alpha-10_jar = fetchMaven {
    groupId = "org.apache.maven.doxia";
    artifactId = "doxia-sink-api";
    version = "1.0-alpha-10";
    type = "jar";
    sha512 =
      "92c204130634023ea9f707ba37c2e79b8c073d4e39bbba5b1696377a64082e0a5cf3788b0ace93c1986f06a29e81bb799fc2ccbadc0ec061ff8da7b449a4fb56";
  };
  _org_apache_maven_doxia_doxia-sink-api_1_0-alpha-10_pom = fetchMaven {
    groupId = "org.apache.maven.doxia";
    artifactId = "doxia-sink-api";
    version = "1.0-alpha-10";
    type = "pom";
    sha512 =
      "29ba22c650f3e0ca249789b33e7170fbcaed246ecd7ab52ff1c931eb19f7b6ee379ca60e04bdedc763241954187e3fd46e49accaf6a351d1783d2aea19a064c3";
  };
  _org_apache_maven_doxia_doxia-sink-api_1_0-alpha-7_jar = fetchMaven {
    groupId = "org.apache.maven.doxia";
    artifactId = "doxia-sink-api";
    version = "1.0-alpha-7";
    type = "jar";
    sha512 =
      "6a14f07dc9f5cb3aedb024a8c4fed5bbc3be6437dcabfab96ca8027b2bdd6eea60c1c548d8da43940b1fff85f045ce5b94aa70409984592eea8d11f5fed82d30";
  };
  _org_apache_maven_doxia_doxia-sink-api_1_0-alpha-7_pom = fetchMaven {
    groupId = "org.apache.maven.doxia";
    artifactId = "doxia-sink-api";
    version = "1.0-alpha-7";
    type = "pom";
    sha512 =
      "5961284941bd84f2ca6ce2bec126e202922f7ccbb3b7ebf25ba476069b4358a67e2ba1e5a61ff62458abd6e0dd07f49e7d59d558a51f4bc16b8f1bf51f84b3e8";
  };
  _org_apache_maven_enforcer_enforcer_1_0_pom = fetchMaven {
    groupId = "org.apache.maven.enforcer";
    artifactId = "enforcer";
    version = "1.0";
    type = "pom";
    sha512 =
      "8d75be9ebcc167afec19355ecff0c2d25cdd22bcab79b723625d80697f4bd721e59ef0987c3c745c1fd78acacf53a9ade0c968e96eec831aa75bea44844400f6";
  };
  _org_apache_maven_enforcer_enforcer-api_1_0_jar = fetchMaven {
    groupId = "org.apache.maven.enforcer";
    artifactId = "enforcer-api";
    version = "1.0";
    type = "jar";
    sha512 =
      "0ebe58abb420ba70e41d4f78fd1032bdb79b75f23b4ef344cc9ef771652a692d67d2cbafe484f32bddad5fae4f191a008b8beac410f7b36ddb381192c70c62f7";
  };
  _org_apache_maven_enforcer_enforcer-api_1_0_pom = fetchMaven {
    groupId = "org.apache.maven.enforcer";
    artifactId = "enforcer-api";
    version = "1.0";
    type = "pom";
    sha512 =
      "b61f30f45caaad690ab7130c9ef90431505d956c8565e747518b676eee4ed0f52296e2e6243ea5a3d66281f8c085024c472eb1c4f83ea60cf71a8c873d41bd1b";
  };
  _org_apache_maven_enforcer_enforcer-rules_1_0_jar = fetchMaven {
    groupId = "org.apache.maven.enforcer";
    artifactId = "enforcer-rules";
    version = "1.0";
    type = "jar";
    sha512 =
      "6825cf0ba5f41d20370c17e147d420439ee47b51b590979c34fb04f4dc46ee66f731309cb8bb8b034bb9c89ca1bd4c7e5212f9ed124305abb3515e4d74fe42e8";
  };
  _org_apache_maven_enforcer_enforcer-rules_1_0_pom = fetchMaven {
    groupId = "org.apache.maven.enforcer";
    artifactId = "enforcer-rules";
    version = "1.0";
    type = "pom";
    sha512 =
      "29b28c944555a41c09de15af223fc14bc721b05f2c5a32f9f017bc7a355e9ae25d8bcaa3ab0242407126d4a6852c4305f4493962f6fb98dfc899d4df8414a13c";
  };
  _org_apache_maven_maven_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "5ca2fe1ca32282957c5ae2c25d749b75ef5e20be6c1d8e6765823199fa35208e09af82a60cd2e39fb82a9b481595d29e75210ad14d5a34587f5158cb6c5f54a6";
  };
  _org_apache_maven_maven_2_0_8_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven";
    version = "2.0.8";
    type = "pom";
    sha512 =
      "5a4f2a4e1ddf6e87e12860f9a49711630404423111908029420884fa748c49cffeb6114c54830ca367016e26340b101982e0dde039e476afed6ed5da402dfa2b";
  };
  _org_apache_maven_maven_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "80d305768810385fed2cf2ac3043c1ba06b8e38e25c66b9f18ca080d97cc7cbffb712ad2c296d05c20f998bfcd4e47040eff1cf16f8f12a852b1c15b1d3b3e96";
  };
  _org_apache_maven_maven_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "3a878ecf9a7f43bc26ec8ff0e442ac325679b86a22b5a68fdfef000e2b4dc045504238f2a670ff25d7998b342c63ed271148f39a33b67c89ef36d659b920d756";
  };
  _org_apache_maven_maven_3_0_4_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven";
    version = "3.0.4";
    type = "pom";
    sha512 =
      "23eed2331bfd2eea599a6b261bfad5bd1dc493d362c7a315ad89d725a52c7b4972ed61201fd46eac9b693d71588aed6c021911fd2b6f807a572fb8bf47dcd19f";
  };
  _org_apache_maven_maven-artifact_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-artifact";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "8e2cd76ad58d4abe1ab3d8df543bc488d4ee1c3be7f937e5a4acafd4f2e4f9538f0fac72c451667f1b9b6c26724ffab899c80ce4c915bd2a191bcb1c6e963de7";
  };
  _org_apache_maven_maven-artifact_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-artifact";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "bc14956a8f2d146b91b8125b0a286a425ba147d35969571e40ec5be03389ee632605a86cd7edb04334c6d73b0429849883f1c4ab59e0ae34592995bbacbb3dcf";
  };
  _org_apache_maven_maven-artifact_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-artifact";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "2aceb9ed335fb4f54e7f33dc849778d23c75c63069ab53b4609641df8511e01921960df6b4a8a8606bdec4324149cc5ccfb6a9f7f2ebe633ab9dd70f7584f44e";
  };
  _org_apache_maven_maven-artifact_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-artifact";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "bb4f431e9eb8795621e89e296c0f13528ccb63f31b537fa4f383e3efc9278e1defa5a158a92fac584a618b4fec7fa1cae0a468e1a3d2072b28e5fb87112f061e";
  };
  _org_apache_maven_maven-artifact_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-artifact";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "841afdfe60bd02ff789ba0d80c081f60b7c47ddb7cc609f7cd960fbe1f29a4139ab3487af837638ecb145bba5bc013484a142bfc331831dc38961a63ab4d9812";
  };
  _org_apache_maven_maven-artifact-manager_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-artifact-manager";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "760f1ffcdffe0616bd340cf35d80cf75ae8afe11f1969932c68b816e97b1f2bcb0a6bf3feae5f741bd953d2775a37c6847fafa04846e1fcda7e194822a8a4b55";
  };
  _org_apache_maven_maven-artifact-manager_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-artifact-manager";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "ee8e9c86d18e80b4a226689f291077c3c4ed8ffaa20a946fd36fe542e129aef3575c6e6f6ad4fc8e00eeb692e1a0bea905ff954c720a91544d75ca63f721b9ef";
  };
  _org_apache_maven_maven-artifact-manager_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-artifact-manager";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "17b87452fd3ed903dc102fecf39546c3805747b8efab41e6c805e7b8ed099d0b4ea158b0913fe632bfb135ae106738c06a89d6f55c17dd58dcd4ad554db8be77";
  };
  _org_apache_maven_maven-artifact-manager_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-artifact-manager";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "e882aa285d304100022914276ee9034f7b80e1e2ead281b63f42dcceee42aa130178b3260b0cc44f2f0ca78efff6c02ad06b0f53b6cb5d429325b3d22f9c71b6";
  };
  _org_apache_maven_maven-artifact-manager_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-artifact-manager";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "df70ebf32c4f7c643be7e65b29d8538b61e4f564a0a73d0239cf6c35ecceadd89986141424c0780180458e5fc1ce4a1e80cac6d71968089ee0228e8d86309f05";
  };
  _org_apache_maven_maven-core_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-core";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "87fc426563e73dc27f88c414372d5c55742fcc69628f40942ea2a8ae51bbbd23e0a0ef19f64d213b2a21d046db9e5a7618a8ecd7d3e027d5c527d28b70639195";
  };
  _org_apache_maven_maven-core_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-core";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "54c9345fc6927ed582c6edb377cab363f723ce1ef7628dd3925ebf7864371cff939716a3a7ee4ab53131f6ca3d245cc53ed3ee3f9c2ac920a871d45dc8174db0";
  };
  _org_apache_maven_maven-core_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-core";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "22e616c0db2e631945881bdb7e5a062c414bd898ad26fbcdbdc7d3321443de84529942c98511ba8ef58abbc98f661ac721b0722620c13fa61d49e001da4e7031";
  };
  _org_apache_maven_maven-core_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-core";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "8126a2c559194390743aa71b253f2c98d3e4f3c22cc8f106d7c05a7e015558649768ad1f2ad21362d6a5fea4a04ef6dc5bae6b8262a04aed4a0476018de11354";
  };
  _org_apache_maven_maven-core_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-core";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "c26da02d273aa00e3acfa764821b0ed910406df9eb6e18fd231d940f23e8cabfc9b2eccf308901d98ca5ca33383e25e9b906876478a079462105fcf9f01178f3";
  };
  _org_apache_maven_maven-error-diagnostics_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-error-diagnostics";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "5b5c3f2fe7f492ce090ce8dfd486be8c605f4f09e5dd49e2a980b3c65f748ca0449349bde4a70f547e4bb0fe311ea484eb0963e4e6927515071c3d0cf1d17fb3";
  };
  _org_apache_maven_maven-error-diagnostics_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-error-diagnostics";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "efb6575f84a7aea2e7552b3cb52b1c070bddc7bc811a2fd8828177fb9ad2d00aff93af6ff47a9285dcaca4147a901a748d12b0b31050983ee8ead71f5c978cf2";
  };
  _org_apache_maven_maven-error-diagnostics_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-error-diagnostics";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "b515e1859b6a0e4d1a0bd78b81ffe341b26f7c00ade1f61e62e7099a277c943d7fa9341682e980799de9f77cfa238f9abb5283775cea299532a75ed062e7f6d9";
  };
  _org_apache_maven_maven-error-diagnostics_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-error-diagnostics";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "efd48f2da619643bbec50a317e276fcd2b592166a2ed2c77d05861bfcff85d9e3100500e72d6a5403312951406f4babb8b61ca326498734d59b7a3d6e05d06e8";
  };
  _org_apache_maven_maven-error-diagnostics_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-error-diagnostics";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "9590fa77bb73d6ba5f06511f4b7815f9dc0be92ab9898a486f79b3494c94fab1283cff695e0471c4ad589047f5a52bab157a820ad1abdeab7b395e698a840ed3";
  };
  _org_apache_maven_maven-model_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-model";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "db0e51bc16d168f9106cce278f1de525266127b7d211a36f67de60e5a2210be66051d76c67912d3cc01286af61e2a9047b6ede45c92970ab37f9c3b9e47e4736";
  };
  _org_apache_maven_maven-model_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-model";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "756cfb02104e0199eb4614d1dc9cb58f3e49493ebaba2be922b7c0ddb7f1e65a2d42dd0f60c977d146efee8dc76a52aa0006b1af8ce0c4cf9251800866cc5572";
  };
  _org_apache_maven_maven-model_2_0_8_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-model";
    version = "2.0.8";
    type = "pom";
    sha512 =
      "ceb1753f0166f9c462254d22bb7aba9993928b138f80b0338edb903b7c41006b04fa63d6b02ef49e7ab50b1b25f3bef6932fe7d921347f741be4e4628df55494";
  };
  _org_apache_maven_maven-model_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-model";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "7f5c2ca92f838b11cffbb1379792936c9fd30e20b43f00d3b5a26b955951be3a52c111a91d850d6ac0b6b914be2eed2e19fd5f59108ad391a60e448dacbd7e49";
  };
  _org_apache_maven_maven-model_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-model";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "29df89cbebec4c96406df03ff9499ccd681ececadece5a48739c4a6f54513780bb49383ecb87f51e3ba1ff387c87b4096f772c37414b8ea428fe0076902bbfb7";
  };
  _org_apache_maven_maven-model_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-model";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "762252cb757bf2c4048c2e33db74aa2771bd295c9298ee9c57d9ecd1dfa29433bd243ff022e495c70cec923b3a1f19b30570f7d506dffd67dbb778e2b1cf1a43";
  };
  _org_apache_maven_maven-model_3_0_4_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-model";
    version = "3.0.4";
    type = "jar";
    sha512 =
      "a3399ba350c3028a3c2137abc6e9235877187cbaa69cd170749e783a947b89567fc06537bfffe1321651a11a92c33f4854705d8aeda183e1141bd41c7e2cf41d";
  };
  _org_apache_maven_maven-model_3_0_4_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-model";
    version = "3.0.4";
    type = "pom";
    sha512 =
      "d9c04974ec6a5083503a8cb23b4d44ad752405e3e879064721e9d836dbef5458d79f0e29770e80b2c285094858e8432be5266f5b0ea6e304933406b729a3de6f";
  };
  _org_apache_maven_maven-monitor_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-monitor";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "1f5aed12cfef3980bfbb6a14d70a3d8e411fbe6da6dfc3c7d1eb968ff60d548a63aa7e106ea8571e906e68c423fcdf4405ad2a8d8f29f241c4bd60c32923aef5";
  };
  _org_apache_maven_maven-monitor_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-monitor";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "997a582145ac5a74144291921d103113a4afe572d85c5eade49993ed1f2b4ddd7bc761ccc69bae2941dbead64260489f87f4d4a5ea97357cd09af51ab9b0ddb8";
  };
  _org_apache_maven_maven-monitor_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-monitor";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "c3f2f2a67d93e0f012a86b4c635aaf7ebda4543b7c1b839028f7eb34f1f0c7fbc44610e48d622e0ece34e5347233b8a08db7547088e50c1e99bff470d05ddd99";
  };
  _org_apache_maven_maven-monitor_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-monitor";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "ac53f1b48367e283bcaa3f96c8e4d5c8bb1de16b3b4fe71e118304c66e590801606642016e6a0bd336271b630b0b0707a10f8757822b4fa4cceafa9e5fe69520";
  };
  _org_apache_maven_maven-monitor_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-monitor";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "b215891c15bf50679d5f09b05ddd78af72efcb051ca498aa72b12062612642e2191aec76a52267bc95f93bcd6641e91fb166b9141a6ebd1af98bf28c711b886f";
  };
  _org_apache_maven_maven-parent_11_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-parent";
    version = "11";
    type = "pom";
    sha512 =
      "0ecfcbf843a5dc73c8b8925312465659ed462acb3bd575e5a0e2fc53053803fba2ee0df36af1b7abdbc1a141f2d8166c9f6bf4c8c5dc99394e95a8060b8b4f83";
  };
  _org_apache_maven_maven-parent_17_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-parent";
    version = "17";
    type = "pom";
    sha512 =
      "62e2e9d81a40819db69a6410cbd50cc5fd8c8728e454ddd056c9d9b77ade628afaf72f8c73d70220d5b405fc1ac2ee614efe8770b9c32db4a930ac09b01a0e21";
  };
  _org_apache_maven_maven-parent_21_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-parent";
    version = "21";
    type = "pom";
    sha512 =
      "4097da858a695220aebcbe60c28d7b8026275c87e386805603b553c2f190cd46d02a8086561769f044e56149aef6e4c207dd19f69745683dea04eb943814789b";
  };
  _org_apache_maven_maven-parent_22_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-parent";
    version = "22";
    type = "pom";
    sha512 =
      "0865d28a8e48cbd0f88a9a57bb0c3700d4a7144aa0f0b7fe1b6d5af052faa8fb1ab6274f52be57847889ac32aa36a8f7ee19ff52f144a8731760d5b5b1ec2e42";
  };
  _org_apache_maven_maven-parent_23_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-parent";
    version = "23";
    type = "pom";
    sha512 =
      "c837de8e6446a6d183bb71f8cda95812a2fe3b74ad3253e57ff863ddfd8de82cb97d23107002b49adbe40a8dcb805e8e1cbb32bf3e05916a60559c1e11376fd8";
  };
  _org_apache_maven_maven-parent_24_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-parent";
    version = "24";
    type = "pom";
    sha512 =
      "87ee02171e32874c9aa4ca538dd94a3ffcbdee162a77df0a134f304cb59dd35927c834338ec067b9b9ba7faefb8fdc2cf3f17f2a6e9e9aa896dd47e9d88c1d38";
  };
  _org_apache_maven_maven-parent_5_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-parent";
    version = "5";
    type = "pom";
    sha512 =
      "a06bf970f4bec3b938e4f5e705ab44258d39125afdfa5115c6eb3289c9897d7787799d5ff0164fcaaa4bbb7a26858dd6466a9ce2a70d13ee7295648cbf401050";
  };
  _org_apache_maven_maven-parent_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-parent";
    version = "6";
    type = "pom";
    sha512 =
      "b815343a58a2e16d5a924216b0b946e5e56f3471bdd65518776c85af9a752245bf494bc7a802da9b9562fe59b320c3853b8363f957835bb712d37d3968cf9cbe";
  };
  _org_apache_maven_maven-parent_8_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-parent";
    version = "8";
    type = "pom";
    sha512 =
      "f7aa0fb1507555995a23dae77423df3ea04385ad1cd89719f79d678b4df3de5083d495bc8617674ff31d235e23adfd91d0e805713b2ccd7e16cc773dd63e56c2";
  };
  _org_apache_maven_maven-plugin-api_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-api";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "00b0933957082f995cf3e8d235ada7c4139db2148d9dfa9ee26d4dba2d5b87a7b1e7e6e24f52b09ebefe822535e1ba2943192f955d39d2bdd3bece1fdc83e5c8";
  };
  _org_apache_maven_maven-plugin-api_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-api";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "14675e96f92befdce8a573fda5b7c0c8785a1485bd2d3d8a4bcd8378636ea66248f283ae07866e1100e4753aa561d5b26637584a05d36f148c924a1bae4623d2";
  };
  _org_apache_maven_maven-plugin-api_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-api";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "3849f8f5554533fd10f89f71e1079607d8c3c832b83b27ee1f84ca39a09d8b6e8378e46815a54abf1b70e7f9d34e8d5e4719c61f4139d86691917902530cba21";
  };
  _org_apache_maven_maven-plugin-api_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-api";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "160c7c92b2e3126e921aa9bfa759ad7b83172dcace58025804ef2305ccd31934a08b0a85b6652f1b49abbe3ba129adafb1b495482ee039b7922f130173088987";
  };
  _org_apache_maven_maven-plugin-api_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-api";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "7c714fd49bbde4e926f65523a9e7ae1ad907f39c2c73e4141973c619c340be5b250b44dc292ea6cb6aac6dd1d459a44f83991df3d14430ea87c9f0e2fe5fdc8a";
  };
  _org_apache_maven_maven-plugin-descriptor_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-descriptor";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "559faf79d2fcf53bea9dd8c2d184b8d4f7335903a89f44cca638039ffac570e92e464cb7b207ad63c27abc450cae70e5223df6a15d592e00ef3a290b2beb211c";
  };
  _org_apache_maven_maven-plugin-descriptor_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-descriptor";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "467a0168dc64c7b42c8c87e63a0f1e474112f18b131e1513c14270179377692d7d58e4c690859220ea056146dba711fa52e6e8c6c133990060ae917e01a90c41";
  };
  _org_apache_maven_maven-plugin-descriptor_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-descriptor";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "28f677b01742299e9112e2c6445b8c2662072680a485119ce6f5ab83d8ad8c193eaf0629741152bbc64f50ee97e9b63dcad9571eb95bc52b21126bd884709930";
  };
  _org_apache_maven_maven-plugin-descriptor_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-descriptor";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "289fc804e8eb917288210813bc0c8a921f0a9657ae418390b04adc91d3c1e8cce42701c48cb7505f83d929f7791bee71d218d46c783d5387778e22c466654818";
  };
  _org_apache_maven_maven-plugin-descriptor_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-descriptor";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "1dd01ac57c583d8b5e9ae68226ce5f6cb5f3b0fa28dd761f66affa1653218de898423efbc63c70401fe2134b3b511bee4fa9be34833fb0812f2998d20ab239be";
  };
  _org_apache_maven_maven-plugin-parameter-documenter_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-parameter-documenter";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "9122bab1e66ec26d2f87539596585bb8714b1f5e33544038035fbbe6379c02ba3c52db8a11e8409ba3f36b32e5869a681e7b0447c3391248856b8dbd86c3ee43";
  };
  _org_apache_maven_maven-plugin-parameter-documenter_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-parameter-documenter";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "332a262075227d95155cae260eeec16ec07a5cf6d87d5e981c61bf3d46b88260df33d88227f802ab9642252377096cd9ac4fb6696708bdf67d3b993c4f58611e";
  };
  _org_apache_maven_maven-plugin-parameter-documenter_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-parameter-documenter";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "7f925aba43f2cb6e1ac8c1051ebd89a7ea9df33c9187a9d5740631ef8602cd40bc0a775c0ecd119af45cd0f4c6449db654a4a6113181d526dd91d4b91c952c1b";
  };
  _org_apache_maven_maven-plugin-parameter-documenter_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-parameter-documenter";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "d047494caf72a07dff3290722242173f0d0266d0ea5091cc78920f0912ecb961ff2c9d8d40eee03d36ac1fb2d1776eecd0442be8a5281ef31aff30e39d7158d3";
  };
  _org_apache_maven_maven-plugin-parameter-documenter_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-parameter-documenter";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "b82ca3ccddb8b8d6dabe0afb09297d81bed38825f3668809a0b39e7ea734996828d0c4bb4eb5f48de26f846443990345891668ae919c9a2a9ebff86ef50f26d2";
  };
  _org_apache_maven_maven-plugin-registry_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-registry";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "c32c0161bca706951f0b8ed6386e01085609681e7c8b2e232957a8938519dcf84cf25a6134e33fd2663538edcf4e0b44e79550358070b0af8d627856998c905a";
  };
  _org_apache_maven_maven-plugin-registry_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-registry";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "a3b60d1614d0ffba06da14aa18e58a3476860013a5d5a015520b864b9848c11ebed6ed9479d3a97c0a49db77c9dd225baed63b0e348efe8cf0d6397fadbe8216";
  };
  _org_apache_maven_maven-plugin-registry_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-registry";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "4a76c120d51bc08dab651d37818fb4969a22a305bfdd8ec779fd5cebe2dcb07817d81fcff6d18658ece70d9eae0d7ba52e10794f2b5f720d09b93290bbf35949";
  };
  _org_apache_maven_maven-plugin-registry_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-registry";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "6e62652d55f3777ed8a3c8aa9f6f213ccbfc520703750e2769e19a1feae5b8095b65235a651627764f41b6a04d9edf3abeb0fd4c255790f6ddb10869afc60418";
  };
  _org_apache_maven_maven-plugin-registry_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-plugin-registry";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "2ced0f4db8498aa2393e0545f6457d51ad9f3751f4f8faf2d36658cbe286f7f53a0551c812bc22bd05d96c62b0044615fd43b654b442f2854adba4ab0ec95fa2";
  };
  _org_apache_maven_maven-profile_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-profile";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "7496bc63ce3cfcf237cd060218fa681fd2893b4316e78842ddc549e73f1a9459253ecd0a7aab50e685ff7e4e5a731ef163c6d090f755b34ff8b189b59a8167f9";
  };
  _org_apache_maven_maven-profile_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-profile";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "c3c02dd24663237c1f7b96cf11a80813c7df4648303fbcae395e5eb06c027b69f3566b032afdcfb7349db6a5f67f9c2219cac539563404e9e6ed7cac02ae3d0c";
  };
  _org_apache_maven_maven-profile_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-profile";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "3497cc056bdd927a7716aeb16f0971ed16f85115b8b1b959bbf9ab925266a536db6edb03ec4fe6ff4d8e020e978a39a5655c49e632751d22563aa6309b9530b6";
  };
  _org_apache_maven_maven-profile_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-profile";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "feb9066d99f1df0c11b037920d2c09a4da0864791593b721c868d69a33f59d934c7177410ff72acd5fac32bed01b1125c556c93e2fc7fae7d5f5647604b8180b";
  };
  _org_apache_maven_maven-profile_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-profile";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "cfea10df29ce96582902b9e1bc7f975c90105b766e8b2d99c86054663c2fcb9df21856d71eeceb5c0af1952981c3b1675fa0ff8bcdff02f36633d401c562672a";
  };
  _org_apache_maven_maven-project_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-project";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "6a14ef7c7ff9c1cd78e4a39fa3ca902f231179dee623640c35722ee08b2bb4276ad9020975cc6c5909ffc3b067d76ef2741531f84e63f9d7958c9a3225993245";
  };
  _org_apache_maven_maven-project_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-project";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "17c1ec45800b613bbed210465239e7e4fa9c673db6ff923bea8ae50fc3f3cd17d24751dcc3a5f90932d469f76c8f1674a334fc420a0d9779e8fcbf92f900f347";
  };
  _org_apache_maven_maven-project_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-project";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "ecc4109948dac8e0e12d45480f62a1e8db8bbf420f25a01648c05c68383b6b8942250726a63f6dfa0758b46355274f194448d4c956d2a847f4fd11f9e9ebae28";
  };
  _org_apache_maven_maven-project_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-project";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "38cfe4c0b64e08894c0f748d022fc95ddc34e100f20d9f2b67185c90a775e22c7b6eb3a77842be2bd1272ccdbf04e5da0ae691c706ff03e7d5e94a5b42017508";
  };
  _org_apache_maven_maven-project_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-project";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "e306468ec10dc7d2b8438675bc501c35e429787a59b269d9fc38ec4d913eb24eb1d0401f197ac0755976e495d06e385abdc0ca71e2b479d822ac1ab682845941";
  };
  _org_apache_maven_maven-repository-metadata_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-repository-metadata";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "7b9d0b2b5307a1315d774dd9be23ddae4603400585abe615ad15917ea1ab519610e40d4b35d23e6310f94da7bbc8faf053725fdd32b82d4b31e504d6518a02f1";
  };
  _org_apache_maven_maven-repository-metadata_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-repository-metadata";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "0cac4ba68850ace4468647a9a1dcf5e7cc91d173f4fb53036b0f036556aa899d611942905bcbbd5096b200dfafa44066351490262c6e7d92386895eb7c58f1b4";
  };
  _org_apache_maven_maven-repository-metadata_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-repository-metadata";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "1582877a693637cee28eff81bcffca289dd6bbd0532c085f28e274ff3e506c825ddcbe6e8bb152f18ec26e2fb3df59e7d5ff8be82edb0b6acaa01883ba0c72ad";
  };
  _org_apache_maven_maven-repository-metadata_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-repository-metadata";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "dc4bd8a99e2c3db6f52f73ed513a02ec4b24261f00587efae4c81abf582affc3b7b7c65b075aa36fe86782ab3459b7c18c48b1a883a6d18edc6367c300fdb48e";
  };
  _org_apache_maven_maven-repository-metadata_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-repository-metadata";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "6f3718adf04b5e1e868023bf8a11529e88476c0ffdc7a1d11bb16cbccadaf3e59566429573bc41c773371a32376dfd48e76ed9dbf93fc3baa9ae7bd599b0cdfa";
  };
  _org_apache_maven_maven-settings_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-settings";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "9bb25ad521739c72008369abdbb50584829ace4b81b2c7d04971886b18247c9215b8f1ee19a4a165661a94f70e376e36e32c641ab588e31bc470016960d2befd";
  };
  _org_apache_maven_maven-settings_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-settings";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "f4b40434987d59bef73d15e92d3e4b945205388feb6a72ce3ab831a98d13b71ffb0f6023a57ae9b92577124950633d4d1d4cff2efa46a15ad3c11204e98bcf06";
  };
  _org_apache_maven_maven-settings_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-settings";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "8aecf77300064c9f83d6445fa89cf857933e793c127f546c85468351baed68597af8279f9e84f81185829908870ecccad7a50afe6052c919f8e4ce5ae2f3e061";
  };
  _org_apache_maven_maven-settings_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-settings";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "b6848c382d35de4060a32634f9ade8ce9cde60c2be119090e1d31e3278ceb7276a60975737e1499b44974e299e7b846078cc1826a9a12c466cc8e33579602be2";
  };
  _org_apache_maven_maven-settings_2_2_1_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-settings";
    version = "2.2.1";
    type = "pom";
    sha512 =
      "320edb58800f06c233441ed9d2d48ff3ff81e8f6d7e2876f28a4fa7b7fe09c1832f38106b95324e06ac4aee77d9c8e08df64736ad0cb87107b0de9ccabb35577";
  };
  _org_apache_maven_maven-toolchain_1_0_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-toolchain";
    version = "1.0";
    type = "jar";
    sha512 =
      "7edac9836caee199477827f50c1cf205286dad3a6bd19fbaebd17de3d81bbd3f7e063f9d65ca5a69a024359ddaca04cce0ad2e3901a6903ab7668e1974ec3ec9";
  };
  _org_apache_maven_maven-toolchain_1_0_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-toolchain";
    version = "1.0";
    type = "pom";
    sha512 =
      "7e43473a212712a283d595c0bd9efee8189c9f91ba6a08f7dfc1f318ba4cb364b9d8d90f01a97900d264c60447d6d723d3940146f73f460f5476625ca0b69915";
  };
  _org_apache_maven_maven-toolchain_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-toolchain";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "c8faa12dfe590376e979993e309a160edc14f1a4712ba39614174e61e117d8053f48fe11badab1fbd429e51f7dc88a15b8bf5aec09251fe17dbd42e94e3229cf";
  };
  _org_apache_maven_maven-toolchain_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven";
    artifactId = "maven-toolchain";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "8709520ad3c8d5ce7bdf5f443e7f7d39f16122637ebfbc53f0f4af6869d72c0b21d5af22cd72657144f1470faa0f29f2bd12c108d55cbbce90aaaa36ea1b6e72";
  };
  _org_apache_maven_plugins_maven-assembly-plugin_2_4_1_jar = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-assembly-plugin";
    version = "2.4.1";
    type = "jar";
    sha512 =
      "29fc1f993de8c6492af9594e0e5622546b733caea9e58b5dc2077a103d6a44c81f3a442199d2aef0661e328425b1810e8bdb298f48a723a087b2d3dd07e97f18";
  };
  _org_apache_maven_plugins_maven-assembly-plugin_2_4_1_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-assembly-plugin";
    version = "2.4.1";
    type = "pom";
    sha512 =
      "8f779edc2a90b5d2a4c601b883fc3e22e71dc75c0a9944906deaab13d8cf27dfaff6621509c49fefbf42e47f1563cff876a307fb441db33286d82bff5f9f9c52";
  };
  _org_apache_maven_plugins_maven-compiler-plugin_3_1_jar = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-compiler-plugin";
    version = "3.1";
    type = "jar";
    sha512 =
      "5eec076eb3352bed6649810fac6e7d9f90f451534533ab40bfdfd2b942266278220b45b0801c7769f515e8d26ec85209fa66a471bee7352677a63c627e04bc5b";
  };
  _org_apache_maven_plugins_maven-compiler-plugin_3_1_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-compiler-plugin";
    version = "3.1";
    type = "pom";
    sha512 =
      "a5e97a73381cc84e6350327f7ca61ce0287b58e22480bb5a125f5b45c4c0612951d1a20feb5befb8b7d1a26cfb9e427f5c95543d02380681a6772f59756c855b";
  };
  _org_apache_maven_plugins_maven-enforcer-plugin_1_0_jar = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-enforcer-plugin";
    version = "1.0";
    type = "jar";
    sha512 =
      "8eb4596e4baeb805fdc9727e95dca141bfa610b721bc0a12115d9ea939aee692e896fad5976ac50e33e1931790befe14f142c95251e2f090f220a6487d996904";
  };
  _org_apache_maven_plugins_maven-enforcer-plugin_1_0_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-enforcer-plugin";
    version = "1.0";
    type = "pom";
    sha512 =
      "980ee7f77f7641314f478478d8ce46d06e511edb3f5b76190ac2ed9fffe2619e373d150d5c79d046805ea0642e29a739e13de5d0ca27f1d05a336308a37ed05f";
  };
  _org_apache_maven_plugins_maven-jar-plugin_2_4_jar = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-jar-plugin";
    version = "2.4";
    type = "jar";
    sha512 =
      "0d409e280e34eeb2af3f6360c3d67a5f9eb42aeec3cc23da6059d6c0b81822eea43988c49a07f408039c6460d632b51b559c898c19caaed4fa5baa4478c6951d";
  };
  _org_apache_maven_plugins_maven-jar-plugin_2_4_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-jar-plugin";
    version = "2.4";
    type = "pom";
    sha512 =
      "799c645fc5501f49a15cbea1b9bd27419fd6fb81f416caff2a1bdf7eaa3aa567e77807442b70590bf7f4c5dfa275af08d45847e899b5d2112606dc3b8f0e7945";
  };
  _org_apache_maven_plugins_maven-javadoc-plugin_2_9_1_jar = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-javadoc-plugin";
    version = "2.9.1";
    type = "jar";
    sha512 =
      "5f3ecd3ed9d98953e847257d68a6c20c0dcbe77772f32c152ad8dd42a5a462d601288d1e4c5e4fbfdfbec809c4e5170e69268ed3eee14c5fd2411435491d8b08";
  };
  _org_apache_maven_plugins_maven-javadoc-plugin_2_9_1_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-javadoc-plugin";
    version = "2.9.1";
    type = "pom";
    sha512 =
      "9b0c90190987765d0d0cfaa6b7eb40f1b6c56c255817f4636511ea000b8bf128b7d0ee6c6b2dcd822acfb422d1cdca1fafeb26a29099938c70012f20baa5a8e1";
  };
  _org_apache_maven_plugins_maven-plugins_22_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-plugins";
    version = "22";
    type = "pom";
    sha512 =
      "8afbe86bf06c84cdb8ff8a2689b2627513cdcff9919ef55279f58f5d154a0686bc3a84f2b3b7bfdccc35c6e12389580ee26a2f60b40abb7a528a774b4613df49";
  };
  _org_apache_maven_plugins_maven-plugins_23_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-plugins";
    version = "23";
    type = "pom";
    sha512 =
      "2aace08de0bb4c20e26c0c5b3c8bd739e1fd06128eaa53eabe1e262a0965cd25f4545ec19c6addf8a6fb62ee3c895e1e510efbf98ca1314a4eadc982eac70377";
  };
  _org_apache_maven_plugins_maven-plugins_24_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-plugins";
    version = "24";
    type = "pom";
    sha512 =
      "3affbe79272d4200529d19a63ea5680d1f4b6464ba1df0096a5bea57e9bb11e66fc03062f7e5a1f01fa751b56a7eb4fd68e32e93f8ed328690c1e6bc6738ea0e";
  };
  _org_apache_maven_plugins_maven-plugins_25_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-plugins";
    version = "25";
    type = "pom";
    sha512 =
      "e5d9855b65d02863d9f8cb55ff4cef10ffdd88f24892374a3e3a7221187eafe88ee3a027c197a736871019824a16910e90102d244b494eb764ba2c4e3586fed1";
  };
  _org_apache_maven_plugins_maven-resources-plugin_2_6_jar = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-resources-plugin";
    version = "2.6";
    type = "jar";
    sha512 =
      "9bf1a54344a0ff7a31762278ec84213df0c52a130ed9712430a1b85e59e2509caae0c9d2b972ecfcc9663177fdda28db7bfc3adb09716131160426375d578de4";
  };
  _org_apache_maven_plugins_maven-resources-plugin_2_6_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-resources-plugin";
    version = "2.6";
    type = "pom";
    sha512 =
      "736d616a03def4817217155510921d7d97c75fe50313ceb1e29657895e8b69a43e63c744ed95b4c3a3fdc6d2c18e551d77c2159e281cdf6b277efcd0b08138f3";
  };
  _org_apache_maven_plugins_maven-shade-plugin_2_3_jar = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-shade-plugin";
    version = "2.3";
    type = "jar";
    sha512 =
      "579a84dbdd1b9f89f5b1928dd378b7799ed0d547572e3b285c7ba27d21ab6daf03a48199278711434921d608027a4bcf0a03f0ada38f0c78a6c689630fce2218";
  };
  _org_apache_maven_plugins_maven-shade-plugin_2_3_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-shade-plugin";
    version = "2.3";
    type = "pom";
    sha512 =
      "ccb6ff1e8123173799df2298bd15900a8e22aa253e443e1594425ce77384312faffc20f5b9d3df07b633ab554a7219c7881c7c4f7cc92b4be6f5ff32fc936624";
  };
  _org_apache_maven_plugins_maven-source-plugin_2_3_jar = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-source-plugin";
    version = "2.3";
    type = "jar";
    sha512 =
      "9dd8baa052221de795e0a028c4d950e658abc7d97e540a7702e441fe1b0cc9674d55e90c08dbc64ce7112036a2273c5ce9ce2780f0464655880d507ce4d5240f";
  };
  _org_apache_maven_plugins_maven-source-plugin_2_3_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-source-plugin";
    version = "2.3";
    type = "pom";
    sha512 =
      "753890f64483b01583616bf4d5e09c306fe9971efe6f745048af383770a164c3b1e9784728191a39753d861fab2fe97ffc55b04a54814c5b4ca437f93891b0da";
  };
  _org_apache_maven_plugins_maven-surefire-plugin_2_17_jar = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-surefire-plugin";
    version = "2.17";
    type = "jar";
    sha512 =
      "747d109dc57a9dbe22317761a8effd402baf8d8c6233a70af5ab9a7a699d5d43329c65bd8c8ff0393ec9e5e3540aefb787f28856796ca37a8d68857ab20d0df7";
  };
  _org_apache_maven_plugins_maven-surefire-plugin_2_17_pom = fetchMaven {
    groupId = "org.apache.maven.plugins";
    artifactId = "maven-surefire-plugin";
    version = "2.17";
    type = "pom";
    sha512 =
      "de3c3bc8c86fb30941ba248552c07d16425330a3b0cc66052624ebf681d64f54c5d74126afd917cb096e0ec16767754133f0b2c7e42cf36702ec25f2fe1879cc";
  };
  _org_apache_maven_plugin-tools_maven-plugin-annotations_3_2_jar = fetchMaven {
    groupId = "org.apache.maven.plugin-tools";
    artifactId = "maven-plugin-annotations";
    version = "3.2";
    type = "jar";
    sha512 =
      "672c4e11fe141d5e537a9024e516d94395644cdb1a05e9a1bb3dc26412867c94f69666a77c776a1930ce4d559fd0b6024ff4b07b9281f8ccde35236da2662aa4";
  };
  _org_apache_maven_plugin-tools_maven-plugin-annotations_3_2_pom = fetchMaven {
    groupId = "org.apache.maven.plugin-tools";
    artifactId = "maven-plugin-annotations";
    version = "3.2";
    type = "pom";
    sha512 =
      "69d5dc3a6777b5f7e785087af395de65cba41ce1e95e212bc763cb62218ec43b8a09201b62103d46741dd92869a01be63e6e7001b90f5beaacbb1e85fdf8fd1e";
  };
  _org_apache_maven_plugin-tools_maven-plugin-tools_3_2_pom = fetchMaven {
    groupId = "org.apache.maven.plugin-tools";
    artifactId = "maven-plugin-tools";
    version = "3.2";
    type = "pom";
    sha512 =
      "8e8ece7429866911f5d6cb07d582be245b2c963907e70620eaa47b33bf17dfa29689279ea3127b2623d40fe8e5bce163c4406db0490735e8b29cccd24c2d8891";
  };
  _org_apache_maven_reporting_maven-reporting_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven.reporting";
    artifactId = "maven-reporting";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "a494a7433c0a3dfa199619d39154121f6017ee5d575f3969189ba72f7b64e8c1cecc0d0cbcd45d3b11ce354f59d2e2f0a04bb81a351af18bc2ee91781a1d13d7";
  };
  _org_apache_maven_reporting_maven-reporting_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven.reporting";
    artifactId = "maven-reporting";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "450781a910b5c440fe5aec88a86866a03ba9c96a20700a45cb038f7b676a6722688464a6e26c970198fde770f27a9ce4cf3ae40a7c2def04b1337736f826f218";
  };
  _org_apache_maven_reporting_maven-reporting-api_2_0_6_jar = fetchMaven {
    groupId = "org.apache.maven.reporting";
    artifactId = "maven-reporting-api";
    version = "2.0.6";
    type = "jar";
    sha512 =
      "aa85bd126456d6505b770ec0669b470c1a15881dcff996f08aa8491b2657f587ea08dd9a412a05641f3692edfd96d28aec7c9c2ced6ae36ed201235e45e16e86";
  };
  _org_apache_maven_reporting_maven-reporting-api_2_0_6_pom = fetchMaven {
    groupId = "org.apache.maven.reporting";
    artifactId = "maven-reporting-api";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "7edcb8e805e9841ab6ca2a6c125b6eae42758ae4f975008e446c0b0dbac7f31e897fee8c8c741592315584ea373555de5fc8f439facdfeefca2c5778405347f7";
  };
  _org_apache_maven_reporting_maven-reporting-api_2_0_9_jar = fetchMaven {
    groupId = "org.apache.maven.reporting";
    artifactId = "maven-reporting-api";
    version = "2.0.9";
    type = "jar";
    sha512 =
      "3931fffc12f90bbf3a323a18977d511f934aed3931ff242869d889fe40502b878b4207e5cb1481d400fa0950d79dc2cc33e13a3847aee71a207dfbea631e793a";
  };
  _org_apache_maven_reporting_maven-reporting-api_2_0_9_pom = fetchMaven {
    groupId = "org.apache.maven.reporting";
    artifactId = "maven-reporting-api";
    version = "2.0.9";
    type = "pom";
    sha512 =
      "469751f17520f8f435aab4d1a458996b923ed5271a9d8152a77ae0b4a9f8600999faf1f725b61a71d568eb8510a5c22749078ba37745d150dd400280e9864d0a";
  };
  _org_apache_maven_shared_maven-common-artifact-filters_1_2_jar = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-common-artifact-filters";
    version = "1.2";
    type = "jar";
    sha512 =
      "537a2791995009f5eadd1d07c61848113ddb8cd8cf3401bff16cf347848d7674b83a94acabc5b2ee4f568b42b6b1ebc7ac1199d834b50c624ef2d2ca10f5527e";
  };
  _org_apache_maven_shared_maven-common-artifact-filters_1_2_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-common-artifact-filters";
    version = "1.2";
    type = "pom";
    sha512 =
      "08d50167531970010bbce7844eed72873f69c3fa60a8facfa96379c8a2957fc544328d16fff03704c73e09b68f855566bc8ca8cb57602f10f5dfb8ed9d63f2c6";
  };
  _org_apache_maven_shared_maven-dependency-tree_1_2_jar = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-dependency-tree";
    version = "1.2";
    type = "jar";
    sha512 =
      "d32a2f280382fd1b783baac8ef17bdb9853455a9645131cd35325ac04b78e128506fba0b1926d1024030a66bf9d2bd43ce9d5bf4e46ca2738790d4685cc615c3";
  };
  _org_apache_maven_shared_maven-dependency-tree_1_2_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-dependency-tree";
    version = "1.2";
    type = "pom";
    sha512 =
      "063ec62d8a94363cb78e2e7f86632477b1facf7ad66fac44342d9664a3e8fa845321c079ecf4162776181aca4fb0fee61fedf27617d6c83e35c0d4c1820dc11e";
  };
  _org_apache_maven_shared_maven-filtering_1_1_jar = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-filtering";
    version = "1.1";
    type = "jar";
    sha512 =
      "3717b97ceebf62a3e4ba4e72491de0c3ac5993bc99ac3af990e9b5ac0ed2fad333bd904b7fec61b17ee0c4bbcf8622a1ed5519cec8ca915387634d48b93c1bc7";
  };
  _org_apache_maven_shared_maven-filtering_1_1_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-filtering";
    version = "1.1";
    type = "pom";
    sha512 =
      "b679e8336f03f8ff6329529b477fada2f640bf2019b6d5b3d0d1211c7396fb959cf70545005edb392197a64b0b87867bac3f8f5a1f8db8b9e89aefdba1102b04";
  };
  _org_apache_maven_shared_maven-plugin-testing-harness_1_1_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-plugin-testing-harness";
    version = "1.1";
    type = "pom";
    sha512 =
      "626f6fc112e391090297b94cc3bb1d4f19aa73274194e8f7dfad997b7413ddc1f59b821c495341b676af4de9520d1a4974923808aac7d5eff9741e4ef140f78c";
  };
  _org_apache_maven_shared_maven-shared-components_11_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-shared-components";
    version = "11";
    type = "pom";
    sha512 =
      "cdf70a9a88affa605e884c7c8862fec8da5b7f0856dbdd75282e61230625c9828dc06e701f5f4d8158936566fe6332368ade27687bb02d98dfc0a11dfd2d30de";
  };
  _org_apache_maven_shared_maven-shared-components_17_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-shared-components";
    version = "17";
    type = "pom";
    sha512 =
      "1e665093ad08b7dcb17358c84f0286dc88721f5f830a7ac1d334b122d9594d1c1486b2dd8bc9c8c2501ef11d4546b4f8529b1554fa68da7cc004fa55d1c52bdc";
  };
  _org_apache_maven_shared_maven-shared-components_18_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-shared-components";
    version = "18";
    type = "pom";
    sha512 =
      "e026526dc78d943f251ff9bbfad7035c195d3ae2291153934870b9f69ed412b500f9cef5c512976f802b5409ac45d6128e3541723731129b8435897e3b2f85b1";
  };
  _org_apache_maven_shared_maven-shared-components_19_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-shared-components";
    version = "19";
    type = "pom";
    sha512 =
      "100b25ee2daa245c29f2b0c31136e7b7961a2e965d22685b695b06195aceae94631dfa009ba69f179e091c398c0c53102791924ddbbb3c2f7b8339ad0266a36c";
  };
  _org_apache_maven_shared_maven-shared-components_7_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-shared-components";
    version = "7";
    type = "pom";
    sha512 =
      "e6b61196528b384aa3bba3145d937ba3cd2805749a47f878a322ea23f81c64e1f21b8ddb71d0cc1aabab2441fa054355ff4ad69c58dd76fe4a83b6532a6ffecb";
  };
  _org_apache_maven_shared_maven-shared-components_9_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-shared-components";
    version = "9";
    type = "pom";
    sha512 =
      "c2a7b58347385203cf01ffd290f0e494577a0fb350a6c35b10269c041247a6a7623cec921954cd6ab9429d376d46db78207f82cb579f8d809480a0d9f5f0f7ec";
  };
  _org_apache_maven_shared_maven-shared-incremental_1_1_jar = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-shared-incremental";
    version = "1.1";
    type = "jar";
    sha512 =
      "d92da9a0f7e7f70605246805bac7bc83ae31eca7666242d8eebdbde4b8e6c2b6d99f54a7fb37624747412e413456a6b08bc3ca10205440debc5676d163ea275e";
  };
  _org_apache_maven_shared_maven-shared-incremental_1_1_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-shared-incremental";
    version = "1.1";
    type = "pom";
    sha512 =
      "d9c90ce56c7e4f3715be5343c8f230a787d3c756341e86aa3001a563324ae5e1f762a07e034252bf6090d261a4657155d15b41fe2abc564c18b25301e106899d";
  };
  _org_apache_maven_shared_maven-shared-utils_0_1_jar = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-shared-utils";
    version = "0.1";
    type = "jar";
    sha512 =
      "33759e9b7f8513706a18259cdd1954283006a1672a56177c2acdc7950d47162cb6e2834f2d86f4b250085c03404befe60c424894adb00f1d8f3c055c605de23a";
  };
  _org_apache_maven_shared_maven-shared-utils_0_1_pom = fetchMaven {
    groupId = "org.apache.maven.shared";
    artifactId = "maven-shared-utils";
    version = "0.1";
    type = "pom";
    sha512 =
      "e695840c66d8cae706ad4bdef6cabe04d65351305ab9f8ddb84ed3b3af82de522229618e26e4ff4b9a326b150a89ace0d83185c5db16e40b04667a9be3fb5c38";
  };
  _org_apache_maven_surefire_maven-surefire-common_2_17_jar = fetchMaven {
    groupId = "org.apache.maven.surefire";
    artifactId = "maven-surefire-common";
    version = "2.17";
    type = "jar";
    sha512 =
      "d1d84a35bc820d8e2379fed94d5aaf40cdeef5900e62badac3dfc32593e7a86809f0e417ae179aef4b1432c2e5c296ade247d95120129963d1e77ab7ad053ea3";
  };
  _org_apache_maven_surefire_maven-surefire-common_2_17_pom = fetchMaven {
    groupId = "org.apache.maven.surefire";
    artifactId = "maven-surefire-common";
    version = "2.17";
    type = "pom";
    sha512 =
      "66f9021e9005cb9dbbbe5b452ae3072727d062f1c89c4224ffb01fb73bf6ce96b7cf63a41993756e36c80c6b35af54fd792488f767622650cb05505c7fcd2668";
  };
  _org_apache_maven_surefire_surefire_2_17_pom = fetchMaven {
    groupId = "org.apache.maven.surefire";
    artifactId = "surefire";
    version = "2.17";
    type = "pom";
    sha512 =
      "224d78f8a6e94d7e4b4b311f97f7d06f1960060973260bcc6adf8effaa0c5d54fad179b573d58234e1eb9bd090082898ffe22352e385517c67ef15ef677095fd";
  };
  _org_apache_maven_surefire_surefire-api_2_17_jar = fetchMaven {
    groupId = "org.apache.maven.surefire";
    artifactId = "surefire-api";
    version = "2.17";
    type = "jar";
    sha512 =
      "08192b56660ba3d54e1205ecbc980a49e832477f985434291c95fee6ef75384aeb228eaee3ac4c51485dae60ddc8859aa406c6e7baf59e356266908e5acd99c2";
  };
  _org_apache_maven_surefire_surefire-api_2_17_pom = fetchMaven {
    groupId = "org.apache.maven.surefire";
    artifactId = "surefire-api";
    version = "2.17";
    type = "pom";
    sha512 =
      "ff166528706763e4ef8349e4693ff446f0560d4ad337274a9c74ade6b4fa9586b6b08f0760144b41d7a11ac4c7558608f0e01534e4718c29282d8dc0da300f2e";
  };
  _org_apache_maven_surefire_surefire-booter_2_17_jar = fetchMaven {
    groupId = "org.apache.maven.surefire";
    artifactId = "surefire-booter";
    version = "2.17";
    type = "jar";
    sha512 =
      "d17a15aea4ba5802456d85a130717a16eaeb56ac6fdea9f777bedf21fe9e5d63d4f2bb8311f7e5352dd7e52d95415c4db01a1110bca6fec32a53faefbe518b7a";
  };
  _org_apache_maven_surefire_surefire-booter_2_17_pom = fetchMaven {
    groupId = "org.apache.maven.surefire";
    artifactId = "surefire-booter";
    version = "2.17";
    type = "pom";
    sha512 =
      "4b2b466d978383163b3c18cba1034d608766b8c2c1206a73fcc41f8460bc64a377393e4fafa0950a1373ddbb200aea496894081f92c066f1efc62c382a512c38";
  };
  _org_apache_maven_surefire_surefire-junit4_2_17_jar = fetchMaven {
    groupId = "org.apache.maven.surefire";
    artifactId = "surefire-junit4";
    version = "2.17";
    type = "jar";
    sha512 =
      "bda5f2c0be9b00073b12a65de5e27b411962d8168e70e099312b6cf6832d734bb0a162c2fd391242379cf2dd4c2b60868feb807628ed288a447f6790c588bb7b";
  };
  _org_apache_maven_surefire_surefire-junit4_2_17_pom = fetchMaven {
    groupId = "org.apache.maven.surefire";
    artifactId = "surefire-junit4";
    version = "2.17";
    type = "pom";
    sha512 =
      "8094843bf9a3abc5d858d999d24e2b73317fce87c7b80915464c0ca751a31f325f006c3af015b8eb1b5c0fb3627e29712780021ea6a5df7d9ba813e79bb25a6f";
  };
  _org_apache_maven_surefire_surefire-providers_2_17_pom = fetchMaven {
    groupId = "org.apache.maven.surefire";
    artifactId = "surefire-providers";
    version = "2.17";
    type = "pom";
    sha512 =
      "6906fadb7f401826143525526825ef6eed2e1f383b7a7fab0ebb0b5526c32afc846e8001cc9bb54d85bba267cf6435da3476dc09c0b3f8b96fa585928e487966";
  };
  _org_apache_opennlp_opennlp_1_5_3_pom = fetchMaven {
    groupId = "org.apache.opennlp";
    artifactId = "opennlp";
    version = "1.5.3";
    type = "pom";
    sha512 =
      "186caa7fade7c41c6d7ad8f79fd45961c137bd89837fc01f710092b682e3f4a070fdee8201515e51a468b5fcc342b06f3e09f47a2249df3f97817b31b279b0ef";
  };
  _org_apache_opennlp_opennlp-maxent_3_0_3_jar = fetchMaven {
    groupId = "org.apache.opennlp";
    artifactId = "opennlp-maxent";
    version = "3.0.3";
    type = "jar";
    sha512 =
      "ff09e880786b390839b02704afd95a03c8add6e53f0305bb768b28c4cf6807c23c70105aee46d7901f9b803c145ba262fbe5836fe8d124acc315ac3ba7023dce";
  };
  _org_apache_opennlp_opennlp-maxent_3_0_3_pom = fetchMaven {
    groupId = "org.apache.opennlp";
    artifactId = "opennlp-maxent";
    version = "3.0.3";
    type = "pom";
    sha512 =
      "49f85c2ded3ae57e0a421fa5a232ea3ebb0c6c12ddfaecb198b4b38ed44468a8447eb8df4d9699a9084df8ad77581b8285cde00bf075839c6c350f45f21489f3";
  };
  _org_apache_opennlp_opennlp-tools_1_5_3_jar = fetchMaven {
    groupId = "org.apache.opennlp";
    artifactId = "opennlp-tools";
    version = "1.5.3";
    type = "jar";
    sha512 =
      "5dd0dd8b8142f226ff394f8d5994261df010a099bd3ed3304189120a15d03b2522f95aea688cf3c3973899878061986c898ee12fb054254709798ecd9c807d87";
  };
  _org_apache_opennlp_opennlp-tools_1_5_3_pom = fetchMaven {
    groupId = "org.apache.opennlp";
    artifactId = "opennlp-tools";
    version = "1.5.3";
    type = "pom";
    sha512 =
      "032f03aed055e92187f885ead2b6c86c696313f322263d129047d3293834828617278c19fbda622a48827300ce6adec19d43da614469942363c0595717c3352e";
  };
  _org_apache_xbean_xbean_3_4_pom = fetchMaven {
    groupId = "org.apache.xbean";
    artifactId = "xbean";
    version = "3.4";
    type = "pom";
    sha512 =
      "e632d992d2256ac54f8726a61e798c0c9a48a33fe288a0dbe7ae834c38f0e2c6631c2ad715046876bb0e126ba94457e06b7b7dbeb158b8bd4e0dd5915987d6b0";
  };
  _org_apache_xbean_xbean-reflect_3_4_jar = fetchMaven {
    groupId = "org.apache.xbean";
    artifactId = "xbean-reflect";
    version = "3.4";
    type = "jar";
    sha512 =
      "95c2d125c4c9674173115062aa646b289dc949501e377f13bef5e705249657d0eb4d7da4a1652fc8306153c66e88cbd2e2fa654313f99f9f9a10a326754921f8";
  };
  _org_apache_xbean_xbean-reflect_3_4_pom = fetchMaven {
    groupId = "org.apache.xbean";
    artifactId = "xbean-reflect";
    version = "3.4";
    type = "pom";
    sha512 =
      "3300a03be506cc71720a7ea5d017c094583fc3f3dd89e0c191e46d4341eca5f3b0f7f80c7e44a49156c1e58413147115562e54c852a8c813b4095ce4ac196f6d";
  };
  _org_beanshell_beanshell_2_0b4_pom = fetchMaven {
    groupId = "org.beanshell";
    artifactId = "beanshell";
    version = "2.0b4";
    type = "pom";
    sha512 =
      "7c58d0fc322e8032c667dc4b8bc62b5c32839a360f83e0dfba4c1af22558fda721aa8a89cf3e9341d8f2f3f09650822442fd254e00ba7c74534022e5aee2c7bb";
  };
  _org_beanshell_bsh_2_0b4_jar = fetchMaven {
    groupId = "org.beanshell";
    artifactId = "bsh";
    version = "2.0b4";
    type = "jar";
    sha512 =
      "29ce6d2640e5806b4ba83c67a6e0bada52a572fff9055c7af14ff0ab24a705549850c537ee3273f90252a5c2ae386d46276b4f341925364e407ce165bd29d662";
  };
  _org_beanshell_bsh_2_0b4_pom = fetchMaven {
    groupId = "org.beanshell";
    artifactId = "bsh";
    version = "2.0b4";
    type = "pom";
    sha512 =
      "a9b7132e267205472f066b4c68bbed8f76a34046296a5e2fabdd1721f0a273478da2528b36a30fba6762595842a5b1869b10718d498448c01dc5d413fc0ffa7a";
  };
  _org_codehaus_codehaus-parent_3_pom = fetchMaven {
    groupId = "org.codehaus";
    artifactId = "codehaus-parent";
    version = "3";
    type = "pom";
    sha512 =
      "d6d43747ba08f5b70ba4a6eb0aa4f10c7b38f41b99a5b9c2a3c595e249d40a5b4d7475fbc2a88083a0e4c41f7a09e9737b15c6944d701d069fd2f721548437bd";
  };
  _org_codehaus_jackson_jackson-core-asl_1_9_2_jar = fetchMaven {
    groupId = "org.codehaus.jackson";
    artifactId = "jackson-core-asl";
    version = "1.9.2";
    type = "jar";
    sha512 =
      "9ee85094c27d13e824e0a412453716d266c3356f978cd306d12fa57eff3ab7da87d7118fdf402d4b3fc7b01a9c77d32290c298e056659b685e0213d8d842e082";
  };
  _org_codehaus_jackson_jackson-core-asl_1_9_2_pom = fetchMaven {
    groupId = "org.codehaus.jackson";
    artifactId = "jackson-core-asl";
    version = "1.9.2";
    type = "pom";
    sha512 =
      "231d6cfc23c5f066ff6cab7bc3c1de6bde0add123a029b54ced8497c52e65829172371fb1e34f42a10b9288e1a9030c1b8c5be4f65c83a975fc203590235fdda";
  };
  _org_codehaus_jackson_jackson-jaxrs_1_9_2_jar = fetchMaven {
    groupId = "org.codehaus.jackson";
    artifactId = "jackson-jaxrs";
    version = "1.9.2";
    type = "jar";
    sha512 =
      "d856e92a3d72a78e24ca9a49ae9a6c453a2653340c6bf457206752880446e2c75d77807b41802fbdc8f84ec8c1d0c55fa10a71fdf7fba8b59e4eb16aeec20ddb";
  };
  _org_codehaus_jackson_jackson-jaxrs_1_9_2_pom = fetchMaven {
    groupId = "org.codehaus.jackson";
    artifactId = "jackson-jaxrs";
    version = "1.9.2";
    type = "pom";
    sha512 =
      "37fa07a31a07059653a1c47d16119653c6cc1901c67c2f2b389a50996f3b33c4c410ca38a41f5f74f6170dde4aa99953ce84f2ac8d3d69ba4e9f192723397af0";
  };
  _org_codehaus_jackson_jackson-mapper-asl_1_9_2_jar = fetchMaven {
    groupId = "org.codehaus.jackson";
    artifactId = "jackson-mapper-asl";
    version = "1.9.2";
    type = "jar";
    sha512 =
      "a194f4ede4811e996de8a014b70b29db4bd825bd8d10c05144a78156c26bf37e7c2f44940e61b066dd2d83dfebe0370d9ba32c6ebf603bfc5e0a33d144362fcd";
  };
  _org_codehaus_jackson_jackson-mapper-asl_1_9_2_pom = fetchMaven {
    groupId = "org.codehaus.jackson";
    artifactId = "jackson-mapper-asl";
    version = "1.9.2";
    type = "pom";
    sha512 =
      "fce9ed270097078ddaf0b8e5f5aea2c332c8c9cf7ad173ba5691d6e55b4b86ed7caad96e94bdfcb723c27418c4a11ac446d2ffba00f7817e70f95e2f25e51163";
  };
  _org_codehaus_jackson_jackson-xc_1_9_2_jar = fetchMaven {
    groupId = "org.codehaus.jackson";
    artifactId = "jackson-xc";
    version = "1.9.2";
    type = "jar";
    sha512 =
      "98df5aff78995bb5b13f21f829dbf241baa663f3c070007d079aacb23431ccf6d704c1c245ae6150314b8b988612a09cc3b6ca1e003467c810cdaec4e08795b2";
  };
  _org_codehaus_jackson_jackson-xc_1_9_2_pom = fetchMaven {
    groupId = "org.codehaus.jackson";
    artifactId = "jackson-xc";
    version = "1.9.2";
    type = "pom";
    sha512 =
      "b4bbcece5f067dc737c3c9fb6b0a395a1d700ffd546173e70c2852a011e9576d238a5fcc86ecfb8ae7ca3a8edfc2d75deb81c0cf95658f76efdbf27d5320097c";
  };
  _org_codehaus_plexus_plexus_1_0_11_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus";
    version = "1.0.11";
    type = "pom";
    sha512 =
      "f9cd6341773eee6c0b753a4c43d4a72432fa0a8b245f6f6d9c14bd9f19de8e95f628151f2abb31eef5ab3da91ccf3b175b0c9154544b81918ec78d78db87e580";
  };
  _org_codehaus_plexus_plexus_1_0_4_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus";
    version = "1.0.4";
    type = "pom";
    sha512 =
      "754ed23e59d997a5c1f9814f949df6618f65faf206221e301724c9aefa795186ed65802dad95ef8c9610d33e75c0e28526dc36aff0157efb8fa3b94a5a63fd85";
  };
  _org_codehaus_plexus_plexus_1_0_8_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus";
    version = "1.0.8";
    type = "pom";
    sha512 =
      "976ff4f274dff9ea20b0ececb1332a677fb711af630e6604e3be3f3ab3ff5f19f4f9e7454535983effa497d4184075fde71d2949852274c1e2ed5aab3a91cd6d";
  };
  _org_codehaus_plexus_plexus_2_0_2_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus";
    version = "2.0.2";
    type = "pom";
    sha512 =
      "1f65432d0912861ee6913874b8f8c415313d18e6addc7d2371d2fd82881c46ecd6b67689331587dcbaaebdd0459dcb28aefe43f243f5d2dd528e8648d0f65912";
  };
  _org_codehaus_plexus_plexus_2_0_3_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus";
    version = "2.0.3";
    type = "pom";
    sha512 =
      "553101aacc1fa3cc0f403263de4b25d49e186d44e66504009f022ca3b103b464827a0b742ba35f36ebd7e6c22ee1db7d20816882e949935c0276fe03f5e2a64a";
  };
  _org_codehaus_plexus_plexus_2_0_6_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus";
    version = "2.0.6";
    type = "pom";
    sha512 =
      "50e01bb34c3eda63ce2db0e9003dface1aff334b8f2988b8a82b901635fda2f628df945e422e954b51896dadc6a73809f26a393906c7e61b0b467ca33ef09c0f";
  };
  _org_codehaus_plexus_plexus_2_0_7_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus";
    version = "2.0.7";
    type = "pom";
    sha512 =
      "597b26c100d02736e4fcc5b87fb7f8c3bfc4bf7787f6fa1db95a8cf7283a3de6f6389986ad3b941d9bc5161a904d23055072a9285c9487a6d8f39007e6cad59a";
  };
  _org_codehaus_plexus_plexus_3_0_1_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus";
    version = "3.0.1";
    type = "pom";
    sha512 =
      "fa5a09fcd735330596c8146e8ed7469c61af4d40b1cf11026c5a5b7fa202af18fe240a1b582e162e82df2c47821f2acffe943f210712ab1bc82b71e0ba1228f3";
  };
  _org_codehaus_plexus_plexus_3_2_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus";
    version = "3.2";
    type = "pom";
    sha512 =
      "8d1a079956c380ccd8881aa0ecb64861ce1a70de39c8bbd1e10570232c2d1dfc9c395ee5fadf87c846731e620e8c1424dbee85bbc24b8fd07d9f68299fefe00f";
  };
  _org_codehaus_plexus_plexus_3_3_1_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus";
    version = "3.3.1";
    type = "pom";
    sha512 =
      "58306c21cfe930e2a0e4f200bd57c63e5a479951590e260c515035b155afd0c09912a4e7eaf6127455712bcc3708a71b31687f1fac3d70cacedbe0fc4e831b70";
  };
  _org_codehaus_plexus_plexus-archiver_1_0-alpha-7_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-archiver";
    version = "1.0-alpha-7";
    type = "pom";
    sha512 =
      "dc70f7cbd8ddbcaa326059172ef48522b1167fed59d5dc16b8225f6ec2d96121ac7a3efb4d42b8eb6359b38137ff0e87a4e9cb1243dfb4abc43f7a0e6254fb0a";
  };
  _org_codehaus_plexus_plexus-classworlds_2_2_2_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-classworlds";
    version = "2.2.2";
    type = "jar";
    sha512 =
      "da6e44a4e0eab535833cc82b16aa7bcd874cd546e95e0a4826aaf683ef453474fcfb3750853309f0bce390badf2d2f35d1f51155ee4aff8564ec94ec62c36a38";
  };
  _org_codehaus_plexus_plexus-classworlds_2_2_2_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-classworlds";
    version = "2.2.2";
    type = "pom";
    sha512 =
      "a6449cc56ae8e2ea8376c25481a1e2f92560d02bd3e623b1ff20c74b6d808d5dcee8ee3b9474a9838982200d308b717f9d07525bfea06646bf60de3343a83e45";
  };
  _org_codehaus_plexus_plexus-compiler_2_2_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-compiler";
    version = "2.2";
    type = "pom";
    sha512 =
      "49f0fa89c822ea9c7b15bd8ffde82d48604fbbb0e9372b8be698d1f60fdf0830f15ff54927d2621b78117b3a54f8ad302df961c75d50f5b6188749100f86ac8d";
  };
  _org_codehaus_plexus_plexus-compiler-api_2_2_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-compiler-api";
    version = "2.2";
    type = "jar";
    sha512 =
      "22208573c04a2b6ea2de727190723556376f42861ebfb64f8c5ae2a6f949ba3c57ffecacf9f1d59e8370f1bcb402fe150dad1cb71259d8e29d5b7d7492c5e3d7";
  };
  _org_codehaus_plexus_plexus-compiler-api_2_2_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-compiler-api";
    version = "2.2";
    type = "pom";
    sha512 =
      "48bd5c3d0032620406cc026671b2c4d5188bdc5c00f765d6a9c2731144e7f2d24932cda1db197a2c3888748324871416eaeb10514e8af26e3e1a44ba101dda2e";
  };
  _org_codehaus_plexus_plexus-compiler-javac_2_2_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-compiler-javac";
    version = "2.2";
    type = "jar";
    sha512 =
      "7905a280a4f7bddfb6886765f034319f756a0fd27c196aab7ef6cbabc2b40c9901e09deab12457ce1c7b313eb741394465e3245be2ba66b3d66a70685845dd45";
  };
  _org_codehaus_plexus_plexus-compiler-javac_2_2_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-compiler-javac";
    version = "2.2";
    type = "pom";
    sha512 =
      "a44b91b8f44313cadf4397081323db2b7e2ba0ff2c72cc86dff2e359a74ded9e7fa3234558671513eaa4162cda854f380f9f9046a0772d6eec5f7b824446b15d";
  };
  _org_codehaus_plexus_plexus-compiler-manager_2_2_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-compiler-manager";
    version = "2.2";
    type = "jar";
    sha512 =
      "24612b51ef8f9be0eaac08c35ea186a3569382267fdad8b4a12620dfaa5e241c2b9b9736d0c6a6292ada20184a52dc60a5195f6f40d057d3b24f3a4147361d72";
  };
  _org_codehaus_plexus_plexus-compiler-manager_2_2_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-compiler-manager";
    version = "2.2";
    type = "pom";
    sha512 =
      "88a8086ad18c124b22d87116e0878e4080628f6f02512b84805154b567ad0f06fb2beb4a331a17b72cd1d4c481ae007a9b74da0bbc2403f82df00c8d6f5977d9";
  };
  _org_codehaus_plexus_plexus-compilers_2_2_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-compilers";
    version = "2.2";
    type = "pom";
    sha512 =
      "2f937051f69c068544c82bd732c366c59b51621d2a5f6a6087c956039519cdd9aafb33a4ba58dce1b1647f31f9ebe201bba3b0225360e2b79eb6c36f15b1bd3d";
  };
  _org_codehaus_plexus_plexus-component-annotations_1_5_5_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-component-annotations";
    version = "1.5.5";
    type = "jar";
    sha512 =
      "2ea4afb8888f157483c6a8e99852fa8a80e90a3cf0756b3b22c73a8bc59a4aa3d7b50b975a1d810f28a090023b268dab49af14e8f8e33c7553fa61315afe06b2";
  };
  _org_codehaus_plexus_plexus-component-annotations_1_5_5_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-component-annotations";
    version = "1.5.5";
    type = "pom";
    sha512 =
      "defcf51a9d23c6b6e6e143b1ff20051a9980b2306b8400888a9c2fee7c4c4822146797d024483b97cb6a3d5e7b2ad0e0f324a8870fb09e848fce11ae83b6d47d";
  };
  _org_codehaus_plexus_plexus-components_1_1_14_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-components";
    version = "1.1.14";
    type = "pom";
    sha512 =
      "8f00b358c7241268ab30c8bebee63c52d40fc89e33176abe4fba4af070e66812691d415346e63216c5f9a0a3d9f95b573f340b208eae9596a1f1f9100c9de29e";
  };
  _org_codehaus_plexus_plexus-components_1_1_15_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-components";
    version = "1.1.15";
    type = "pom";
    sha512 =
      "66fbe343c48151f76d7c0fcd016e3dad5a4c7621594ef422235368f638093b152fba93b6d481baf837b80a1b948e26aee69f226286b4fc57c56935e501b7ef28";
  };
  _org_codehaus_plexus_plexus-components_1_1_4_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-components";
    version = "1.1.4";
    type = "pom";
    sha512 =
      "96fa90e3b274adc52cf0eede0cad8e14c77424c5841184336f81362deb51bf7b3143d9742b17f1f0c0fb22903dc505ff840f1ad5966b72984023be453fd13605";
  };
  _org_codehaus_plexus_plexus-components_1_1_6_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-components";
    version = "1.1.6";
    type = "pom";
    sha512 =
      "d04a141bb657f0c06cfeb403f85a71db150dd3e4ddd9b46e040beaf7a99c55e7dd5b31a7535a0c0e43d721443973a64ce7e8852286eddf1ad830abb9bf17676a";
  };
  _org_codehaus_plexus_plexus-components_1_3_1_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-components";
    version = "1.3.1";
    type = "pom";
    sha512 =
      "0bf749f5766caf0ade8374a603aa389e5c9cf22bc783359f56f5c1d181a18d589d633647a1991f986b77bb17b28dce7be6269b180fc8700894f5cb004a3abb4c";
  };
  _org_codehaus_plexus_plexus-container-default_1_0-alpha-8_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-container-default";
    version = "1.0-alpha-8";
    type = "pom";
    sha512 =
      "1e1c3755bcc98da72bb6ed48b458e0824181455eb18cadc4b7287bf8348e5880a89e56d30c3a8ea84f77380229b32f96e074039841547e5a34251693f870ccdf";
  };
  _org_codehaus_plexus_plexus-container-default_1_0-alpha-9_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-container-default";
    version = "1.0-alpha-9";
    type = "pom";
    sha512 =
      "8d7959186ab0c54e80e44ff2489218391faaa7060c6bea7ccedaec8a87f38c2592f07c48819e2ba669411d1563ca49933410410b6e98daff4349059e43e44e48";
  };
  _org_codehaus_plexus_plexus-container-default_1_0-alpha-9-stable-1_jar =
    fetchMaven {
      groupId = "org.codehaus.plexus";
      artifactId = "plexus-container-default";
      version = "1.0-alpha-9-stable-1";
      type = "jar";
      sha512 =
        "7cb690f7d8e07da36f019b9853cc924c513c254037abdb11b2b77d26df886b94468332f59008de6cafbc18bae102617df7877a68159717fbcdb1fae932b67f5b";
    };
  _org_codehaus_plexus_plexus-container-default_1_0-alpha-9-stable-1_pom =
    fetchMaven {
      groupId = "org.codehaus.plexus";
      artifactId = "plexus-container-default";
      version = "1.0-alpha-9-stable-1";
      type = "pom";
      sha512 =
        "4ca6834bbaa89cc8cd1acab9b1431fde055911c241c7f62e4e7af3ffee2b654cef19eed97e6823d2d589cb54929d271446e91392415bb517ab9167e63ba66a5f";
    };
  _org_codehaus_plexus_plexus-container-default_1_5_5_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-container-default";
    version = "1.5.5";
    type = "jar";
    sha512 =
      "feef8f9b2d23974437f419a00de8e13d81a4b7dc8148f9883867971919ddddf1375117958cfda0c44ffe1c70471f12e6f647090388dd1146a933478e3a7a6cdc";
  };
  _org_codehaus_plexus_plexus-container-default_1_5_5_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-container-default";
    version = "1.5.5";
    type = "pom";
    sha512 =
      "b0605ca00cc88851729f0e07d123260476ed225e91e9a9018414e059cb2b81857ea496b56e1fac761fbecada724473524dcdd8d4fa925b0fa01863471dc2db95";
  };
  _org_codehaus_plexus_plexus-containers_1_0_3_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-containers";
    version = "1.0.3";
    type = "pom";
    sha512 =
      "d2a61dc2a3e465024853d3fe91321cdd682a5a34ff72ded414705c9d45ee8d77b36cc691e719f18f8e15652b0eb790d6f52892848f8f71f407b95ea69d0aaed3";
  };
  _org_codehaus_plexus_plexus-containers_1_5_5_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-containers";
    version = "1.5.5";
    type = "pom";
    sha512 =
      "1cf02e85512a39504ec9128f3d90b955eb2d365f054358d44f194aea15b592cb5a910f812bb6a1f175efc5cc4ecedfb63301369bc4c21500ebc8f4383e8ff75b";
  };
  _org_codehaus_plexus_plexus-i18n_1_0-beta-6_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-i18n";
    version = "1.0-beta-6";
    type = "jar";
    sha512 =
      "7357b40574f56fa6dde1e0d7a6ba129a316ad41321e2ffa8d981fe8a6ea22bf476ee5a62326419866d2f588fe498ca40912a4380913b4f9ab576bb6878402091";
  };
  _org_codehaus_plexus_plexus-i18n_1_0-beta-6_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-i18n";
    version = "1.0-beta-6";
    type = "pom";
    sha512 =
      "f309da97c4dd30aaa709bb723a450a9d94f426e79df0493441ccf1e46c724dbf45e31113d5aaebb9d2363db1c98f8325749998931303dd7580593fde06edb07f";
  };
  _org_codehaus_plexus_plexus-interactivity-api_1_0-alpha-4_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-interactivity-api";
    version = "1.0-alpha-4";
    type = "jar";
    sha512 =
      "42625dfa453daaa4ae1ae9909acec0bcbbd0a1f3d97486d471d6b6ce030b412c1ee2408d3dce484ba2f30160d56bd257eb2ac565f996f459ac57c1131f8ee1bf";
  };
  _org_codehaus_plexus_plexus-interactivity-api_1_0-alpha-4_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-interactivity-api";
    version = "1.0-alpha-4";
    type = "pom";
    sha512 =
      "ce54699675dab71057535646d3bcc6cd742089b8a2ac453a04656e92e8fde7192c2a880c5f78f2ec3b51b85e0e592f2a5a616d36a4e77f57e5840d299282848e";
  };
  _org_codehaus_plexus_plexus-interpolation_1_11_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-interpolation";
    version = "1.11";
    type = "pom";
    sha512 =
      "a38efd1ca051cec965fbf810ef42d5c2183e24a37f4ceb2a478e6a636f4ee33101cb27b1cee10917f53777c4da3a5c02a2bf0730ff416df364226bda9134aca8";
  };
  _org_codehaus_plexus_plexus-interpolation_1_12_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-interpolation";
    version = "1.12";
    type = "pom";
    sha512 =
      "01a1ce2ae359cde9f4b880fa6ffbace9f767a134cb016365f12ebd762dbbcc7e378be0f3f6f6c65828e839c4e6ecaffbf6b93170ee73c24cef22460c58b07965";
  };
  _org_codehaus_plexus_plexus-interpolation_1_13_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-interpolation";
    version = "1.13";
    type = "jar";
    sha512 =
      "64ae66ef0ff1630ca9d2ec18be0e24bcb4664028eec4289c247a24e43ad3024e5235c32b45d5a2419df31b4dfe16dde9eabd92d994edc9eb0080ecd65dcd5035";
  };
  _org_codehaus_plexus_plexus-interpolation_1_13_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-interpolation";
    version = "1.13";
    type = "pom";
    sha512 =
      "79eb45f86a9c8e10e26ce0dd7d5228628ba42dd7dbe5dc73ebe0837efa7823b2f2bf414250070292dc3ce9852aa14581251a7c5c83f1164ed925bb1788a64de1";
  };
  _org_codehaus_plexus_plexus-interpolation_1_15_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-interpolation";
    version = "1.15";
    type = "jar";
    sha512 =
      "92c4a40aca0436c8969e83afcde9dfdf1ad83620a194791c5e39d3dd54a97f7b6c000cc29e4d2fab18816325cc50788d53e3bc9acfee386a7b6c1757d5ee3514";
  };
  _org_codehaus_plexus_plexus-interpolation_1_15_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-interpolation";
    version = "1.15";
    type = "pom";
    sha512 =
      "ca48bd3c5599aaca21c45990de483274ccb18d197bcc91ff1920bfe290f853892586cc2ab6694cff255fe9aa7f1787bf7284950f1bc74cfad676cf23898bf081";
  };
  _org_codehaus_plexus_plexus-utils_1_0_4_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "1.0.4";
    type = "pom";
    sha512 =
      "0da9e9f5c6dbf3f4bde4d268745fbf5891b2c9299f0b8cad01d753b95d70af13998c04be2fdd1ac5e5330af941f3d0d7ebc0b550f329c94b49ca0377d3a55acb";
  };
  _org_codehaus_plexus_plexus-utils_1_4_1_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "1.4.1";
    type = "pom";
    sha512 =
      "6bbb6df1ebe7eed7bd8a5265d6e1e57d9a216e078df1c90f948d0a86b1ab89f7b716a01b08910daaccad16069bb057d4a106b5de6c631580e899753494640201";
  };
  _org_codehaus_plexus_plexus-utils_1_4_5_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "1.4.5";
    type = "pom";
    sha512 =
      "5220b46f8398866a26108d2357608368b5b88741660b7b2de906f315746a2f118a905772c00b1b70975b590259cfc331980c200c493e26c0ee80ec4dec421c29";
  };
  _org_codehaus_plexus_plexus-utils_1_5_15_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "1.5.15";
    type = "pom";
    sha512 =
      "b37d260b03883dac9108f1e0c6fadab99225861c664480d3cbad9a8e169532bd2d93b81c3878722d3f9d2cf682a29e663498ca3b6237911d0f7668e9c7ebd2d5";
  };
  _org_codehaus_plexus_plexus-utils_1_5_1_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "1.5.1";
    type = "jar";
    sha512 =
      "5016a5328fbd6d5c65ae4bd414dcb6b1f321a1aca7a10fc2bdab0a3541296a5de8c8ba0896a7bca49ad7e0e65627dbfddeb303f662460d374ea238783a15b701";
  };
  _org_codehaus_plexus_plexus-utils_1_5_1_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "1.5.1";
    type = "pom";
    sha512 =
      "5c876eedb6a9f86d86d1fc8e347c7e26f415c071d2dc62bbba13d1403b874bbe5eeb4a15746d92c9714a26a1d24e104883268ac38482a364292678962f37164c";
  };
  _org_codehaus_plexus_plexus-utils_1_5_5_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "1.5.5";
    type = "pom";
    sha512 =
      "b0f8a445601b7ec257fa7fdbef78a37501b11c2b841a5826ddea622d8023676fe7a5c238d6be7c5c8733568148893de60d100c62e6477d47b828f784582b3b93";
  };
  _org_codehaus_plexus_plexus-utils_1_5_8_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "1.5.8";
    type = "jar";
    sha512 =
      "e50fac6f795503f9bef06cec7c01f0c0b8aa291af15b4f92d2e37df5385c251cebff42e00a9f686497bc5db20c16abdedbd5c11ac999b275520f6fa54950d02d";
  };
  _org_codehaus_plexus_plexus-utils_1_5_8_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "1.5.8";
    type = "pom";
    sha512 =
      "71cd88a99ca8dbe0d02de4c7d776ca0fcf661743b539114f88f83de490e570703ab824abb12ce4dc05d02ec7c5ecad871a8c2e79aaf645d2f32be01a783ef20d";
  };
  _org_codehaus_plexus_plexus-utils_2_0_5_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "2.0.5";
    type = "jar";
    sha512 =
      "bc4402d7fe33bd743163a50b99457f2a6a4afcf5f718e6f2f0150167ba65c88501ba46c358e20642263544859dce9876a91d2112ac93dd8142149ca6bb5771de";
  };
  _org_codehaus_plexus_plexus-utils_2_0_5_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "2.0.5";
    type = "pom";
    sha512 =
      "47265e37e5ca2fde2c62c12dfbbb14f92612771df304efc6eafb3cd9c3888e80e44d34fb5a3a637a3b37140c90f7fca5670401fe6689c95b4609d57018ea39b3";
  };
  _org_codehaus_plexus_plexus-utils_3_0_8_jar = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "3.0.8";
    type = "jar";
    sha512 =
      "d6cebc0c81143671c3664914215086567adfca7314d229bc2e7af8b4814a8a5b6c6e3cdd9e9447a253bb9a7a522f851d81c48025022ea1fa4f3b5bdc1ff442ce";
  };
  _org_codehaus_plexus_plexus-utils_3_0_8_pom = fetchMaven {
    groupId = "org.codehaus.plexus";
    artifactId = "plexus-utils";
    version = "3.0.8";
    type = "pom";
    sha512 =
      "28636df203da5ca9e700bf0747d5f8603f47e692bc66708010463cb75d3ead3d304f1d6cbecabe3b6e051bab26b5325c7d2f85ac22f2f34ea6dd2fcf67101a6e";
  };
  _org_hamcrest_hamcrest-core_1_3_jar = fetchMaven {
    groupId = "org.hamcrest";
    artifactId = "hamcrest-core";
    version = "1.3";
    type = "jar";
    sha512 =
      "e237ae735aac4fa5a7253ec693191f42ef7ddce384c11d29fbf605981c0be077d086757409acad53cb5b9e53d86a07cc428d459ff0f5b00d32a8cbbca390be49";
  };
  _org_hamcrest_hamcrest-core_1_3_pom = fetchMaven {
    groupId = "org.hamcrest";
    artifactId = "hamcrest-core";
    version = "1.3";
    type = "pom";
    sha512 =
      "2f9b748225f8f6e47ae2da383f8d74568f0f4e469f387095392f516a7308eabab058877a514ec040c1a9ce8cfca77a404fa8694b391b36213d6e5b8f492f62f3";
  };
  _org_hamcrest_hamcrest-parent_1_3_pom = fetchMaven {
    groupId = "org.hamcrest";
    artifactId = "hamcrest-parent";
    version = "1.3";
    type = "pom";
    sha512 =
      "03f22bcf14820f04db8193e3af50ebd3deb7b62c9587128092f35c1e7963de5c24b6123a80bfde4833f723b100085c043b895b9df6e02e83c201834d77c7a15a";
  };
  _org_mockito_mockito-all_1_9_5_jar = fetchMaven {
    groupId = "org.mockito";
    artifactId = "mockito-all";
    version = "1.9.5";
    type = "jar";
    sha512 =
      "94a243fa7e89abbec90f2d97e2e06ccc099ff6324bd029ff5a7cee6995d143bbbe74ff7b8643ec5cda121d431359d23a61ac9847d0707c4e450c738d5bebc0e4";
  };
  _org_mockito_mockito-all_1_9_5_pom = fetchMaven {
    groupId = "org.mockito";
    artifactId = "mockito-all";
    version = "1.9.5";
    type = "pom";
    sha512 =
      "21e40ebb8a20ad9a6ec3f053a3f7fa14439da7619b91a7b674c3aaa1cc43be75690712897c21e1e8b174668e2cf68be3542518c30f5603ee687d690caa781472";
  };
  _org_slf4j_jcl-over-slf4j_1_5_6_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "jcl-over-slf4j";
    version = "1.5.6";
    type = "pom";
    sha512 =
      "e814497258d1867593d13570343bcea1e416dffc827f5a2e48e6ee7e87fa051bdb5d044a46331dd275119e4d3674ce55e9c29767e5a224895c7489e6e72666fd";
  };
  _org_slf4j_jcl-over-slf4j_1_7_5_jar = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "jcl-over-slf4j";
    version = "1.7.5";
    type = "jar";
    sha512 =
      "d8808577667f94973660a68a5b9857ba1a39eede44077921c6dc31f33ef1145082bcceebfcf1cd01a63806b0af73312f6f7728e9fa1aac83dc9c79a0d7fe8bf0";
  };
  _org_slf4j_jcl-over-slf4j_1_7_5_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "jcl-over-slf4j";
    version = "1.7.5";
    type = "pom";
    sha512 =
      "33347f77e7620bc9651718d2299e9dc572e7e41a4c9c5a4bd2b2c8d21fcb6927947a1551877b892f079636b08646b3a3c0faef60d786c3a248553722d4cd233c";
  };
  _org_slf4j_slf4j-api_1_5_6_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-api";
    version = "1.5.6";
    type = "pom";
    sha512 =
      "5650f8d3e16c56147c9a9cb51558f00ba3695c21501274fc0eaa4bad457bfac788d24aba325836b192e7327b63d5c2a3048019ba4e0ef627ddcc6f77bfb40ed5";
  };
  _org_slf4j_slf4j-api_1_7_5_jar = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-api";
    version = "1.7.5";
    type = "jar";
    sha512 =
      "fe8885069fbe999485e25fa5e019486f9661bdb99834df2ca2888981f47bd4a7685f83859a315f8e7dd208b7dd29717e2d108e6d8366755e6d971cac4cf9e437";
  };
  _org_slf4j_slf4j-api_1_7_5_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-api";
    version = "1.7.5";
    type = "pom";
    sha512 =
      "f3a14d8fe26bd19ec6891a7113ebb777cdfee02a787e60dbc5057663f877eb4f951beef1bb1c14bcd3e8daa2fafdae59ce417bd1a944a631815c746e649f8d50";
  };
  _org_slf4j_slf4j-api_1_7_6_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-api";
    version = "1.7.6";
    type = "pom";
    sha512 =
      "bb933853b6f752c022914de0e4da53a22ca160314291281e069d47d496ecec374c66956384e890ed8fc18bc8c9f2cc3f554b9e6a84e0ebced4e29a59e8229f4f";
  };
  _org_slf4j_slf4j-api_1_7_7_jar = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-api";
    version = "1.7.7";
    type = "jar";
    sha512 =
      "c47d0d78388022e38bd60fd6e613ab4ceb9cad6b2567a3d36153aefc832864a99de1f6cdcd52959f73231e5b933fd9172353434e5fd83777703f41cb40fc97a7";
  };
  _org_slf4j_slf4j-api_1_7_7_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-api";
    version = "1.7.7";
    type = "pom";
    sha512 =
      "c0f78bbc63cf27d066664b5c8efebffdaea7d6ffad4fd447e520fc70b73e9886d50d6c787d7fea6c7b169e1311de81fc861143486e0f146b1599f7f5b410a28b";
  };
  _org_slf4j_slf4j-jdk14_1_5_6_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-jdk14";
    version = "1.5.6";
    type = "pom";
    sha512 =
      "795b1378689f41e210bf00e808cb8277f2f5c9cd2c5fc0fdf35f4a58f0ee34a25a8af87b4c2d5fc55b34d20f9988588ef550d39e640bc851e0562aad09f8e843";
  };
  _org_slf4j_slf4j-parent_1_5_6_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-parent";
    version = "1.5.6";
    type = "pom";
    sha512 =
      "d482ce928527379742883691a0e14240b2479d4ef6e05ef3600770ddf0c008c7d242088dabab7d693028dc439e74e880838fd180b3a32c869e52e02ef9476606";
  };
  _org_slf4j_slf4j-parent_1_7_5_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-parent";
    version = "1.7.5";
    type = "pom";
    sha512 =
      "fc7815f04fe88d1dc6e35b70581b7c9382bd56253dc05d85951937e1e525a2fef7bdd1241c3e0e15b879f246333bb653e9d3f15da2c536d59d9af116421ca87f";
  };
  _org_slf4j_slf4j-parent_1_7_6_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-parent";
    version = "1.7.6";
    type = "pom";
    sha512 =
      "7d08d837f15885cd92f6ae4009b6dced9b6dd20c3c48b0263bcb12daa8a7cedbebedde3a598911e0adbc4318620277f4f97adcc3cceb5639ecb95abe1883f298";
  };
  _org_slf4j_slf4j-parent_1_7_7_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-parent";
    version = "1.7.7";
    type = "pom";
    sha512 =
      "b9558f8985f3d920c10e0cb73e6aa3906655335aa56fd994b729ee751959247b1e4d4b63a1b693d3c7f6bea221ceefc83d18c9866a676f29d8004dfe1a15c136";
  };
  _org_slf4j_slf4j-simple_1_7_5_jar = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-simple";
    version = "1.7.5";
    type = "jar";
    sha512 =
      "046a5cb5bc2cd57340f9288ad6401ce0bc06c49cfb5a89c4b89958b85b44985e5ec7414fd78104f64bb91b2db44274e8a26d0b893e607b6ff117a233b8145883";
  };
  _org_slf4j_slf4j-simple_1_7_5_pom = fetchMaven {
    groupId = "org.slf4j";
    artifactId = "slf4j-simple";
    version = "1.7.5";
    type = "pom";
    sha512 =
      "a6e5db95b86c0b4d686a91adb2eecc4503c57a112f2e5e3b1b7c6dc2ebfb456b5cf810278b297f5281d17f75665f3866779434d255c30c1e675b772656ef5ca9";
  };
  _org_sonatype_aether_aether_1_13_1_pom = fetchMaven {
    groupId = "org.sonatype.aether";
    artifactId = "aether";
    version = "1.13.1";
    type = "pom";
    sha512 =
      "8f6fcee3337f0049a514171e2ef61a8aff6f171ab5fd409e4dd61b596c5bd91f001d2fa3d603edce85b6636536b966aa9eadc2317b0b9ad1e575d8c0c78b1dd3";
  };
  _org_sonatype_aether_aether-api_1_13_1_jar = fetchMaven {
    groupId = "org.sonatype.aether";
    artifactId = "aether-api";
    version = "1.13.1";
    type = "jar";
    sha512 =
      "334f3c43b4357a25d402442847cdf4a5e9142a29cbe533818dd06bbee3b20e781b210159982b650319f29e3dfb3d9eca7cd21a6445988355e91b4f81021f0954";
  };
  _org_sonatype_aether_aether-api_1_13_1_pom = fetchMaven {
    groupId = "org.sonatype.aether";
    artifactId = "aether-api";
    version = "1.13.1";
    type = "pom";
    sha512 =
      "34bba83c3c7567be3c66c5dcd1e3ff59d5101d4124310449be5bea8bfa2c93e94e541276acb0ad0bb969ca948c3452bb79e8528d09aec98ee9d0cb84ce655cff";
  };
  _org_sonatype_buildsupport_buildsupport_3_pom = fetchMaven {
    groupId = "org.sonatype.buildsupport";
    artifactId = "buildsupport";
    version = "3";
    type = "pom";
    sha512 =
      "e17d37631e9c82cd408861ec641e1d7cbe87feec685944a561ddcb772ed23e517e64b8d1079562174822a2eb7c1fc62f97b99bb90323b79de3d9ea6357922740";
  };
  _org_sonatype_buildsupport_buildsupport_5_pom = fetchMaven {
    groupId = "org.sonatype.buildsupport";
    artifactId = "buildsupport";
    version = "5";
    type = "pom";
    sha512 =
      "1e66355a4dbbb0bb822e15f956843d19f906f5327502616f1c5c6a4b438875e6f98db32cb6f500aec8f56f7a1060b97bf86cc7fd1f95b6cf39a5d5e12240330b";
  };
  _org_sonatype_buildsupport_public-parent_3_pom = fetchMaven {
    groupId = "org.sonatype.buildsupport";
    artifactId = "public-parent";
    version = "3";
    type = "pom";
    sha512 =
      "41575d518aa54990e5a9d4cf987162eb550e72677e1e871095dcf228dde84553c8c9e42a29505cafca368ad088b390e74e58b655faa39933689f8235428573c7";
  };
  _org_sonatype_buildsupport_public-parent_5_pom = fetchMaven {
    groupId = "org.sonatype.buildsupport";
    artifactId = "public-parent";
    version = "5";
    type = "pom";
    sha512 =
      "cb94511fec1176403a41d7e517299cff047ac7d8b6e9ac666a545303c8fba38b13bfcd8d5066b7f20b06460506c749f2b2dcd870122064a66c1c9f0b14a5bd23";
  };
  _org_sonatype_forge_forge-parent_10_pom = fetchMaven {
    groupId = "org.sonatype.forge";
    artifactId = "forge-parent";
    version = "10";
    type = "pom";
    sha512 =
      "8a9cc1f099b074e3cc729a0cfd4a6e8ef9c4e61aabc26f42d9ea40c275a1ed403f20c17be546b36104c27ce5c2317db009c5fe077e9eb1bae17efb743d6f7bdd";
  };
  _org_sonatype_forge_forge-parent_11_pom = fetchMaven {
    groupId = "org.sonatype.forge";
    artifactId = "forge-parent";
    version = "11";
    type = "pom";
    sha512 =
      "c5bdac5da158bff1530209a78eebf484925fa45335e012f0a5e94ea71baecdd9a1ec1a1e78d1805473eb03e8301c94dde6f755a1eefa8fd8ff2fd30aebdd1cbf";
  };
  _org_sonatype_forge_forge-parent_12_pom = fetchMaven {
    groupId = "org.sonatype.forge";
    artifactId = "forge-parent";
    version = "12";
    type = "pom";
    sha512 =
      "006acae008be45636b84d9d2335b23b3266eb77c129c3be8d11c572475c010db289d45abc2801e9a3799fa6c488ac3c8132cd7d94894a5415c88fe7dad26d387";
  };
  _org_sonatype_forge_forge-parent_3_pom = fetchMaven {
    groupId = "org.sonatype.forge";
    artifactId = "forge-parent";
    version = "3";
    type = "pom";
    sha512 =
      "5b4fdaea33233c9e73427ff3e102ddaa441de5dca231e255c2030905f7d46782da6da7678ef4e7e70b59e9ff69e37bdef1abcbd4aebd592fb4c7c134f427d481";
  };
  _org_sonatype_forge_forge-parent_4_pom = fetchMaven {
    groupId = "org.sonatype.forge";
    artifactId = "forge-parent";
    version = "4";
    type = "pom";
    sha512 =
      "78b97902b6794c070c7c87be43e8d84b06136e8374f457af1f0e1669851c957a023080196c722075f7172e5e02c86f44873fc9b6ddefe54d1701e96ccde51124";
  };
  _org_sonatype_forge_forge-parent_5_pom = fetchMaven {
    groupId = "org.sonatype.forge";
    artifactId = "forge-parent";
    version = "5";
    type = "pom";
    sha512 =
      "3d6f5377ecb60c9a148b2def71844a554fbb4f8e1ae5fc6705ffb797d5a192e8bd575f4ee160b90edd166032633ad9338ef03c66fc882b300b77598980523b68";
  };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "3d8764e007e9862470bdd9c35c2fcb4aa2b9993d287b4102c29fcac506998442870890454fb16326a73bbe5cec2b16af3d1580ed263fb89a9f1b43b915c72f03";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-all_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-all";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "b2919050d1a2a8f7b301bf0b50c7ed71bf36f053ac54dd27008a04ff399582e833857191e1cd75fcc635e1227ab34fd93449f4cee25531d7fa4bc1d63a62c2c7";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-bouncycastle_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-bouncycastle";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "e4de239ddcc3b25772d9c4c26b9dcd5b49b6e0d2bf70748df89d06339ee39e0106dc3775d45bacae2cca10c2e9a478db042c39352869ad030ded8d52c3cc02b5";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-commons_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-commons";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "c1decfe074ed89d0448b7b66541ec4c81bd5f483a52ac90445f9d8633a19cde01ea9f3f38c93624ddb6197e17b663f76308b45f64a700eea0dd1c3bd4f7a376a";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-goodies_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-goodies";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "05f579138e0e6ad517fc6d97e0d20a96c694b9bc0dfc73e7f55d81f6ace754a6c873cc1dfac55e99171b860ad275d8c4932e6793aa6b39fba034cdcae438af2b";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-groovy_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-groovy";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "fd18c70c9da845125185c166a30e3d4dc48fa35f40a83d70777a68f01859ee8b2f72d7cb93a097b375e3d87f9a1d8e9f70e7b8c107ca17e8eb9d5a57a883a8b6";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-guice_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-guice";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "dcc18ebedf0ef0f2c1d12fbca68a42a42922d19411be5670958b478086ba8f6dac80972bdf41864df05abe688972642d40bc065c5a899922d036be398da86e4c";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-httpclient_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-httpclient";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "3c0d44307572f6925d1b0dec3f65603b3bc2db827dad4d21d7d0f28a575bb751b7d15eef7206daed45031c12ea52d26584935ec4159182916ee0516a2f74473a";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-jetty_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-jetty";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "a0afa379d2d0390a3db48e3643c8f16720d99ce3707047a056274b50c4ff042a0a55452da7110ecdedecd6754db13a222d756276847b957c3e61abfe588cdef3";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-logging_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-logging";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "85029d52bef3f8ea683dbf8f4ec81dda3765cf5f8049842ed140d27d04dcd5603d4d7fa216b1a1a24e939bcd3b45dfcf1ee7e3535099d045ab41e73ec2836c9b";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-maven_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-maven";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "8e6dc7c7539532a6b96831c76b46785c52dfb3707b6ba23c3cfba75d3e2ada3ce9cc51643a3a217524fa92c386d1699fe947cddceae6f308b74ad1c496ff5486";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-metrics_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-metrics";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "0beea3b4e52eb5734f254b8afc9ec1fa69feb894f0729a8872b4984ee0b3e15da176118fd8e7a24949fe5caabc43cf69829c8b7ce745c0fd4dfcc2d19c197307";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-other_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-other";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "c10db2ae557ac7a7ce5b3ecd5eed29c6e09627a55cdf61804cc37f11ed42012f399d53bba4f6dd950cccb4061c3232abd57aab36e3a8619dd34c4d4008212fdf";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-plexus_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-plexus";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "b0b89dfae4836ac23ccaf8cef17294ebed2d64ab228c59cbee911e028f74ab1b041c37706d8b055be001580b0dde4440191505ca69bdd157c3c5a24c288789aa";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-rest_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-rest";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "10eca99ebdec67baac62a522c425b52c53f59afa95dc43afc4d7f4bd9bf53397ef47f4719239e88b07ab2a1b0d12bb888a92f71a2a8bd5242745de54d0e4c751";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-shiro_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-shiro";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "68fdf4136e6d1fdbd2e511591d3810f1dd0b5405665effbc93a12a16b3b8fea368580312780ba305d82e6e0d9923b760184bc1552c296286b4013081c90df54d";
    };
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-testing_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.buildsupport";
      artifactId = "nexus-buildsupport-testing";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "eab368d9a0f78f491628df8c01591fc050e5dfbdd19605c7f57b3b473bf6a6e33e73a3f3959920d96808ff8a37dfe4b025737fddc4283a9e1a9f0c5e22278e81";
    };
  _org_sonatype_nexus_maven_nexus-common_1_6_3_jar = fetchMaven {
    groupId = "org.sonatype.nexus.maven";
    artifactId = "nexus-common";
    version = "1.6.3";
    type = "jar";
    sha512 =
      "e392cb9d4f370578ab7f952a19590a45c2e23efc0cf2ffec02d6499289a17dcf9e3baf9fbdb60166f735b0656aaf53659ac370fb085f3a714fc0282abbc3993e";
  };
  _org_sonatype_nexus_maven_nexus-common_1_6_3_pom = fetchMaven {
    groupId = "org.sonatype.nexus.maven";
    artifactId = "nexus-common";
    version = "1.6.3";
    type = "pom";
    sha512 =
      "e1cf5b0aee9008cb777b95bd8b662300bf44a179e8683d20ed4247a96a9e1c2e891e9cdccd81ac316893613340fbc8878a23602c515552f3a8da8e932ccba7cb";
  };
  _org_sonatype_nexus_maven_nexus-maven-plugins_1_6_3_pom = fetchMaven {
    groupId = "org.sonatype.nexus.maven";
    artifactId = "nexus-maven-plugins";
    version = "1.6.3";
    type = "pom";
    sha512 =
      "5eb4467d21ab67022e1224b422c12011a6ab6e1ea1c5e74c8a7f07b366c22008cb700b23bb9bae79e61562ae9457007f03cd58a7f3e7928bbbe9caf0b8ab35dd";
  };
  _org_sonatype_nexus_maven_nexus-staging_1_6_3_pom = fetchMaven {
    groupId = "org.sonatype.nexus.maven";
    artifactId = "nexus-staging";
    version = "1.6.3";
    type = "pom";
    sha512 =
      "560a2eba67cf781aa7b5dcebca55e72d3f105041971687f3c5cc10f91617ee7abe6a5546f2099687130d8876a3c4ffa97e22e357a30cd2497d92b8e4dc185dc4";
  };
  _org_sonatype_nexus_nexus-client-core_2_7_2-01_jar = fetchMaven {
    groupId = "org.sonatype.nexus";
    artifactId = "nexus-client-core";
    version = "2.7.2-01";
    type = "jar";
    sha512 =
      "2960d59dd2cc729941b4a7ab279d9dca640bb84f2da3eb8af3c7cf5d201ec862b7c34c5bc9ad0f4e2c3d6bc4cb1e7522237beedfc5e55224adb35b78ed5cd1f6";
  };
  _org_sonatype_nexus_nexus-client-core_2_7_2-01_pom = fetchMaven {
    groupId = "org.sonatype.nexus";
    artifactId = "nexus-client-core";
    version = "2.7.2-01";
    type = "pom";
    sha512 =
      "ffbf0c44fd6b3fdb86b0d8cbcf67468746a99a4f750cf04f8fb41c7bbf2bb3e42892f8d2c6ab2dabd1a804cd1e520ac52dca4060cfd6bf72b09e3bd741f61852";
  };
  _org_sonatype_nexus_nexus-components_2_7_2-01_pom = fetchMaven {
    groupId = "org.sonatype.nexus";
    artifactId = "nexus-components";
    version = "2.7.2-01";
    type = "pom";
    sha512 =
      "273950223b4429bb518a2a44af0bd2fb51085e615e6b7e0e11a99140e21c57894936ecc2755771109124053a487288a7abd8cdd99c9d0103b8dc4efb6bdb20ab";
  };
  _org_sonatype_nexus_nexus-oss_2_7_2-01_pom = fetchMaven {
    groupId = "org.sonatype.nexus";
    artifactId = "nexus-oss";
    version = "2.7.2-01";
    type = "pom";
    sha512 =
      "fe486624661be6ed21699b5c74eb07c90be4d7d40f87f7f606a8a566a86ba36f230cdd50f61823321079a6d4fcd2a323f53444ee3237eee3af91ca050218bfce";
  };
  _org_sonatype_nexus_plugins_nexus-plugins_2_7_2-01_pom = fetchMaven {
    groupId = "org.sonatype.nexus.plugins";
    artifactId = "nexus-plugins";
    version = "2.7.2-01";
    type = "pom";
    sha512 =
      "fe8edf1c1ceee1c2533f98cc165a5c817c45e109fa376fb9fdc5eafd27ca8010ef94245b1c2c4ad6e33eae359d159b65d8a8c19c8ec530205a51d306ed21ce13";
  };
  _org_sonatype_nexus_plugins_nexus-plugins-restlet1x_2_7_2-01_pom =
    fetchMaven {
      groupId = "org.sonatype.nexus.plugins";
      artifactId = "nexus-plugins-restlet1x";
      version = "2.7.2-01";
      type = "pom";
      sha512 =
        "df89ef29e4b21e53f9bac9781a5ccb21d2fd5cc065d3c5ddf709ffab72cc9fc4f232d90a17360f84d5eede7b7b059e854eb6fbf3eabcf7332b4d151f714492c1";
    };
  _org_sonatype_nexus_plugins_nexus-restlet1x-model_2_7_2-01_jar = fetchMaven {
    groupId = "org.sonatype.nexus.plugins";
    artifactId = "nexus-restlet1x-model";
    version = "2.7.2-01";
    type = "jar";
    sha512 =
      "94facc0602b904e687a4523d60ccf0f63aee7c501194d62596541b69589248ab7f4e2fffe75a83bf5bd8dec5e02a764a1332d548cfee429febddfa235dd255d9";
  };
  _org_sonatype_nexus_plugins_nexus-restlet1x-model_2_7_2-01_pom = fetchMaven {
    groupId = "org.sonatype.nexus.plugins";
    artifactId = "nexus-restlet1x-model";
    version = "2.7.2-01";
    type = "pom";
    sha512 =
      "7888bf130f447ac66b27e2052cf61ec1a49864506e737411faa6cccaf827f0f82935d73546b8c68f4f68f77237914be436b62cbe3f4372f9bd6b2cf95f89136e";
  };
  _org_sonatype_oss_oss-parent_7_pom = fetchMaven {
    groupId = "org.sonatype.oss";
    artifactId = "oss-parent";
    version = "7";
    type = "pom";
    sha512 =
      "63b0951f793ee9d25239ee44760e4d51de3b8503e438e567862306f2d175019d8617eb854bc4ee2374c39f385e0a1094c3c7097f899b2074e4acda14fe6030fb";
  };
  _org_sonatype_plexus_plexus-build-api_0_0_4_jar = fetchMaven {
    groupId = "org.sonatype.plexus";
    artifactId = "plexus-build-api";
    version = "0.0.4";
    type = "jar";
    sha512 =
      "62efa617e564958a2b427acc4fcd6b8ad407620857774827222840bbd0d349e96deceb20925a29cce3933306bdbed01abebf9b80f050d43830ce44cb86a40c23";
  };
  _org_sonatype_plexus_plexus-build-api_0_0_4_pom = fetchMaven {
    groupId = "org.sonatype.plexus";
    artifactId = "plexus-build-api";
    version = "0.0.4";
    type = "pom";
    sha512 =
      "398c55cf4b71c1a8dd2672d81c4412109fc9dacd5c2f5917905a1a09c83c8a6dfe7fb7e9f73166ef0967c38c3a5cc4fb83f1558ef4912460c9bfdd4143b13242";
  };
  _org_sonatype_plexus_plexus-cipher_1_4_pom = fetchMaven {
    groupId = "org.sonatype.plexus";
    artifactId = "plexus-cipher";
    version = "1.4";
    type = "pom";
    sha512 =
      "e185bd93cc5068baf57e19ce31bc0b44bd38adac1225c27bde09d37e912e73ea798418d1c80926080c9b7312c6437364d59460a988e0f9fbf1f51064c61e476a";
  };
  _org_sonatype_plexus_plexus-cipher_1_7_jar = fetchMaven {
    groupId = "org.sonatype.plexus";
    artifactId = "plexus-cipher";
    version = "1.7";
    type = "jar";
    sha512 =
      "0c3c5ace6a7ce2799a39af7c93586c312970c995f2e3e1138a5e2616e13d2bb8d170917fb74989a76e9a0df6aa66adcaac2a84a55dea9d71d19bbc3103e7aa87";
  };
  _org_sonatype_plexus_plexus-cipher_1_7_pom = fetchMaven {
    groupId = "org.sonatype.plexus";
    artifactId = "plexus-cipher";
    version = "1.7";
    type = "pom";
    sha512 =
      "a4756d55c11e3fdf5acd52e46db45db192320d031ff55190c7b24d22c46b8e791e6612fe1b188658adb7ccdcd316cd498116873309dc5d31605c980e71d5bce9";
  };
  _org_sonatype_plexus_plexus-sec-dispatcher_1_3_pom = fetchMaven {
    groupId = "org.sonatype.plexus";
    artifactId = "plexus-sec-dispatcher";
    version = "1.3";
    type = "pom";
    sha512 =
      "0c035de493a5cdd30e16521db30b972f4f4d2acdcff26950a61f541c771a5d1603ea83c687e0680c9bf474f90568b253d7ea752fb7d8183dfe01336fc840ba12";
  };
  _org_sonatype_plexus_plexus-sec-dispatcher_1_4_jar = fetchMaven {
    groupId = "org.sonatype.plexus";
    artifactId = "plexus-sec-dispatcher";
    version = "1.4";
    type = "jar";
    sha512 =
      "5b947edcb05a1c17648ec9fe53dd2c66b4a86dd2b950d989255f6edd636fd5d50d18b8f31b3a1736dadd9cff6790a3d0355f2ed896c3eb7f72e009199fe9957d";
  };
  _org_sonatype_plexus_plexus-sec-dispatcher_1_4_pom = fetchMaven {
    groupId = "org.sonatype.plexus";
    artifactId = "plexus-sec-dispatcher";
    version = "1.4";
    type = "pom";
    sha512 =
      "e498897d834092887afd19f32cd0e9dd8767ed123e4d9eeb97b053b191dc744bde4ce7434a0c91aa815c1975ebfe9e3fc5702769082067d11b68cbfbcec9f526";
  };
  _org_sonatype_plugins_nexus-staging-maven-plugin_1_6_3_jar = fetchMaven {
    groupId = "org.sonatype.plugins";
    artifactId = "nexus-staging-maven-plugin";
    version = "1.6.3";
    type = "jar";
    sha512 =
      "8529299bcb2656f963d57bad349feb1d5ec3a381a23fda6ecb5ddd883378abd83d53f0ff4ef7fb1064db68fa63f7dd48411dfc32a4058484189c727322ad2810";
  };
  _org_sonatype_plugins_nexus-staging-maven-plugin_1_6_3_pom = fetchMaven {
    groupId = "org.sonatype.plugins";
    artifactId = "nexus-staging-maven-plugin";
    version = "1.6.3";
    type = "pom";
    sha512 =
      "41b8405f071af990eb7e7924c29ce6e1d86a864d3f5913b537bf099894201a0df1b931a9e5b0a2996c6b6c0b837310ea7ab13a5d5a3a475de4521be8bdbbed3e";
  };
  _org_sonatype_sisu_siesta_siesta_1_5_2_pom = fetchMaven {
    groupId = "org.sonatype.sisu.siesta";
    artifactId = "siesta";
    version = "1.5.2";
    type = "pom";
    sha512 =
      "362086869d47ae01dc989728b58a9a9d3c621cd35cb50e3084b3b8751c0c34e765dee4fddc2bcedee1fc9bc8648834433e9b6936dad664c8d1a9ddd85e17abf0";
  };
  _org_sonatype_sisu_siesta_siesta-client_1_5_2_jar = fetchMaven {
    groupId = "org.sonatype.sisu.siesta";
    artifactId = "siesta-client";
    version = "1.5.2";
    type = "jar";
    sha512 =
      "d0b4c04c96cf50123c08d0d577635ca05bdd0c7322358944fd540f69fe4cee1ce5bc53aa4c660ee485dd9f94a325a12021c505e80eb8d3f1a1ae420014b14730";
  };
  _org_sonatype_sisu_siesta_siesta-client_1_5_2_pom = fetchMaven {
    groupId = "org.sonatype.sisu.siesta";
    artifactId = "siesta-client";
    version = "1.5.2";
    type = "pom";
    sha512 =
      "e20a82eb0fa3fee27a602d2c268b647a5a0e51c6e42dfe721a8953194b5d9aedeac1e6cdc799451e53d4bf9938e94d906aaaad860d767016cd7cacead598e097";
  };
  _org_sonatype_sisu_siesta_siesta-common_1_5_2_jar = fetchMaven {
    groupId = "org.sonatype.sisu.siesta";
    artifactId = "siesta-common";
    version = "1.5.2";
    type = "jar";
    sha512 =
      "9ca56cccbbb075764f9403fe622a987a6ecbc3467624c1ed1220a9f2bb93609f6bb9f4ef7285f1164c145eed7fd43d6223d9697ab9483978d08f4386013aa59e";
  };
  _org_sonatype_sisu_siesta_siesta-common_1_5_2_pom = fetchMaven {
    groupId = "org.sonatype.sisu.siesta";
    artifactId = "siesta-common";
    version = "1.5.2";
    type = "pom";
    sha512 =
      "63f823e87f62bbe9eddda5b392b5408a0837029779773473efc453a1bf341713aeffd3a3344e70f2fe0f3141b7d7282cdad0bd7c81ba848d39c49351235fa9ae";
  };
  _org_sonatype_sisu_sisu-charger_1_1_jar = fetchMaven {
    groupId = "org.sonatype.sisu";
    artifactId = "sisu-charger";
    version = "1.1";
    type = "jar";
    sha512 =
      "c17ba3155d6a46b08b32355a1296591b5ade578e153a851307160a206ef6d52081ac7d828be1d2e0572597cabd127b13eca5f18fc2affcebfa6b4f004019b48c";
  };
  _org_sonatype_sisu_sisu-charger_1_1_pom = fetchMaven {
    groupId = "org.sonatype.sisu";
    artifactId = "sisu-charger";
    version = "1.1";
    type = "pom";
    sha512 =
      "76d755639263ede9831386cb7b4b5d26aba44dbcb439085379815c8545f7344a4a71bd99eee05973b3afca8c7995b9eff586ceacecb3aba3b152fa0735cb381a";
  };
  _org_sonatype_spice_spice-parent_10_pom = fetchMaven {
    groupId = "org.sonatype.spice";
    artifactId = "spice-parent";
    version = "10";
    type = "pom";
    sha512 =
      "48c905850149a6dc457baaf685f96f38a007072252d7a6a65cb795f2a07c70e3e3b798cb7140d46fc8ab5d5a7056fbd0eed48f41e244c4674af3aadbb833f11e";
  };
  _org_sonatype_spice_spice-parent_12_pom = fetchMaven {
    groupId = "org.sonatype.spice";
    artifactId = "spice-parent";
    version = "12";
    type = "pom";
    sha512 =
      "0d409a3c9758ada833a1b835463dd1d0e6d81f9f86c81153d04729cca93e6e6464596749a701febeb90c6d6118a0866e323ed5534c25e345d5947276650ed3d7";
  };
  _org_sonatype_spice_spice-parent_15_pom = fetchMaven {
    groupId = "org.sonatype.spice";
    artifactId = "spice-parent";
    version = "15";
    type = "pom";
    sha512 =
      "22e980d0a1b3b3cd1a16faf24e07ea71d281152c352083aa21f5a4f05bb3416a2294f632d8a76db6b4acb805769a99d8845becdea80e269b954242c0dbd379ac";
  };
  _org_sonatype_spice_spice-parent_17_pom = fetchMaven {
    groupId = "org.sonatype.spice";
    artifactId = "spice-parent";
    version = "17";
    type = "pom";
    sha512 =
      "dcb3c40ad537f5b0a2d1125b4cfd51e98a1b52b67801a938c110e4a267b1555eab663034d6fef5b32c6bafc8bd70eecf704f44d6b3141fe3cb952af5bd5c8c65";
  };
  _org_sonatype_spice_spice-parent_18_pom = fetchMaven {
    groupId = "org.sonatype.spice";
    artifactId = "spice-parent";
    version = "18";
    type = "pom";
    sha512 =
      "81b227aba7d417bb4e5fcfcf6d21506faab5e47cc117108b4bf602075f9ff387e4c62d4dfa43cb4a2ade492302863b16f5811de76bbb2fe89342004f3a6d5c86";
  };
  _org_sonatype_spice_spice-parent_20_pom = fetchMaven {
    groupId = "org.sonatype.spice";
    artifactId = "spice-parent";
    version = "20";
    type = "pom";
    sha512 =
      "77e70bd071072bbdc20f3de8563274076d75f4eaf78b1430d28fabd134a5f58a4e6fc4273efb6ff94fea66522a177abe000d72c24ac4e7802f979ca3d9dbafed";
  };
  _org_sonatype_spice_zapper_spice-zapper_1_2_jar = fetchMaven {
    groupId = "org.sonatype.spice.zapper";
    artifactId = "spice-zapper";
    version = "1.2";
    type = "jar";
    sha512 =
      "12af74c1f4007a9e9e5074657a58e00c49819b37a20bd7e9bdec4dd1f15ffbf0553c5dcc964851f9f3eb359de8f2c28865f7ca9e576ee521c540f8d113c91a71";
  };
  _org_sonatype_spice_zapper_spice-zapper_1_2_pom = fetchMaven {
    groupId = "org.sonatype.spice.zapper";
    artifactId = "spice-zapper";
    version = "1.2";
    type = "pom";
    sha512 =
      "1d0bb52e838c1488436b0dd89114d7fd2cae9aaed9ac43c9b44ce920237934bf4429951b6e49b345d09909978a6de2e1dd3b4f8a4494be72e50c4685cac42506";
  };
  _xmlpull_xmlpull_1_1_3_1_jar = fetchMaven {
    groupId = "xmlpull";
    artifactId = "xmlpull";
    version = "1.1.3.1";
    type = "jar";
    sha512 =
      "54d1090623497e81270b2af633268656e8855e1edce2217886431039516a391ba9f8d8db3c21a0b5e51c7f7cb672d63ebe77be75708b760b06f399486960f261";
  };
  _xmlpull_xmlpull_1_1_3_1_pom = fetchMaven {
    groupId = "xmlpull";
    artifactId = "xmlpull";
    version = "1.1.3.1";
    type = "pom";
    sha512 =
      "88bc2e6da97259215867f3593a99c6df31a6fc7de6dec2a4931f98cd7becdca0e96979eb26a9958005682555b86cc0415357e17ae962a98f59a1c6eac7ab387b";
  };
  _xpp3_xpp3_min_1_1_4c_jar = fetchMaven {
    groupId = "xpp3";
    artifactId = "xpp3_min";
    version = "1.1.4c";
    type = "jar";
    sha512 =
      "34989289ce8ed861499f31742ee1e7b9dc3c59973ce915a7b561d33d98968e77db5bb94c1692802ccdbd86d04caa7db67748efafb1402428b2d6ae3056497618";
  };
  _xpp3_xpp3_min_1_1_4c_pom = fetchMaven {
    groupId = "xpp3";
    artifactId = "xpp3_min";
    version = "1.1.4c";
    type = "pom";
    sha512 =
      "31f0799bacc8de2d9d315cb5c8fcd014e445266a4fea30bcaf303027cf4bde54a0d2d278d9c6f01406f16e5514e0fee17c7dd7333b69747d1cb00470e96017ab";
  };

in [
  _backport-util-concurrent_backport-util-concurrent_3_1_pom
  _ch_qos_logback_logback-classic_1_1_2_jar
  _ch_qos_logback_logback-classic_1_1_2_pom
  _ch_qos_logback_logback-core_1_1_2_jar
  _ch_qos_logback_logback-core_1_1_2_pom
  _ch_qos_logback_logback-parent_1_1_2_pom
  _classworlds_classworlds_1_1-alpha-2_pom
  _classworlds_classworlds_1_1_jar
  _classworlds_classworlds_1_1_pom
  _com_google_code_findbugs_jsr305_2_0_1_jar
  _com_google_code_findbugs_jsr305_2_0_1_pom
  _com_google_collections_google-collections_1_0_jar
  _com_google_collections_google-collections_1_0_pom
  _com_google_google_1_pom
  _com_google_guava_guava_14_0_1_jar
  _com_google_guava_guava_14_0_1_pom
  _com_google_guava_guava-parent_14_0_1_pom
  _com_google_protobuf_protobuf-java_2_4_1_jar
  _com_google_protobuf_protobuf-java_2_4_1_pom
  _com_intellij_annotations_9_0_4_jar
  _com_intellij_annotations_9_0_4_pom
  _commons-beanutils_commons-beanutils-core_1_8_3_jar
  _commons-beanutils_commons-beanutils-core_1_8_3_pom
  _commons-cli_commons-cli_1_0_jar
  _commons-cli_commons-cli_1_0_pom
  _commons-cli_commons-cli_1_2_jar
  _commons-cli_commons-cli_1_2_pom
  _commons-codec_commons-codec_1_6_jar
  _commons-codec_commons-codec_1_6_pom
  _commons-io_commons-io_2_4_jar
  _commons-io_commons-io_2_4_pom
  _commons-lang_commons-lang_2_3_jar
  _commons-lang_commons-lang_2_3_pom
  _commons-lang_commons-lang_2_6_jar
  _commons-lang_commons-lang_2_6_pom
  _commons-logging_commons-logging-api_1_1_jar
  _commons-logging_commons-logging-api_1_1_pom
  _com_sun_jersey_contribs_jersey-apache-client4_1_17_1_jar
  _com_sun_jersey_contribs_jersey-apache-client4_1_17_1_pom
  _com_sun_jersey_contribs_jersey-contribs_1_17_1_pom
  _com_sun_jersey_jersey-client_1_17_1_jar
  _com_sun_jersey_jersey-client_1_17_1_pom
  _com_sun_jersey_jersey-core_1_17_1_jar
  _com_sun_jersey_jersey-core_1_17_1_pom
  _com_sun_jersey_jersey-json_1_17_1_jar
  _com_sun_jersey_jersey-json_1_17_1_pom
  _com_sun_jersey_jersey-project_1_17_1_pom
  _com_sun_xml_bind_jaxb-impl_2_2_3-1_jar
  _com_sun_xml_bind_jaxb-impl_2_2_3-1_pom
  _com_thoughtworks_xstream_xstream_1_4_5_jar
  _com_thoughtworks_xstream_xstream_1_4_5_pom
  _com_thoughtworks_xstream_xstream-parent_1_4_5_pom
  _javax_inject_javax_inject_1_jar
  _javax_inject_javax_inject_1_pom
  _javax_validation_validation-api_1_1_0_Final_jar
  _javax_validation_validation-api_1_1_0_Final_pom
  _javax_ws_rs_jsr311-api_1_1_1_jar
  _javax_ws_rs_jsr311-api_1_1_1_pom
  _joda-time_joda-time_2_2_jar
  _joda-time_joda-time_2_2_pom
  _junit_junit_3_8_1_jar
  _junit_junit_3_8_1_pom
  _junit_junit_3_8_2_jar
  _junit_junit_3_8_2_pom
  _junit_junit_4_11_jar
  _junit_junit_4_11_pom
  _log4j_log4j_1_2_12_jar
  _log4j_log4j_1_2_12_pom
  _net_java_jvnet-parent_1_pom
  _net_sf_jwordnet_jwnl_1_3_3_jar
  _net_sf_jwordnet_jwnl_1_3_3_pom
  _org_apache_apache_10_pom
  _org_apache_apache_11_pom
  _org_apache_apache_13_pom
  _org_apache_apache_14_pom
  _org_apache_apache_3_pom
  _org_apache_apache_4_pom
  _org_apache_apache_5_pom
  _org_apache_apache_7_pom
  _org_apache_apache_9_pom
  _org_apache_commons_commons-lang3_3_1_jar
  _org_apache_commons_commons-lang3_3_1_pom
  _org_apache_commons_commons-parent_11_pom
  _org_apache_commons_commons-parent_17_pom
  _org_apache_commons_commons-parent_22_pom
  _org_apache_commons_commons-parent_25_pom
  _org_apache_httpcomponents_httpclient_4_3_5_jar
  _org_apache_httpcomponents_httpclient_4_3_5_pom
  _org_apache_httpcomponents_httpcomponents-client_4_3_5_pom
  _org_apache_httpcomponents_httpcomponents-core_4_3_2_pom
  _org_apache_httpcomponents_httpcore_4_3_2_jar
  _org_apache_httpcomponents_httpcore_4_3_2_pom
  _org_apache_httpcomponents_project_7_pom
  _org_apache_lucene_lucene-analyzers-common_4_9_0_jar
  _org_apache_lucene_lucene-analyzers-common_4_9_0_pom
  _org_apache_lucene_lucene-core_4_9_0_jar
  _org_apache_lucene_lucene-core_4_9_0_pom
  _org_apache_lucene_lucene-parent_4_9_0_pom
  _org_apache_lucene_lucene-queries_4_9_0_jar
  _org_apache_lucene_lucene-queries_4_9_0_pom
  _org_apache_lucene_lucene-queryparser_4_9_0_jar
  _org_apache_lucene_lucene-queryparser_4_9_0_pom
  _org_apache_lucene_lucene-sandbox_4_9_0_jar
  _org_apache_lucene_lucene-sandbox_4_9_0_pom
  _org_apache_lucene_lucene-solr-grandparent_4_9_0_pom
  _org_apache_maven_doxia_doxia_1_0-alpha-10_pom
  _org_apache_maven_doxia_doxia_1_0-alpha-7_pom
  _org_apache_maven_doxia_doxia-sink-api_1_0-alpha-10_jar
  _org_apache_maven_doxia_doxia-sink-api_1_0-alpha-10_pom
  _org_apache_maven_doxia_doxia-sink-api_1_0-alpha-7_jar
  _org_apache_maven_doxia_doxia-sink-api_1_0-alpha-7_pom
  _org_apache_maven_enforcer_enforcer_1_0_pom
  _org_apache_maven_enforcer_enforcer-api_1_0_jar
  _org_apache_maven_enforcer_enforcer-api_1_0_pom
  _org_apache_maven_enforcer_enforcer-rules_1_0_jar
  _org_apache_maven_enforcer_enforcer-rules_1_0_pom
  _org_apache_maven_maven_2_0_6_pom
  _org_apache_maven_maven_2_0_8_pom
  _org_apache_maven_maven_2_0_9_pom
  _org_apache_maven_maven_2_2_1_pom
  _org_apache_maven_maven_3_0_4_pom
  _org_apache_maven_maven-artifact_2_0_6_jar
  _org_apache_maven_maven-artifact_2_0_6_pom
  _org_apache_maven_maven-artifact_2_0_9_jar
  _org_apache_maven_maven-artifact_2_0_9_pom
  _org_apache_maven_maven-artifact_2_2_1_pom
  _org_apache_maven_maven-artifact-manager_2_0_6_jar
  _org_apache_maven_maven-artifact-manager_2_0_6_pom
  _org_apache_maven_maven-artifact-manager_2_0_9_jar
  _org_apache_maven_maven-artifact-manager_2_0_9_pom
  _org_apache_maven_maven-artifact-manager_2_2_1_pom
  _org_apache_maven_maven-core_2_0_6_jar
  _org_apache_maven_maven-core_2_0_6_pom
  _org_apache_maven_maven-core_2_0_9_jar
  _org_apache_maven_maven-core_2_0_9_pom
  _org_apache_maven_maven-core_2_2_1_pom
  _org_apache_maven_maven-error-diagnostics_2_0_6_jar
  _org_apache_maven_maven-error-diagnostics_2_0_6_pom
  _org_apache_maven_maven-error-diagnostics_2_0_9_jar
  _org_apache_maven_maven-error-diagnostics_2_0_9_pom
  _org_apache_maven_maven-error-diagnostics_2_2_1_pom
  _org_apache_maven_maven-model_2_0_6_jar
  _org_apache_maven_maven-model_2_0_6_pom
  _org_apache_maven_maven-model_2_0_8_pom
  _org_apache_maven_maven-model_2_0_9_jar
  _org_apache_maven_maven-model_2_0_9_pom
  _org_apache_maven_maven-model_2_2_1_pom
  _org_apache_maven_maven-model_3_0_4_jar
  _org_apache_maven_maven-model_3_0_4_pom
  _org_apache_maven_maven-monitor_2_0_6_jar
  _org_apache_maven_maven-monitor_2_0_6_pom
  _org_apache_maven_maven-monitor_2_0_9_jar
  _org_apache_maven_maven-monitor_2_0_9_pom
  _org_apache_maven_maven-monitor_2_2_1_pom
  _org_apache_maven_maven-parent_11_pom
  _org_apache_maven_maven-parent_17_pom
  _org_apache_maven_maven-parent_21_pom
  _org_apache_maven_maven-parent_22_pom
  _org_apache_maven_maven-parent_23_pom
  _org_apache_maven_maven-parent_24_pom
  _org_apache_maven_maven-parent_5_pom
  _org_apache_maven_maven-parent_6_pom
  _org_apache_maven_maven-parent_8_pom
  _org_apache_maven_maven-plugin-api_2_0_6_jar
  _org_apache_maven_maven-plugin-api_2_0_6_pom
  _org_apache_maven_maven-plugin-api_2_0_9_jar
  _org_apache_maven_maven-plugin-api_2_0_9_pom
  _org_apache_maven_maven-plugin-api_2_2_1_pom
  _org_apache_maven_maven-plugin-descriptor_2_0_6_jar
  _org_apache_maven_maven-plugin-descriptor_2_0_6_pom
  _org_apache_maven_maven-plugin-descriptor_2_0_9_jar
  _org_apache_maven_maven-plugin-descriptor_2_0_9_pom
  _org_apache_maven_maven-plugin-descriptor_2_2_1_pom
  _org_apache_maven_maven-plugin-parameter-documenter_2_0_6_jar
  _org_apache_maven_maven-plugin-parameter-documenter_2_0_6_pom
  _org_apache_maven_maven-plugin-parameter-documenter_2_0_9_jar
  _org_apache_maven_maven-plugin-parameter-documenter_2_0_9_pom
  _org_apache_maven_maven-plugin-parameter-documenter_2_2_1_pom
  _org_apache_maven_maven-plugin-registry_2_0_6_jar
  _org_apache_maven_maven-plugin-registry_2_0_6_pom
  _org_apache_maven_maven-plugin-registry_2_0_9_jar
  _org_apache_maven_maven-plugin-registry_2_0_9_pom
  _org_apache_maven_maven-plugin-registry_2_2_1_pom
  _org_apache_maven_maven-profile_2_0_6_jar
  _org_apache_maven_maven-profile_2_0_6_pom
  _org_apache_maven_maven-profile_2_0_9_jar
  _org_apache_maven_maven-profile_2_0_9_pom
  _org_apache_maven_maven-profile_2_2_1_pom
  _org_apache_maven_maven-project_2_0_6_jar
  _org_apache_maven_maven-project_2_0_6_pom
  _org_apache_maven_maven-project_2_0_9_jar
  _org_apache_maven_maven-project_2_0_9_pom
  _org_apache_maven_maven-project_2_2_1_pom
  _org_apache_maven_maven-repository-metadata_2_0_6_jar
  _org_apache_maven_maven-repository-metadata_2_0_6_pom
  _org_apache_maven_maven-repository-metadata_2_0_9_jar
  _org_apache_maven_maven-repository-metadata_2_0_9_pom
  _org_apache_maven_maven-repository-metadata_2_2_1_pom
  _org_apache_maven_maven-settings_2_0_6_jar
  _org_apache_maven_maven-settings_2_0_6_pom
  _org_apache_maven_maven-settings_2_0_9_jar
  _org_apache_maven_maven-settings_2_0_9_pom
  _org_apache_maven_maven-settings_2_2_1_pom
  _org_apache_maven_maven-toolchain_1_0_jar
  _org_apache_maven_maven-toolchain_1_0_pom
  _org_apache_maven_maven-toolchain_2_0_9_jar
  _org_apache_maven_maven-toolchain_2_0_9_pom
  _org_apache_maven_plugins_maven-assembly-plugin_2_4_1_jar
  _org_apache_maven_plugins_maven-assembly-plugin_2_4_1_pom
  _org_apache_maven_plugins_maven-compiler-plugin_3_1_jar
  _org_apache_maven_plugins_maven-compiler-plugin_3_1_pom
  _org_apache_maven_plugins_maven-enforcer-plugin_1_0_jar
  _org_apache_maven_plugins_maven-enforcer-plugin_1_0_pom
  _org_apache_maven_plugins_maven-jar-plugin_2_4_jar
  _org_apache_maven_plugins_maven-jar-plugin_2_4_pom
  _org_apache_maven_plugins_maven-javadoc-plugin_2_9_1_jar
  _org_apache_maven_plugins_maven-javadoc-plugin_2_9_1_pom
  _org_apache_maven_plugins_maven-plugins_22_pom
  _org_apache_maven_plugins_maven-plugins_23_pom
  _org_apache_maven_plugins_maven-plugins_24_pom
  _org_apache_maven_plugins_maven-plugins_25_pom
  _org_apache_maven_plugins_maven-resources-plugin_2_6_jar
  _org_apache_maven_plugins_maven-resources-plugin_2_6_pom
  _org_apache_maven_plugins_maven-shade-plugin_2_3_jar
  _org_apache_maven_plugins_maven-shade-plugin_2_3_pom
  _org_apache_maven_plugins_maven-source-plugin_2_3_jar
  _org_apache_maven_plugins_maven-source-plugin_2_3_pom
  _org_apache_maven_plugins_maven-surefire-plugin_2_17_jar
  _org_apache_maven_plugins_maven-surefire-plugin_2_17_pom
  _org_apache_maven_plugin-tools_maven-plugin-annotations_3_2_jar
  _org_apache_maven_plugin-tools_maven-plugin-annotations_3_2_pom
  _org_apache_maven_plugin-tools_maven-plugin-tools_3_2_pom
  _org_apache_maven_reporting_maven-reporting_2_0_6_pom
  _org_apache_maven_reporting_maven-reporting_2_0_9_pom
  _org_apache_maven_reporting_maven-reporting-api_2_0_6_jar
  _org_apache_maven_reporting_maven-reporting-api_2_0_6_pom
  _org_apache_maven_reporting_maven-reporting-api_2_0_9_jar
  _org_apache_maven_reporting_maven-reporting-api_2_0_9_pom
  _org_apache_maven_shared_maven-common-artifact-filters_1_2_jar
  _org_apache_maven_shared_maven-common-artifact-filters_1_2_pom
  _org_apache_maven_shared_maven-dependency-tree_1_2_jar
  _org_apache_maven_shared_maven-dependency-tree_1_2_pom
  _org_apache_maven_shared_maven-filtering_1_1_jar
  _org_apache_maven_shared_maven-filtering_1_1_pom
  _org_apache_maven_shared_maven-plugin-testing-harness_1_1_pom
  _org_apache_maven_shared_maven-shared-components_11_pom
  _org_apache_maven_shared_maven-shared-components_17_pom
  _org_apache_maven_shared_maven-shared-components_18_pom
  _org_apache_maven_shared_maven-shared-components_19_pom
  _org_apache_maven_shared_maven-shared-components_7_pom
  _org_apache_maven_shared_maven-shared-components_9_pom
  _org_apache_maven_shared_maven-shared-incremental_1_1_jar
  _org_apache_maven_shared_maven-shared-incremental_1_1_pom
  _org_apache_maven_shared_maven-shared-utils_0_1_jar
  _org_apache_maven_shared_maven-shared-utils_0_1_pom
  _org_apache_maven_surefire_maven-surefire-common_2_17_jar
  _org_apache_maven_surefire_maven-surefire-common_2_17_pom
  _org_apache_maven_surefire_surefire_2_17_pom
  _org_apache_maven_surefire_surefire-api_2_17_jar
  _org_apache_maven_surefire_surefire-api_2_17_pom
  _org_apache_maven_surefire_surefire-booter_2_17_jar
  _org_apache_maven_surefire_surefire-booter_2_17_pom
  _org_apache_maven_surefire_surefire-junit4_2_17_jar
  _org_apache_maven_surefire_surefire-junit4_2_17_pom
  _org_apache_maven_surefire_surefire-providers_2_17_pom
  _org_apache_opennlp_opennlp_1_5_3_pom
  _org_apache_opennlp_opennlp-maxent_3_0_3_jar
  _org_apache_opennlp_opennlp-maxent_3_0_3_pom
  _org_apache_opennlp_opennlp-tools_1_5_3_jar
  _org_apache_opennlp_opennlp-tools_1_5_3_pom
  _org_apache_xbean_xbean_3_4_pom
  _org_apache_xbean_xbean-reflect_3_4_jar
  _org_apache_xbean_xbean-reflect_3_4_pom
  _org_beanshell_beanshell_2_0b4_pom
  _org_beanshell_bsh_2_0b4_jar
  _org_beanshell_bsh_2_0b4_pom
  _org_codehaus_codehaus-parent_3_pom
  _org_codehaus_jackson_jackson-core-asl_1_9_2_jar
  _org_codehaus_jackson_jackson-core-asl_1_9_2_pom
  _org_codehaus_jackson_jackson-jaxrs_1_9_2_jar
  _org_codehaus_jackson_jackson-jaxrs_1_9_2_pom
  _org_codehaus_jackson_jackson-mapper-asl_1_9_2_jar
  _org_codehaus_jackson_jackson-mapper-asl_1_9_2_pom
  _org_codehaus_jackson_jackson-xc_1_9_2_jar
  _org_codehaus_jackson_jackson-xc_1_9_2_pom
  _org_codehaus_plexus_plexus_1_0_11_pom
  _org_codehaus_plexus_plexus_1_0_4_pom
  _org_codehaus_plexus_plexus_1_0_8_pom
  _org_codehaus_plexus_plexus_2_0_2_pom
  _org_codehaus_plexus_plexus_2_0_3_pom
  _org_codehaus_plexus_plexus_2_0_6_pom
  _org_codehaus_plexus_plexus_2_0_7_pom
  _org_codehaus_plexus_plexus_3_0_1_pom
  _org_codehaus_plexus_plexus_3_2_pom
  _org_codehaus_plexus_plexus_3_3_1_pom
  _org_codehaus_plexus_plexus-archiver_1_0-alpha-7_pom
  _org_codehaus_plexus_plexus-classworlds_2_2_2_jar
  _org_codehaus_plexus_plexus-classworlds_2_2_2_pom
  _org_codehaus_plexus_plexus-compiler_2_2_pom
  _org_codehaus_plexus_plexus-compiler-api_2_2_jar
  _org_codehaus_plexus_plexus-compiler-api_2_2_pom
  _org_codehaus_plexus_plexus-compiler-javac_2_2_jar
  _org_codehaus_plexus_plexus-compiler-javac_2_2_pom
  _org_codehaus_plexus_plexus-compiler-manager_2_2_jar
  _org_codehaus_plexus_plexus-compiler-manager_2_2_pom
  _org_codehaus_plexus_plexus-compilers_2_2_pom
  _org_codehaus_plexus_plexus-component-annotations_1_5_5_jar
  _org_codehaus_plexus_plexus-component-annotations_1_5_5_pom
  _org_codehaus_plexus_plexus-components_1_1_14_pom
  _org_codehaus_plexus_plexus-components_1_1_15_pom
  _org_codehaus_plexus_plexus-components_1_1_4_pom
  _org_codehaus_plexus_plexus-components_1_1_6_pom
  _org_codehaus_plexus_plexus-components_1_3_1_pom
  _org_codehaus_plexus_plexus-container-default_1_0-alpha-8_pom
  _org_codehaus_plexus_plexus-container-default_1_0-alpha-9_pom
  _org_codehaus_plexus_plexus-container-default_1_0-alpha-9-stable-1_jar
  _org_codehaus_plexus_plexus-container-default_1_0-alpha-9-stable-1_pom
  _org_codehaus_plexus_plexus-container-default_1_5_5_jar
  _org_codehaus_plexus_plexus-container-default_1_5_5_pom
  _org_codehaus_plexus_plexus-containers_1_0_3_pom
  _org_codehaus_plexus_plexus-containers_1_5_5_pom
  _org_codehaus_plexus_plexus-i18n_1_0-beta-6_jar
  _org_codehaus_plexus_plexus-i18n_1_0-beta-6_pom
  _org_codehaus_plexus_plexus-interactivity-api_1_0-alpha-4_jar
  _org_codehaus_plexus_plexus-interactivity-api_1_0-alpha-4_pom
  _org_codehaus_plexus_plexus-interpolation_1_11_pom
  _org_codehaus_plexus_plexus-interpolation_1_12_pom
  _org_codehaus_plexus_plexus-interpolation_1_13_jar
  _org_codehaus_plexus_plexus-interpolation_1_13_pom
  _org_codehaus_plexus_plexus-interpolation_1_15_jar
  _org_codehaus_plexus_plexus-interpolation_1_15_pom
  _org_codehaus_plexus_plexus-utils_1_0_4_pom
  _org_codehaus_plexus_plexus-utils_1_4_1_pom
  _org_codehaus_plexus_plexus-utils_1_4_5_pom
  _org_codehaus_plexus_plexus-utils_1_5_15_pom
  _org_codehaus_plexus_plexus-utils_1_5_1_jar
  _org_codehaus_plexus_plexus-utils_1_5_1_pom
  _org_codehaus_plexus_plexus-utils_1_5_5_pom
  _org_codehaus_plexus_plexus-utils_1_5_8_jar
  _org_codehaus_plexus_plexus-utils_1_5_8_pom
  _org_codehaus_plexus_plexus-utils_2_0_5_jar
  _org_codehaus_plexus_plexus-utils_2_0_5_pom
  _org_codehaus_plexus_plexus-utils_3_0_8_jar
  _org_codehaus_plexus_plexus-utils_3_0_8_pom
  _org_hamcrest_hamcrest-core_1_3_jar
  _org_hamcrest_hamcrest-core_1_3_pom
  _org_hamcrest_hamcrest-parent_1_3_pom
  _org_mockito_mockito-all_1_9_5_jar
  _org_mockito_mockito-all_1_9_5_pom
  _org_slf4j_jcl-over-slf4j_1_5_6_pom
  _org_slf4j_jcl-over-slf4j_1_7_5_jar
  _org_slf4j_jcl-over-slf4j_1_7_5_pom
  _org_slf4j_slf4j-api_1_5_6_pom
  _org_slf4j_slf4j-api_1_7_5_jar
  _org_slf4j_slf4j-api_1_7_5_pom
  _org_slf4j_slf4j-api_1_7_6_pom
  _org_slf4j_slf4j-api_1_7_7_jar
  _org_slf4j_slf4j-api_1_7_7_pom
  _org_slf4j_slf4j-jdk14_1_5_6_pom
  _org_slf4j_slf4j-parent_1_5_6_pom
  _org_slf4j_slf4j-parent_1_7_5_pom
  _org_slf4j_slf4j-parent_1_7_6_pom
  _org_slf4j_slf4j-parent_1_7_7_pom
  _org_slf4j_slf4j-simple_1_7_5_jar
  _org_slf4j_slf4j-simple_1_7_5_pom
  _org_sonatype_aether_aether_1_13_1_pom
  _org_sonatype_aether_aether-api_1_13_1_jar
  _org_sonatype_aether_aether-api_1_13_1_pom
  _org_sonatype_buildsupport_buildsupport_3_pom
  _org_sonatype_buildsupport_buildsupport_5_pom
  _org_sonatype_buildsupport_public-parent_3_pom
  _org_sonatype_buildsupport_public-parent_5_pom
  _org_sonatype_forge_forge-parent_10_pom
  _org_sonatype_forge_forge-parent_11_pom
  _org_sonatype_forge_forge-parent_12_pom
  _org_sonatype_forge_forge-parent_3_pom
  _org_sonatype_forge_forge-parent_4_pom
  _org_sonatype_forge_forge-parent_5_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-all_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-bouncycastle_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-commons_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-goodies_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-groovy_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-guice_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-httpclient_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-jetty_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-logging_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-maven_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-metrics_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-other_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-plexus_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-rest_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-shiro_2_7_2-01_pom
  _org_sonatype_nexus_buildsupport_nexus-buildsupport-testing_2_7_2-01_pom
  _org_sonatype_nexus_maven_nexus-common_1_6_3_jar
  _org_sonatype_nexus_maven_nexus-common_1_6_3_pom
  _org_sonatype_nexus_maven_nexus-maven-plugins_1_6_3_pom
  _org_sonatype_nexus_maven_nexus-staging_1_6_3_pom
  _org_sonatype_nexus_nexus-client-core_2_7_2-01_jar
  _org_sonatype_nexus_nexus-client-core_2_7_2-01_pom
  _org_sonatype_nexus_nexus-components_2_7_2-01_pom
  _org_sonatype_nexus_nexus-oss_2_7_2-01_pom
  _org_sonatype_nexus_plugins_nexus-plugins_2_7_2-01_pom
  _org_sonatype_nexus_plugins_nexus-plugins-restlet1x_2_7_2-01_pom
  _org_sonatype_nexus_plugins_nexus-restlet1x-model_2_7_2-01_jar
  _org_sonatype_nexus_plugins_nexus-restlet1x-model_2_7_2-01_pom
  _org_sonatype_oss_oss-parent_7_pom
  _org_sonatype_plexus_plexus-build-api_0_0_4_jar
  _org_sonatype_plexus_plexus-build-api_0_0_4_pom
  _org_sonatype_plexus_plexus-cipher_1_4_pom
  _org_sonatype_plexus_plexus-cipher_1_7_jar
  _org_sonatype_plexus_plexus-cipher_1_7_pom
  _org_sonatype_plexus_plexus-sec-dispatcher_1_3_pom
  _org_sonatype_plexus_plexus-sec-dispatcher_1_4_jar
  _org_sonatype_plexus_plexus-sec-dispatcher_1_4_pom
  _org_sonatype_plugins_nexus-staging-maven-plugin_1_6_3_jar
  _org_sonatype_plugins_nexus-staging-maven-plugin_1_6_3_pom
  _org_sonatype_sisu_siesta_siesta_1_5_2_pom
  _org_sonatype_sisu_siesta_siesta-client_1_5_2_jar
  _org_sonatype_sisu_siesta_siesta-client_1_5_2_pom
  _org_sonatype_sisu_siesta_siesta-common_1_5_2_jar
  _org_sonatype_sisu_siesta_siesta-common_1_5_2_pom
  _org_sonatype_sisu_sisu-charger_1_1_jar
  _org_sonatype_sisu_sisu-charger_1_1_pom
  _org_sonatype_spice_spice-parent_10_pom
  _org_sonatype_spice_spice-parent_12_pom
  _org_sonatype_spice_spice-parent_15_pom
  _org_sonatype_spice_spice-parent_17_pom
  _org_sonatype_spice_spice-parent_18_pom
  _org_sonatype_spice_spice-parent_20_pom
  _org_sonatype_spice_zapper_spice-zapper_1_2_jar
  _org_sonatype_spice_zapper_spice-zapper_1_2_pom
  _xmlpull_xmlpull_1_1_3_1_jar
  _xmlpull_xmlpull_1_1_3_1_pom
  _xpp3_xpp3_min_1_1_4c_jar
  _xpp3_xpp3_min_1_1_4c_pom
]


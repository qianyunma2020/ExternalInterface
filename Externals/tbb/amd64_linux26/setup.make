----------> uses
#
# Selection :
use CMT v1r25 (/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib)
----------> tags
CMTv1 (from CMTVERSION)
CMTr25 (from CMTVERSION)
CMTp0 (from CMTVERSION)
Linux (from uname) package [CMT] implies [Unix]
amd64_linux26 (from CMTCONFIG)
ExternalInterface_no_config (from PROJECT) excludes [ExternalInterface_config]
ExternalInterface_no_root (from PROJECT) excludes [ExternalInterface_root]
ExternalInterface_cleanup (from PROJECT) excludes [ExternalInterface_no_cleanup]
ExternalInterface_scripts (from PROJECT) excludes [ExternalInterface_no_scripts]
ExternalInterface_prototypes (from PROJECT) excludes [ExternalInterface_no_prototypes]
ExternalInterface_without_installarea (from PROJECT) excludes [ExternalInterface_with_installarea]
ExternalInterface_without_version_directory (from PROJECT) excludes [ExternalInterface_with_version_directory]
ExternalInterface (from PROJECT)
x86_64 (from package CMT)
sl65 (from package CMT)
gcc830 (from package CMT)
Unix (from package CMT) excludes [WIN32 Win32]
----------> CMTPATH
# Add path /data/BOSSParallel/ExternalInterface from initialization

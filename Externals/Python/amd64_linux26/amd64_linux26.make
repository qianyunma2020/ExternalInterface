CMTPATH=/data/BOSSParallel/ExternalInterface
CMT_tag=$(tag)
CMTROOT=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25
CMT_root=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25
CMTVERSION=v1r25
CMT_offset=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib
cmt_hardware_query_command=uname -m
cmt_hardware=`$(cmt_hardware_query_command)`
cmt_system_version_query_command=${CMTROOT}/mgr/cmt_linux_version.sh | ${CMTROOT}/mgr/cmt_filter_version.sh
cmt_system_version=`$(cmt_system_version_query_command)`
cmt_compiler_version_query_command=${CMTROOT}/mgr/cmt_gcc_version.sh | ${CMTROOT}/mgr/cmt_filter3_version.sh
cmt_compiler_version=`$(cmt_compiler_version_query_command)`
PATH=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25/${CMTBIN}:/cvmfs/sft.cern.ch/lcg/releases/ROOT/v6.20.02-d9e99/x86_64-slc6-gcc8-opt/bin:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/Gaudi/bin:/cvmfs/sft.cern.ch/lcg/releases/DD4hep/01-12-01-65a08/x86_64-slc6-gcc8-opt/bin:/cvmfs/sft.cern.ch/lcg/releases/Geant4/10.06.p01-1349a/x86_64-slc6-gcc8-opt/bin:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/GEAR/bin:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/plcio/bin:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/podio/bin:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/LCIO/bin:/cvmfs/sft.cern.ch/lcg/views/LCG_97/x86_64-slc6-gcc8-opt/scripts:/cvmfs/sft.cern.ch/lcg/views/LCG_97/x86_64-slc6-gcc8-opt/bin:/cvmfs/sft.cern.ch/lcg/releases/gcc/8.3.0-cebb0/x86_64-slc6/bin:/cvmfs/sft.cern.ch/lcg/releases/binutils/2.30-e5b21/x86_64-slc6/bin:/cvmfs/sft.cern.ch/lcg/contrib/git/bin:/usr/local/gcc/bin:/usr/lib64/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/bin:/usr/externals/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/sbin:/bin:/usr/java/latest/bin:/root/bin:/data/BOSSParallel/CLHEP/bin:/data/BOSSParallel/jsoncpp/include/
CLASSPATH=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25/java
debug_option=-g
cc=gcc
ccomp=$(cc) -c $(includes) $(cdebugflags) $(cflags) $(pp_cflags)
clink=$(cc) $(clinkflags) $(cdebugflags)
ppcmd=-I
preproc=c++ -MD -c 
cpp=c++
cppflags=-pipe -ansi -pedantic -W -Wall -Wwrite-strings -Wpointer-arith -Woverloaded-virtual 
pp_cppflags=-D_GNU_SOURCE
cppcomp=$(cpp) -c $(includes) $(cppdebugflags) $(cppflags) $(pp_cppflags)
cpplink=$(cpp) $(cpplinkflags) $(cppdebugflags)
for=g77
fflags=$(debug_option)
fcomp=$(for) -c $(fincludes) $(fflags) $(pp_fflags)
flink=$(for) $(flinkflags)
javacomp=javac -classpath $(src):$(CLASSPATH) 
javacopy=cp
jar=jar
X11_cflags=-I/usr/include
Xm_cflags=-I/usr/include
X_linkopts=-L/usr/X11R6/lib -lXm -lXt -lXext -lX11 -lm
lex=lex $(lexflags)
yaccflags= -l -d 
yacc=yacc $(yaccflags)
ar=ar cr
ranlib=ranlib
make_shlib=${CMTROOT}/mgr/cmt_make_shlib_common.sh extract
shlibsuffix=so
shlibbuilder=g++ $(cmt_installarea_linkopts) 
shlibflags=-shared
symlink=/bin/ln -fs 
symunlink=/bin/rm -f 
library_install_command=${symlink}
build_library_links=$(cmtexe) build library_links -tag=$(tags)
remove_library_links=$(cmtexe) remove library_links -tag=$(tags)
cmtexe=${CMTROOT}/${CMTBIN}/cmt.exe
build_prototype=$(cmtexe) build prototype
build_dependencies=$(cmtexe) -tag=$(tags) build dependencies
build_triggers=$(cmtexe) build triggers
format_dependencies=${CMTROOT}/mgr/cmt_format_deps.sh
implied_library_prefix=-l
SHELL=/bin/sh
q="
src=../src/
doc=../doc/
inc=../src/
mgr=../cmt/
application_suffix=.exe
library_prefix=lib
unlock_command=rm -rf 
lock_name=cmt
lock_suffix=.lock
lock_file=${lock_name}${lock_suffix}
svn_checkout_command=python ${CMTROOT}/mgr/cmt_svn_checkout.py 
gmake_hosts=lx1 rsplus lxtest as7 dxplus ax7 hp2 aleph hp1 hpplus papou1-fe atlas
make_hosts=virgo-control1 rio0a vmpc38a
everywhere=hosts
install_command=cp 
uninstall_command=/bin/rm -f 
cmt_installarea_command=ln -fs 
cmt_uninstallarea_command=/bin/rm -f 
cmt_install_area_command=$(cmt_installarea_command)
cmt_uninstall_area_command=$(cmt_uninstallarea_command)
cmt_install_action=$(CMTROOT)/mgr/cmt_install_action.sh
cmt_installdir_action=$(CMTROOT)/mgr/cmt_installdir_action.sh
cmt_uninstall_action=$(CMTROOT)/mgr/cmt_uninstall_action.sh
cmt_uninstalldir_action=$(CMTROOT)/mgr/cmt_uninstalldir_action.sh
mkdir=mkdir
cmt_installarea_prefix=InstallArea
CMT_PATH_remove_regexp=/[^/]*/
CMT_PATH_remove_share_regexp=/share/
NEWCMTCONFIG=x86_64-sl65-gcc830
Python_tag=$(tag)
PYTHONROOT=/data/BOSSParallel/ExternalInterface/Externals/Python
Python_root=/data/BOSSParallel/ExternalInterface/Externals/Python
PYTHONVERSION=v0
Python_cmtpath=/data/BOSSParallel/ExternalInterface
Python_offset=Externals
Python_project=ExternalInterface
Python_linkopts= `pkg-config --libs python` 
Python_cppflags= `pkg-config --cflags python` 
tag=amd64_linux26
package=Python
version=v0
PACKAGE_ROOT=$(PYTHONROOT)
srcdir=../src
bin=../$(Python_tag)/
javabin=../classes/
mgrdir=cmt
BIN=/data/BOSSParallel/ExternalInterface/Externals/Python/amd64_linux26/
project=ExternalInterface
cmt_installarea_paths= $(cmt_installarea_prefix)/$(CMTCONFIG)/bin
use_linkopts= $(cmt_installarea_linkopts)   $(Python_linkopts) 
ExternalInterface_installarea_prefix=$(cmt_installarea_prefix)
ExternalInterface_installarea_prefix_remove=$(ExternalInterface_installarea_prefix)
LD_LIBRARY_PATH=/data/BOSSParallel/CEPCDataModel/InstallArea/amd64_linux26/lib:/data/BOSSParallel/sniper/InstallArea/amd64_linux26/lib:/cvmfs/sft.cern.ch/lcg/releases/ROOT/v6.20.02-d9e99/x86_64-slc6-gcc8-opt/lib:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/K4FWCore/lib:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/Gaudi/lib:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/Pandora/LCContent/lib:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/Pandora/PandoraSDK/lib:/cvmfs/sft.cern.ch/lcg/releases/DD4hep/01-12-01-65a08/x86_64-slc6-gcc8-opt/lib:/cvmfs/sft.cern.ch/lcg/releases/XercesC/3.1.3-b3bf1/x86_64-slc6-gcc8-opt/lib:/cvmfs/sft.cern.ch/lcg/releases/Geant4/10.06.p01-1349a/x86_64-slc6-gcc8-opt/lib64:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/GEAR/lib:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/plcio/lib:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/EDM4hep/lib64:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/podio/lib64:/cvmfs/cepcsw.ihep.ac.cn/prototype/releases/externals/97.0.0/LCIO/lib:/cvmfs/sft.cern.ch/lcg/releases/java/8u222-884d8/x86_64-slc6-gcc8-opt/jre/lib/amd64:/cvmfs/sft.cern.ch/lcg/views/LCG_97/x86_64-slc6-gcc8-opt/lib64:/cvmfs/sft.cern.ch/lcg/views/LCG_97/x86_64-slc6-gcc8-opt/lib:/cvmfs/sft.cern.ch/lcg/releases/gcc/8.3.0-cebb0/x86_64-slc6/lib:/cvmfs/sft.cern.ch/lcg/releases/gcc/8.3.0-cebb0/x86_64-slc6/lib64:/cvmfs/sft.cern.ch/lcg/releases/binutils/2.30-e5b21/x86_64-slc6/lib:/cvmfs/sft.cern.ch/lcg/contrib/git/lib64:/usr/local/lib:/usr/local/gcc/lib64:/usr/lib64/classads:/usr/lib64:/usr/lib:/cvmfs/sft.cern.ch/lcg/releases/R/3.2.5-7cecf/x86_64-slc6-gcc8-opt/lib64/R/library/readr/rcon:/cvmfs/sft.cern.ch/lcg/releases/clhep/2.4.1.3-78165/x86_64-slc6-gcc8-opt/lib:/data/BOSSParallel/CLHEP/lib
use_requirements=requirements $(CMT_root)/mgr/requirements 
use_includes= 
use_fincludes= $(use_includes)
use_stamps=  $(Python_stamps) 
use_cflags=  $(Python_cflags) 
use_pp_cflags=  $(Python_pp_cflags) 
use_cppflags=  $(Python_cppflags) 
use_pp_cppflags=  $(Python_pp_cppflags) 
use_fflags=  $(Python_fflags) 
use_pp_fflags=  $(Python_pp_fflags) 
includes= $(ppcmd)"$(srcdir)" $(use_includes)
fincludes= $(includes)
make_GUID={88BF15AB-5A2D-4bea-B64F-02752C2A1F4F}
constituents= 
all_constituents= $(constituents)
constituentsclean= 
all_constituentsclean= $(constituentsclean)
cmt_actions_constituents= make 
cmt_actions_constituentsclean= makeclean 
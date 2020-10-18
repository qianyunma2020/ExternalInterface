# echo "setup Python v0 in /data/BOSSParallel/ExternalInterface/Externals"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25
endif
source ${CMTROOT}/mgr/setup.csh
set cmtPythontempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set cmtPythontempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt setup -csh -pack=Python -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  -no_cleanup $* >${cmtPythontempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/mgr/cmt setup -csh -pack=Python -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  -no_cleanup $* >${cmtPythontempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtPythontempfile}
  unset cmtPythontempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtPythontempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtPythontempfile}
unset cmtPythontempfile
exit $cmtsetupstatus


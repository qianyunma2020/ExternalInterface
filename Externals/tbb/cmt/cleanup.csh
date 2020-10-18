# echo "cleanup tbb v0 in /data/BOSSParallel/ExternalInterface/Externals"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25
endif
source ${CMTROOT}/mgr/setup.csh
set cmttbbtempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set cmttbbtempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt cleanup -csh -pack=tbb -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  $* >${cmttbbtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/mgr/cmt cleanup -csh -pack=tbb -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  $* >${cmttbbtempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmttbbtempfile}
  unset cmttbbtempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmttbbtempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmttbbtempfile}
unset cmttbbtempfile
exit $cmtcleanupstatus


# echo "cleanup EIRelease v0 in /data/BOSSParallel/ExternalInterface"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/ihep.ac.cn/bes3/offline/ExternalLib/SLC6/contrib/CMT/v1r25
endif
source ${CMTROOT}/mgr/setup.csh
set cmtEIReleasetempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set cmtEIReleasetempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt cleanup -csh -pack=EIRelease -version=v0 -path=/data/BOSSParallel/ExternalInterface  $* >${cmtEIReleasetempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/mgr/cmt cleanup -csh -pack=EIRelease -version=v0 -path=/data/BOSSParallel/ExternalInterface  $* >${cmtEIReleasetempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtEIReleasetempfile}
  unset cmtEIReleasetempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtEIReleasetempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtEIReleasetempfile}
unset cmtEIReleasetempfile
exit $cmtcleanupstatus


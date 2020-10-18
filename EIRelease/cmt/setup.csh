# echo "setup EIRelease v0 in /data/BOSSParallel/ExternalInterface"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/ihep.ac.cn/bes3/offline/ExternalLib/SLC6/contrib/CMT/v1r25
endif
source ${CMTROOT}/mgr/setup.csh
set cmtEIReleasetempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set cmtEIReleasetempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt setup -csh -pack=EIRelease -version=v0 -path=/data/BOSSParallel/ExternalInterface  -no_cleanup $* >${cmtEIReleasetempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/mgr/cmt setup -csh -pack=EIRelease -version=v0 -path=/data/BOSSParallel/ExternalInterface  -no_cleanup $* >${cmtEIReleasetempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtEIReleasetempfile}
  unset cmtEIReleasetempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtEIReleasetempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtEIReleasetempfile}
unset cmtEIReleasetempfile
exit $cmtsetupstatus


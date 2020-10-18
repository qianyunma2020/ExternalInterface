# echo "cleanup EIRelease v0 in /data/BOSSParallel/ExternalInterface"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/ihep.ac.cn/bes3/offline/ExternalLib/SLC6/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtEIReleasetempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtEIReleasetempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt cleanup -sh -pack=EIRelease -version=v0 -path=/data/BOSSParallel/ExternalInterface  $* >${cmtEIReleasetempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt cleanup -sh -pack=EIRelease -version=v0 -path=/data/BOSSParallel/ExternalInterface  $* >${cmtEIReleasetempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtEIReleasetempfile}
  unset cmtEIReleasetempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtEIReleasetempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtEIReleasetempfile}
unset cmtEIReleasetempfile
return $cmtcleanupstatus


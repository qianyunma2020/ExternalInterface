# echo "setup EIRelease v0 in /data/BOSSParallel/ExternalInterface"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/ihep.ac.cn/bes3/offline/ExternalLib/SLC6/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtEIReleasetempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtEIReleasetempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt setup -sh -pack=EIRelease -version=v0 -path=/data/BOSSParallel/ExternalInterface  -no_cleanup $* >${cmtEIReleasetempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt setup -sh -pack=EIRelease -version=v0 -path=/data/BOSSParallel/ExternalInterface  -no_cleanup $* >${cmtEIReleasetempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtEIReleasetempfile}
  unset cmtEIReleasetempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtEIReleasetempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtEIReleasetempfile}
unset cmtEIReleasetempfile
return $cmtsetupstatus


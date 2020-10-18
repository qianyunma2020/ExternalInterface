# echo "cleanup Python v0 in /data/BOSSParallel/ExternalInterface/Externals"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtPythontempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtPythontempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt cleanup -sh -pack=Python -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  $* >${cmtPythontempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt cleanup -sh -pack=Python -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  $* >${cmtPythontempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtPythontempfile}
  unset cmtPythontempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtPythontempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtPythontempfile}
unset cmtPythontempfile
return $cmtcleanupstatus


# echo "setup Python v0 in /data/BOSSParallel/ExternalInterface/Externals"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtPythontempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtPythontempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt setup -sh -pack=Python -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  -no_cleanup $* >${cmtPythontempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt setup -sh -pack=Python -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  -no_cleanup $* >${cmtPythontempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtPythontempfile}
  unset cmtPythontempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtPythontempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtPythontempfile}
unset cmtPythontempfile
return $cmtsetupstatus


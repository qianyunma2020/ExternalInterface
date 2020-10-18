# echo "setup Boost v0 in /data/BOSSParallel/ExternalInterface/Externals"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtBoosttempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtBoosttempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt setup -sh -pack=Boost -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  -no_cleanup $* >${cmtBoosttempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt setup -sh -pack=Boost -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  -no_cleanup $* >${cmtBoosttempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtBoosttempfile}
  unset cmtBoosttempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtBoosttempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtBoosttempfile}
unset cmtBoosttempfile
return $cmtsetupstatus


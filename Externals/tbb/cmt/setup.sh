# echo "setup tbb v0 in /data/BOSSParallel/ExternalInterface/Externals"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmttbbtempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmttbbtempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt setup -sh -pack=tbb -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  -no_cleanup $* >${cmttbbtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt setup -sh -pack=tbb -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  -no_cleanup $* >${cmttbbtempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmttbbtempfile}
  unset cmttbbtempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmttbbtempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmttbbtempfile}
unset cmttbbtempfile
return $cmtsetupstatus


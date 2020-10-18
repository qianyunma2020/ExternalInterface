# echo "cleanup ROOT v0 in /data/BOSSParallel/ExternalInterface/Externals"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/bes3.ihep.ac.cn/bes3sw/ExternalLib/SLC6/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtROOTtempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtROOTtempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt cleanup -sh -pack=ROOT -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  $* >${cmtROOTtempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt cleanup -sh -pack=ROOT -version=v0 -path=/data/BOSSParallel/ExternalInterface/Externals  $* >${cmtROOTtempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtROOTtempfile}
  unset cmtROOTtempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtROOTtempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtROOTtempfile}
unset cmtROOTtempfile
return $cmtcleanupstatus


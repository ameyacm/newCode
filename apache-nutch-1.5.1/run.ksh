src/bin/nutch parse $s2;
src/bin/nutch updatedb crawl/crawldb $s2;

src/bin/nutch generate crawl/crawldb crawl/segments -topN 1000;
s3=`ls -d crawl/segments/2* | tail -1`;
echo $s3;

src/bin/nutch fetch $s3;
src/bin/nutch parse $s3;
src/bin/nutch updatedb crawl/crawldb $s3;


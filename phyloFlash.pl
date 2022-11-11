for i in $(find *_1.fastq)
do 
    file=${i%_1.*}
    filename=${file##*/}
    echo $filename
    phyloFlash.pl -lib  phyloFlash_db   -almosteverything -read1  $file'_1.fastq'  -read2 $file'_2.fastq' -readlength 150 
    mkdir $file 
    cd $file 
    mv /mnt/md0/LSX/lishuxian/lishuxian/stinrawdata/allinputfq/oct/phyloFlash_db.phyloFlash.tar.gz   .

    cd ..
done

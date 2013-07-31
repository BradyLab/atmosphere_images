use <a href="https://atmo.iplantcollaborative.org/" title="atmosphere"> atmosphere</a> image:
---------------------------------------------------------------------------------------------
RNASeq_Analysis_gt_V2 (emi-F8C42B73)
-----------------------------------------------

**start with image "Ubuntu 12.04 Xfce GUI v2"**

**General**

```shell
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get install git
```

**R and edgeR**

```shell
  sudo apt-get install r-base-dev
  sudo R
  source("http://bioconductor.org/biocLite.R")
  biocLite("edgeR")
```

**Python2.7 (pysam,HTSeq)**

```shell
  sudo apt-get install python2.7 python2.7-dev python-setuptools
  sudo apt-get install python-pip
  sudo easy_install -U distribute

##pysam:
  sudo pip install pysam

##HTSeq:
  sudo apt-get install build-essential python2.7-dev python-numpy python-matplotlib
  sudo pip install HTSeq
```

**TrimREADS**

```shell
  git clone https://github.com/tanghaibao/trimReads.git
  cd trimReads/
  tar zxvf seqan.tgz
  make
```

**fastq**

```shell
  wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.3.2/sratoolkit.2.3.2-centos_linux64.tar.gz
  tar -xvzf sratoolkit.2.3.2-centos_linux64.tar.gz
  cd sratoolkit.2.3.2-centos_linux64/
  sudo cp bin/fastq-dump /usr/local/bin/
```

**fastqc**

```shell
  wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.10.1.zip
  unzip fastqc_v0.10.1.zip
  cd FastQC
  chmod 755 fastqc
  sudo ln -s /path/to/FastQC/fastqc /usr/local/bin/fastqc
```

**bowtie**

```shell
  git clone https://github.com/BenLangmead/bowtie.git
  cd bowtie
  make
  sudo mv bowtie /usr/local/bin/
  sudo mv bowtie-build /usr/local/bin/
```
**BWA**

```shell
  git clone https://github.com/lh3/bwa.git
  make
  sudo mv bwa /usr/local/bin/
```

**samtools**

```shell
  git clone git://github.com/samtools/samtools.git  
  make
  sudo cp samtools /usr/local/bin/
```

**bedtools**

```shell
  wget https://bedtools.googlecode.com/files/BEDTools.v2.17.0.tar.gz
  tar -xvzf BEDTools.v2.17.0.tar.gz
  cd bedtools-2.17.0/
  make clean
  make all
  sudo cp * /usr/local/bin/
```

**optional**

```shell
##libgtextutils
#wget http://cancan.cshl.edu/labmembers/gordon/files/libgtextutils-0.6.tar.bz2
#tar -xjf libgtextutils-0.6.tar.bz2
#cd libgtextutils-0.6
#./configure
#make
#sudo make install
#
#
### fastxtoolkit
#wget http://hannonlab.cshl.edu/fastx_toolkit/fastx_toolkit-0.0.13.2.tar.bz2
#tar -xjf fastx_toolkit-0.0.13.2.tar.bz2
#cd fastx_toolkit-0.0.13.2/
#./configure
#make
#make install
# Not sure how easy to read see what standford says?!
## TopHat
#http://tophat.cbcb.umd.edu/tutorial.shtml#ref
```


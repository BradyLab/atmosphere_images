image_name: ChipSeq (emi-0BEB20AD)
===============================

start with image "Ubuntu 12.04 Xfce GUI v2"
-------------------------------------------

#load all bioinformatics pakages:

  sh RNASeq.sh

# Scipy:

  sudo pip install scipy

# SICER:

  wget http://home.gwu.edu/~wpeng/SICER_V1.1.tgz
  tar -xvzf SICER_V1.1.tgz
  cd SICER_V1.1
  vim SICER-df-rb.sh # change pathto SICER=/usr/local/bin/SICER1.1/SICER
  vim SICER-df.sh # change pathto SICER=/usr/local/bin/SICER1.1/SICER
  vim SICER-rb.sh # change pathto SICER=/usr/local/bin/SICER1.1/SICER
  vim SICER.sh #change oathto SICER=/usr/local/bin/SICER1.1/SICER

# MACS:

  wget https://github.com/downloads/taoliu/MACS/MACS-1.4.2-1.tar.gz
  tar -xvzf MACS-1.4.2-1.tar.gz
  cd MACS-1.4.2/
  sudo python setup.py install

# gawk and sam2bed:
  
  sudo apt-get install gawk
  http://bedops.googlecode.com/files/bedops_linux_x86_64-v2.2.0.tar.bz2
  tar -xjf bedops_linux_x86_64-v2.2.0.tar.bz2
  sudo mv bin/sam2bed /usr/local/bin/
  sudo mv bin/sort-bed /usr/local/bin/


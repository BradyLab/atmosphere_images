Use <a href="https://atmo.iplantcollaborative.org/" title="atmosphere"> atmosphere</a> image:
----------------------------------------------------------------------------------------------
ChipSeq (emi-0BEB20AD)
-------------------------

**_To install:_**

start with image "Ubuntu 12.04 Xfce GUI v2" and load the packages found in the <a herf="https://github.com/BradyLab/atmosphere_images/blob/master/RNASeq.md" title="RNASeq"> RNASeq image</a>:

**Scipy**

```shell
  sudo pip install scipy
```

**SICER**

```shell
  wget http://home.gwu.edu/~wpeng/SICER_V1.1.tgz
  tar -xvzf SICER_V1.1.tgz
  cd SICER_V1.1
  vim SICER-df-rb.sh # change pathto SICER=/usr/local/bin/SICER1.1/SICER
  vim SICER-df.sh # change pathto SICER=/usr/local/bin/SICER1.1/SICER
  vim SICER-rb.sh # change pathto SICER=/usr/local/bin/SICER1.1/SICER
  vim SICER.sh #change oathto SICER=/usr/local/bin/SICER1.1/SICER
```

**MACS**

```shell
  wget https://github.com/downloads/taoliu/MACS/MACS-1.4.2-1.tar.gz
  tar -xvzf MACS-1.4.2-1.tar.gz
  cd MACS-1.4.2/
  sudo python setup.py install
```

**gawk and sam2bed**

```shell
  sudo apt-get install gawk
  http://bedops.googlecode.com/files/bedops_linux_x86_64-v2.2.0.tar.bz2
  tar -xjf bedops_linux_x86_64-v2.2.0.tar.bz2
  sudo mv bin/sam2bed /usr/local/bin/
  sudo mv bin/sort-bed /usr/local/bin/
```
Author: Gina Turco, Brady Lab UC Davis

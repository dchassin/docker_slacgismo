# Dockerhub base image for HiPAS GridLAB-D

This folder contains the files needed to rebuild the dockerhub base image for HiPAS GridLAB-D.  To create a base image, you need to install docker on your system and run the the following command in this folder:

~~~
host% make build
~~~

After the image is verified by building GridLAB-D in it, you can install it your system using the following command:

~~~
host% make install
~~~

To deploy the image to dockerhub, use the following command:

~~~
host% make deploy
~~~

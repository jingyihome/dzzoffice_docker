DzzOffice docker
========================================================================

在docker中的部署DzzOffice

Usage:
------------------------------------------------------------------------

clone或者download 本项目到本地，然后进入（解压）目录中，运行
 
    docker build -t dzzoffice .
  
创建了dzzoffcie镜像之后，就可以运行下面的命令来运行 **DzzOffice**

    docker run --name dzzoffice -d -p 80:80 dzzoffice
  
Information:
------------------------------------------------------------------------

本项目来自<https://github.com/jingyihome/dzzoffice_docker>

运行docker container后，可以通过 http://ip 来完成 **DzzOffice** 的安装，Mysql数据的初始账户: admin/admin1234


系统包含如下环境:

========================================================================
  
  Ubuntu0.18.04.1, Apache2.4.29, MySQL5.7.25, php7.2.15, DzzOffice2.02
  
========================================================================

更多关于DzzOffice，请访问 <http://www.dzzoffice.com/> 

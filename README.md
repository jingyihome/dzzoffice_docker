DzzOffice docker
========================================================================

在docker中的部署DzzOffice

Usage:
------------------------------------------------------------------------

clone或者download本项目到本地，解压，然后进入解压后的目录中，运行：
    docker build -t dzzoffice .
此步骤网络不好的时候所需时间稍长，网络好的时候很快就会完成，其中dzzoffice为镜像名称，你可以修改为任意其他名称。
  
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

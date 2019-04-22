DzzOffice docker
========================================================================

在docker中部署DzzOffice

Usage:
------------------------------------------------------------------------
两种方式安装

* 方法1：通过Dockerfile 文件创建镜像

clone或者download本项目到本地，解压，然后进入解压后的目录中，运行：
  
    docker build -t dzzoffice .
  
此步骤网络不好的时候所需时间稍长，网络好的时候很快就会完成，其中dzzoffice为镜像名称，你可以修改为任意其他名称。
  
创建了dzzoffcie镜像之后，就可以运行下面的命令来运行 **DzzOffice**

    docker run --name dzzoffice -d -p 80:80 dzzoffice


* 方法2：通过加载已经创建完成的镜像，直接启动容器即可

具体见项目中[dzzoffice-docker-images]https://github.com/Springzhen/dzzoffice_docker/tree/master/dzzoffice-docker-images 部分的安装步骤


* 提示：dzzoffice-docker-images为独立的镜像安装部分，使用方法1安装时候可以忽略该部分


Information:
------------------------------------------------------------------------

本项目来自<https://github.com/jingyihome/dzzoffice_docker>

运行docker container后，可以通过 http://ip 来完成 **DzzOffice** 的安装，Mysql数据的初始账户: admin/admin1234

Changes:
--------------------------------------------------------------------------
4.21 修改了创建镜像文件Dockerfile “Download DzzOffice” 板块内容，通过手动下载解决使用wget下载过慢问题，同时原始dzzoffice.zar 存在解压错误问题，此处将文件改为dzzoffice-2.02.tar.gz文件，解决问题。



系统包含如下环境:

========================================================================
  
  Ubuntu18.04.1, Apache2.4.29, MySQL5.7.25, php7.2.15, DzzOffice2.02
  
========================================================================

更多关于DzzOffice，请访问 <http://www.dzzoffice.com/> 



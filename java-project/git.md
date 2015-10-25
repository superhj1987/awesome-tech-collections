# Git

Git是一个版本管理工具，它与SVN的对比网上到处都是，这里就不再废话它那些耀眼的优点了。记得以前要搭建Git库来给研发使用是非常复杂的一件事情。需要在服务器上安装git，然后创建用户->分配权限...等一系列复杂操作来搭建一个Git环境。相关链接：[http://srhang.iteye.com/blog/1339110](http://srhang.iteye.com/blog/1339110)。面对这些复杂的操作步骤以及Git本身上手的门槛，很多人望而却步，造成了Git并没有那么普及的状况。

一切从Github横空出世开始改变了，这个看似简单的网站给很多人带来了简单极致方便的代码托管服务，同时也给全世界带来了一股开源的风潮。很多初创公司或者小公司直接选择使用github建立自己的代码仓库。

与此同时，许多Github的开源实现层出不穷，如今你只需要下载一个类似的实现，部署到服务器上，你就能简单拥有你自己的"Github"。

目前比较知名的Github实现，有这么几个：

- gitlab(Ruby on rails实现)
- gitbucket(Scala实现)
- Gitblit(Java实现)

更多的可以见：http://www.oschina.net/news/50222/git-code-platforms

gitlab应该是其中名气最大的一个。但是自从用过gitbucket以后，却也再也不想回到gitlab了。基于Scala编写，极易安装，扔一个war包到tomcat就完成部署，完全可以和其他如maven、jenkins并存在一个JavaEE容器中。另外，Scala这个JVM语言相比起ROR来，对于我这种Java系来说也显得亲切的很。如果那个功能用的不爽完全可以自己去二次开发一下。

Git服务器的部署可以用这些开源实现完成，但是Git客户端的使用却是另一个比较高门槛的事情。和svn原理的不同，造成了很多人从svn转换到git时，摸不着头脑，然后退缩放弃。

一个典型的Git客户端使用流程：

- git clone [repository url]:克隆项目的git地址
- git checkout [branchName]: 切换项目分支
- git add [fileName]: 增加或改动了一些文件
- git commit -a/-m: 提交文件到本地
- git push origin master: 提交到远程库
- git pull(git fetch && git merge): 从远程库更新代码并合并
- git revert [revisions]: 撤销操作
- git log -p [revision/filepath]: 查看提交历史

更具体的教程可以参见：[Gitbook](http://git-scm.com/book/en/v2)，另外有一个非常卡通的git教程网站也很不错：[猴子都能懂的Git入门](http://backlogtool.com/git-guide/cn/)。

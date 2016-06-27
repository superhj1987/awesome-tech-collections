# Java开发的一些注意点

***Ps:此文原载于本人技术博客:<http://superhj1987.github.com/blog/2016/06/19/java-tips/>***

## 1. 将一些需要变动的配置写在属性文件中

比如，没有把批处理使用的线程数设置成可在属性文件中配置。你的批处理程序无论在DEV环境中，还是TEST环境中，都可以顺畅无阻地运行，但是一旦部署在PROD上，把它作为多线程程序处理更大的数据集时，就会抛出IOException，原因也许是线上环境并发造成也许是其他。如果线程数目可以在属性文件中配置，那么使它成为一个单线程应用程序就变得十分容易了。我们不再需要为了解决问题而反复地部署和测试应用了。这种方法也同样适用于配置 URL、服务器和端口号等。当然这里推荐使用属性文件外化这些配置。

## 2. 测试中尽可能模拟线上环境

比如，生产过程中一个典型的场景就是只使用1到3个账户进行测试，而这个数量本应是1000到2000个的。在做性能测试时，使用的数据必须是真实并且未经裁剪的。不贴近真实环境的性能测试，可能会带来不可预料的性能、拓展和多线程问题。

## 3. 对于所有外部调用以及内部服务都要做容错处理

不管是RPC调用还是对于第三方服务的调用，都不能想当然的认为可用性是100%的.不允许出现服务调用超时和重试，将会对应用程序的稳定性和性能造成不利地影响。

## 4. 安全设计上一个系统要遵循最小权限原则

网络服务随处可见，从而使得黑客可以轻易地利用它进行拒绝服务攻击。所以，设计系统时，需要遵循“最小权限”原则，采用白名单等方式。

## 5. 需要提供以下文档

1. 编写单元测试文档并使其拥有良好的代码覆盖率。
2. 高层次的设计图：描述了所有的组件，交互和结构。
3. 详细的设计图：具体到代码层面的设计
4. 系统map（类似于site map）：说明系统的所有组成文件、配置文件等

## 6. 做好系统关键功能的监控、错误恢复、备份等

对于系统一些至关重要的功能模块要做好对其的监控，防止其影响系统的运行,造成不可估算的损失。另外，如果可以，监控到故障后去去试图恢复，恢复失败再发送告警。对于一些很重要的数据文件，还要做到冗余备份，防止发生一些突然故障造成数据丢失。

## 7. 数据库设计时设计一些便于追踪历史、整理的列

比如created_time、update_time可以说明记录的创建和更新时间。；created_by、updated_by可以说明记录是由谁创建和更新的。

此外，删除记录有时候并非真正删除，这时需要设计表示此记录状态的列，如可以取‘Y’或‘N’的‘deleted’列或是可以取‘Active’或‘Inactive’的 ‘record_status’列。

## 8. 制定好项目回滚计划

新的功能上线时，如果发生故障，没有一份回滚计划，那么可能会手忙脚乱。有一个良好的回顾及计划，可以让你能够有条不紊的执行相关操作，将系统恢复到一个可运行的状态。

## 9. 项目上线前要做好量化分析

对于项目中用到的内存、数据库、文件、缓存等，要做好量化分析。预估出未来一段时间的空间占用，给运维分配机器时一个参考。防止，由于数据量增长过快，导致存储不够。

## 10. 制定好系统的部署计划。

系统部署的平台是一个至关重要的部分。对于平台的描述，不能仅限于一台服务器、两个数据库这个层面，至少需要包括

- 操作系统的特定版本，JVM等。
- 有多少内存（包括物理内存，JVM堆内存，JVM栈内存和JVM永久代的空间）。
- CPU（内核数）。
- 负载均衡器，需要的节点数、节点类型，比如是active/active型还是active/passive型，以及聚类要求。
- 文件系统要求，例如，你的应用程序可能会收集生成的报告并将其保存一年，之后才进行归档。这样的话，你就需要有足够的硬盘空间。有些应用程序要求产生数据提取文件，并将它们暂时储存以供其他系统进程或数据仓库系统用来做多维分析报告。还有些数据文件是基于安全文件传输协议的，它们或来自内部系统，或来自外部系统，并且在归档前需要被保存12到36个月。

## 11. 选择最合适的工具/技术

很多情况下，开发者会在生产系统中使用一门想要学习的语言或某种工具。通常这不是最好的选择。比如，为已经实际上是关系型的数据使用NoSQL数据库。不管是语言还是工具，都有其适用的场景。类似“PHP”是最好的语言这种，只能表示呵呵。

## 12. 在一些关键技术领域具有充足的知识储备。

- 设计模式
- JVM调优
- 多线程“并发问题”
- 事务问题，包括分布式事务
- 性能问题，包括GC、计算等
- 缓存

***Ps:此文部分借鉴自网上资料。***
# 系统部署文档

| 作者 | 版本 |  日期 | 改动
|----|:----:|:-----|-----
| xx | V1.0 | 2016-02-25 | 初始版本

[本文档主要描述系统部署的关键流程、依赖服务等]

## 总体部署架构

[这里主要描述一个部署的总体架构图，如有多少个结点，结点之间的关系如何]

## 关键服务安装

[这里对于一些关键的服务/组建的安装进行描述，如ElasticSearch的安装等]

## 初始化数据

[这里主要做一些初始化的工作，比如设置环境变量、导入数据库数据等]

## 部署步骤

[这里主要部署这个系统的一个过程，比如需要先部署数据库，再部署缓存，再部署web服务器等等]

## ChangeLog

[这里针对每一次发布都需要更新，记录此次发布服务端做的一些改动，如数据库、缓存]

### 2016.02.25

***Mysql定义及注意事项***

新增（修改了）XXX表（视图）

<table>
<tr>
<th>Field</th><th>Type</th><th>Null</th><th>Key</th><th>Default</th><th>comment</th>
</tr>
<td>id</td>
<td>bigint(20)</td>
<td>NO</td>
<td>PK</td>
<td>auto_increment</td>
<td>XX编号(唯一标识)</td>
</tr>
<tr>
<td>name</td>
<td>varchar(20)</td>
<td>NO</td>
<td></td>
<td></td>
<td>XX名称，如果有使用到触发器和枚举值的，请再这里注明</td>
</tr>
</table>

SQL:

	CREATE TABLE …

+ XXX表注意事项：

	该表由于数据量比较大，需要按月分表，所以应该提前半年建好表

***Redis定义及注意事项***

<table>
<tr>
	<th>Server</th><th>数据结构</th><th>有效期</th><th>说明</th>
</tr>
<tr>
  <td>XXXCacherServer</td>
  <td>hash</td>
  <td>半年</td>
  <td>缓存XXXX。以“xxxx.”+uid作为key，卡片id位field，value为值, 量化占用内存30MB</td>
</tr>
</table>

+ redis注意事项：

	填写注意事项内容，如量化分析redis需要分配的内存等。


 
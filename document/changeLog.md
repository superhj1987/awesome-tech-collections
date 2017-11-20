# 变更日志

| 作者 | 版本 |  日期 | 改动
|----|:----:|:-----|-----
| xx | V1.0 | 2016-02-25 | 初始版本


[这里针对每一次发布都需要更新，记录此次发布服务端做的一些改动，如数据库、缓存、消息队列等]

## 2016.02.25

### 1. 新增功能一

#### Mysql定义及注意事项

***新增（修改了）XXX表（视图）***

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

XXX表注意事项：

	该表由于数据量比较大，需要按月分表，所以应该提前半年建好表

#### Redis定义及注意事项

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

Redis注意事项：

	填写注意事项内容，如量化分析redis需要分配的内存等。
	
### 2. 新增功能二

#### Mysql定义及注意事项


#### Redis定义及注意事项
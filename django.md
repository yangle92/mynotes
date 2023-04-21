# Django



## 快速搭建环境

```python
pip install django

C:\Users\yangle\AppData\Local\Programs\Python\Python39\Scripts\django-admin.exe startproject 项目名称
    python manage.py startapp app01
    python manage.py runserver
    
```

这里为空字典 []  即为当前目录

![image-20230313210150096](images/image-20230313210150096.png)

应用注册

![image-20230313214032838](images/image-20230313214032838.png)



## Template

render --html文件进行加载渲染

## Static 目录

{% load static %}

![image-20230315132915707](images/image-20230315132915707.png)



## 模板语法



![image-20230313220841225](images/image-20230313220841225.png)



### render 



data为列表

```python
def test(request):
    data=['hello','world']
    return render(request,'test.html',{'data':data})

<div>{{ data }}</div>
<div>{{ data.0 }}</div>
<div>{{ data.1 }}</div>


```

data为字典

```python
def test(request):
    data={'k1':'hello','k2':'world'}
    return render(request,'test.html',{'data':data})
<h1> hello world</h1>
<div>{{ data }}</div>
<div>{{ data.k1 }}</div>
<div>{{ data.k2 }}</div>
<h2>遍历key,value</h2>
{% for key, value in data.items %}
    {{ key }}: {{ value }}  <br/>
{% endfor %}
```







![image-20230313221912020](images/image-20230313221912020.png)

## 请求与响应

![image-20230314211946591](images/image-20230314211946591.png)



![image-20230314212756936](images/image-20230314212756936.png)



![image-20230314213425065](images/image-20230314213425065.png)



## ORM

```
pip install mysqlclient

python manage.py makemigrations
python manage.py migrate

```

### Docker 运行mysql

```shell
docker run \
--name mysql \
-d \
-p 33306:3306 \
--restart unless-stopped \
-v /root/data/docker_data/mysql/log:/var/log/mysql \
-v /root/data/docker_data/mysql/data:/var/lib/mysql \
-v /root/data/docker_data/mysql/conf:/etc/mysql \
-v  /root/data/docker_data/mysql/mysql-files:/var/lib/mysql-files \
-e MYSQL_ROOT_PASSWORD=123456 \
mysql:latest


docker exec -it mysql /bin/bash

ALTER USER 'root'@'%' IDENTIFIED BY 'Qwert!2345';
update user set host='%' where user='root';
FLUSH PRIVILEGES;

mysql -u root -P 33306
alter user 'root'@'%' identified with mysql_native_password by 'Qwert!2345';
FLUSH PRIVILEGES;

参考 https://blog.csdn.net/qq_43781399/article/details/112650755
```

```
from app01.models import Person
def ormtest(request):
    Person.objects.create(name='scott',age=10)
    Person.objects.create(name='jack', age=20)
    return HttpResponse("data written success")
    
 

```



charfield

interfield

decimalfield

datatimefield

ForeginKey  # 表约束

![image-20230315131921132](images/image-20230315131921132.png)

![image-20230315183239244](images/image-20230315183239244.png)



![image-20230315183655696](images/image-20230315183655696.png)

模板语法不能加上括号

![image-20230315184240868](images/image-20230315184240868.png)

## 模板继承

### 母版



![image-20230315172018466](images/image-20230315172018466.png)

### 子版继承



![image-20230315172103178](images/image-20230315172103178.png)









###  用户提交字段校验1

![image-20230320215843760](images/image-20230320215843760.png)



### 用户提交字段校验2 （钩子方法）

![image-20230320220233520](images/image-20230320220233520.png)







## from 与 modelform

 

![image-20230420204108425](images/image-20230420204108425.png)



form解决前三个问题



###  form



![image-20230420204427515](images/image-20230420204427515.png)

![image-20230420204548684](images/image-20230420204548684.png)



也可以循环

### modelform

model.py

![image-20230420204753812](images/image-20230420204753812.png)



view.py

![image-20230420205104247](images/image-20230420205104247.png)



![image-20230420205359333](images/image-20230420205359333.png)





![image-20230420205213128](images/image-20230420205213128.png)

#### 继承bootstrap样式



![image-20230420205900336](images/image-20230420205900336.png)

![image-20230420210108074](images/image-20230420210108074.png)



form.save

form.errors

#### 判断错误信息

![image-20230420210958542](images/image-20230420210958542.png)





![image-20230420211330501](images/image-20230420211330501.png)

加上instance 就可以显示值

![image-20230420211615352](images/image-20230420211615352.png)

更新数据不是增加

![image-20230420211803116](images/image-20230420211803116.png)





#### bootstrap 样式父类

![image-20230420212000243](images/image-20230420212000243.png)





![image-20230420212139385](images/image-20230420212139385.png)

![image-20230420212259324](images/image-20230420212259324.png)









##  Ajax

![image-20230403144900773](images/image-20230403144900773.png)



### Get请求



![image-20230403150001420](images/image-20230403150001420.png)

![image-20230403145914865](images/image-20230403145914865.png)



![image-20230403150310798](images/image-20230403150310798.png)







### Post请求



免除csrf token 认证--- dom



![image-20230403150554415](images/image-20230403150554415.png)



### jquery



![image-20230403151148993](images/image-20230403151148993.png)





![image-20230403151410541](images/image-20230403151410541.png)



### ajax 请求返回值

![image-20230403151720642](images/image-20230403151720642.png)





![image-20230403151955890](images/image-20230403151955890.png)





![image-20230403152456141](images/image-20230403152456141.png)



### form

![image-20230403152932453](images/image-20230403152932453.png)



![image-20230403152959642](images/image-20230403152959642.png)



#### 错误信息整理

![image-20230403161432714](images/image-20230403161432714.png)





![image-20230403160951178](images/image-20230403160951178.png)

![image-20230403161137962](images/image-20230403161137962.png)



### 添加成功后页面刷新

![image-20230403224112470](images/image-20230403224112470.png)









###  对话框

![image-20230404090849501](images/image-20230404090849501.png)

![image-20230404094342925](images/image-20230404094342925.png)





## 文件上传



![image-20230418220226737](images/image-20230418220226737.png)

![image-20230418220504515](images/image-20230418220504515.png)



这个只能取到文件名

![image-20230418220530420](images/image-20230418220530420.png)



加上下面这个属性后支持上传文件内容

![image-20230418220750057](images/image-20230418220750057.png)



request.FILES.get("avatar") 对应前端html中 type=file  name="avatar"

![image-20230418221441276](images/image-20230418221441276.png)



## 上传excel 和modelform上传

![image-20230420092313359](images/image-20230420092313359.png)





<input type='file' name='exc'>

{% csrf_token % }



上传地址，/dep/multi 然后新增一个路由函数



读取excel openpyxl

![image-20230420094907932](images/image-20230420094907932.png)



![image-20230420095630620](images/image-20230420095630620.png)



### 混合数据（form）



![image-20230420100633007](images/image-20230420100633007.png)



![image-20230420100816204](images/image-20230420100816204.png)





![image-20230420101218167](images/image-20230420101218167.png)





![image-20230420101145281](images/image-20230420101145281.png)

![image-20230420101353609](images/image-20230420101353609.png)



bootstrap_exclude 部分不用bootstrap样式

![image-20230420101825274](images/image-20230420101825274.png)



form中的数据保存到数据库中

example

![image-20230420104059555](images/image-20230420104059555.png)



open(file_path,mode='wb')





![image-20230420104752051](images/image-20230420104752051.png)



dbfilepath filepath





### 启用media

![image-20230420130822116](images/image-20230420130822116.png)



![image-20230420131025260](images/image-20230420131025260.png)

![image-20230420131111368](images/image-20230420131111368.png)

![image-20230420131152959](images/image-20230420131152959.png)

可以在浏览器中直接访问这个地址



![image-20230420131356998](images/image-20230420131356998.png)



相对路径

![image-20230420131549649](images/image-20230420131549649.png)



###  混合案例（基于modelform）



#### model.py

![image-20230420132235684](images/image-20230420132235684.png)

![image-20230420132302606](images/image-20230420132302606.png)



![image-20230420132401226](images/image-20230420132401226.png)



#### modeform

![image-20230420132848119](images/image-20230420132848119.png)



![image-20230420132952732](images/image-20230420132952732.png)



直接 form.save 就ok，不用手工读取文件后再save

![image-20230420133134269](images/image-20230420133134269.png)





![image-20230420133642322](images/image-20230420133642322.png)



显示图片



## 总结

凸头统计地球



![image-20230420135823296](images/image-20230420135823296.png)





![image-20230420135257480](images/image-20230420135257480.png)

![image-20230420135556893](images/image-20230420135556893.png)





# 应用部署

![image-20230421191345113](images/image-20230421191345113.png)



![image-20230421191136220](images/image-20230421191136220.png)

nginx 配置文件

![image-20230421192025233](images/image-20230421192025233.png)









## refer

https://www.bilibili.com/video/BV1NL41157ph/?p=2&spm_id_from=pageDriver&vd_source=f796b80cb80d8080a1ce1ba33567563e

https://www.cnblogs.com/wupeiqi/



```shell
git init
git add .
git commit -m "first commit" 


 git remote add origin git@github.com:yangle92/Webdjango.git

```




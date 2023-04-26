

# Python并发编程

进程---》线程



## 多线程

```python
def func(a1,a2,a3):
    pass

t=threading.Thread(target=func,args=(11,12,13)
t.start()
```



![image-20230424201651097](images/image-20230424201651097.png)



## 多进程

![image-20230424202624119](images/image-20230424202624119.png)

![image-20230424202659696](images/image-20230424202659696.png)





多进程要使用 main方法，因为进程的各系统的进程调用方式不一样

Linux系统fork，win  spawn； mac fork& spawn（python3.8默认时spawn），linux系统下不用main也能正常运行

![image-20230424203144038](images/image-20230424203144038.png)



规避方法 （mac ，window只能main）

加上main或者改变调用方式

![image-20230424203458632](images/image-20230424203458632.png)

## GIL锁

![image-20230424203726701](images/image-20230424203726701.png)

![image-20230424205837450](images/image-20230424205837450.png)

![image-20230424205852764](images/image-20230424205852764.png)

![image-20230424205946143](images/image-20230424205946143.png)

![image-20230424210242061](images/image-20230424210242061.png)



![image-20230424210334548](images/image-20230424210334548.png)



## 多线程开发

![image-20230424211447058](images/image-20230424211447058.png)

![image-20230424211558338](images/image-20230424211558338.png)

![image-20230424211631720](images/image-20230424211631720.png)



![image-20230424211833284](images/image-20230424211833284.png)







![image-20230424212342259](images/image-20230424212342259.png)

![image-20230424212830014](images/image-20230424212830014.png)

## 线程安全

![image-20230425090641186](images/image-20230425090641186.png)



![image-20230425090840146](images/image-20230425090840146.png)

![image-20230425090955640](images/image-20230425090955640.png)

![image-20230425091120493](images/image-20230425091120493.png)



## 线程锁

Lock & Rlock

Lock 不支持嵌套锁，Rlock支持

![image-20230425091913833](images/image-20230425091913833.png)

## 死锁

![image-20230425092448165](images/image-20230425092448165.png)

## 线程池

![image-20230425092753941](images/image-20230425092753941.png)



![image-20230425093052631](images/image-20230425093052631.png)

![image-20230425093150753](images/image-20230425093150753.png)

![image-20230425093510691](images/image-20230425093510691.png)

![image-20230425093850822](images/image-20230425093850822.png)

## 单例模式









##  refer

https://www.bilibili.com/video/BV1ma411q7me/?spm_id_from=333.999.0.0&vd_source=f796b80cb80d8080a1ce1ba33567563e


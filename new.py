import urllib.request
import os
import re
import pymysql

url = "http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6482.html"
head = {}
head['User-Agent'] = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36'
req = urllib.request.Request(url,head)
respose = urllib.request.urlopen(url)
html = respose.read().decode('utf-8')
#题目的爬取
# p = r'<h3 class="detail-title">(.*?)</h3>'
# b = re.findall(p,html)
# print(b[0])

#时间的爬取
# p = r'<p class="detail-time">(.*?)</p>'
# c = re.findall(p,html)
# print(c)

#照片的爬取
# p = r'<img src="/Public/Uploads/(.*?)"'
# d = re.findall(p,html)
# for i,ds in enumerate(d):
#     d[i] = "http://www.nfu.edu.cn/Public/Uploads/"+ds
# rr = ",".join(d)
# print(rr)

#爬取正文
p = r'<span style=".*?font-family:宋体;.*?">(.*?)</span>(.*?)</span>'
#p1 = r'<p style="margin-top:.*?21px;.*?>(.*?)</p>'
p1 = r'<p style=".*?text-indent.*?>(.*?)</p>'
a = re.findall(p1,html)
for i,tt in enumerate(a):
    a[i] = '<p style="text-align:center;">'+tt+'</p>'
    # dd = (str.replace('<span style="font-family:宋体">',''))\
    #     .replace('<span style="font-family: 宋体;line-height: 200%;font-size: 16px">','')
str = ''.join(a)
print(str)


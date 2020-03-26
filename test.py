import urllib.request
import os
import re
import pymysql

db = pymysql.connect("127.0.0.1","root","","nanfang")
cursor =db.cursor()
sql = "select * from new_link limit 20"
cursor.execute(sql)
result = cursor.fetchall()
for it in result:
    url = it[1]
    head = {}
    head['User-Agent'] = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36'
    req = urllib.request.Request(url, head)
    respose = urllib.request.urlopen(url)
    html = respose.read().decode('utf-8')
    #题目的爬取
    p = r'<h3 class="detail-title">(.*?)</h3>'
    title = re.findall(p, html)
    #照片的爬取
    p = r'<img src="/Public/Uploads/(.*?)"'
    d = re.findall(p,html)
    for i,ds in enumerate(d):
        d[i] = "http://www.nfu.edu.cn/Public/Uploads/"+ds
    pic = ",".join(d)
    #爬取正文
    p = r'<span style=".*?font-family:宋体;.*?">(.*?)</span>(.*?)</span>'
    p1 = r'<p style=".*?text-indent.*?>(.*?)</p>'
    a = re.findall(p1,html)
    for i,tt in enumerate(a):
        a[i] = '<p style="text-align:center;">'+tt+'</p>'
        # dd = (str.replace('<span style="font-family:宋体">',''))\
        #     .replace('<span style="font-family: 宋体;line-height: 200%;font-size: 16px">','')
    content = ''.join(a)

    sql = "insert into new_detail(title,content,pic) value('"+title[0]+"','"+content+"','"+pic+"')"
    #sql = "insert into new_detail(title,content,pic) value('大家好','就将计就计','啊啊啊啊啊')"
    print(content)
    cursor.execute(sql)
    db.commit()
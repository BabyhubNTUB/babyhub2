
| 目錄 |
| --- |
| [功能操作functionalOperation](#功能操作functionalOperation)
| [會員資料member](#會員資料member) |
| [寶寶資料baby](#寶寶資料baby) |
| [成長紀錄growingRecord](#成長紀錄growingRecord) |
| [討論區文章forum](#討論區文章forum) |
| [討論區文章留言forumComment](#討論區文章留言forumComment) |
| [孕期知識pregnancyKnowledge](#孕期知識pregnancyKnowledge) |
| [寶寶疫苗接種清單vaccination](#寶寶疫苗接種清單vaccination) |
| [日記diary](#日記diary) |
| [寶寶里程碑milestone_Done](#寶寶里程碑milestone_Done) |
| [小孩教育education](#小孩教育education) |
| [文章喜歡forumLike](#文章喜歡forumLike) |
| [管理員帳號manager](#管理員帳號manager) |
| [疫苗清單vaccine](#疫苗清單vaccine) |
| [里程碑milestone](#里程碑milestone) |
| [文章類別forum_Type](#文章類別forum_Type) |
| [醫院資訊hospital](#醫院資訊hospital) |

======================================


## 功能操作functionalOperation

~~~java
描述：登入
路徑：/login
方法：GET
request 請求：
  {
    id:"帳號(信箱)",
    password:"密碼",
    code:"驗證碼"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"登入成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"登入失敗"
  }
~~~

~~~java
描述：登出
路徑：/logout
方法：GET
request 請求：
  {
    id:"帳號(信箱)",
    password:"密碼"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"登出成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"登出失敗(尚未登入)"
  }
~~~

~~~java
描述：更改密碼
路徑：/forgotPassword
方法：GET
request 請求：
  {
    id:"帳號(信箱)"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"已寄出更改密碼信件至您的郵件"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"無此帳號"
  }
~~~

~~~java
描述：綁定LINE BOT
路徑：/lineAdd
方法：GET
request 請求：
  {
    id:"帳號(信箱)",
	lineId: "會員Line ID",
    password:"密碼",
    code:"驗證碼",
	codeTime:"驗證碼有效時間"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"綁定成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"綁定失敗"
  }
~~~

======================================


## 會員資料member

~~~java
描述：新增會員資料
路徑：/member/add
方法：POST
request 請求：
  {
    id:"帳號(信箱)",
    displayName:"名稱/姓名",
    password:"密碼",
    appellation:"稱謂"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"帳號創建成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"此帳號已存在"
  }
~~~

~~~java
描述：刪除會員資料
路徑：/member/del
方法：DELETE
request 請求：
  {
    id:"帳號(信箱)",
    password:"密碼",
  }
response 回傳(成功)：
  {
    code:"0"
    message:"帳號刪除成功"
  }
===
response 回傳(失敗)：
  {
    code:"-1"
    message:"帳號刪除失敗(密碼錯誤)"
  }
~~~

~~~java
描述：更新會員資料
名稱：/member/update
方法：PUT
request 請求：
  {
    id:"帳號(信箱)",
    displayName:"名稱/姓名",
    password:"密碼",
    photo: "大頭貼"
  }
response 回傳(成功)：
  {
    code:"0"
    message:"更新成功"
  }
===
response 回傳(失敗)：
  {
    code:"-1"
    message:"更新失敗"
  }
~~~

~~~java
描述：查詢會員資料
名稱：/member/query
方法：GET
request 請求：
  {
    id:"帳號(信箱)"
  }
response 回傳(成功)：
  {
    id:"帳號/信箱",
    displayName:"會員名稱",
    appellation:"稱謂",
    lineId:"LINEID",
    photo: "大頭貼"
    code:"0"
  }
===
response 回傳(失敗)：
  {
    code:"-1"
  }
~~~


======================================


## 寶寶資料baby

~~~java
描述：新增寶寶資料
名稱：/baby/add
方法：POST
request 請求：
  {
    babyNo:"寶寶編號",
    id:"帳號(信箱)",
    name:"寶寶名字",
    birthday:"寶寶生日",
    gender:"寶寶性別",
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"新增寶寶成功"
  }
===
response 回傳(失敗)：
  {
    code:"-1"
    message:"無法新增"
  }
~~~

~~~java
描述：刪除寶寶資料
路徑：/baby/del
方法：DELETE
request 請求：
  {
    id:"會員帳號(信箱)",
    babyNo:"寶寶編號"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢寶寶資料
路徑：/baby/query
方法：GET
request 請求：
  {    
    id:"會員帳號(信箱)",
    babyNo:"寶寶編號"
  }
===
response 回傳(成功)：
  {
    code:"0",
    babyNo:"寶寶編號",
    id:"帳號(信箱)",
    name:"寶寶名字",
    birthday:"寶寶生日",
    gender:"寶寶性別"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"沒有找到"
  }
~~~


======================================


## 成長紀錄growingRecord

~~~java
描述：新增成長紀錄
路徑：/growingRecord/add
方法：POST
request 請求：
  {
    serNo:"成長紀錄編號",
    babyNo:"寶寶編號",
    recordDateTime:"紀錄日期時間",
    height:"身高",
    weight:"體重",
    drinkMilk:"喝奶量"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"新增成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"新增失敗"
  }
~~~

~~~java
描述：刪除成長紀錄
路徑：/growingRecord/del
方法：DELETE
request 請求：
  {
    babyNo:"寶寶編號",
    recordDateTime:"紀錄日期時間"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"刪除成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"刪除失敗"
  }
~~~

~~~java
描述：更改寶寶成長紀錄
路徑：/growingRecord/update
方法：PUT
request 請求：
  {
    height:"身高",
    weight:"體重",
    drinkMilk:"喝奶量"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢成長紀錄
路徑：/growingRecord/query
方法：GET
request 請求：
  {
    babyNo:"寶寶編號",
    recordDateTime:"紀錄日期時間"
  }
===
response 回傳(成功)：
  {
    code:"0"
    serNo:"成長紀錄編號"|
    babyNo:"寶寶編號"|
    recordDateTime:"紀錄日期時間"|
    height:"身高"|
    weight:"體重"|
    drinkMilk:"喝奶量"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 討論區文章forum

~~~java
描述：新增文章
路徑：/forum/add
方法：POST
request 請求：
  {
    forumNo:"文章編號",
    typeNo:"文章類別",
    id:"會員帳號(信箱)",
    forumName:"文章名稱",
    forumDateTime:"發文日期時間",
    content:"文章內容"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除文章
路徑：/forum/del
方法：DELETE
request 請求：
  {
    forumNo:"文章編號"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更新文章
路徑：/forum/update
方法：PUT
request 請求：
  {    
    forumNo:"文章編號",
    typeNo:"文章類別",
    forumName:"文章名稱",
    content:"文章內容"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢文章
路徑：/forum/query
方法：GET
request 請求：
  {
  }
===
response 回傳(成功)：
  {
    code:"0"
    forumNo:"文章編號",
    typeNo:"文章類別",
    id:"會員帳號(信箱)",
    forumName:"文章名稱",
    forumDateTime:"發文日期時間",
    content:"文章內容"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 討論區文章留言forumComment

~~~java
描述：新增討論區留言
路徑：/forumComment/add
方法：POST
request 請求：
  {
    serNo:"留言編號",
    forumNo:"文章編號",
    id:"諱言帳號(信箱)",
    comDateTime:"留言日期時間",
    content:"留言內容"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除討論區留言
路徑：/forumComment/del
方法：DELETE
request 請求：
  {
    serNo:"留言編號"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更改討論區留言
路徑：/forumComment/update
方法：PUT
request 請求：
  {
    serNo:"留言編號",
    content:"留言內容"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 孕期知識pregnancyKnowledge

~~~java
描述：新增孕期知識
路徑：/pregnancyKnowledge/add
方法：POST
request 請求：
  {
    serNo:"孕期知識編號",
    managerNo:"管理者帳號",
    title:"標題",
    content:"內容",
    source:"出處"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除孕期知識
路徑：/pregnancyKnowledge/del
方法：DELETE
request 請求：
  {
    serNo:"孕期知識編號",
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更改孕期知識
路徑：/pregnancyKnowledge/update
方法：PUT
request 請求：
  {
    serNo:"孕期知識編號",
    managerNo:"管理者帳號",
    title:"標題",
    content:"內容",
    source:"出處"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢孕期知識
路徑：/pregnancyKnowledge/query
方法：GET
request 請求：
  {
    serNo:"孕期知識編號",
  }
===
response 回傳(成功)：
  {
    code:"0"
    serNo:"孕期知識編號",
    managerNo:"管理者帳號",
    title:"標題",
    content:"內容",
    source:"出處"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 寶寶疫苗接種清單vaccination

~~~java
描述：新增接種資料
路徑：/vaccination/add
方法：POST,DELETE,PUT,GET
request 請求：
  {
    serNo:"流水號",
    babyNo:"寶寶編號",
    vacNo:"疫苗流水號",
    hospitalNo:"接種醫院",
    vaccination:"是否接種",
    vacDate:"接種日期"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除接種資料
路徑：/vaccination/del
方法：POST,DELETE,PUT,GET
request 請求：
  {
    serNo:"流水號"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更改接種資料
路徑：/vaccination/update
方法：POST,DELETE,PUT,GET
request 請求：
  {
    serNo:"流水號",
    babyNo:"寶寶編號",
    vacNo:"疫苗流水號",
    hospitalNo:"接種醫院",
    vaccination:"是否接種",
    vacDate:"接種日期"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢接種資料
路徑：/vaccination/query
方法：POST,DELETE,PUT,GET
request 請求：
  {
    babyNo:"寶寶編號"
    ||    
    babyNo:"寶寶編號",
    vacName:"疫苗名稱"
  }
===
response 回傳(成功)：
  {
    code:"0"
    serNo:"流水號",
    babyNo:"寶寶編號",
    vacNo:"疫苗流水號",
    hospitalNo:"接種醫院",
    vaccination:"是否接種",
    vacDate:"接種日期"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 日記diary

~~~java
描述：新增日記
路徑：/diary/add
方法：POST,DELETE,PUT,GET
request 請求：
  {
    serNo:"流水號",
    babyNo:"寶寶編號",
    id:"會員帳號",
    diaryDate:"紀錄日期",
    diary:"內容",
    dVideo:"影音檔"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除日記
路徑：/diary/del
方法：POST,DELETE,PUT,GET
request 請求：
  {
    serNo:"流水號" 
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更改日記
路徑：/diary/update
方法：POST,DELETE,PUT,GET
request 請求：
  {
    serNo:"流水號",
    babyNo:"寶寶編號",
    id:"會員帳號",
    diaryDate:"紀錄日期",
    diary:"內容",
    dVideo:"影音檔"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢日記
路徑：/diary/query
方法：POST,DELETE,PUT,GET
request 請求：
  {
    serNo:"流水號" ||
    babyNo:"寶寶編號" ||
    id:"會員帳號" ||
    diaryDate:"紀錄日期" ||
    diary:"內容"
  }
===
response 回傳(成功)：
  {
    code:"0"
    serNo:"流水號",
    babyNo:"寶寶編號",
    id:"會員帳號",
    diaryDate:"紀錄日期",
    diary:"內容",
    dVideo:"影音檔"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 寶寶里程碑milestone_Done

~~~java
描述：新增寶寶里程碑
路徑：/babyMilestone/add
方法：POST
request 請求：
  {
    serNo:"流水號",
    babyNo:"寶寶編號",
    msNo:"里程碑編號",
    reach:"是否達成",
    reachDate:"達成日期",
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除寶寶里程碑
路徑：/babyMilestone/del
方法：DELETE
request 請求：
  {
    serNo:"流水號",
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更改寶寶里程碑
路徑：/babyMilestone/update
方法：PUT
request 請求：
  {
    serNo:"流水號",
    babyNo:"寶寶編號",
    msNo:"里程碑編號",
    reach:"是否達成",
    reachDate:"達成日期",
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢寶寶里程碑
路徑：/babyMilestone/query
方法：GET
request 請求：
  {
    serNo:"流水號" ||
    babyNo:"寶寶編號" ||
    msNo:"里程碑名字" ||
    reach:"是否達成" ||
    reachDate:"達成日期" ||
  }
===
response 回傳(成功)：
  {
    code:"0"
    serNo:"流水號",
    babyNo:"寶寶編號",
    msNo:"里程碑編號",
    reach:"是否達成",
    reachDate:"達成日期",
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 小孩教育education

~~~java
描述：新增小孩教育
路徑：/education/add
方法：POST
request 請求：
  {
    serNo:"流水號",
    managerNo:"管理者編號",
    title:"標題",
    content:"內容",
    source:"出處"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除小孩教育
路徑：/education/del
方法：DELETE
request 請求：
  {
    serNo:"流水號",
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更改小孩教育
路徑：/education/update
方法：PUT
request 請求：
  {
    serNo:"流水號",
    managerNo:"管理者編號",
    title:"標題",
    content:"內容",
    source:"出處"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢小孩教育
路徑：/education/query
方法：GET
request 請求：
  {
    serNo:"流水號" ||
    managerNo:"管理者編號" ||
    title:"標題" ||
    content:"內容" ||
    source:"出處"
  }
===
response 回傳(成功)：
  {
    code:"0"
    serNo:"流水號",
    managerNo:"管理者編號",
    title:"標題",
    content:"內容",
    source:"出處"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 文章喜歡forumLike

~~~java
描述：按下喜歡
路徑：/forum/:forumNo/like
方法：POST
request 請求：
  {
    serNo:"流水號",
    id:"會員帳號",
    forumNo:"文章編號"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"喜歡這篇文章"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：收回喜歡
路徑：/forum/:forumNo/dislike
方法：DELETE
request 請求：
  {
    serNo:"流水號",
    id:"會員帳號",
    forumNo:"文章編號"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"收回了你的喜歡"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 管理員帳號manager

~~~java
描述：新增管理員帳號
路徑：/manager/add
方法：POST
request 請求：
  {
    managerNo:"管理員帳號",
    password:"管理員密碼",
    name:"名字",
    cellphone:"手機"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除管理員帳號
路徑：/manager/del
方法：DELETE
request 請求：
  {
    managerNo:"管理員帳號",
    password:"管理員密碼",
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更改管理員帳號
路徑：/manager/update
方法：PUT
request 請求：
  {
    managerNo:"管理員帳號",
    password:"管理員密碼",
    name:"名字",
    cellphone:"手機"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢管理員帳號
路徑：/manager/query
方法：GET
request 請求：
  {
    managerNo:"管理員帳號",
    name:"名字",
    cellphone:"手機"
  }
===
response 回傳(成功)：
  {
    code:"0"
    managerNo:"管理員帳號",
    password:"管理員密碼",
    name:"名字",
    cellphone:"手機"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 疫苗清單vaccine

~~~java
描述：新增疫苗
路徑：/vaccine/add
方法：POST
request 請求：
  {
    varNo:"疫苗編號",
    managerNo:"管理者帳號",
    varname:"疫苗名稱",
    varAge:"適合接種年齡",
    vacReaction:"接種後反應"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除疫苗
路徑：/vaccine/del
方法：DELETE
request 請求：
  {
    varNo:"疫苗編號"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更改疫苗
路徑：/vaccine/update
方法：PUT
request 請求：
  {
    varNo:"疫苗編號",
    managerNo:"管理者帳號",
    varname:"疫苗名稱",
    varAge:"適合接種年齡",
    vacReaction:"接種後反應"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢疫苗
路徑：/vaccine/query
方法：GET
request 請求：
  {
    varNo:"疫苗編號" ||
    managerNo:"管理者帳號" ||
    varname:"疫苗名稱" ||
    varAge:"適合接種年齡" ||
    vacReaction:"接種後反應"
  }
===
response 回傳(成功)：
  {
    code:"0"
    varNo:"疫苗編號",
    managerNo:"管理者帳號",
    varname:"疫苗名稱",
    varAge:"適合接種年齡",
    vacReaction:"接種後反應"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 里程碑milestone

~~~java
描述：新增里程碑
路徑：/milestone/add
方法：POST
request 請求：
  {
    msNo:"里程碑編號",
    managerNo:"管理者帳號",
    name:"里程碑名稱",
    content:"內容",
    mVideo:"影音檔"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除里程碑
路徑：/milestone/del
方法：DELETE
request 請求：
  {
    msNo:"里程碑編號",
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更改里程碑
路徑：/milestone/update
方法：PUT
request 請求：
  {
    msNo:"里程碑編號",
    managerNo:"管理者帳號",
    name:"里程碑名稱",
    content:"內容",
    mVideo:"影音檔"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢里程碑
路徑：/milestone/query
方法：GET
request 請求：
  {
    msNo:"里程碑編號",
    managerNo:"管理者帳號",
    name:"里程碑名稱",
    content:"內容"
  }
===
response 回傳(成功)：
  {
    code:"0"
    msNo:"里程碑編號",
    managerNo:"管理者帳號",
    name:"里程碑名稱",
    content:"內容",
    mVideo:"影音檔"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 文章類別forum_Type

~~~java
描述：新增文章類別
路徑：/forum_Type/add
方法：POST
request 請求：
  {
    typeNo:"文章類別編號",
    managerNo:"管理者帳號",
    name:"名稱"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除文章類別
路徑：/forum_Type/del
方法：DELETE
request 請求：
  {
    typeNo:"文章類別編號",
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更改文章類別
路徑：/forum_Type/update
方法：PUT
request 請求：
  {
    typeNo:"文章類別編號",
    managerNo:"管理者帳號",
    name:"名稱"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢文章類別
路徑：/forum_Type/query
方法：GET
request 請求：
  {
    typeNo:"文章類別編號",
    managerNo:"管理者帳號",
    name:"名稱"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~


======================================


## 醫院資訊hospital

~~~java
描述：新增醫院資訊
路徑：/hospital/add
方法：POST
request 請求：
  {
    hospitalNo:"醫院編號",
    name:"醫院名稱",
    longitude:"經度",
    latitude:"緯度",
    address:"地址",
    phone:"聯絡電話";
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：刪除醫院資訊
路徑：/hospital/del
方法：DELETE
request 請求：
  {
    hospitalNo:"醫院編號",
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：更改醫院資訊
路徑：/hospital/update
方法：PUT
request 請求：
  {
    hospitalNo:"醫院編號",
    name:"醫院名稱",
    longitude:"經度",
    latitude:"緯度",
    address:"地址",
    phone:"聯絡電話";
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

~~~java
描述：查詢醫院資訊
路徑：/hospital/query
方法：GET
request 請求：
  {
    hospitalNo:"醫院編號" ||
    name:"醫院名稱" ||
    longitude:"經度" ||
    latitude:"緯度" ||
    address:"地址" ||
    phone:"聯絡電話"
  }
===
response 回傳(成功)：
  {
    code:"0"
    message:"成功"
  }
===
response 回傳(失敗)：
  { 
     code:"-1"
     message:"失敗"
  }
~~~

| 目錄 |
| --- |
| [T01 member（會員資料）](#T01member) |
| [T02 baby（寶寶資料）](#T02baby) |
| [T03 growing_Record（寶寶成長紀錄）](#T03growing_Record) |
| [T04 forum（討論區文章）](#T04forum) |
| [T05 forum_Comment（討論區文章留言）](#T05forum_Comment) |
| [T06 pregnancy_Knowledge（孕期知識）](#T06pregnancy_Knowledge) |
| [T07 vaccination（接種清單）](#T07vaccination) |
| [T08 diary（日記）](#T08diary日記) |
| [T09 milestone_Done（里程碑完成）](#T09milestone_Done) |
| [T10 education（小孩教育）](#T10education) |
| [T11 forum_Like（文章喜歡）](#T11forum_Like) |
| [T12 manager（管理者）](#T12manager) |
| [T13 vaccine（疫苗清單）](#T13vaccine) |
| [T14 milestone（里程碑）](#T14milestone) |
| [T15 forum_Type（文章類別）](#T15forum_Type) |
| [T16 hospital（醫院）](#T16hospital) |

## T01member
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | id | 會員帳號 | P |  | varchar | 50 | mail |
| 2 | displayName | 會員名稱或姓名 |  |  | varchar | 50 | 可用綽號 |
| 3 | password | 會員密碼 |  |  | varchar | 20 | 加密 |
| 4 | appellation | 稱謂 |  |  | varchar |  | '爸爸','媽媽'' |
| 5 | lineId | 會員LineID |  |  | varchar | 50 |  |
| 6 | code | 驗證碼 |  | v | char | 6 |  |
| 7 | codeTime | 驗證碼有效時間 |  | v | time |  |  |
| 8 | photo | 大頭貼 |  | v | varchar | 500 |  |

## T02baby
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | babyNo | 寶寶編號 | P |  | int | 50 | AI |
| 2 | id | 會員帳號 | F |  | varchar | 50 | T01 |
| 3 | name | 寶寶名稱或姓名 |  |  | varchar | 50 | 可用綽號 |
| 4 | birthday | 生日 |  |  | date |  |  |
| 5 | gender | 性別 |  |  | char |  | '男','女' |
| 6 | photo | 大頭貼 |  | v | varchar | 500 |  |

## T03growing_Record
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | serNo | 流水號 | P |  | int | 50 | AI |
| 2 | babyNo | 寶寶編號 | F |  | int | 50 | T02 |
| 3 | recordDateTime | 紀錄日期時間 |  |  | time |  |  |
| 4 | height | 身長 |  | v | float | 6 | 50.34cm |
| 5 | weight | 體重 |  | v | float | 5 | 7.05kg |
| 6 | drinkMilk | 喝奶量 |  |  | int | 10 | c.c. |

## T04forum
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | forumNo | 文章流水號 | P |  | int | 50 | AI |
| 2 | typeNo | 文章類別編號 | F |  | int | 50 | T15 |
| 3 | id | 會員帳號 | F |  | varchar | 50 | T01 |
| 4 | forumName | 文章名稱 |  |  | varchar | 50 |  |
| 5 | forumDateTime | 發文日期時間 |  |  | time |  |  |
| 6 | content | 文章內容 |  |  | text |  | rich editor |

## T05forum_Comment
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | serNo | 流水號 | P |  | int | 50 | AI |
| 2 | forumNo | 文章編號 | F |  | int | 50 | T04 |
| 3 | id | 會員帳號 | F |  | varchar | 50 | T01 |
| 4 | comDateTime | 留言日期時間 |  |  | time |  |  |
| 5 | content | 留言內容 |  |  | text |  |  |

## T06pregnancy_Knowledge
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | serNo | 流水號 | P |  | int | 50 | AI |
| 2 | managerNo | 管理者帳號 | F |  | varchar | 20 | T12 |
| 3 | title | 標題 |  |  | vachar | 20 |  |
| 4 | content | 內容 |  |  | text |  |  |
| 5 | source | 出處 |  | v | varchar | 255 |  |

## T07vaccination
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | serNo | 流水號 | P |  | int | 50 | AI |
| 2 | babyNo | 寶寶編號 | F |  | int | 50 | T02 |
| 3 | vacNo | 疫苗編號 | F |  | int | 50 | T13 |
| 4 | hospitalNo | 接種醫院 | F | v | int | 50 | T16 |
| 5 | vaccination | 是否接種 |  |  | char |  | '已接種','未接種' |
| 6 | vacDate | 接種日期 |  | v | date |  |  |

## T08diary
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | serNo | 流水號 | P |  | int | 50 | AI |
| 2 | babyNo | 寶寶編號 | F |  | int | 50 | T02 |
| 3 | id | 會員帳號 | F |  | varchar | 10 | T01 |
| 4 | diaryDate | 日期 |  |  | date |  |  |
| 5 | diary | 內容 |  |  | text |  | rich editor |
| 6 | dVideo | 影音檔 |  | v | vachar | 500 |  |

## T09milestone_Done
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | serNo | 流水號 | P |  | int | 50 | AI |
| 2 | babyNo | 寶寶編號 | F |  | int | 50 | T02 |
| 3 | msNo | 里程碑編號 | F |  | int | 50 | T14 |
| 4 | reach | 是否達成 |  |  | char |  | '達成','未達成' |
| 5 | reachDate | 達成日期 |  | v | date |  |  |

## T10education
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | serNo | 流水號 | P |  | int | 50 | AI |
| 2 | managerNo | 管理者編號 | F |  | varchar | 20 | T12 |
| 3 | title | 標題 |  |  | vachar | 20 |  |
| 4 | content | 內容 |  |  | text |  |  |
| 5 | source | 出處 |  | v | varchar | 255 |  |

## T11forum_Like
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | serNo | 流水號 | P |  | int | 50 | AI |
| 2 | id | 會員帳號 | F |  | varchar | 50 | T01 |
| 3 | forumNo | 文章流水號 | F |  | int | 50 | T04 |

## T12manager
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | managerNo | 帳號 | P |  | varchar | 20 |  |
| 2 | password | 密碼 |  |  | varchar | 20 | 加密 |
| 3 | name | 姓名 |  |  | char | 10 |  |
| 4 | cellphone | 手機 |  |  | char | 10 |  |

## T13vaccine
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | vacNo | 疫苗編號 | P |  | int | 50 | AI |
| 2 | managerNo | 管理者帳號 | F |  | varchar | 20 | T12 |
| 3 | varname | 疫苗名稱 |  |  | varchar | 50 |  |
| 4 | varAge | 適合接種年齡 |  |  | int | 10 | 出生後幾天 |
| 5 | vacReaction | 接種後反應 |  |  | text |  |  |

## T14milestone
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | msNo | 里程碑編號 | P |  | int | 50 | AI |
| 2 | managerNo | 管理者帳號 | F |  | varchar | 20 | T12 |
| 3 | name | 里程碑名稱 |  |  | varchar | 20 |  |
| 4 | content | 內容 |  |  | text |  |  |
| 5 | mVideo | 影音檔 |  | v | varchar | 500 |  |

## T15forum_Type
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | typeNo | 文章類別編號 | P |  | int | 50 | AI |
| 2 | managerNo | 管理者帳號 | F |  | varchar | 20 | T12 |
| 3 | name | 名稱 |  |  | varchar | 20 |  |

## T16hospital
| | 欄位名稱(英) | 欄位名稱(中) | P/F | NULL | 資料型態 | 長度 | 說明 |
| ---  | ---  | --- | --- | --- | --- | --- | --- |
| 1 | hospitalNo | 醫院編號 | P |  | int | 50 | AI |
| 2 | name | 醫院名稱 |  |  | char | 20 | T12 |
| 3 | longitude | 經度 |  |  | float | 20 |  |
| 4 | latitude | 緯度 |  |  | float | 20 |  |
| 5 | address | 地址 |  |  | char | 50 |  |
| 6 | phone | 電話 |  |  | char | 10 |  |

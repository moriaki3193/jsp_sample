# jsp_sample

## GOAL
ローカルのDBとしてMySQLを使って、データをページに返して表示するところまで

## 覚えておくべきこと
### Tomcatのフォルダの構成
Tomcat  
  |--LICENCE  
  |--NOTICE  
  |  
  ...  
  |--webapps  
       |--ROOT  
       |--docs  
       |  
       ...  
       |--twitter(new)
            |--index.jsp  
            |--WEB-INF  
                 |--web.xml  
### 必要なファイルやディレクトリ
/webapps/ に新しく作りたいWebAppのディレクトリをおくこと  
その中には、ビューとなるjspファイルとWEB-INFディレクトリをおく必要があるらしい  
そのWEB-INF/ にコンテキストファイルとしてのweb.xmlをおけば良い

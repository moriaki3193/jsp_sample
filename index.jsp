<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="java.sql.*" %>
<html>
  <head>
    
  </head>
  <body>
    <h1>Twitter</h1>
    <%
    // DB connection
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost/test_db";
    // ローカルのMySQLのユーザ設定
    String user = "ここはよしなに";
    String password = "ここもよしなに";
    try {
      Connection conn = DriverManager.getConnection(url, user, password);
      Statement stmt = conn.createStatement();
      String sql = "SELECT * FROM user";
      // connectionのcreateStatementメソッドのexecuteQueryを実行
      // ResultSetは指定されたQueryによって作成されたデータを含むResultSetオブジェクトを保有する
      // つまり、変数rsが検索結果を保有していることになる
      ResultSet rs = stmt.executeQuery(sql);
      // DBから取り出したデータをページに出力するスクリプト
      while (rs.next()) {
        /* 行からデータを取得 */
        int id = rs.getInt("id");
        String user_name = rs.getString("user_name");
        // ページに出力
        out.println("<p>");
        out.println("id: " + id + "|user_name: " + user_name);
        out.println("</p>");
      }
      // リソースの解放
      rs.close();
      stmt.close();
    } catch (SQLException e) {
      out.println("The exception is " + e.getMessage()); 
    } 
    %>
  </body>
</html>

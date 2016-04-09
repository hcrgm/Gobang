<%@page import="net.andylizi.gobang.Room"%>
<%@page import="net.andylizi.gobang.GameStorge"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    boolean create = false;
    String roomId = null;

    if ("create".equalsIgnoreCase(request.getQueryString())) {
        create = true;
    } else if (request.getQueryString() != null) {
        Room room = GameStorge.rooms.get(request.getQueryString().toString().toLowerCase());
        if (room == null) {
            response.sendRedirect("index.jsp");
            return;
        }
        if (room.isPlaying()) {
%>
Has been start! <a href="index.jsp">Back</a>
<%
            return;
        }
        roomId = room.getRoomId();
    } else {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gobang</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style/normalize.css" rel="stylesheet" type="text/css">
        <link href="style/common.css" rel="stylesheet" type="text/css">
        <link href="style/board.css" rel="stylesheet" type="text/css">
        <script src="http://libs.baidu.com/jquery/2.0.3/jquery.min.js"></script>
        <script src="js/lib/hclass.js"></script>
        <script src="js/socket.js"></script>
        <script>var create = <%=create%>;var roomId = "<%=(roomId == null ? "null" : roomId)%>";</script>
        <script src="js/game.js"></script>
    </head>
    <body>
        <table align="center" class="">
            <tbody>
                <tr class="border-top" id="row_0">
                    <td class="border-left" id="row_0_0">&nbsp;</td>
                    <% for (int col = 1; col < 14; col++) {%>
                    <td id="row_0_<%=col%>">&nbsp;</td>
                    <% } %>
                    <td class="border-right" id="row_0_14">&nbsp;</td>
                </tr>

                <% for (int row = 1; row < 14; row++) {%>
                <tr id="row_<%=row%>">
                    <td class="border-left" id="row_<%=row%>_0">&nbsp;</td>
                    <% for (int col = 1; col < 14; col++) {%>
                    <td id="row_<%=row%>_<%=col%>">&nbsp;</td>
                    <% }%>
                    <td class="border-right" id="row_<%=row%>_14">&nbsp;</td>
                </tr>
                <% } %>

                <tr class="border-bottom" id="row_14">
                    <td class="border-left" id="row_14_0">&nbsp;</td>
                    <% for (int col = 1; col < 14; col++) {%>
                    <td id="row_14_<%=col%>">&nbsp;</td>
                    <% }%>
                    <td class="border-right" id="row_14_14">&nbsp;</td>
                </tr>
            </tbody>
        </table>
        <div id="msg"></div>
    </body>
</html>
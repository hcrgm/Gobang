<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gobang</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="initial-scale=1.0, user-scalable=yes">
        <link rel="shortcut icon" href="image/favicon.ico" type="image/x-icon" />
        <link href="style/index.css" rel="stylesheet" type="text/css">
        <script src="http://libs.baidu.com/jquery/2.0.3/jquery.min.js" onerror="document.write('<script src=js/lib/jquery.js>&lt;/script&gt;');"></script>
        <script src="js/lib/class.js"></script>
        <script src="js/socket.js"></script>
        <script src="js/index.js"></script>
    </head>
    <body>
        <span id="gear"></span>
        <div id="main" style="visibility: hidden;">
            <div id="title" style="background-image: url('image/bgs/0.svg');">
                Gobang
            </div>
            <div id="content">
                <div id="userinfo">
                    Current User: <span id="username_arena">Loading...</span>
                    <span id="l_loading" style="display:none;"><br/>Loading...</span>
                    <div id="login" style="display: none;"></div>
                </div>
                <div id="actions">
                    <button class="pink" id="btn_create">Create</button>
                    <input type="text" id="txt_join" style="visibility: hidden;width:0px;margin-right:0px;margin-left:0px;" placeholder="Room ID" autocomplete="off" autofocus="on"/>
                    <button class="blue" style="margin-left: 20px;" id="btn_join">Join</button>
                    <button class="teal" style="display: none;margin-left: 10px;" id="btn_back">Back</button>
                    <div id="list" style="display:none;">
                        <ul>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

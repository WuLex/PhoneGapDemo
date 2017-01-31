<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhoneGapFirst.aspx.cs"
    Inherits="PhoneGap入门.PhoneGapFirst" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Acceleration Example</title>
    <script src="js/cordova.win7.js" type="text/javascript"></script>
    <script src="js/cordova.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>
            Example</h1>
        <p>
            getCurrentAcceleration</p>
    </div>
    </form>
    <script type="text/javascript" charset="utf-8">
        // 等待加载PhoneGap   
        document.addEventListener("deviceready", onDeviceReady, false);
        // PhoneGap加载完毕
        function onDeviceReady() {
            navigator.accelerometer.getCurrentAcceleration(onSuccess, onError);
        }
        // onSuccess: 返回当前加速度数据的快照
        function onSuccess(acceleration) {
            alert('Acceleration X: ' + acceleration.x + '\n' +
			'Acceleration Y: ' + acceleration.y + '\n' +
			'Acceleration Z: ' + acceleration.z + '\n' +
			'Timestamp: ' + acceleration.timestamp + '\n');
        }
        // onError: 返回加速度数据失败
        function onError() {
            alert('onError!');
        }
    </script>
</body>
</html>

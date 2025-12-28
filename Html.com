<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Game ID App</title>

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f5f5f5;
    text-align: center;
}

.header {
    background: #2196F3;
    height: 50px;
}

.container {
    padding: 20px;
}

input {
    width: 90%;
    padding: 15px;
    font-size: 16px;
    border-radius: 10px;
    border: 1px solid #ccc;
}

button {
    width: 90%;
    padding: 15px;
    margin-top: 15px;
    font-size: 16px;
    border: none;
    border-radius: 10px;
    color: #fff;
    cursor: pointer;
}

.submit {
    background: #e53935;
}

.interstitial {
    background: #2196F3;
}

.rewarded {
    background: #0277bd;
}

.info {
    font-size: 14px;
    color: #e65100;
    margin-top: 30px;
}

.banner {
    position: fixed;
    bottom: 0;
    width: 100%;
    background: #ddd;
    padding: 10px;
    font-weight: bold;
}
</style>
</head>

<body>

<div class="header"></div>

<div class="container">

    <input type="number" id="gameId" placeholder="Enter Your 7 Digit Game ID" maxlength="7">

    <button class="submit" onclick="submitGameId()">Submit Game ID</button>

    <button class="interstitial" onclick="showInterstitial()">Interstitial</button>

    <button class="rewarded" onclick="showRewarded()">Rewarded</button>

    <div class="info">
        इस एप्लिकेशन पर काम चल रहा है और भारी मांग के कारण इसे जल्द लॉन्च किया गया।
        यह इसका पहला संस्करण है।
    </div>

</div>

<div class="banner">
    🔰 Banner Ad Placeholder
</div>

<script>
function submitGameId() {
    const id = document.getElementById("gameId").value;
    if (id.length === 7) {
        alert("Game ID Submitted: " + id);
    } else {
        alert("Please enter 7 digit Game ID");
    }
}

function showInterstitial() {
    alert("🔵 Interstitial Ad Showing (Demo)");
}

function showRewarded() {
    alert("🟢 Rewarded Ad Completed!\nReward Given (Demo)");
}
</script>

</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SPA with Java Backend</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
        }
        .sidebar {
            width: 200px;
            height: 100vh;
            background-color: #333;
            color: white;
            padding: 20px;
            position: fixed;
        }
        .sidebar a {
            color: white;
            display: block;
            margin: 10px 0;
            text-decoration: none;
        }
        .content {
            margin-left: 220px;
            padding: 20px;
            width: 100%;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <h2>Menu</h2>
    <a href="#" onclick="loadSection('trangChu')">Trang Chủ</a>
    <a href="#" onclick="loadSection('khoaHoc')">Khóa Học</a>
    <a href="#" onclick="loadSection('nhanVien')">Nhân Viên</a>
</div>

<div class="content">
    <h1 id="title">Trang chủ</h1>
    <p id="content">Welcome to the home page!</p>
</div>

<script>
    function loadSection(sectionId) {
        const titleElement = document.getElementById('title');
        const contentElement = document.getElementById('content');

        if (sectionId === 'trangChu') {
            titleElement.innerText = "Trang Chủ";
            contentElement.innerHTML = "<p>Đây là nội dung của Trang Chủ.</p>";
        } else if (sectionId === 'khoaHoc') {
            titleElement.innerText = "Khóa Học";
            contentElement.innerHTML = "<p>Đây là nội dung của Khóa Học.</p>";
        } else if (sectionId === 'nhanVien') {
            titleElement.innerText = "Nhân Viên";
            contentElement.innerHTML = "<p>Đây là nội dung của Nhân Viên.</p>";
        }
    }

    // Load default section when the page is loaded
    loadSection('trangChu');
</script>
</body>
</html>
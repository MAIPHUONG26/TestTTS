<!DOCTYPE html>
<html lang="en">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

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
<form>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email </label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">

    </div>
    <p>trạng thái</p>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="0" id="flexCheckDefault">
        <label class="form-check-label" for="flexCheckDefault">
            Hoạt động
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="1" id="flexCheckChecked" checked>
        <label class="form-check-label" for="flexCheckChecked">
            ngừng hoạt động
        </label>
    </div>
    <button type="submit" class="btn btn-primary">Thêm</button>
</form>

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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
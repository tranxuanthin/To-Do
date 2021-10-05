# To-Do

# deploy
B1: Môi trường ảo
 Tải source link github.Từ phiên bản Python3.5, đã có công cụ "chính chủ" tích hợp sẵn vào site-packages của Python, đó là công cụ venv tạo môi trường ảo(venv). Mở thư mục vừa tải (TO-DO) bằng
vscode. Gõ lệnh  (python -m venv venv) . Khi venv được khởi tạo, từ terminal vscode di chuyển đường dẫn và chạy file (>venv\Scripts\activate.bat). HIển thị venv đầu dòng thì venv đã được hoạt động.
B2: Cài thư viện cùng phiên bản
 Gõ lệnh sau để cài đúng các thư viện cùng phiên bản cần thiết(đang ở thư mục chứa requirements.txt):
pip install -r requirements.txt
B3: Database
Tải xampp-> start Apache và Mysql -> phpadmin -> import file task.sql(trong source tải về) vào cơ sở dữ liệu. Thông tin để mặc định cổng Mysql 3306.
B4: Trong file settings.py tìm đến phần 'DATABASES' kiểm tra ứng với database vừa cài và cổng xampp
'NAME': 'task',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': 'localhost',
        'Port': '3306',
B5: Trong thư mục manage.py. Gõ lệnh python manage.py runserver. Ta để cổng mặc định :8000

# Mô tả  API
API 1 / SIGN-UP:
- Khi gửi request lên server với body json có username, password, email nếu username không trùng trong hệ thống thì server sẽ báo tạo thành công. Password được mã hóa trước khi lưu vào database.
API 2 / SIGN-IN:
- Khi đăng nhập vào hệ thống sẽ gửi về mã token xác thực định danh.
---Các API dưới đây đều phải có mã token định danh .
--- Nếu lỗi vui lòng đăng nhập lại vì có thể sai hoặc hết hạn token.
--- Mã token đúng là mã như sau: Bearer +" " + mã token đăng nhập.
--- Mã iduser nếu gửi lên mà hệ thống không tồn tại user sẽ lỗi.
API 3 / ADD-TO-DO:
- id trong json gửi lên phải chưa tồn tại. Nếu đúng dữ liệu sẽ được thêm một task.
API 4 / UPDATE-TO-DO:
- id trong json gửi lên phải tồn tại và status tồn tại phải là new. Nếu đúng sẽ cập nhật được task.
API 5 / REMOVE-TO-DO:
- id trong json gửi lên phải tồn tại và status tồn tại phải là new. Nếu đúng sẽ xóa được task.
API 6 / GET-ALL-TO-DO:
- Trả về tất cả các task
API 7 / GET-TO-DO-BY-ID:
- id trong url phải tồn tại. Nếu đúng sẽ lấy được task với id đó.
API 8 / GET-ALL-USER:
- Trả về danh sách các tên user ứng với email.
API 9 / ASSIGN-TO-DO:
- Không assign cho user chứng thực JWT đang được dùng. Id task phải tồn tại. Gửi tên username được assign phải tồn tại trong hệ thống.
Phần nâng cao.
- Mật khẩu được mã hóa rồi lưu vào cơ sở dữ liệu.
- Sử dụng docker : chưa làm được. Thay vào đó sử dụng venv đi cùng python để deploy.






# LaptopShop (Chưa hoàn thiện)


# Thông tin dự án

## Công nghệ

- **Ngôn ngữ**: HTML/CSS, CS
- **Framework**: ASP.NET Webform
- **Database**: MS SQL

## Thông tin chi tiết về front-end (Tiến độ 80%)

- **Giao diện được viết hoàn toàn thuần html/css và không dùng các hỗ trợ như bootstrap hay tailwindcss, có dùng các thư viện ngoài như swiper(thường dùng cho các slider), remixicon (giống như fontawsome)**
- **Giao diện tối, sáng là do sử dụng 1 bộ color pallet(có tham khảo), set thành root, và dựa vào js để xử lý, khi nhấn vào sáng, thì sẽ thay thành các var(color name từ root)**
- **Dashboard, product: Do thiếu thời gian nên chưa hoàn thiện được, dashboard thì chưa có**

> [!NOTE] **Cách mà mình dựng giao diện?**
> Code giao diện ngoài trước rồi mới đem giao diện vào dự án rồi dựa vào đó config lại cho phù hợp với framework, do ASP thiết kế khá tệ về mặt xử lý giao diện + bản thân Visual Studio rất nặng và đôi khi lỗi vặt. Nên mình code ngoài VSC trước, dùng live server để dễ làm quen giao diện.


## Thông tin chi tiết về back-end (Tiến độ ?)

-**Database đã được dựng lên tương đối ổn định(hiện tại chưa thấy phát sinh lỗi về mặt logic)**
-**Đã xong login, dùng được hoàn toàn, nhưng lúc push lên somee, mặc dù có thay hết connection string nhưng vẫn có cái lỗi not find SQL server ? Mặc dù các dữ liệu sản phẩm đều có thể load ra hoàn toàn?**
-**Dashboard: Chưa có, nơi xem các dữ liệu, up thêm dữ liệu, thêm sửa xóa**

> [!NOTE] **Lý do chưa xong?**
> Do vừa phải đi học, đi thi, đi làm, còn dính thêm quả đi quân khu, nên không thể chạy hết được. Mọi người thông cảm.


## Cách dùng và tải dự án.

> [!NOTE] 
> Down về, config lại connectionstring, chạy file script, cả 2 file đều dùng được, file laptopgear.sql là file nguyên gốc mình viết ra(do sql của mình là bản mới, TrustServerCertificate=True nên đây là phần mình có khi connect server, nếu bạn không có, thì có thể remove nó đi). Sau khi xong tất cả, là có thể chạy được. .



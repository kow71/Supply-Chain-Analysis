                                                       PHẦN I. TỔNG QUAN
Supply Chain là một chuỗi các hoạt động liên quan đến việc sản xuất, vận chuyển, lưu trữ và phân phối hàng hóa từ nguồn cung cấp đến khách hàng cuối cùng. Supply Chain bao gồm các nhà cung cấp, nhà sản xuất, nhà phân phối, nhà bán lẻ và khách hàng. Mục tiêu của Supply Chain là tối ưu hóa quá trình cung ứng hàng hóa và dịch vụ đến khách hàng với chi phí thấp nhất và chất lượng cao nhất.
Một Supply Chain hiệu quả là yếu tố quan trọng để tạo ra lợi thế cạnh tranh cho doanh nghiệp. Giúp doanh nghiệp giảm chi phí, tăng doanh thu, nâng cao chất lượng sản phẩm và dịch vụ. Đồng thời, cải thiện khả năng đáp ứng nhu cầu/ mong muốn của khách hàng và tăng sự hài lòng của khách hàng
1.1.	Giới thiệu dataset
1.1.1	Data dictionary
Dataset được chọn là 1 bảng chứa thông tin bán hàng của 1 công ty thương mại tại Mỹ, gồm 16 cột thể hiện quá trình từ khâu đặt hàng, nhập kho, xuất bán và kết thúc khi KH nhận được hàng, cùng với các thông tin về giá cả, team sales, kho bãi và khách hàng.
-	Order Number: Mã đơn hàng;
-	Sales Channel: Kênh bán hàng;
-	Warehouse Code: Mã nhà kho;
-	Procured Date: Ngày mà công ty mua được sản phẩm theo đơn đặt hàng;
-	Order Date: Ngày khách đặt hàng;
-	Ship Date: Ngày đơn hàng được vận chuyển từ kho;
-	Delivery Date: Ngày đơn hàng được giao cho khách hàng;
-	Currency Code: Đồng tiền sử dụng trong quá trình giao dịch;
-	Sales Team ID: Mã cho đội ngũ bán hàng;
-	Customer ID: Mã khách hàng;
-	Store ID: Mã cửa hàng;
-	Product ID: Mã sản phẩm;
-	Order Quantity: Số lượng đặt hàng;
-	Discount Applied: Phần trăm giảm giá;
-	Unit Cost: Chi phí mỗi sản phẩm;
-	Unit Price: Giá mỗi sản phẩm.

1.1.2	Quy trình kinh doanh

![image](https://github.com/user-attachments/assets/1437541f-910f-4b94-8ab0-420c8144f553)

1.1.3	Xác định vấn đề và xác định mục tiêu phân tích 
●	Xác định vấn đề:
1)	Yêu cầu thời gian vận chuyển nhanh hơn và đảm bảo chất lượng sản phẩm. Nguyên nhân là do sự thay đổi nhanh chóng của xu hướng các nền kinh tế hiện nay;
2)	Chi phí vận chuyển luôn ở mức cao, chiếm một tỷ trọng lớn trong giá thành sản phẩm. Nguyên nhân là do để đảm bảo tuân thủ về mặt chất lượng và thời gian nhanh chóng đồng nghĩa với việc phát sinh chi phí lớn;
3)	Cần tối thiểu hóa tổng chi phí sản xuất, tồn kho và thỏa mãn yêu cầu của khách hàng. Vì việc thiết lập mạng lưới vận chuyển phù hợp giữa các đơn vị, hoặc từ nhà máy đến tay người tiêu dùng sẽ làm tăng lợi thế cạnh tranh trong ngành;
4)	Cần kiểm soát hàng tồn kho để giảm thiểu chi phí cho doanh nghiệp, đồng thời đảm bảo chất lượng của hàng hóa. Nguyên nhân, do nhu cầu khách hàng thay đổi theo thời gian, doanh nghiệp cũng cần lượng tồn kho đủ để đáp ứng nhu cầu thay đổi tạm thời của khách hàng.
●	Xác định mục tiêu phân tích
![image](https://github.com/user-attachments/assets/ef35ff75-3764-4ef0-be28-5295e14f21cc)

1.2.	Tiền xử lý dữ liệu
1.2.1.	Công cụ xử lý data
![image](https://github.com/user-attachments/assets/50d7d743-9b22-4c8f-8d12-f2335cca984d)
![image](https://github.com/user-attachments/assets/25d37c55-f0bd-45bd-a209-0c8cd2874a93)
![image](https://github.com/user-attachments/assets/7c1bc6c8-18cd-4dba-bfa8-f0794d925e36)
1.2.2.	Clean Data
-	Cột CurrencyCode chỉ có duy nhất 1 giá trị “USD” nên không cần thiết;
-	Thay đổi định dạng datetime cho các cột: Procured Date, Order Date, Ship Date, Delivery Date;
-	Định dạng lại cột Unit Cost và Unit Price. Thêm cột Revenue, Profit, Procured_to_Order, Order_to_Ship, Ship_to_Delivery, Procured_to_Delivery.
![image](https://github.com/user-attachments/assets/4244a941-347e-4774-bcdc-38dc730d5796)
![image](https://github.com/user-attachments/assets/a0be8436-4ca3-4596-aa54-4db6b764d3d5)
![image](https://github.com/user-attachments/assets/f18339a3-dfe0-49a5-87a1-ccb9194d5c0b)
Procured_to_Order, Order_to_Ship, Ship_to_Delivery, Procured_to_Delivery.

![image](https://github.com/user-attachments/assets/89213e29-1984-4f74-b7fe-55175cb33eb4)



                                                    PHẦN  II.PHÂN TÍCH DỮ LIỆU
						    
2.1	Phân tích khám phá data
●	Thống kê mô tả
![image](https://github.com/user-attachments/assets/7c48133a-36eb-45f3-a7bf-ac6890673486)

●	Kiểm tra outliers
Q3 – Q1 = IQR (Độ trải giữa); 
UL (Giới hạn trên) = Q3 + IQR * 1.5,  LL (Giới hạn dưới) =  Q1 – IQL *1.5. 
●	Dựa vào công thức trên, ta thấy các cột:
-	SalesTeamID có UL = 40.5, LL = -11.5 so với min,max thì không có giá trị ngoại lai;
-	CustomerID có UL = 75.5, LL = -24.5 so với min,max thì không có giá trị ngoại lai;
-	StoreID có UL = 403.5, LL = -36.5 so với min,max thì không có giá trị ngoại lai;
-	ProductID có UL = 72, LL = -24 so với min,max thì không có giá trị ngoại lai;
-	Order Quantity có UL = 13, LL = -3 so với min,max thì không có giá trị ngoại lai;
-	Discount Applied có UL = 0.3, LL = -0.1 so với min,max thì có giá trị ngoại lai ở cận trên nhưng không đáng kể;
-	Unit Cost có UL = 4191.445, LL = -5681.0475 so với min,max thì có giá trị ngoại lai ở cận trên khá nhiều;
-	Unit Price có UL = 7480.55, LL = -2837.45 so với min,max thì không có giá trị ngoại lai;
-	Revenue có UL = 27790.913, LL = -12180.348 so với min,max thì có giá trị ngoại lai ở cận trên, doanh thu có khi tăng đột biến;
-	Profit có UL = 8014.155, LL = -4016.045 so với min,max thì có giá trị ngoại lai ở cả cận trên và dưới, lợi nhuận công ty nhận được từ kết quả hoạt động kinh doanh có khi tăng đột biến và cũng có lúc giảm mạnh.

●	kiểm tra ourlier ở các cột thời gian
![image](https://github.com/user-attachments/assets/234efde6-36b0-4449-abab-b3cd86347943)
Nhận xét:
Không có giá trị ngoại lai, phân phối khá đều. Tuy nhiên khoảng thời gian lưu kho và thời gian vận chuyển có mức độ dao động lớn.
●	Phân tích tương quan
![image](https://github.com/user-attachments/assets/234efde6-36b0-4449-abab-b3cd86347943)
Nhận xét:
-	SalesTeamID có tác động dương mạnh đến Sales Channel 0.93;
-	Order Quantity có tác động dương yếu đế Profit 0.4 và Revenue 0.52;
-	Discount Applied bị tác động âm kém bởi Revenue -0.09 và Profit -0.25;
-	Unit Cost có tác động đến Unit price 0.94, Revenue 0.71, nhưng lại tác động yếu đến profit 0.37;
-	Unit Price có tác động mạnh đến Unit Cost 0.94, Revenue 0.75, nhưng lại tác động yếu đến Profit 0.57;
-	Revenue bị tác động tb bởi order quantity 0.52, nhưng lại bị tác động mạnh bởi Unit Cost 0.71 và Unit Price 0.75. Thêm vào đó,  Revenue cũng có tác động mạnh đến profit 0.79;
Procured to Order có tác động mạnh đến Procured to Delivery 0.97, nghĩa là nếu mốc thời gian nhập hàng của công ty đến thời gian chuẩn bị đơn hàng cho khách hàng càng chậm trễ sẽ dẫn đến mốc thời gian nhập hàng đến tay người tiêu dùng cũng sẽ bị chậm theo và ngược lại.

2.2	Phân tích tổng quan tình hình kinh doanh của công ty
![image](https://github.com/user-attachments/assets/69078f23-1448-4515-9a20-a7a80ddabf37)

●	Tổng doanh thu đạt $73m, tổng lợi nhuận mang về $21,2m, ROI ( lợi nhuận/chi phí) khá cao 40,95% (điều này có nghĩa là cứ $100 chi phí bỏ ra sẽ mang về lợi nhuận là 40,95$).
●	Tổng số lượng đơn hàng là 7991 nhưng chỉ có 50 KH, số đơn hàng trung bình trên mỗi KH khá cao, xấp xỉ 160 đơn/KH. Như vậy có thể hiểu dataset này là của 1 công ty thương mại phân phối sỉ cho 50 KH khác.
●	Công ty có 47 mã hàng, lưu trữ ở 6 kho, phân phối ra thị trường thông qua 4 kênh chính: 
-	In-store - có 367 cửa hàng (có thể hiểu là chuỗi cửa hàng của các KH. VD như Vinmart: 1 KH là Vinmart nhưng có nhiều store) do team sales từ 1-12 quản lý;
-	Online do team sales từ 12-20 quản lý;
-	Distributor do team sales từ 20-25 quản lý;
-	Wholesale do team sales từ 25-28 quản lý;
●	Từ quý II-2018 đến 02/02/2021 công ty bán được 36,162 sản phẩm, trung bình 4,5 sản phẩm/đơn hàng.
●	Nhìn vào biểu đồ ta có thể thấy công ty bắt đầu hoạt động từ quý 2/2018. Số đơn hàng và doanh thu tăng mạnh ở quý 3/2018, có hơi giảm ở quý 1/2019 sau đó tăng và ổn định lại, dao động trong khoảng 750-790 đơn hàng/tháng.

2.3	Phân tích về sản phẩm (giải quyết vấn đề 1)
![image](https://github.com/user-attachments/assets/8f02e53f-6493-4724-991a-e594650bc67d)

●	Top 5 sản phẩm bán nhiều nhất theo thứ tự là 23,37,8,4,40 tuy nhiên doanh thu thì theo thứ tự 23,40,37,4,8 và lợi nhuận thì theo thứ tự 23,8,37,40,4 => Sản phẩm 23 bán chạy nhất, doanh thu và lợi nhuận đều tốt;
●	Sản phẩm 8: tuy số lượng bán đứng thứ 3 (879), doanh thu đứng thứ 9 ($1,718,053) nhưng lợi nhuận mang về cao hơn các sản phẩm còn lại ($537,195) => cần đẩy mạnh số lượng bán hàng để tối đa hoá lợi nhuận;
●	Sản phẩm 37: có số lượng bán cao thứ 2 (896), doanh thu cao thứ 3 ($1,826,946) và lợi nhuận ($517,249) cao thứ 3 => tương đối ổn;
●	Sản phẩm 40: có doanh thu đứng thứ 2 ($1,864,573) nhưng số lượng bán (855) đứng thứ 5 và lợi nhuận đứng thứ 4 ($501,010) => hàng có giá bán cao hơn các mặt hàng khác nhưng tỷ lệ lợi nhuận ko nhiều, xem xét các yếu tố cấu thành giá bán để tìm cách giảm giá vốn, tăng lợi nhuận;
●	Sản phẩm 4: có số lượng bán đứng thứ 4 (878), doanh thu đứng thứ 6 ($1,785,844), lợi nhuận đứng thứ 5 ($500,575), tương đối ổn;
●	Top 5 sản phẩm bán ít nhất theo thứ tự là 44,34,18,42,30 => cần nghiên cứu lại chất lượng sản phẩm và nhu cầu của thị trường đối với các mặt hàng này.

2.4	Phân tích thời gian vận hành (giải quyết vấn đề 2 & 4)
![image](https://github.com/user-attachments/assets/e63f0322-630b-432b-bd64-a32d145bcfd4)

●	Thời gian vận hành trung bình từ 2018 -> 2019 có cải thiện, tuy nhiên giai đoạn 2019-2021 lại tăng => có thể giải thích vấn đề này do ảnh hưởng của dịch Covid-19 khiến việc vận chuyển, lưu thông hàng hoá gặp khó khăn;
●	Năm 2017 có thời gian lưu kho TB cao vì công ty phải thu mua, chuẩn bị hàng hoá từ 31/12/2017 ( nói thêm là công ty thu mua hàng hoá theo quý, cách 3-4 tháng nhập hàng 1 lần ) nhưng 31/05/2018 mới bán đơn hàng đầu tiên. Từ 2018 trở đi thời gian lưu kho đã giảm đáng kể;
●	Kho WARE-NBV1002 có thời gian lưu kho TB cao nhất và số lượng hàng hoá bán ra lại thấp nhất => cần đẩy mạnh marketing và sales thuộc khu vực kho này. Ngoài ra  cũng cần lấy thêm data về sản phẩm và vị trí kho với khách hàng để tìm nguyên nhân có liên quan địa lý hay không?;
●	Kênh bán hàng online có thời gian chuẩn bị hàng lâu nhất => cần bố trí thêm nhân sự xử lý đơn hàng & đóng gói;
![image](https://github.com/user-attachments/assets/cc6ab335-494e-4a21-bc0f-f0a79664e963)

●	Trong tổng thời gian vận hành thì khâu lưu kho chiếm đến 84,1% -> nếu tối ưu thời gian vận hành có thể tối ưu thời gian lưu kho trước;
●	Thời gian từ lúc KH đặt hàng cho tới lúc nhận được hàng là = TG chuẩn bị hàng (TB 15 ngày) + TG vận chuyển (6 ngày);
=> Để tăng năng lực cạnh tranh của cty và tăng sự hài lòng của KH thì cần phải đặt mục tiêu rút ngắn thời gian chuẩn bị xuống còn 13 ngày bằng cách bố trí thêm nhân sự; rút ngắn quy trình/thủ tục xuất kho đồng thời rút ngắn thời gian vận chuyển bằng cách hợp tác với đơn vị vận chuyển chuyên nghiệp. Ngoài ra có thể đào sâu tìm ra nguyên nhân với data phân loại sản phẩm, vị trí địa lý, đối tác vận chuyển và quy trình sản xuất, kho vận để đưa ra giải pháp sát vấn đề lõi nhất.
2.5	Phân tích tình hình kinh doanh của các Sales channel và Stores (giải quyết vấn đề số 3)
	![image](https://github.com/user-attachments/assets/23a45253-e02f-4b2a-af27-db6b74441108)
  ![image](https://github.com/user-attachments/assets/d1ad4cee-2fde-40a2-a2ad-4f1377a69900)


●	Các kênh bán lẻ như In-store hoặc online mang về doanh thu cao nhất. Distributor và Wholesale tuy bán sỉ số lượng lớn nhưng chưa hiệu quả lắm, cần đẩy mạnh sales ở 2 kênh này;
●	5 teams sales hiệu quả nhất là 12,13,18 (kênh online), 26 (kênh wholesale) và 8 (kênh in-store);
●	5 teams sales có doanh số thấp nhất cần phải cải thiện là 17 (kênh online), 27,28 (kênh wholesale), 5,6 (kênh in-store);
●	Như đã phân tích ở trên về tình hình tăng trưởng doanh thu và qua các biểu đồ trên đây cũng có thể thấy rằng doanh thu 2019 tăng nhiều hơn so với 2018 nhưng doanh thu 2020 thấp hơn hoặc xấp xỉ 2019 do ảnh hưởng của đại dịch covid-19. Tuy nhiên có 2 cửa hàng số 166 và 26 ngược lại có doanh thu 2019 lại thấp và doanh thu 2020 lại cao. Cần có thêm thông tin về thời gian gia nhập mạng lưới bán hàng, số lượng, chủng loại hàng hoá và vị trí địa lý của các store để đánh giá chính xác hơn vấn đề này cũng như có phương án để cải thiện doanh số ở các store 10,108,109,118,53.

(Distributor và wholesale là hai khái niệm liên quan đến việc phân phối hàng hóa, nhưng có một số điểm khác nhau quan trọng. Dưới đây là sự khác biệt chính giữa distributor và wholesale:
a)	Nguyên tắc phân phối
●	Wholesale (bán buôn): Hoạt động bán buôn tập trung vào việc bán hàng hóa cho các bên mua hàng lớn, như các công ty, nhà bán lẻ hoặc nhà sản xuất khác. Người bán buôn thường mua hàng hóa từ nhà sản xuất hoặc nhà cung cấp với số lượng lớn và giá thấp, sau đó bán lại với giá cao hơn cho các khách hàng.
●	Distributor (người phân phối): Người phân phối thường là bước trung gian giữa nhà sản xuất và người tiêu dùng cuối cùng. Họ mua hàng từ nhà sản xuất hoặc nhà cung cấp và phân phối chúng đến các khách hàng cuối cùng, như cửa hàng bán lẻ hoặc người tiêu dùng. Người phân phối thường không chỉ bán hàng hóa, mà còn cung cấp các dịch vụ bổ sung như lưu trữ, vận chuyển và quảng cáo.



b)	Quy mô kinh doanh:
●	Wholesale: Các hoạt động bán buôn thường tập trung vào việc giao dịch với số lượng lớn hàng hóa. Người bán buôn thường mua hàng hóa trong số lượng lớn và bán lại cho các khách hàng thương mại khác trong các đơn hàng stcok lớn.
●	Distributor: Người phân phối có thể hoạt động ở quy mô nhỏ hơn so với bán buôn. Họ thường tập trung vào việc phân phối hàng hóa từ nhà sản xuất đến các điểm bán lẻ hoặc người tiêu dùng ở quy mô nhỏ hơn.
c)	Mối quan hệ với nhà sản xuất:
●	Wholesale: Người bán buôn thường mua hàng trực tiếp từ nhà sản xuất hoặc nhà cung cấp và có quan hệ trực tiếp với họ. Họ có thể đàm phán giá cả, điều khoản và điều kiện mua hàng trực tiếp với nhà sản xuất.
●	Distributor: Người phân phối cũng mua hàng từ nhà sản xuất hoặc nhà cung cấp, nhưng thường có mối quan hệ đối tác lâu dài và tương tác chặt chẽ hơn với nhà sản xuất. Họ thường được nhà sản xuất ủy quyền độc quyền phân phối sản phẩm trong một khu vực cụ thể và nhận được hỗ trợ từ nhà sản xuất về marketing, quảng cáo và hỗ trợ kỹ thuật.
Tóm lại, wholesale là hoạt động bán buôn tập trung vào việc mua hàng hóa với số lượng lớn và bán lại cho các khách hàng thương mại, trong khi distributor là người phân phối hàng hóa từ nhà sản xuất đến các khách hàng cuối cùng, thường là cửa hàng bán lẻ hoặc người tiêu dùng, với một mối quan hệ đối tác lâu dài với nhà sản xuất).
2.6	Phân tích RFM (Giải quyết vấn đề số 4)
Tổng quát:
![image](https://github.com/user-attachments/assets/5f3e3d29-2c7c-4f4d-9917-7f19b42779a5)

●	Champion: nhóm KH tốt nhất nhưng chỉ chiếm 20% trong tổng số KH, doanh thu đóng góp 21,64%. Họ đã mua gần đây, đặt hàng thường xuyên và chi tiêu nhiều nhất. 
=> Cần chăm sóc nhóm KH này để tiếp tục duy trì ở phân khúc hiện tại, dự báo số lượng sản phẩm nhóm KH này hay tiêu thụ để stock kho, hàng hoá phải sẵn sàng để đáp ứng nhu cầu KH. Khi có sản phẩm mới, phải giới thiệu họ trước tiên, họ có thể là những người giới thiệu sản phẩm rất tốt.
●	Loyal: nhóm KH tốt thứ 2 nhưng số lượng rất ít, chỉ có 2 người (4%), doanh thu đóng góp 3,72%.
=>Họ đặt hàng thường xuyên và có tương tác với các chương trình khuyến mãi. Đưa ra những chương trình khuyến mãi phù hợp với họ để nâng cấp nhóm KH này lên champion.
●	Potential Loyalist: nhóm KH tốt thứ 3 nhưng chỉ có 1 người (2%), doanh thu đóng góp 2,23%. 
=> Họ đã mua hàng gần đây và chi tiêu tốt => tương tự nhóm Loyal, đưa ra những chương trình khuyến mãi đã được cá nhân hoá cho phù hợp với họ để nâng cấp nhóm KH này lên loyal hoặc champion.
●	Promising: Đây là nhóm chiếm tỷ trọng nhiều nhất trong tổng số lượng KH (40%) và cả doanh thu (39,4%). Họ từng là khách hàng trung thành, chi tiêu thường xuyên và khá nhiều tiền, nhưng lần mua cuối cùng đã cách đây hơi xa. 
=> cung cấp phiếu giảm giá, đưa ra chương trình khuyến mãi đã được cá nhân hoá để giữ tương tác với họ. Dự trù sản phẩm stock kho cho nhóm KH này.
●	Needs attention: nhóm này chiếm 10% tổng số KH, doanh thu đóng góp 10,19%, cao thứ 3 sau Promising và Champion.
=> Khách hàng cốt lõi nhưng có lần mua gần đây nhất hơi xa => đề xuất khuyến mãi có thời hạn để đẩy sales nhóm này đồng thời cũng phải dự báo số lượng hàng hoá stock kho phù hợp.
●	About to sleep: chiếm 8% tổng số KH, doanh thu đóng góp 6,92%. Họ là những khách hàng phổ biến, mua hàng cách đây không lâu.
=> Tương tự nhóm Need Attention, đưa ra chương trình khuyến mãi có thời hạn phù hợp để push sales.
●	Can’t lose them: nhóm này chiếm 8% số KH, doanh thu đóng góp 7,9%. Họ đã từng thực hiện các đơn đặt hàng lớn nhất và thường xuyên nhưng đã lâu không trở lại. 
=> Bộ phận sales/ chăm sóc KH cần liên hệ tìm hiểu nguyên nhân để ra chương trình marketing cho phù hợp.
●	Lost Customer: nhóm này cũng chiếm 8% tổng số lượng KH, doanh thu đóng góp 7,99%. Họ đã thực hiện lần mua hàng gần đây nhất cách đây khá lâu và hoàn toàn không tương tác trong 4 tuần qua. 
=> Tương tự nhóm trên, bộ phận sales/chăm sóc KH cần liên hệ tìm hiểu nguyên nhân để ra chương trình marketing cho phù hợp.
2.7	Phân tích Cohort (Giải quyết vấn đề số 4)
●	Dựa vào bảng Cohort_StoreID, số lượng khách hàng mới ở các tháng của các Store là rất ít chỉ tầm 2 đến 3 khách hàng trên tổng số khách hàng là 50 người, nhưng số lượng cửa hàng lại có tổng là 367 cửa hàng.
=> Có thể một khách hàng đi đến nhiều cửa hàng, hoặc sẽ có nhiều cửa hàng không có khách hàng. Vì vậy, nhóm quyết định không phân tích sau về vấn đề này.
●	Dựa vào bảng Cohort_SalesChanel, các tháng 1,2,3,4,5,7,10 có khách hàng mới đến mua hàng ở các kênh bán hàng, nhưng vào tháng 6,8,9 không có khách hàng mới:
-	Ở tháng 1/2020, bốn kênh đều có khách hàng mới, kênh In-Store có số lượng khách hàng mới cao nhất 42 người và 42 người này có quay lại mua hàng ở các tháng về sau. Ở kênh Wholesale có số lượng khách hàng mới thấp nhất 26 người.
-	Ở tháng 2/2020, bốn kênh đều có khách hàng mới, tuy nhiên tháng này số lượng khách hàng bị giảm dần như: Ở kênh Distributor có 17 khách cao nhất nhưng thấp hơn tháng trước 10 người. Kênh In-Store giảm nhanh  từ 42 người xuống còn 7 người.
-	Ở tháng 3/2020, bốn kênh đều có khách hàng mới, tuy nhiên số lượng khách hàng mới ở các kênh giảm mạnh.
-	Ở tháng 4/2020, chỉ có Wholesale có thêm được 2 khách hàng mới.
-	Ở tháng 5/2020, có hai kênh Wholesale và Online có lần lượt số lượng khách là 2, 1 người.
-	Ở tháng 7/2020 và 10/2020, chỉ có Whole là có thêm 1,2 khách hàng mới.
=> Cần đưa ra các hoạt động thu hút, nâng cao số lượng khách hàng đến mua hàng phù hợp với mỗi kênh bán hàng.

                                                        PHẦN  III.TỔNG QUAN
 	
Để giải quyết các vấn đề đã đưa ra, với điều kiện thông tin hạn hẹp, nhóm xin đưa ra một số đề xuất:
1.	Để nâng cao chất lượng hàng hoá đáp ứng nhu cầu thị trường => cần nghiên cứu lại chất lượng sản phẩm và nhu cầu của thị trường đối với các sản phẩm bán kém 44,34,18,42,30; đồng thời đẩy mạnh marketing và sales đối với các sản phẩm bán tốt 23,37,8,4,40.
2.	Để rút ngắn thời gian từ lúc đặt hàng đến lúc nhận hàng nhằm nâng cao năng lực cạnh tranh của công ty và tăng sự hài lòng của KH => đặt mục tiêu rút ngắn thời gian chuẩn bị hàng hiện tại là 15 ngày xuống còn 13 ngày bằng cách bố trí thêm nhân sự; rút ngắn quy trình/thủ tục xuất kho đồng thời rút ngắn thời gian vận chuyển bằng cách hợp tác với đơn vị vận chuyển chuyên nghiệp. Đặc biệt là kênh bán hàng online có thời gian chuẩn bị hàng lâu nhất => cần bố trí thêm nhân sự xử lý đơn hàng & đóng gói.
3.	Để giảm thiểu chi phí (bao gồm cả chi phí sản xuất và chi phí vận hành như chi phí bán hàng, chi phí kho bãi, chi phí vận chuyển,...) nhằm mục đích giảm giá thành sản phẩm, tăng thêm lợi nhuận cho công ty => Thứ nhất, cần nghiên cứu sản phẩm và thị trường để xem xét có nên cắt giảm những sản phẩm bán kém (44,34,18,42,30) nhằm giảm chi phí sản xuất hay không? Thứ hai, cần thiết lập mạng lưới phân phối và vận chuyển hàng hoá tối ưu. Nếu mạng lưới phân phối - các sale channels hoạt động hiệu quả, sẽ giảm được chi phí bán hàng. Cụ thể là phát triển kênh Online vì kênh Online đang trên đà phát triển tốt, có doanh thu cao thứ 2 chỉ sau In-store nhưng sẽ không mất nhiều chi phí cho mặt bằng. Các team sales Online đang làm việc hiệu quả nhất là 12,13,18 tiếp tục phát huy; team sale 17 chưa tốt cần phải cố gắng cải thiện doanh số. Ngoài ra, Distributor và Wholesale tuy bán sỉ số lượng lớn nhưng chưa hiệu quả lắm, cần đẩy mạnh sales ở 2 kênh này cụ thể là team 27,28 (kênh wholesale) cần phải cải thiện doanh số.
4.	Để kiểm soát lượng tồn kho sao cho thời gian và chi phí lưu kho thấp nhất mà vẫn đáp ứng kịp thời và nhanh chóng nhu cầu của KH là 1 bài toán khó đòi hỏi công ty phải am hiểu KH của mình, nắm bắt được nhu cầu về số lượng và chủng loại hàng hoá KH cần để stock hàng vừa đủ. Nếu stock kho ít quá thì không đủ hàng giao ngay, đợi đặt hàng thì mất thời gian, mất khách; còn nếu stock kho nhiều quá thì sẽ giảm tốc độ xoay vòng vốn. Bộ phận sales và marketing không những là người mang thu nhập về cho công ty mà còn đóng vai trò quan trọng trong việc đẩy hàng tồn kho, rút ngắn thời gian lưu kho. Trong số các kho, kho WARE-NBV1002 có thời gian lưu kho TB cao nhất và số lượng hàng hoá bán ra lại thấp nhất => cần đẩy mạnh marketing và sales thuộc khu vực kho này. Ngoài ra  cũng cần lấy thêm data về sản phẩm và vị trí kho với khách hàng để tìm nguyên nhân có liên quan địa lý hay không.
 


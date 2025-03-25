#import "/iclr2025.typ": iclr2025

#let author-note = footnote[
  Use footnote for providing further information about author (webpage,
  Alternative address) --- *not* for acknowledging funding agencies.  Funding
  Acknowledgements go at the end of the paper.
]

/**
 * Authors should be specified as a list of entries. Each entry enumerates
 * authors with the same affilation and address. Field `names` is mandatory.
 */
#let authors = (
  (
    names: ([Lưu Nam Đạt], ),
    affilation: [ 22127062 ],
    email: "lndat22@clc.fitus.edu.vn",
  ),
  (
    names: ([Nguyễn Bá Công], ),
    affilation: [  22127046 ],
    email: "nbcong22@clc.fitus.edu.vn",
  ),
  (
    names: ([Nguyễn Huỳnh Hải Đăng], ),
    affilation: [  22127052 ],
    email: "nhhdang22@clc.fitus.edu.vn",
  ),
  (
    names: ([Đặng Trần Anh Khoa], ),
    affilation: [  22127024 ],
    email: "dtakhoa22@clc.fitus.edu.vn",
  ),
)

#show: iclr2025.with(
  title: [Ứng dụng Xử lý ảnh số và video số#linebreak()Seminar],
  authors: authors,
  keywords: (),
  abstract: [
    None
  ],
  bibliography: bibliography("biblio.bib"),
  appendix: [
    #include "appendix.typ"
  ],
  accepted: true,
)

#show outline.entry.where(
  level: 1
): it => {
  v(12pt, weak: true)
  strong(it)
}
#outline(
    title: "Mục lục",
    indent: auto,
)

#let url(uri) = link(uri, raw(uri))


= NHẬN DIỆN HÀNG HOÁ BÁN LẺ

AMAZON GO

(cần xếp thành category, cần có những tác vụ gì)


=== phương pháp dựa theo đặc trưng
SIFT - scale invariant feature extraction

=== Deep learning
A deep learning pipeline for product recognition on store shelves

Detection

= HỆ THỐNG TRUY VẾT ĐỐI TƯỢNG DỰA VÀO CÂU MÔ TẢ

1. GIỚI THIỆU
1.1. BỐI CẢNH CHUNG
- xe tự hành, giao thông, an ninh

thách thức:
hạn chế ngôn ngữ
phân biệt đối tượng mục tiêu
theo vết trong điều kiện phức tạp


2. PHÁT BIỂU BÀI TOÁN

3. CÁC CÔNG TRÌNH LIÊN QUAN
phải nói rõ về cách thức theo vết đối tượng

- TP-GMOT: Tracking Generic Multiple Object by Textual Prompt with Motion Appearance Cost SORT

- DTLLM-VLT: 

tại 1 frame bất kỳ, có 2 trường hợp: 1 là đối tượng đang theo vết bị biến mất, 2 là đối tượng xuất hiện; khi đó câu mô tả phát huy như thế nào?

= Phát hiện bất thường trong giao thông

Input: một đoạn video từ camera hành trình / camera an ninh

Output: Xác suất xảy ra tai nạn trong frame đang xét

Threshold: Một ngưỡng cảnh báo mức độ nguy hiểm



- MEDAVET: Traffic Vehicle Anomaly Detection Mechanism based on
spatial and temporal structures in vehicle traffic


- chưa giải thích được cơ chế tìm chiều di chuyển và vận tốc của phương tiện

- cần nói rõ ý chung trước khi đi sâu vào những biểu đồ và thuật toán, tuy có rất nhiều những neural network nhưng việc giải thích chưa đáng kể

- trong khung cảnh mà camera bắt được, 
- dữ liệu không gian - thời gian (spetial - temporal)
cần hiểu "thế nào là tai nạn"

- đối với mỗi frame, cần quan tâm đến object nào để tính toán ra xác suất?

$-->$ liệt kê 11 vật thể nó quan tâm:

- từ hình ảnh, rút ra đối tượng ra sao, từ đối tượng rút ra xác suất thế nào

- tại sao khi sắp có tai nạn thì xác suất được tăng lên?
Dùng YOLOv7 để phát hiện

- Dữ liệu đến từ những xe đã bị tai nạn, nhưng công tác gán nhãn diễn ra thế nào?


= GRAPH OCR
Nhận diện đồ thị bằng OCR

- Chưa nhận diện rõ ứng dụng
- chưa sử dụng đồ thị viết tay
- 
có những luận văn làm rất tốt, nhưng chatgpt có thể thừa sức đánh bại luận văn đó, gây điểm thấp

= View Synthesis using NeRF
Tổng hợp góc nhìn

Từ một vài ảnh có góc nhìn hữu hạn, tạo thành một video với góc nhìn vô hạn 

- bao nhiêu góc? 

Neural Radiance Field

trong một không gian ảnh có điểm (x, y, z)
Hàm 5d trả ra color, density, qua đó render trên một mặt phẳng 2D.

hàm lỗi là độ 

- bản chất là tạo ra ảnh mới, 
- ví dụ có 5 ảnh, cần tạo ảnh thứ 6 có view mới, từ góc alphabeta, thì lấy màu từ đâu? Có trước là tập hợp 
- Cần giải thich cụ thể về radiance
- Cần xem các biểu thức toán
- không rõ input output: với mỗi r(t), suy ra được c(r)
- Cần giải thích vì sao phải lấy nhiều điểm 
- $hat(C)$ ?
- positional encoding cần tính 1 feature vector có sự biến thiên cao?
- Hierarchical volume sampling
- coorse network vs fine network: không hiểu
- Hàm lỗi của mô hình: 

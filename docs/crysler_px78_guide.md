# 🩳 Hướng dẫn nhận quần CryslerPX-78

## Thông tin Item

| Thuộc tính | Giá trị |
|---|---|
| **ID** | 154 |
| **Tên** | CryslerPX-78 |
| **Loại** | Quần (Pants) - Trang bị được |
| **Mô tả** | "Valuable item. Pants that can be moved at super high speed." |
| **ATK** | 0 |
| **DEF** | 69 |
| **Giá mua** | 38,000 ero |
| **Giá bán** | 33,100 ero |
| **Hiệu ứng đặc biệt** | Khi mặc, tốc độ di chuyển = **5** (bình thường = 1) |

---

## Điều kiện nhận CryslerPX-78

CryslerPX-78 được nhận thông qua **chuỗi nhiệm vụ của Dr. Crysler** gồm 4 bước.

### 📋 Các bước cần thực hiện

#### Bước 1: Gặp Dr. Crysler tại Túp lều (Hut of Dr. Crysler)
- **Vị trí**: Map 15 (khu rừng trên đường đến lâu đài)
- ⚠️ **BẮT BUỘC phải làm TRƯỚC khi đánh bại Erotica** (`BTEflg[7]` = false)
- Khi nói chuyện, Dr. Crysler nhờ bạn mua **Rocket Fuel** từ cháu gái Aya ở Spring Village
- Cờ `TEflg[192]` = false → Mở khóa Laboratory (Map 14)

#### Bước 2: Mua Rocket Fuel tại Spring Village
- **Vị trí**: Cửa hàng tạp hóa Spring Village (Store #2, Aya)
- Shop sẽ **thay đổi hàng bán** sang toàn Rocket fuel (item 206, giá 2,320 ero)

#### Bước 3: Mang Rocket Fuel đến Laboratory (Map 14)
- Nói chuyện với Dr. Crysler khi có Rocket fuel trong inventory
- ⚠️ **BẮT BUỘC phải làm TRƯỚC khi đánh bại Erotica** (`BTEflg[7]` = false)
- **Kết quả**: Rocket fuel bị tiêu thụ, `TEflg[191]` = false, `BufLv` = `gameLv`

#### Bước 4: Phòng thí nghiệm nổ tung → Rương kho báu xuất hiện → Nhận CryslerPX-78
- Chi tiết xem phần bên dưới ↓

---

## 🔥 Khi nào thì phòng thí nghiệm bị phá huỷ?

Đây là phần quan trọng nhất. Sau khi đưa Rocket fuel (Bước 3), phòng thí nghiệm **CHƯA nổ ngay lập tức**.

### Điều kiện kích hoạt vụ nổ

Code game kiểm tra điều kiện sau mỗi khi load map:

```actionscript
// frame_26/DoAction_2.as, dòng 1163-1196
if(BufLv != gameLv && !TEflg[191])
{
   TEflg[195] = false;  // ← Kích hoạt vụ nổ phá huỷ khu vực
}
```

Giải thích:
- `!TEflg[191]` = đã giao Rocket fuel cho Dr. Crysler ✅ (luôn true sau Bước 3)
- `BufLv != gameLv` = **cần đánh bại thêm 1 boss bất kỳ** sau khi giao fuel

### `gameLv` hoạt động thế nào?

```actionscript
function gameLevelPro()
{
   gameLv = 0;
   var i = 1;
   while(i <= 10)
   {
      if(BTEflg[i]) { gameLv++; }  // Đếm số boss đã hạ
      i++;
   }
}
```

- `gameLv` = **tổng số boss đã đánh bại** (BTEflg[1] đến BTEflg[10])
- Khi giao fuel, game lưu `BufLv = gameLv` (snapshot tại thời điểm giao)
- Vụ nổ xảy ra khi `gameLv` **thay đổi** so với `BufLv` → tức là bạn phải **hạ thêm 1 boss nữa**

### Khi khu vực nổ, chuyện gì xảy ra?

```actionscript
if(!TEflg[195])  // Khu vực đã nổ
{
   // Phá huỷ toàn bộ tile trong vùng (49-52, 63-70) trên Map 0
   // Biến thành đất trống (tile 40)
   
   map[0][49][67] = 74;       // Dr. Crysler xuất hiện tại vị trí mới
   map[0][49][66] = 45;       // ← RƯƠNG KHO BÁU xuất hiện (nếu chưa mở)
}
```

---

## ⏱️ Trước hay sau khi đánh Erotica?

### Trả lời: CẢ HAI đều được, nhưng có điều kiện!

| Hành động | Trước Erotica | Sau Erotica |
|---|---|---|
| **Bước 1**: Gặp Dr. Crysler (Map 15) | ✅ BẮT BUỘC | ❌ KHÔNG ĐƯỢC - Dr. Crysler đổi lời thoại |
| **Bước 2**: Mua Rocket fuel | ✅ | ✅ (nếu đã làm Bước 1 trước) |
| **Bước 3**: Giao fuel tại Laboratory | ✅ BẮT BUỘC | ❌ KHÔNG ĐƯỢC - Dr. Crysler đổi lời thoại |
| Vụ nổ phá huỷ phòng thí nghiệm | ✅ (hạ boss tiếp theo) | ✅ (nếu đánh Erotica LÀ boss tiếp theo) |
| **Bước 4**: Mở rương nhận quần | ✅ | ✅ Không kiểm tra BTEflg[7] |

### 🎯 Kịch bản phổ biến nhất

**Kịch bản 1: Giao fuel → Hạ boss khác → Nhận quần → Đánh Erotica**
1. Gặp Dr. Crysler & giao fuel (gameLv lúc này, ví dụ = 5)
2. Đánh bại boss tiếp theo (gameLv = 6 ≠ BufLv=5) → Lab nổ, rương xuất hiện
3. Mở rương → nhận CryslerPX-78
4. Đánh Erotica sau

**Kịch bản 2: Giao fuel → Đánh Erotica → Lab nổ → Nhận quần**
1. Gặp Dr. Crysler & giao fuel (gameLv = 6, BufLv = 6)
2. Đánh bại Erotica (BTEflg[7] = true, gameLv = 7 ≠ BufLv=6) → Lab nổ
3. Rương xuất hiện → mở rương → nhận CryslerPX-78
4. ✅ **Vẫn được!** Vì code mở rương **không kiểm tra** BTEflg[7]

> [!IMPORTANT]
> **Bước 1 và 3 (nói chuyện với Dr. Crysler) BẮT BUỘC phải làm TRƯỚC khi đánh Erotica.**
> Nhưng hòm kho báu có thể **mở SAU khi đánh Erotica** - miễn là vụ nổ đã xảy ra.

### Nếu Erotica là boss cuối cùng trước khi giao fuel?

Ví dụ: Bạn đã hạ tất cả boss trừ Erotica, rồi mới giao fuel.
- Giao fuel → BufLv = gameLv = 6
- Đánh Erotica → gameLv = 7 ≠ BufLv → Lab nổ → rương xuất hiện
- Mở rương → ✅ nhận quần được!

---

## 🗺️ Tóm tắt vị trí

```
Map 0 (Overworld) 
  │
  ├── Hut of Dr. Crysler (Map 15) ← Bước 1: Gặp lần đầu (TRƯỚC Erotica)
  │
  ├── Spring Village Shop (Store #2) ← Bước 2: Mua Rocket Fuel
  │
  ├── Laboratory (Map 14) ← Bước 3: Giao Fuel (TRƯỚC Erotica) 
  │
  └── Vụ nổ tại khu vực (49-52, 63-70) trên Map 0
       ├── Dr. Crysler xuất hiện tại (67, 49) 
       └── Rương kho báu tại (66, 49) ← Bước 4: Nhận CryslerPX-78
```

## 📌 Tóm tắt

1. **Khởi động quest + Giao fuel** → phải làm **TRƯỚC** đánh Erotica
2. **Vụ nổ phòng thí nghiệm** → xảy ra khi hạ **bất kỳ boss nào** sau khi giao fuel (kể cả Erotica)
3. **Mở rương nhận quần** → có thể làm **bất cứ lúc nào** sau vụ nổ (kể cả sau Erotica)
4. **Hiệu ứng**: Khi mặc CryslerPX-78, speed = 5 (nhanh gấp 5 lần bình thường)

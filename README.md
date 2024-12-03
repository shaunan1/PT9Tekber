---

# Flutter Navigasi 📱

Penjelasan singkat mengenai metode navigasi di Flutter, seperti `push`, `pop`, `pushReplacement`, dan `popAndPushNamed`, serta ilustrasi stack navigasinya.

---

## ✨ **Kapan Menggunakan?**

| Metode               | Deskripsi                                                                                      |
|----------------------|------------------------------------------------------------------------------------------------|
| **push**             | Membuka halaman baru dan memungkinkan pengguna untuk kembali ke halaman sebelumnya.            |
| **pop**              | Mengembalikan pengguna ke halaman sebelumnya dalam stack navigasi.                             |
| **pushReplacement**  | Mengganti halaman saat ini dengan halaman baru tanpa memungkinkan kembali ke halaman sebelumnya.|
| **popAndPushNamed**  | Menghapus halaman saat ini dan langsung berpindah ke halaman baru.                              |

---

## 📚 **Ilustrasi Stack Navigasi**

### 1. **push**
Navigasi dari `HomePage` ke `HalamanSatu`.  
**Stack:**
```
[HomePage, HalamanSatu]
```

| Tindakan | Perpindahan       | Stack Navigasi                    |
|----------|------------------|-----------------------------------|
| `push`   | HomePage → HalamanSatu | [HomePage, HalamanSatu]           |

---

### 2. **pop**
Kembali dari `HalamanSatu` ke `HomePage`.  
**Stack:**
```
[HomePage]
```

| Tindakan | Perpindahan       | Stack Navigasi                    |
|----------|------------------|-----------------------------------|
| `pop`    | HalamanSatu → HomePage | [HomePage]                        |

---

### 3. **pushReplacement**
Mengganti `HomePage` dengan `HalamanTiga`.  
**Stack:**
```
[HalamanTiga]
```

| Tindakan           | Perpindahan        | Stack Navigasi                     |
|--------------------|------------------- |------------------------------------|
| `pushReplacement`  | HomePage → HalamanTiga | [HalamanTiga]                      |

---

### 4. **popAndPushNamed**
Menghapus `HalamanTiga` dan langsung kembali ke `HomePage`.  
**Stack:**
```
[HomePage]
```

| Tindakan             | Perpindahan        | Stack Navigasi                     |
|----------------------|------------------- |------------------------------------|
| `popAndPushNamed`    | HalamanTiga → HomePage | [HomePage]                         |

---

## 🚀 **Navigasi di Flutter**

Untuk menerapkan navigasi ini dalam kode Flutter, berikut contoh sederhana:

```dart
// Navigasi ke halaman baru dengan push
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => HalamanBaru()),
);

// Kembali ke halaman sebelumnya dengan pop
Navigator.pop(context);

// Mengganti halaman saat ini dengan halaman baru menggunakan pushReplacement
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HalamanTiga()),
);

// Menghapus halaman saat ini dan langsung berpindah ke halaman lain dengan popAndPushNamed
Navigator.popAndPushNamed(context, '/homePage');
```

---

## 📖 **Referensi**

- [Dokumentasi Resmi Flutter](https://flutter.dev/docs)
- [Flutter Cookbook: Navigation](https://flutter.dev/docs/cookbook/navigation)

---

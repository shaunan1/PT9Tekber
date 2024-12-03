# flutter_navigasi_1

Kapan Menggunakan?
push: Ketika kamu ingin membuka halaman baru dan memungkinkan pengguna untuk kembali.
pop: Ketika pengguna ingin kembali ke halaman sebelumnya.
pushReplacement: Ketika kamu ingin mengganti halaman saat ini tanpa membiarkan pengguna kembali.
popAndPushNamed: Ketika kamu ingin menghapus halaman saat ini dan langsung berpindah ke halaman lain.
Ilustrasi Stack Navigasi:
Misalkan kita mulai dari HomePage.

push
HomePage → HalamanSatu
Stack: [HomePage, HalamanSatu]

pop
HalamanSatu → HomePage
Stack: [HomePage]

pushReplacement
HomePage → HalamanTiga
Stack: [HalamanTiga]

popAndPushNamed
HalamanTiga → HomePage
Stack: [HomePage]

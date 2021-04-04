
NUMBER 1

no. a
- Find way to cut words/sentence until "error"
- Use cat to take text that in file syslog.log
- Use cut to cut bit/character so it only show output words/sentence that we want
![1a_sisop](https://user-images.githubusercontent.com/74058892/113434246-cc1d7b00-940a-11eb-8f65-0dd1594b11f5.png)

no.b 
- Use grep to make it easier to find the word / pattern to be displayed
- fetches a pattern named Error from an existing path
- Then cut in point field 2 until dilimiter slash
- And cut again from point field 1 until the open bracket
- After that sort
- use uniq to count the uniqueness in the data
- last sort descending
![1b_sisop](https://user-images.githubusercontent.com/74058892/113434249-cd4ea800-940a-11eb-8848-4e3fea11f494.png)

no.c
- First, to find the users' name, use cut until delimiter open bracket point field 2
- second, cut again until delimiter close bracket in point field 1
- then sort, and use uniq to count the uniqueness in the data
- after thta, we can get the users'name
- next, to calculate the error and info, both use grep
- then just echo the name, info and error
![1c_sisop](https://user-images.githubusercontent.com/74058892/113434250-cde73e80-940a-11eb-8ad1-26fa1c60ad75.png)

no.d
- first, like in 1b, we count the error.
- after that, we have to find the total error and the errorname by using echo and cut until delimiter space in point fiels 1 for totalerror and point field 2 for errorname
- we echo the errorname and totalname
- sed use to insert the data error, count into error_message.csv
![1d_sisop](https://user-images.githubusercontent.com/74058892/113434251-cde73e80-940a-11eb-8609-a6c9a6d20c65.png)

no.e
- like number 1d, first we find the users' name 
- after we get the users' name, we have to get the total info and total error by using cat and grep in each totalinfo and totalerror
- then, echo the user, totalinfo, and totalerror
- sed use to insert the data username, info, and error to user_sttistic.csv
![1e_sisop](https://user-images.githubusercontent.com/74058892/113434252-ce7fd500-940a-11eb-9c1b-23e2f6ac27b6.png)

NOMER 2

Diberikan data berupa file tsv dengan nama "Laporan-TokoShiSop.tsv" yang dapat didownload di modul utama. Pengerjaan dilakukan dengan awk. Dari data tersebut, kita mencari :
 
NO. A

profil percentage terbesar dan menampilkannya sebagai Roq ID dan profil percentage.

![WhatsApp Image 2021-03-26 at 19 05 07(3)](https://user-images.githubusercontent.com/74058892/112724346-6da55800-8f45-11eb-944c-f5f0999068ab.jpeg)

Untuk mencari profil percentage, kita menggunakan profit per cost price dikali 100%, dimana cost profit didapat dari selisih sales dengan profit. Pada data, sales berata pada kolom ke 21, sedangkan profit pada kolom ke 18. Untuk mencari nilai maksimum, diperlukan sebuah variabel untuk menampung nilai tersebut. Jika terdapat nilai yang lebih besar, maka variabel diganti. Urutan pengerjaan adalah sebagai berikut.

- Membuat program awk sesuai logika (error)
- mendeteksi error (hasil integer -2147483647, float -nan)
- mengecek data apakah data yang dimaksud sesuai
- data tidak sesuai karena setiap data dipisahkan dengan tab (dilihat melalui notepad), sehingga tidak bisa manual (perlu file separate)
- menggunakan logika yang sama tetapi menggunakan file separate (benar)

Kendala terletak pada saat awal ingin mengaplikasikan algo, karena tidak menghasilkan hasil yang sesuai. Ternyata kesalahan terletak pada tidak adanya file separator.

NO. B

menampilkan daftar nama customer pada transaksi tahun 2017 di Albuquerque.

![WhatsApp Image 2021-03-26 at 19 05 07(2)](https://user-images.githubusercontent.com/74058892/112724344-6d0cc180-8f45-11eb-8ccd-98595a0bef7f.jpeg)

Tanggal transaksi dapat dilihat pada tanggal order pada kolom ke 3. Dapat juga dilihat pada salah satu substring pada Order ID (sama). Alberquerque merupakan kota yang dapat dilihat di tabel ke  10. Untuk mendapatkan nama customer, kita perlu mengecek substring dari tanggal order dan nama kota, kemudian memasukkan nama sebagai index string agar tidak ada pengulangan data. Langkah-langkah pengerjaan adalah sebagai berikut.

- Mencari cara untuk membandingkan tanggal
- tanggal pada data berbentuk string, sehingga mencari cara membandingkan beberapa character pada string
- menggunakan substr untuk membandungkan str tanggal pada 2 index terakhir
- jika diprint langsung, akan menampilkan nama yang sama
- mencari tahu cara agar data tidak sama (index array bisa berisi string, sehingga dimasukkan array agar jika sama nilai tidak berubah)
- menampilkan array yang isinya string nama

Kendala terletak pada cara mengecek tanggal. Awalnya mencari apakah terdapat pembanding date di AWK. Akhirnya menggunakan substring karena lebih mudah.

NO. C

Segment customer yang jumlah transaksinya paling sedikit

![WhatsApp Image 2021-03-26 at 19 05 07(1)](https://user-images.githubusercontent.com/74058892/112724337-69793a80-8f45-11eb-9762-a8dae42591c2.jpeg)

Untuk mencari customer yang jumlah transaksinya paling sedikit, perlu membuat variavel (mirip nomer 2a) untuk menampung nilai terkecil. Setiap segment akan dimasukkan ke array, dan setiap terdapat pengecekan akan ditambah nilainya. Kemudian di akhir, setiap array yang mewakilkan akan diiterasi, mana yang nilainya paling kecil dan ditampilkan nama segment dan nilainya. Langkah-langkahnya sebagai berikut.

- Mencari perulangan, branching, dan array pada linux
- Memikirkan algoritma yang cocok dan tidak panjang
- kekeliruan syntax, perlu semicolon setelah fungsi dalam looping for
- menggunakan algo yang sama (benar)

Tidak ada kendala yang berarti, hanya pencarian dan kekeliruan syntax

NO. D

Mencari keuntungan paling sedikit pada setiap wilayah

![WhatsApp Image 2021-03-26 at 19 05 07](https://user-images.githubusercontent.com/74058892/112724347-6ed68500-8f45-11eb-9d36-a3aebccb604d.jpeg)

Algoritma yang digunakan hampir mirip dengan nomer 2c, perbedaan terletak pada variabel yang dibandingkan. Pada sebelumnya mencari jumlah segmen, sehingga setiap ada pengecekan segmen yantg sama maka akan dilakukan penambahan jumlah (+1). Saat ini, setiap ada pengecekan wilayah akan dilakukan penambahan nilai, sehingga nilai yang ada pada data ditambahkan ke variabel. Langkah-langkah sama dengan nomer 2c.

Tidak ada kendala.

NO. E

Memasukkan setiap output dengan format terlampir. Pada perintah, program dibuat dalam format shell.

- mencoba memasukkan setiap awk program ke file hasil.txt satu-satu
- Untuk memasukkan semua program awk perlu dibuat program bash dulu
- membuat nano untuk menampung semua awk program 
- Memasukkan semua BEGIN pada satu BEGIN di shell, begitu pula dengan body dan END
- Run dan menghasilkan hasil.txt

Tidak ada kendala yang berarti, sempat kebingungan maksud dimasukkan ke shell.
![WhatsApp Image 2021-04-04 at 21 01 01](https://user-images.githubusercontent.com/74058892/113511308-6f949a00-9589-11eb-8d12-25c83d51d71d.jpeg)


NUMBER 3

no. a 

- download 23 pictures from website "https://loremflickr.com/320/240/kitten" because there are 23 pictures, we need wget command to download all the pictures and save the logs to the file "Foto.log"
- because the pictures is random and we can download the same picture, we must to delete the same one using rdfind -deleteduplicates command
- then, save the pictures with format name "Collection_xx" start from "Collection_01, Collection_02, ..." which is using if else for the digit less than 10, add 0 in front of the number (ex 01,02,03,...) and for the rest just following it (11,12,13,...)

![Screenshot from 2021-04-04 21-27-31](https://user-images.githubusercontent.com/77782259/113513190-8d1a3180-9592-11eb-9350-1bffaf2021d7.png)

no. b

- the question asked to run the script once a day at 8 pm for certain dates of each month, i.e. from the 1st seven days once (1.8,...), as well as from the 2nd four days once (2,6,...). to make it neater, the downloaded image, along with its logs, are moved to a folder with the download date name in the format "DD-MM-YYYY" (example: "13-03-2023")
- to solve it, we need crontab to run the script as the question wish using '0 20 1-31/7,2-31/4 * * bash /home/julius/Documents/SISOP/Modul_1/3b.sh' it can be readed Every 20:00 from 1-31 every 7 days and from 2-31 every 4 days. 
- then, we need to create new folder using the mkdir command and then rename it with the date format below "DD-MM-YYYY" which we can retype it to be 'foldername=$(date +"%d-%m%Y")'
- for the last, move the pictures and the logs before into the latest folder that we create instead

![Screenshot from 2021-04-04 21-29-03](https://user-images.githubusercontent.com/77782259/113513620-c6ec3780-9594-11eb-88a9-4ff391153c3b.png)

ISSUE : Sometimes the crontab doesn't run well (it can be run in background but we can't see any changes on the folder)

no. c

- the question tells us to download a picture of a rabbit from "https://loremflickr.com/320/240/bunny" and ask to postpone the picture of a cat and rabbit alternately (example: the 30th of the cat > the 31st of the rabbit > the 1st of the cat > ... ). To distinguish between a folder containing a picture of a cat and a picture of a rabbit, the folder name is prefixed "Cat_" or "Rabbit_" (example: "Cat_13-03-2023").
- to distinguish we download our cat or rabbit using odd / even date whereas when the date is even we download a picture of a cat whereas if the odd date we download rabbit
- then we create a new folder with date format "DD-MM-YYYY" which we can retype it to be 'foldername=$(date +"%d-%m%Y")' same as the 3b question, if the date is even, name the folder Cat_(date format) whereas if the date is odd, name the folder Rabbit_(date format)
- then download the image and log according to the download on the date of the day as well, if the date is even date, download the picture of the cat and its logs while if the date is odd date, download the rabbit image and its logs and save it in the customized folder before.

![Screenshot from 2021-04-04 21-34-22](https://user-images.githubusercontent.com/77782259/113514221-9659cd00-9597-11eb-9956-9705c88e6484.png)
![Screenshot from 2021-04-04 21-33-56](https://user-images.githubusercontent.com/77782259/113514231-a376bc00-9597-11eb-8016-422aebc46866.png)

no. d

- the question asked to create a script that will move the entire folder to a zip named "Collection.zip" and lock the zip with a password in the form of the current date with the format "MMDDYYYY" (example: "03032003").
- for that, we need to declare a new variable to save the date format which will later be used for the password of the zip
- then, make a zip with zip command which name is "Collection.zip" and use -P to make a zip password using the date format before and move the entire folder that has name Cat and Rabbit into the zip (so we use Cat* and Rabbit*, whether the -r is for checking recursively)
- then after all folder named Cat and Rabbit zipped, remove the Cat and Rabbit folder to make it neatly and leave no trace of

![Screenshot from 2021-04-04 21-36-37](https://user-images.githubusercontent.com/77782259/113514516-50056d80-9599-11eb-8c05-bd0bd39da784.png)
![Screenshot from 2021-04-04 21-36-51](https://user-images.githubusercontent.com/77782259/113514527-55fb4e80-9599-11eb-8ac2-6005973d9597.png)

no. e

- 




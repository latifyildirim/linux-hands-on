# LINUX KOMUTLARI [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

<hr>
<p align="center">
	<img alt="Git" src="https://logodownload.org/wp-content/uploads/2022/05/linux-logo.png" height="190" width="555">
</p>
<hr>

# Index 

* [Genel Komutlar](#genel-komutlar)
* [Ortam Degiskenleri](#ortam-degiskenleri)
* [Kullanici Komutlari](#kullanici-komutlari)
* [Paket Yükleme Islemleri](#paket-yükleme-islemleri)
* [Filtre Kullanim Komutlari](#filtre-kullanim-komutlari)
* [Sed, Awk ve Crontab Komutlari](#sed-awk-ve-crontab-komutlari)
* [Sistem ile Ilgili Komutlar](#sistem-ile-ilgili-komutlar)
* [Shell Script Komutlari](#shell-script-komutlari)
* [Dersteki Calismalar](#dersteki-calismalar)

<hr>

# GENEL KOMUTLAR

### • Bir önce yazilan komuta isaret ederek yönetici olarak calistirir
```bash
sudo !!
```

### • Root kullanici olarak baglanir ve simge “#” dönüsür
```bash
sudo su
```

### • “Su” Switch-User demektir. Bu komut ile kullanici profilini gecis yapilir
```bash
su ec2-user
```

### • O anki durumda kullanicinin kim oldugunu ögrenmek icin kullanilir
```bash
whoami
```

### • Komutun manuel kitapcigini görüntülemek icin kullanilir
```bash
man ls
```

### • Komutun kullanimi hakkinda bilgi almak icin kullanilir
```bash
info ls
```

### • Komutun islevi hakkinda kisa bilgi almak icin kullanilir
```bash
whatis ls
```

### • Komutlarin tam bir listesini almak icin kullanilir
```bash
apropos ls
```

### • Komutun ve ek parametrelerinin hakkinda bilgi almak icin kullanilir
```bash
ls --help
```

### • Burada “-p” parametresi ile eger “deneme” klasörü yoksa hata vermez, olusturur ve onun da icine “latif” klasörü olusturur
```bash
mkdir –p /home/deneme/latif
```

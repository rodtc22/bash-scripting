#! /bin/bash
# me ayuda a descargar archivos de internet

url="http://212.183.159.230/5MB.zip"

url2='https://cses.fi/book/book.pdf'

url3="https://www.cyberciti.biz/files/sticker/sticker_book.pdf"

url4="https://www.youtube.com/watch?v=b6D1bnAood8"

# obtiene informacion del archivo
# curl -i ${url4}

# descargo con un nombre
# curl ${url2} -o teambook.pdf 

# Para descargar videos de youtube se usa youtube-dl
# sudo pip3 install youtube-dl

youtube-dl "https://www.youtube.com/watch?v=b6D1bnAood8"

#ver en que formatos se pueden descargar
youtube-dl -F "https://www.youtube.com/watch?v=b6D1bnAood8"

#descargar en formato m4a
youtube-dl -f m4a "https://www.youtube.com/watch?v=b6D1bnAood8"
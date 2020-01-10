#!/bin/bash
clear
echo "
..............                                     black-b@kali
            ..,;:ccc,.                             ---------
          ......''';lxO.
.....''''..........,:ld;
           .';;;:::;,,.x,
      ..'''.            0Xxoc:,.  ...
  ....                ,ONkc;,;cokOdc',.
 .                   OMo           ':ddo.
                    dMc               :OO;
                    0M.     Black-B   .:o.
                    ;Wd
                     ;XO,
                       ,d0Odlc;,..
                           ..',;:cdOOd::,.
                                    .:d;.':;.
                                       'd,  .'
                                         ;l   ..
                                          .o
                                            c
                                            .'
                                             .
                                                ";

echo "[✔] Checking directories...";
if [ -d "/usr/share/doc/Black-B" ] ;
then
echo "[◉] A directory Black-B was found! Do you want to replace it? [Y/n]:" ;
read mama
if [ $mama == "y" ] ;
then
 rm -R "/usr/share/doc/Black-B"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/bensaad2/Black-B.git /usr/share/doc/Black-B;
 echo "#!/bin/bash
 python /usr/share/doc/Black-B/Black-B.py" '${1+"$@"}' > Black-B;
 chmod +x Black-B;
 sudo cp Black-B /usr/bin/;
 rm Black-B;


if [ -d "/usr/share/doc/Black-B" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔] ✔✔✔  All is done!! You can execute tool by typing Black-B  !     ✔✔✔ [✔]";
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation faid![✘] ";
  exit
fi

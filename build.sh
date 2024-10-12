for file in `find . -type f -name "*.c"`
do
    /mnt/c/Keil_v5/C251/BIN/C251.EXE  $file INTR2 BROWSE DEBUG $2
done

obg_files="main.OBJ"
for file in `find . -type f -name "*.OBJ"`
do
    obg_files="$obg_files, $file"
done
/mnt/c/Keil_v5/C251/BIN/l251.EXE $obg_files 

/mnt/c/Keil_v5/C251/BIN/OH251.EXE MAIN

find . -maxdepth 5 -type f ! -name "*.c" ! -name "*.h" ! -name "*.H" -exec cp {} ../build \; -exec rm {} \;

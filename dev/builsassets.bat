    @echo off

    if [%1]==[skipscr] goto skipscr   


echo Converting Fixed Screens
..\..\..\src\utils\png2scr ..\gfx\title.png ..\bin\title.scr > nul
..\..\..\src\utils\png2scr ..\gfx\marco.png ..\bin\marco.scr > nul
..\..\..\src\utils\png2scr ..\gfx\ending.png ..\bin\ending.scr > nul


..\..\..\src\utils\apultra ..\bin\title.scr ..\bin\title.bin > nul
..\..\..\src\utils\apultra ..\bin\marco.scr ..\bin\marco.bin > nul
..\..\..\src\utils\apultra ..\bin\ending.scr ..\bin\ending.bin > nul


del ..\bin\*.scr > nul

    :skipscr

echo Converting levels
..\utils\buildlevels_MK132.exe ..\bin\level0.bin mapsize=20 mapfile=..\map\mapa.MAP map_w=10 map_h=2 lock=15 tilesfile=..\gfx\work.png behsfile=..\gfx\behs.txt defaultink=7 spritesfile=..\gfx\sprites32.png enemsfile=..\enems\enems.ene scr_ini=10 ini_x=3 ini_y=7 max_objs=1 enems_life=2 > nul


..\utils\apultra ..\bin\level0.bin ..\bin\level0c.bin > nul


del ..\bin\level?.bin  > nul



    echo Running The Librarian
    ..\..\..\src\utils\librarian2.exe list=..\bin\list.txt index=assets\librarian.h bins_prefix=..\bin\ rams_prefix=..\bin\ > nul

    echo Making music
    cd ..\mus
    ..\..\..\src\utils\pasmo ..\mus\WYZproPlay47aZXc.ASM ..\bin\RAM1.bin > nul
    cd ..\dev

    echo DONE
    ..\..\..\src\utils\printsize ..\bin\RAM1.bin
    ..\..\..\src\utils\printsize ..\bin\RAM3.bin
    

///////////////////////////
// USING NATIVE FUNCTION //
///////////////////////////

//OPEN URL AND WAIT 2 SEC
    https://www.speedtest.net/result/10984636644
    wait 2


//FIND UI-ELEMENT PING WITH CV, NATIVE DOUBLE CLICK
    hover ping.png
    x = mouse_x() 
    y = mouse_y() + 30
    dclick (`x`,`y`)

    //COPY TO CLIPBOARD
        keyboard [ctrl]c
        var_ping = clipboard()

//SELECT NEXT UI-ELEMENT DOWNLOAD, NATIVE DOUBLE CLICK
    x = mouse_x() + 160
    dclick (`x`,`y`)

    //COPY TO CLIPBOARD
        keyboard [ctrl]c
        var_down = clipboard()

//SELECT NEXT UI-ELEMENT UPLOAD,, NATIVE DOUBLE CLICK
    x = mouse_x() + 260
    dclick (`x`,`y`)

    //COPY TO CLIPBOARD
        keyboard [ctrl]c
        var_up = clipboard()

//ECHO RESULT
    echo --------------------------
    echo Ping: `var_ping`ms
    echo Downspeed: `var_down`Mbps
    echo Upspeed: `var_up`Mbps
    echo -------------------------- 

//IF CONDITION
    if var_down more than 500
        echo you are a fast guy!
    else
        echo you are too slow, pls go home! 
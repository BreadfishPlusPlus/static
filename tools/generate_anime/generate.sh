
function make {

    INPUT_FILE=$1
    WIDTH=$2
    HEIGHT=$(($3 + 2))
    LEFT=$4
    TOP=$5
    OUT_NAME=$6
    STEPS=$(($7 + 1))
    TIMING=$8
    DELAY=$9

    OUT_DIR=$(realpath "../../smileys/Anime/")

    eval "rm $OUT_DIR/$OUT_NAME.gif"

    for (( i=0; i<${STEPS}; i++ ));
    do
        _height=$(($HEIGHT * $i))
        _top=$(($TOP - $_height))

        command="convert"
        command+=" "
        command+=$INPUT_FILE
        command+=" "
        command+="-crop"
        command+=" "
        command+=$WIDTH
        command+="x"
        command+=$HEIGHT
        command+="+"
        command+=$LEFT
        command+="+"
        command+=$_top
        command+=" "
        command+="__$OUT_NAME-$(printf %03d $i).jpg"

        echo $command
        $command
    done

    _steps=$(($STEPS - 1))
    _delay=$(($TIMING / $_steps))

    command="convert"
    command+=" "
    command+="-background white"
    command+=" "
    command+="-alpha remove"
    command+=" "
    command+="-layers OptimizePlus"
    command+=" "
    command+="-delay $_delay"
    command+=" "
    command+="__$OUT_NAME"
    command+="-*.jpg"
    command+=" "
    command+="-loop 0"
    command+=" "
    command+="$OUT_DIR/$OUT_NAME.gif"
    echo "$command"
    eval "$command"

    if [ "$DELAY" -gt "0" ]; then
        eval "convert $OUT_DIR/$OUT_NAME.gif \( +clone -set delay $DELAY \) +swap +delete $OUT_DIR/$OUT_NAME.gif"
    fi

    eval "rm __$OUT_NAME-*.jpg"
}

make nqX-RgID_IQ9o_RL_FnV2mY4o_ELUuDjA3x3yd2HsTo.jpg 176 133 0 9197 breakingnews 6 50 0

make nqX-RgID_IQ9o_RL_FnV2mY4o_ELUuDjA3x3yd2HsTo.jpg 190 105 0 3852 brofist 20 168 100

make nqX-RgID_IQ9o_RL_FnV2mY4o_ELUuDjA3x3yd2HsTo.jpg 191 105 0 856 cokemasterrace 8 114 0

make nqX-RgID_IQ9o_RL_FnV2mY4o_ELUuDjA3x3yd2HsTo.jpg 191 105 0 5992 curious 19 160 100

make nqX-RgID_IQ9o_RL_FnV2mY4o_ELUuDjA3x3yd2HsTo.jpg 99 176 0 14494 dealwithit 29 233 200

make nqX-RgID_IQ9o_RL_FnV2mY4o_ELUuDjA3x3yd2HsTo.jpg 191 105 0 1605 evilgrin 6 56 100

make nqX-RgID_IQ9o_RL_FnV2mY4o_ELUuDjA3x3yd2HsTo.jpg 185 102 0 8283 fedup 21 240 100

make 7W1ggxfYVHRllMceXoeexRbujtYbjGeogyinqO93xF8.png 191 104 0 7666 flattered 38 234 100

make 7W1ggxfYVHRllMceXoeexRbujtYbjGeogyinqO93xF8.png 190 105 0 1177 flyingbunsofdoom 11 120 100

make 7W1ggxfYVHRllMceXoeexRbujtYbjGeogyinqO93xF8.png 190 105 0 8949 forgotkeys 11 90 100

make 7W1ggxfYVHRllMceXoeexRbujtYbjGeogyinqO93xF8.png 191 105 0 2140 garlock 8 72 100

make 7W1ggxfYVHRllMceXoeexRbujtYbjGeogyinqO93xF8.png 191 105 0 3531 giveuponlife 12 169 100

make 7W1ggxfYVHRllMceXoeexRbujtYbjGeogyinqO93xF8.png 177 132 0 10396 helmetbro 10 100 100

make 72YNlF6DHtbPH35TuzITUkUqGstZ4fuN3_hUOmjnqmM.png 190 105 0 1498 idoruwinkdesu 14 105 100

make 72YNlF6DHtbPH35TuzITUkUqGstZ4fuN3_hUOmjnqmM.png 191 102 0 9050 justno 15 172 100

make 72YNlF6DHtbPH35TuzITUkUqGstZ4fuN3_hUOmjnqmM.png 191 105 0 4066 missedthepoint 23 240 100

make 72YNlF6DHtbPH35TuzITUkUqGstZ4fuN3_hUOmjnqmM.png 190 104 0 12016 deranosebleed 27 168 100

make 72YNlF6DHtbPH35TuzITUkUqGstZ4fuN3_hUOmjnqmM.png 191 105 0 5885 nuidideverythingright 6 50 100

make 72YNlF6DHtbPH35TuzITUkUqGstZ4fuN3_hUOmjnqmM.png 191 105 0 7383 plz 13 196 100

make 72YNlF6DHtbPH35TuzITUkUqGstZ4fuN3_hUOmjnqmM.png 191 105 0 5136 notalolicon 9 140 100

make QztwTmXfBfcnmT-F0ldUAkRbt-hUX--t8TomFNJvSH8.png 191 105 0 6634 rerorero 62 440 100

make QztwTmXfBfcnmT-F0ldUAkRbt-hUX--t8TomFNJvSH8.png 191 105 0 11021 scrumptiouslymoe 40 328 100

make QztwTmXfBfcnmT-F0ldUAkRbt-hUX--t8TomFNJvSH8.png 191 105 0 11984 slapbet 8 72 0

make xOxGJRMvCOq2y_IsLDHU2A8r8d_TGpKyeCRiGLGzFvA.png 191 99 0 7323 prelenny 10 110 100

make xOxGJRMvCOq2y_IsLDHU2A8r8d_TGpKyeCRiGLGzFvA.png 191 105 0 3210 dekotableflip 30 155 100

make xOxGJRMvCOq2y_IsLDHU2A8r8d_TGpKyeCRiGLGzFvA.png 191 105 0 6206 volibearQ 27 172 100

make xOxGJRMvCOq2y_IsLDHU2A8r8d_TGpKyeCRiGLGzFvA.png 190 105 0 8708 mywaifumadeyouasandwich 12 130 100

make dVfgOKO5LzNJoLY-LcpjJ9Xr8ewLL3IVk5GwsRVLFmU.png 191 105 0 8667 torrentialdownpour 51 364 0

make dVfgOKO5LzNJoLY-LcpjJ9Xr8ewLL3IVk5GwsRVLFmU.png 191 105 0 10914 watchadoin 20 210 0

make On25P2sLJ9lORC9WGZ2zI6tBnGsBmIFe0j8P2ACPDhE.png 191 105 0 11522 urbansmile 24 146 100

make On25P2sLJ9lORC9WGZ2zI6tBnGsBmIFe0j8P2ACPDhE.png 191 120 0 1342 hyoukawink 11 180 100

make On25P2sLJ9lORC9WGZ2zI6tBnGsBmIFe0j8P2ACPDhE.png 191 105 0 13769 peasants 20 120 100

make On25P2sLJ9lORC9WGZ2zI6tBnGsBmIFe0j8P2ACPDhE.png 191 105 0 8847 yousaidsomethingdumb 49 250 100

make On25P2sLJ9lORC9WGZ2zI6tBnGsBmIFe0j8P2ACPDhE.png 191 105 0 3497 hajimepout 19 174 100

make ShGLzDcb3h8qAGvhc7026dY2mEzOk2N7OSHxbXuP2wg.jpg 122 162 0 1148 excitedyui 7 80 0

make CdBgVi_hvSEhPJ1xGd5UF9gobuvkfPLffRGTAiIdYLk.png 191 105 0 5029 banjo 32 134 100

make CdBgVi_hvSEhPJ1xGd5UF9gobuvkfPLffRGTAiIdYLk.png 191 105 0 13375 slightoverreaction 77 624 0

make CdBgVi_hvSEhPJ1xGd5UF9gobuvkfPLffRGTAiIdYLk.png 191 105 0 1498 anko 14 180 100
#INPUT_FILE  WIDTH  HEIGHT  LEFT  TOP  OUT_NAME  STEPS  TIMING  DELAY


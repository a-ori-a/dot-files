#!//usr/bin/env bash

rgb2hex(){
    for var in "$@"
        do
            result=$(printf '%x' "$var")
            if [ ${#result} -eq 1 ]; then
                result="0${result}"
            fi
            printf "$result"
        done
        printf '\n'
}

count=0
{
    while true
        do
        out=''
        ((count+=20))
        for i in $(seq 255 -20 0)
            do
            t=$(( ($count + $i) % 255 ))
            hex=$(rgb2hex 255 $t $t)
            out="${out}%{F#${hex}}ﱢ"
            done
        echo $out
        sleep 0.03
        done
}

# {
#     while true
#     diff=0
#     do
#         out='' 
#         diff=$(( $diff + 1 ))
#         for n in $(seq 0 6)
#         do
#             out="${out}%{F#${colors[$(( ($n + 1 + $diff) % 7 ))]}}ﱢ"
#         done
#         echo $out > $STORE
#         echo $out
#         sleep 0.2
#     done
# } 
# out="%{F#${colors[0]}}aaa"
# echo "%{F#${colors[0]}}tes
# echo $out
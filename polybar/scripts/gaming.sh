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

# colors=("#FF0000" "#FF7F00" "#FFFF00" "#7FFF00" "#00FF00" "#00FF7F" "#00FFFF" "#007FFF" "#0000FF" "#7F00FF" "#FF00FF" "#FF007F" "#FF0000")
# colors=('#cc8e8e' '#ccad8e' '#cccc8e' '#adcc8e' '#8ecc8e' '#8eccad' '#8ecccc' '#8eadcc' '#8e8ecc' '#ad8ecc' '#cc8ecc' '#cc8ead')
# colors=('#ff7f7f' '#ffbf7f' '#ffff7f' '#bfff7f' '#7fff7f' '#7fffbf' '#7fffff' '#7fbfff' '#7f7fff' '#bf7fff' '#ff7fff' '#ff7fbf' '#ff7f7f' )
# colors=('#ff7f7f' '#ff947f' '#ffaa7f' '#ffbf7f' '#ffd47f' '#ffe97f' '#ffff7f' '#e9ff7f' '#d4ff7f' '#bfff7f' '#aaff7f' '#94ff7f' '#7fff7f' '#7fff94' '#7fffaa' '#7fffbf' '#7fffd4' '#7fffe9' '#7fffff' '#7fe9ff' '#7fd4ff' '#7fbfff' '#7fa9ff' '#7f94ff' '#7f7fff' '#947fff' '#a97fff' '#bf7fff' '#d47fff' '#e97fff' '#ff7fff' '#ff7fe9' '#ff7fd4' '#ff7fbf' '#ff7faa' '#ff7f94' '#ff7f7f')
colors=('#ff7f7f' '#ff8a7f' '#ff947f' '#ff9f7f' '#ffaa7f' '#ffb47f' '#ffbf7f' '#ffc97f' '#ffd47f' '#ffdf7f' '#ffe97f' '#fff47f' '#ffff7f' '#f4ff7f' '#e9ff7f' '#dfff7f' '#d4ff7f' '#c9ff7f' '#bfff7f' '#b4ff7f' '#aaff7f' '#9fff7f' '#94ff7f' '#8aff7f' '#7fff7f' '#7fff8a' '#7fff94' '#7fff9f' '#7fffaa' '#7fffb4' '#7fffbf' '#7fffc9' '#7fffd4' '#7fffdf' '#7fffe9' '#7ffff4' '#7fffff' '#7ff4ff' '#7fe9ff' '#7fdfff' '#7fd4ff' '#7fc9ff' '#7fbfff' '#7fb4ff' '#7fa9ff' '#7f9fff' '#7f94ff' '#7f8aff' '#7f7fff' '#8a7fff' '#947fff' '#9f7fff' '#a97fff' '#b47fff' '#bf7fff' '#c97fff' '#d47fff' '#df7fff' '#e97fff' '#f47fff' '#ff7fff' '#ff7ff4' '#ff7fe9' '#ff7fdf' '#ff7fd4' '#ff7fc9' '#ff7fbf' '#ff7fb4' '#ff7faa' '#ff7f9f' '#ff7f94' '#ff7f8a')
count=0
length=72
{
    while true
        do
        ((count+=5))
        out=''
        for index in $(seq $length -1 0)
            do
            out="${out}%{F${colors[$(( $(( index + count )) % $length ))]}}ﱢ"
            done
        echo $out
        sleep 0.05
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

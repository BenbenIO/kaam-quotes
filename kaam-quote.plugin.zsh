
function kaam {
    # Set name and path
    file_path="$HOME/.oh-my-zsh/custom/plugins/kaam-quote/"
    file_name="kaamelott_quote.txt"
    input="$file_path$file_name"

    # Get max citation
    nb_citation=$(cat $input | wc -l)

    # Get random index
    index=$(shuf -i 0-"$nb_citation" -n 1)

    # Display quote
    i=0
    while read -r line; do
        i=$((i+1))
        if [ "$i" -eq "$index" ]; then
	    echo
            echo "$line"
            break
        fi
    done < "$input"
}

if [[ -o interactive ]]; then
    kaam
fi

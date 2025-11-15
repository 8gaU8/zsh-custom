# (1) 即時実行のための無名関数を定義し、実行します。
# これにより、このファイルの処理が完了すると、
# この関数内のローカル変数とともに、関数add_to_path_if_existsの定義も消滅します。
() {
    # example
    # $ add_to_path_if_exists "/usr/local/bin"

    # zshの配列属性を活用し、重複を防ぎます
    typeset -U path

    # ディレクトリが存在する場合のみPATHに追加し、存在しない場合は警告を出す関数
    add_to_path_if_exists() {
        local dir="$1"
        
        if [[ -z "$dir" ]]; then
            echo "Error: Directory argument is required." >&2
            return 1
        fi

        if [[ -d "$dir" ]]; then
            # PATHの先頭に追加
            path=("$dir" $path)
            export PATH
        else
            echo "Warning: Directory not found. Skipping addition to PATH: $dir" >&2
            return 1
        fi
    }

}

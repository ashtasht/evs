#/bin/bash
alias hc=herbstclient

# Varible
ufg=$(xgetres *.color1)
unfg=$(xgetres *.color4)
cfg=$(xgetres *.foreground)

# Bar
herbstclient --idle 2>/dev/null | {
	# tags
  tags=( $(herbstclient tag_status 0) )
  while true; do
      for tag in "${tags[@]}" ; do
          case ${tag:0:1} in
              '#') cstart="^fg($cfg)" ;;
              '+') cstart="^fg($ufg)" ;;
              '-') cstart="^fg($ufg)" ;;
              '%') cstart="^fg($ufg)" ;;
              '.') cstart="^fg($unfg)" ;;
	'-') cstart="^fg($unfg)" ;;
              *)   cstart='' ;;
          esac
          tagstring="${cstart}^ca(1,herbstclient use ${tag:1}) ${tag:1} "
          tagstring+="^ca()^fg()"
          echo -n "$tagstring"
      done
        
	# clock
	d=$(date "+%d/%m/%Y %H:%M")

  echo "^p(+10)$d^p(_CENTER)"

	read hook || exit
      case "$hook" in
          tag*) tags=( $(herbstclient tag_status) ) ;;
          quit_panel*) exit ;;
      esac
  done
} | dzen2 -x 1920 -h 33 -w 1920 -ta l #-fn "-misc-m+ 2m light-light-r-normal--*-85-100-*-p-*-ascii-0"

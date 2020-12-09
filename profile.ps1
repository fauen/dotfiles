function prompt {"$(get-date -UFormat "%H:%M") $(get-location) >>> "}
set-location $HOME
set-psreadlineoption -editmode emacs

# spacemacs-windows-keybindings
Bringing the usual Windows editor shortcuts to spacemacs as an option. 

# Installation

In your .emacs.d folder, do the following:

```
git clone https://github.com/jumpifzero/spacemacs-windows-keybindings.git private/windows-keybindings
```

add `windows-keybindings` to your `~/.spacemacs`

```
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     windows-keybindings
     ...
```

# TODO
 - C-p should bring up helm-projectile-find-file - What happens if the user is using ivy instead?


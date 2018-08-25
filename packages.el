;;; packages.el --- windows-keybindings layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Tiago Almeida <jumpifzero@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `windows-keybindings-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by a(org-cua-dwim-activate)ny other Spacemacs layer, define a
;;   function `windows-keybindings/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `windows-keybindings/pre-init-PACKAGE' and/or
;;   `windows-keybindings/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:
(defconst windows-keybindings-packages
  '(evil
    org-cua-dwim)
  "The list of Lisp packages required by the windows-keybindings layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any numbelist beginning with the symbol `recipe' is a melpa
        recir of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun windows-keybindings/init-evil ()
  (setq evil-toggle-key "C-`")) ;; Change the toggle key for evil otherwise we'll have probs with Ctrl+z

(defun windows-keybindings/init-org-cua-dwim ()
  )

;;; packages.el ends here

;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Nghia Lam"
      user-mail-address "nghialam12795@gmail.com")

(defun update-load-path (&rest _)
  "Update `load-path'."
  (push (expand-file-name "autoload" doom-emacs-dir) load-path))

(load! "+misc")
(load! "+programming")
(load! "+ui")

(setq doom-scratch-buffer-major-mode 'python-mode)

(setq-default fill-column 80
              delete-trailing-lines t)

;; Delete the selection when pasting
(delete-selection-mode 1)

;; Disable risky local variables warning
(advice-add 'risky-local-variable-p :override #'ignore)

(set-popup-rules! '(("^\\*helpful" :size 0.35)
                    ("^\\*Ibuffer\\*$" :size 0.35)
                    ("^\\*info.*" :size 80 :side right)
                    ("^\\*Man.*" :size 80 :side right)
                    ("^\\*Customize" :actions display-buffer)
                    ("^\\*edit-indirect" :size 0.6)
                    ("^\\*YASnippet Tables\\*$" :size 0.35)
                    ("^\\*grep\\*$" :size 0.35)
                    ("^\\*color-rg\\*$" :size 0.35)
                    ("^\\*pytest\\*" :size 0.35)
                    ("^\\*Anaconda\\*$" :size 0.35)
                    ("\\*.*server log\\*$" :side top :size 0.20 :select nil)
                    ((lambda (buf _) (with-current-buffer buf (eq major-mode 'forge-topic-mode))) :size 0.35)
                    ))

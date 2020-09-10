;;; $DOOMDIR/+ui.el -*- lexical-binding: t; -*-

(load-theme 'doom-gruvbox t)

(when (display-graphic-p)
  (setq user-font
        (cond
         ((find-font (font-spec :name  "JetBrains Mono")) "JetBrains Mono")
         ((find-font (font-spec :name  "OperatorMono Nerd Font")) "OperatorMono Nerd Font")
         ((find-font (font-spec :name  "Droid Sans Mono")) "Droid Sans Mono")
         ((find-font (font-spec :name  "Droid Sans Fallback")) "Droid Sans Fallback")))
  (cond (IS-MAC
         (setq doom-font (font-spec :family user-font :size 12)
               doom-big-font (font-spec :family user-font :size 18)
               doom-modeline-height 20))
        (IS-LINUX
         (setq resolution-factor (eval (/ (x-display-pixel-height) 1080.0)))
         (setq doom-font (font-spec :family user-font :size (eval (round (* 14 resolution-factor))))
               doom-big-font (font-spec :family user-font :size (eval (round (* 20 resolution-factor))))
               doom-modeline-height (eval (round (* 24 resolution-factor))))))

  ;; set initl screen size
  (setq initial-frame-alist
        '((width . 110)
          (height . 65))))

;; (after! doom-modeline
;;   (setq doom-modeline-buffer-file-name-style 'relative-from-project
;;         doom-modeline-major-mode-icon t))

(setq +workspaces-on-switch-project-behavior t)

;; Modeline
(set-fontset-font "fontset-default"  '(#x2600 . #x26ff) "JetBrains Mono")

(define-key mode-line-major-mode-keymap [header-line]
  (lookup-key mode-line-major-mode-keymap [mode-line]))

(defun mode-line-render (left right)
  (let* ((available-width (- (window-width) (length left) )))
    (format (format "%%s %%%ds" available-width) left right)))

(setq mode-line-format
     '((:eval
       (mode-line-render
       (format-mode-line (list
         (propertize " =" 'face `(:inherit mode-line-buffer-id)
                         'help-echo "Mode(s) menu"
                         'mouse-face 'mode-line-highlight
                         'local-map   mode-line-major-mode-keymap)
         " %b "
         (if (and buffer-file-name (buffer-modified-p))
             (propertize "(*)" 'face `(:inherit face-faded)))))
       (format-mode-line
        (propertize "" 'face `(:inherit face-popout)))))))

;; When we set a face, we take care of removing any previous settings
(defun set-face (face style)
  "Reset a face and make it inherit style."
  (set-face-attribute face nil
                      :foreground 'unspecified :background 'unspecified
                      :family     'unspecified :slant      'unspecified
                      :weight     'unspecified :height     'unspecified
                      :underline  'unspecified :overline   'unspecified
                      :box        'unspecified :inherit    style))

(defun set-modeline-faces ()
  ;; Mode line at top
  (set-face 'header-line 'face-bold-p)
  (set-face-attribute 'header-line nil
                      :underline (face-foreground 'default))
  (set-face-attribute 'mode-line nil
                      :height 10
                      ;; :underline (face-foreground 'default)
                      :overline nil
                      :box nil
                      :foreground (face-background 'default)
                      :background (face-background 'default))
  (set-face 'mode-line-inactive 'mode-line))

(add-hook! 'after-init-hook #'set-modeline-faces)

;; Comment if you want to keep the modeline at the bottom
(setq-default header-line-format mode-line-format)
(setq-default mode-line-format '(""))

;; Disable line-numbers by default
(setq display-line-numbers-type nil)

;; For terminal
(unless (display-graphic-p)
  (custom-set-faces!
    `(font-lock-comment-face :foreground ,(doom-color 'base6))
    `(font-lock-doc-face :foreground ,(doom-color 'base6))))

;; Modules
;; (use-package! dimmer
;;   :custom
;;   (dimmer-fraction 0.8)
;;   (dimmer-exclusion-predicates '(helm--alive-p window-minibuffer-p))
;;   (dimmer-exclusion-regexp-list
;;    '(".*Minibuf.*"
;;      "^\\*[h|H]elm.*"
;;      "^\\*Minibuf-[0-9]+\\*"
;;      "^.\\*which-key\\*$"
;;      " *company-box-"
;;      ".*NeoTree.*"
;;      ".*Treemacs.*"
;;      "^.*Messages.*"
;;      ".*Async.*"
;;      ".*Warnings.*"
;;      ".*transient.*"
;;      ".*LV.*"
;;      ".*Ilist.*")))

;; (add-hook! 'after-init-hook #'global-hide-mode-line-mode)
;; (add-hook! 'after-init-hook #'dimmer-mode)

(after! treemacs
  (kaolin-treemacs-theme))

(after! ibuffer
  ;; set ibuffer name column width
  (define-ibuffer-column size-h
    (:name "Size" :inline t)
    (cond
     ((> (buffer-size) 1000000) (format "%7.1fM" (/ (buffer-size) 1000000.0)))
     ((> (buffer-size) 1000) (format "%7.1fk" (/ (buffer-size) 1000.0)))
     (t (format "%8d" (buffer-size)))))

  (setq ibuffer-formats
        '((mark modified read-only " "
                (name 50 50 :left :nil) " "
                (size-h 9 -1 :right) " "
                (mode 16 16 :left :elide) " "
                filename-and-process))))

(after! centered-window
  (setq cwm-centered-window-width 160))

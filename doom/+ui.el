;;; $DOOMDIR/+ui.el -*- lexical-binding: t; -*-

(defun casey-theme-setup ()
  "My custom color scheme based on casey"
  (interactive)
  (load-theme 'doom-gruvbox t)
  (setq evil-normal-state-cursor '(box "#40FF40")
        evil-insert-state-cursor 'box
        evil-visual-state-cursor '(hollow "#40FF40"))
  (set-foreground-color "burlywood3")
  (set-background-color "#161616")
  (set-cursor-color "#40FF40")
  (set-face-attribute 'font-lock-builtin-face nil :foreground "#DAB98F")
  (set-face-attribute 'font-lock-comment-face nil :foreground "gray50")
  (set-face-attribute 'font-lock-constant-face nil :foreground "olive drab")
  (set-face-attribute 'font-lock-doc-face nil :foreground "gray50")
  (set-face-attribute 'font-lock-function-name-face nil :foreground "burlywood3")
  (set-face-attribute 'font-lock-keyword-face nil :foreground "DarkGoldenrod3")
  (set-face-attribute 'font-lock-string-face nil :foreground "olive drab")
  (set-face-attribute 'font-lock-type-face nil :foreground "burlywood3")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "burlywood3"))

(defun naysayer-theme-setup ()
  "My custom color scheme based on johnathan blow"
  (interactive)
  (load-theme 'naysayer t)
  (setq evil-normal-state-cursor '(box "lightgreen")
        evil-insert-state-cursor 'box
        evil-visual-state-cursor '(hollow "lightgreen"))
  (set-foreground-color "#b09876")
  (set-background-color "#072626")
  (set-cursor-color "lightgreen")
  (set-face-attribute 'mode-line-inactive nil :background "#275252")
  (set-face-attribute 'font-lock-builtin-face nil :foreground "#40db7e")
  (set-face-attribute 'font-lock-comment-face nil :foreground "#3a8c5a")
  (set-face-attribute 'font-lock-constant-face nil :foreground "#b09876")
  (set-face-attribute 'font-lock-doc-face nil :foreground "gray50")
  (set-face-attribute 'font-lock-function-name-face nil :foreground "#dbdbdb")
  (set-face-attribute 'font-lock-keyword-face nil :foreground "#dbdbdb")
  (set-face-attribute 'font-lock-string-face nil :foreground "#0dbd94")
  (set-face-attribute 'font-lock-type-face nil :foreground "#b09876")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "#b09876"))

(naysayer-theme-setup)

(when (display-graphic-p)
  (setq user-font
        (cond
         ;; ((find-font (font-spec :name  "PxPlus IBM VGA8")) "PxPlus IBM VGA8")
         ;; ((find-font (font-spec :name  "Free Pixel")) "Free Pixel")
         ((find-font (font-spec :name  "JetBrains Mono")) "JetBrains Mono")
         ((find-font (font-spec :name  "OperatorMono Nerd Font")) "OperatorMono Nerd Font")
         ((find-font (font-spec :name  "Droid Sans Mono")) "Droid Sans Mono")
         ((find-font (font-spec :name  "Droid Sans Fallback")) "Droid Sans Fallback")))
  (cond (IS-MAC
         (setq doom-font (font-spec :family user-font :size 12)
               doom-big-font (font-spec :family user-font :size 12)
               doom-variable-pitch-font (font-spec :family user-font :size 14)
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

(setq doom-themes-treemacs-enable-variable-pitch nil)
(setq treemacs-space-between-root-nodes nil)

;; (after! doom-modeline
;;   (setq doom-modeline-buffer-file-name-style 'relative-from-project
;;         doom-modeline-major-mode-icon t))

(setq +workspaces-on-switch-project-behavior t)

;; Modeline
;; (set-fontset-font "fontset-default"  '(#x2600 . #x26ff) "PxPlus IBM VGA8")

;; (define-key mode-line-major-mode-keymap [header-line]
;;   (lookup-key mode-line-major-mode-keymap [mode-line]))

;; (defun mode-line-render (left right)
;;   (let* ((available-width (- (window-width) (length left) )))
;;     (format (format "%%s %%%ds" available-width) left right)))

;; (setq mode-line-format
;;      '((:eval
;;        (mode-line-render
;;        (format-mode-line (list
;;          (propertize " =" 'face `(:inherit mode-line-buffer-id)
;;                          'help-echo "Mode(s) menu"
;;                          'mouse-face 'mode-line-highlight
;;                          'local-map   mode-line-major-mode-keymap)
;;          " %b "
;;          (if (and buffer-file-name (buffer-modified-p))
;;              (propertize "(*)" 'face `(:inherit face-faded)))))
;;        (format-mode-line
;;         (propertize "" 'face `(:inherit face-popout)))))))

;; ;; When we set a face, we take care of removing any previous settings
;; (defun set-face (face style)
;;   "Reset a face and make it inherit style."
;;   (set-face-attribute face nil
;;                       :foreground 'unspecified :background 'unspecified
;;                       :family     'unspecified :slant      'unspecified
;;                       :weight     'unspecified :height     'unspecified
;;                       :underline  'unspecified :overline   'unspecified
;;                       :box        'unspecified :inherit    style))

;; (defun set-modeline-faces ()
;;   ;; Mode line at top
;;   (set-face 'header-line 'face-bold-p)
;;   (set-face-attribute 'header-line nil
;;                       :underline (face-foreground 'default))
;;   (set-face-attribute 'mode-line nil
;;                       :height 10
;;                       ;; :underline (face-foreground 'default)
;;                       :overline nil
;;                       :box nil
;;                       :foreground (face-background 'default)
;;                       :background (face-background 'default))
;;   (set-face 'mode-line-inactive 'mode-line))

;; (add-hook! 'after-init-hook #'set-modeline-faces)
;; (add-hook! 'doom-load-theme-hook #'set-modeline-faces)

;; ;; Comment if you want to keep the modeline at the bottom
;; (setq-default header-line-format mode-line-format)
;; (setq-default mode-line-format '(""))

;; Display time
(display-time-mode t)

;; Time format
(customize-set-variable 'display-time-string-forms
                        '((propertize (format-time-string " %H:%M " now) 'face 'bold)))

;; Update display-time-string
(display-time-update)
;; Remove display-time-string from global-mode-string
(setq global-mode-string (delq 'display-time-string global-mode-string))

(display-battery-mode t)
;; Remove battery-mode-line-string from global-mode-string
(setq global-mode-string (delq 'battery-mode-line-string global-mode-string))

(defun *-mode-line-fill (reserve)
  "Return empty space using FACE and leaving RESERVE space on the right."
  (unless reserve
    (setq reserve 20))
  (when (and window-system
             (eq 'right (get-scroll-bar-mode)))
    (setq reserve (- reserve 3)))
  (propertize " "
              'display `((space :align-to (- (+ right right-fringe right-margin) ,reserve)))))

(customize-set-variable 'mode-line-format
                        '("%e"
                          mode-line-front-space
                          mode-line-client
                          mode-line-remote
                          mode-line-mule-info
                          mode-line-modified

                          "  "
                          ;; Buffer name
                          mode-line-buffer-identification

                          " "
                          ;; Version control
                          (:eval (when vc-mode
                                   (concat " "
                                           vc-mode)))
                          ;; Miscellaneous information
                          "  "
                          mode-line-misc-info

                          (:eval (*-mode-line-fill (+ (length battery-mode-line-string)
                                                      1
                                                      (length display-time-string))))
                          battery-mode-line-string
                          " "
                          display-time-string
                          ))

;; Disable line-numbers by default
(setq display-line-numbers-type nil)

;; For terminal
(unless (display-graphic-p)
  (custom-set-faces!
    `(font-lock-comment-face :foreground ,(doom-color 'base6))
    `(font-lock-doc-face :foreground ,(doom-color 'base6))))

;; Modules
(use-package! minions
  :config (minions-mode 1))

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

(after! cc-mode
  (remove-hook 'c-mode-common-hook #'rainbow-delimiters-mode))

(after! centered-window
  (setq cwm-centered-window-width 160))

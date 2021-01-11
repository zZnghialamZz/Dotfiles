;;; $DOOMDIR/+ui.el -*- lexical-binding: t; -*-

;; Disable Frame title format
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(setq ns-use-proxy-icon nil)
(setq frame-title-format nil)
(require 'cl-lib)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MINIMAL COLOR THEME
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun casey-theme-setup ()
  "My custom color scheme based on casey"
  (interactive)
  (load-theme 'doom-gruvbox t)
  (setq evil-normal-state-cursor '(box "#40FF40")
        evil-insert-state-cursor '(box "#40FF40")
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

(defun bumbread-theme-setup ()
  "My custom color scheme based on 4coder"
  (interactive)
  (load-theme 'modus-vivendi t)
  (setq evil-normal-state-cursor '(box "white")
        evil-insert-state-cursor '(box "white")
        evil-visual-state-cursor '(hollow "white"))
  (set-foreground-color "#BCBCBC")
  (set-background-color "#090D12")
  (set-cursor-color "white")
  (set-face-attribute 'font-lock-builtin-face nil :foreground "#EE00E8")
  (set-face-attribute 'font-lock-comment-face nil :foreground "#555555")
  (set-face-attribute 'font-lock-constant-face nil :foreground "white")
  (set-face-attribute 'font-lock-doc-face nil :foreground "#555555")
  (set-face-attribute 'font-lock-function-name-face nil :foreground "white")
  (set-face-attribute 'font-lock-keyword-face nil :foreground "#FFFFFF")
  (set-face-attribute 'font-lock-string-face nil :foreground "#A8A59E")
  (set-face-attribute 'font-lock-type-face nil :foreground "#BCBCBC")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "#BCBCBC"))

(defun 4coder-theme-setup ()
  "My custom color scheme based on 4coder"
  (interactive)
  (load-theme 'modus-vivendi t)
  (setq evil-normal-state-cursor '(box "green")
        evil-insert-state-cursor '(box "green")
        evil-visual-state-cursor '(hollow "green"))
  (set-foreground-color "#90B080")
  (set-background-color "#0C0C0C")
  (set-cursor-color "green")
  (set-face-attribute 'font-lock-builtin-face nil :foreground "#D08F20")
  (set-face-attribute 'font-lock-comment-face nil :foreground "#2090F0")
  (set-face-attribute 'font-lock-constant-face nil :foreground "#50FF30")
  (set-face-attribute 'font-lock-doc-face nil :foreground "#2090F0")
  (set-face-attribute 'font-lock-function-name-face nil :foreground "#90B080")
  (set-face-attribute 'font-lock-keyword-face nil :foreground "#D08F20")
  (set-face-attribute 'font-lock-string-face nil :foreground "#50FF30")
  (set-face-attribute 'font-lock-type-face nil :foreground "#90B080")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "#90B080"))

(defun light-theme-setup ()
  "My custom light color scheme"
  (interactive)
  (load-theme 'modus-operandi t)
  (setq evil-normal-state-cursor '(box "black")
        evil-insert-state-cursor '(box "black")
        evil-visual-state-cursor '(hollow "black"))
  (set-foreground-color "#333333")
  (set-background-color "#f0f0f0")
  (set-cursor-color "black")
  (set-face-attribute 'font-lock-builtin-face nil :foreground "#9A0000")
  (set-face-attribute 'font-lock-comment-face nil :foreground "#007E00")
  (set-face-attribute 'font-lock-constant-face nil :foreground "#7c0000")
  (set-face-attribute 'font-lock-doc-face nil :foreground "#007E00")
  (set-face-attribute 'font-lock-function-name-face nil :foreground "#333333")
  (set-face-attribute 'font-lock-keyword-face nil :foreground "#8B4303")
  (set-face-attribute 'font-lock-string-face nil :foreground "#7C0000")
  (set-face-attribute 'font-lock-type-face nil :foreground "#333333")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "#333333"))

(defun fluery-theme-setup ()
  "My custom color scheme based on ryan fleury"
  (interactive)
  (load-theme 'doom-gruvbox t)
  (setq evil-normal-state-cursor '(box "#00EE00")
        evil-insert-state-cursor '(box "#00EE00")
        evil-visual-state-cursor '(hollow "#00EE00"))
  (set-foreground-color "#b99468")
  (set-background-color "#222425")
  (set-cursor-color "#00EE00")
  ;; (set-face-attribute 'mode-line-inactive nil :background "#275252")
  (set-face-attribute 'font-lock-builtin-face nil :foreground "#dc7575")
  (set-face-attribute 'font-lock-comment-face nil :foreground "#9ba290")
  (set-face-attribute 'font-lock-constant-face nil :foreground "#ffa900")
  (set-face-attribute 'font-lock-doc-face nil :foreground "gray50")
  (set-face-attribute 'font-lock-function-name-face nil :foreground "#b99468")
  (set-face-attribute 'font-lock-keyword-face nil :foreground "#f0c674")
  (set-face-attribute 'font-lock-string-face nil :foreground "#ffa900")
  (set-face-attribute 'font-lock-type-face nil :foreground "#b99468")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "#b99468"))

(defun naysayer-theme-setup ()
  "My custom color scheme based on johnathan blow"
  (interactive)
  (load-theme 'naysayer t)
  (setq evil-normal-state-cursor '(box "lightgreen")
        evil-insert-state-cursor '(box "lightgreen")
        evil-visual-state-cursor '(hollow "lightgreen"))
  (set-foreground-color "#d1b897")
  (set-background-color "#072626")
  (set-cursor-color "lightgreen")
  (set-face-attribute 'mode-line-inactive nil :background "#275252")
  (set-face-attribute 'font-lock-builtin-face nil :foreground "#40db7e")
  (set-face-attribute 'font-lock-comment-face nil :foreground "#3a8c5a")
  (set-face-attribute 'font-lock-constant-face nil :foreground "#d1b897")
  (set-face-attribute 'font-lock-doc-face nil :foreground "gray50")
  (set-face-attribute 'font-lock-function-name-face nil :foreground "#dbdbdb")
  (set-face-attribute 'font-lock-keyword-face nil :foreground "#dbdbdb")
  (set-face-attribute 'font-lock-string-face nil :foreground "#0dbd94")
  (set-face-attribute 'font-lock-type-face nil :foreground "#d1b897")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "#d1b897"))

(casey-theme-setup)

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
         (setq doom-font (font-spec :family user-font :size 13)
               doom-big-font (font-spec :family user-font :size 13)
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

(setq +workspaces-on-switch-project-behavior t)

;; Modeline
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
(setq display-line-numbers-type nil
      ;; From Henrik:
      ;;
      ;; "By default it should keep scrolling until it detects the first error. It's controlled by the
      ;;  compilation-scroll-output variable (set to 'first-error in doom, nil in vanilla. Set to t to
      ;;  always scroll). Also, it stops auto-scrolling if you scroll it manually, i believe."
      ;;
      ;; https://discordapp.com/channels/406534637242810369/406554085794381833/654479202560770065
      ;;
      ;;NOTE: For some reason, 'first-error isn't working for me. Set to t.
      compilation-scroll-output t)

(set-popup-rule! "\*input/output of .*\*" :height 18 :quit 'other)
(set-popup-rule! "compilation" :height 10)

;; For terminal
(unless (display-graphic-p)
  (custom-set-faces!
    `(font-lock-comment-face :foreground ,(doom-color 'base6))
    `(font-lock-doc-face :foreground ,(doom-color 'base6))))

;; Modules
(use-package! minions
  :config (minions-mode 1))

;; (after! treemacs
;;   (kaolin-treemacs-theme))
(after! treemacs
  (setq treemacs-no-png-images t))

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

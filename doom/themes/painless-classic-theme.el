;;; painless-classic-theme.el --- A classic green based theme

;; A file by:
;;  ___              _    _                 ___          _
;; | _ \ __ _  _ _  | |_ | | ___  ___ ___  / __| ___  __| | ___  _ _
;; |  _// _` || ' \ |  _|| |/ -_)(_-<(_-< | (__ / _ \/ _` |/ -_)| '_|
;; |_|  \__,_||_||_| \__||_|\___|/__//__/  \___|\___/\__,_|\___||_|
;;
;; Nghia Lam (Pantless Coder)
;; https://codeberg.org/pantlesscoder/dotfiles

;; green-is-the-new-black credit:
;;   Author: Fred Campos <fred.tecnologia@gmail.com>
;;   Maintainer: Fred Campos <fred.tecnologia@gmail.com>
;;   URL: https://github.com/fredcamps/green-is-the-new-black-emacs
;;   Keywords: faces, themes
;;   Version: 1.0.0

;;; Commentary:

;; This package provides a theme with classic green colors.

;;; Code:

(deftheme painless-classic
  "Classic green theme")

(let ((class '((class color) (min-colors 89)))
      (256color (eq (display-color-cells (selected-frame)) 256))
      (default-red "red")
      (default-blue "blue")
      (magenta "#721045")
      (cyan "#00538b")
      (green "#005e00")
      (red "#a60000")
      (yellow "#813e00")
      (pc-black "#000000")
      (pc-heavy-grey "#1c1c1c")
      (pc-dark-grey "#2b2b30")
      (pc-grey "#898989")
      (pc-heavy-green "#005f00")
      (pc-dark-green "#218c23")
      (pc-green "#55af66")
      (pc-light-green "#8dcc78")
      (pc-bright-green "#46fc32")
      (pc-red "#f47a47")
      (pc-yellow "#e6fc20"))

  (custom-theme-set-faces
   'painless-classic
   `(default ((t (:background, pc-black :foreground, pc-green))))
   `(cursor  ((t (:background, pc-dark-green :weight bold))))
   `(hl-line ((t (:background, pc-heavy-grey))))
   ;; `(mode-line ((t (:box t, :background, "#0ecc11" :foreground, pc-black :box (:line-width 1 :color "#0ecc11")))))
   ;; `(mode-line-inactive ((t (:inherit mode-line :background, pc-dark-grey :foreground, pc-dark-green :box (:line-width 1 :color "#2b2b30")))))
   ;; `(mode-line ((t (:box nil, :background, "#0ecc11" :foreground, pc-black))))
   ;; `(mode-line-inactive ((t (:inherit mode-line :background, pc-dark-grey :foreground, pc-dark-green :box nil))))
   `(fringe ((t (:background, pc-black))))
   `(region ((t (:background, pc-heavy-green :foreground, pc-light-green))))
   `(minibuffer-prompt ((t (:foreground, pc-green))))
   `(escape-glyph ((t (:foreground, pc-dark-green))))
   `(font-lock-builtin-face ((t (:foreground, pc-light-green))))
   `(font-lock-constant-face ((t (:foreground, pc-bright-green))))
   `(font-lock-comment-face ((t (:foreground, pc-grey))))
   `(font-lock-string-face ((t (:foreground, pc-yellow))))
   `(font-lock-keyword-face ((t (:foreground, pc-bright-green))))
   `(font-lock-function-name-face ((t (:foreground, default-red))))
   `(font-lock-type-face ((t (:foreground, pc-green))))
   `(font-lock-doc-face ((t (:foreground, pc-grey))))
   `(font-lock-variable-name-face ((t (:foreground, pc-bright-green))))
   `(font-lock-regexp-grouping-backslash ((t (:inherit bold))))
   `(font-lock-regexp-grouping-construct ((t (:inherit bold))))
   `(font-lock-highlighting-faces ((t (:foreground, pc-light-green))))
   `(font-lock-negation-char-face ((t (:foreground, pc-bright-green :weight bold))))
   `(font-lock-warning-face ((t (:foreground, pc-yellow))))
   `(highlight ((t (:background, pc-dark-green :foreground, pc-bright-green :weight normal))))
   `(lazy-highlight ((t (:background, pc-heavy-green :foreground, pc-light-green))))
   `(tooltip ((t (:background, pc-grey :foreground, pc-black :inherit bold))))
   `(match ((t (:foreground, pc-grey :brackground, pc-black))))
   `(shadown ((t (:foreground, pc-dark-green))))
   `(secondary-selection ((t (:background, pc-dark-green :foreground, pc-grey))))
   `(link ((t (:foreground, pc-bright-green :underline, pc-bright-green :inherit bold))))
   `(link-visited ((t (:foreground, pc-green :underline, pc-green :inherit bold))))
   `(diff-added ((t (:background, pc-black :foreground, pc-green))))
   `(diff-changed ((t (:background, pc-black :foreground, pc-bright-green))))
   `(diff-removed ((t (:background, pc-black :foreground, pc-grey))))
   `(diff-context ((t (:inherit diff-changed))))
   `(diff-file-header ((t (:inherit diff-added))))
   `(diff-function ((t (:inherit diff-added))))
   `(diff-header ((t (:inherit diff-added))))
   `(diff-hunk-header ((t (:inherit diff-added))))
   `(diff-index ((t (:inherit diff-added))))
   `(diff-indicator-added ((t (:inherit diff-added))))
   `(diff-indicator-changed ((t (:inherit diff-changed))))
   `(diff-indicator-removed ((t (:inherit diff-removed))))
   `(diff-nonexistent ((t (:background, pc-black :foreground, pc-yellow))))
   `(diff-refine-added ((t (:inherit diff-added))))
   `(diff-refine-changed ((t (:inherit diff-changed))))
   `(diff-refine-removed ((t (:inherit diff-removed))))
   `(tool-bar ((t (:background, pc-black :foreground, pc-dark-green))))
   `(menu ((t (:background, pc-green :foreground, pc-black :box nil))))
   `(visible-bell ((t (:foreground, pc-black :background, pc-bright-green))))
   `(tty-menu-selected-face ((t  (:background, pc-bright-green :foreground, pc-black :weight bold))))
   `(tty-menu-enabled-face ((t  (:background, pc-green :foreground, pc-black))))
   `(tty-menu-disabled-face ((t  (:background, pc-grey :foreground, pc-black))))

   ;; -- plugins
   `(isearch ((t (:foreground, pc-bright-green :background, pc-dark-green ))))
   `(isearch-fail ((t (:foreground, pc-red :background, pc-black ))))

   `(ctbl:face-cell-select ((t (:foreground, pc-black :background, pc-green))))
   `(ctbl:face-row-select ((t (:foreground, pc-dark-green :background, pc-bright-green))))

   `(whitespace-empty ((t (:background nil :foreground , pc-light-green))))
   `(whitespace-indentation ((t (:background nil :foreground , pc-light-green))))
   `(whitespace-line ((t (:background nil :foreground , pc-light-green))))
   `(whitespace-newline ((t (:background nil :foreground , pc-light-green))))
   `(whitespace-space ((t (:background nil :foreground , pc-light-green))))
   `(whitespace-space-after-tab ((t (:background nil :foreground , pc-light-green))))
   `(whitespace-space-before-tab ((t (:background nil :foreground , pc-light-green))))
   `(whitespace-tab ((t (:background nil))))
   `(whitespace-trailing ((t class (:background , pc-light-green :foreground , pc-dark-green))))

   `(show-paren-match ((t (:foreground, pc-light-green :background, pc-black :weight bold))))
   `(show-paren-mismatch ((t (:foreground, pc-red :background, pc-black :weight bold))))

   `(ido-indicator ((t (:background, pc-dark-green :foreground, pc-black))))

   `(flycheck-error ((t (:underline, pc-red :foreground, pc-red))))
   `(flycheck-warning ((t (:underline, pc-yellow :foreground, pc-yellow))))
   `(flycheck-info ((t (:underline, pc-bright-green :foreground, pc-bright-green))))

   `(vertical-border ((t (:foreground, pc-green))))
   `(info ((t (:foreground, pc-bright-green))))
   `(warning ((t (:foreground, pc-yellow))))
   `(error ((t (:foreground, pc-red))))

   `(company-echo-common ((t (:foreground, pc-grey))))
   `(company-echo ((t (:inherit company-echo-common))))
   `(company-preview-common ((t (:background, pc-green :foreground, pc-black))))
   `(company-preview ((t (:inherit company-preview-common))))
   `(company-preview-search ((t (:inherit company-preview-common))))
   `(company-tooltip-selection ((t (:background, pc-light-green :foreground, pc-black))))
   `(company-scrollbar-bg ((t (:background, pc-green, :foreground, pc-black))))
   `(company-tooltip-common ((t (:foreground, pc-black :background, pc-dark-green))))
   `(company-tooltip-common-selection ((t (:foreground, pc-dark-grey :bold))))
   `(company-tooltip ((t (:background, pc-heavy-green))))
   `(company-tooltip-annotation ((t (:foreground, pc-bright-green))))
   `(company-tooltip-annotation-selection ((t (:foreground, pc-dark-green))))

   `(popup-menu-face ((t (:inherit company-tooltip))))
   `(popup-menu-selection-face ((t (:inherit company-tooltip-selection ))))
   `(popup-face ((t (:inherit popup-menu-face))))
   `(popup-isearch-match ((t (:background, pc-dark-green :foreground, pc-bright-green))))
   `(popup-tip-face ((t (:background, pc-bright-green :foreground, pc-black))))

   `(popup-menu-selection-face ((t (:inherit company-tooltip-selection))))
   `(popup-menu-mouse-face ((t (:inherit company-tooltip-selection))))
   `(popup-scroll-bar-background-face  ((t (:inherit company-scrollbar-bg))))

   `(column-enforce-face ((t (:foreground, pc-grey))))

   `(sml/vc ((t (:foreground, pc-bright-green))))
   `(sml/vc-edited ((t (:foreground, pc-bright-green :weight bold))))
   `(sml/battery ((t (:weight bold))))
   `(sml/projectile ((t (:foreground, pc-light-green ))))
   `(sml/filename ((t (:foreground, pc-green))))
   `(sml/read-only ((t (:foreground, pc-grey))))
   `(sml/position-percentage ((t (:foreground, pc-grey))))
   `(sml/prefix  ((t (:foreground, pc-light-green))))
   `(sml/process ((t (:foreground, pc-light-green))))

   `(doom-visual-bell ((t (:foreground, pc-black :background, pc-bright-green))))

   `(smerge-base ((t (:foreground, pc-bright-green :background, pc-dark-green))))
   `(smerge-markers ((t (:foreground, pc-bright-green :background, pc-dark-green))))
   `(smerge-mine ((t (:foreground, pc-bright-green :background, pc-dark-green))))
   `(smerge-other ((t (:foreground, pc-bright-green :background, pc-dark-green))))
   `(smerge-refined-changed ((t (:inherit diff-changed))))
   `(smerge-refined-removed ((t (:inherit diff-removed))))
   `(smerge-refined-added ((t (:inherit diff-added))))

   `(lsp-face-highlight-write ((t (:foreground, pc-black :background, pc-bright-green))))

   `(js2-external-variable ((t (:foreground, pc-yellow))))
   `(js2-private-function-call ((t (:foreground, pc-yellow))))
   `(js2-error ((t (:foreground, pc-red))))

   `(diff-hl-change ((t (:foreground, pc-heavy-grey :background, pc-yellow))))
   `(diff-hl-delete ((t (:foreground, pc-heavy-grey :background, pc-red))))
   `(diff-hl-insert ((t (:foreground, pc-heavy-green :background, pc-green))))

;;;;; helm
   `(helm-action ((,class :underline t)))
   `(helm-bookmark-addressbook ((,class :foreground ,pc-green)))
   `(helm-bookmark-directory ((,class :inherit bold :foreground ,default-blue)))
   `(helm-bookmark-file ((,class :foreground ,pc-green)))
   `(helm-bookmark-file-not-found ((,class :background ,pc-black :foreground ,pc-green)))
   `(helm-bookmark-gnus ((,class :foreground ,magenta)))
   `(helm-bookmark-info ((,class :foreground ,pc-light-green)))
   `(helm-bookmark-man ((,class :foreground ,pc-yellow)))
   `(helm-bookmark-w3m ((,class :foreground ,default-blue)))
   `(helm-buffer-archive ((,class :inherit bold :foreground ,cyan)))
   `(helm-buffer-directory ((,class :inherit bold :foreground ,default-blue)))
   `(helm-buffer-file ((,class :foreground ,pc-green)))
   `(helm-buffer-modified ((,class :foreground ,pc-yellow)))
   `(helm-buffer-not-saved ((,class :foreground ,pc-red)))
   `(helm-buffer-process ((,class :foreground ,magenta)))
   `(helm-buffer-saved-out ((,class :inherit bold :background ,pc-black :foreground ,pc-red)))
   `(helm-buffer-size ((,class :inherit shadow)))
   `(helm-candidate-number ((,class :foreground ,cyan)))
   `(helm-candidate-number-suspended ((,class :foreground ,pc-yellow)))
   `(helm-comint-prompts-buffer-name ((,class :foreground ,pc-bright-green)))
   `(helm-comint-prompts-promptidx ((,class :foreground ,cyan)))
   `(helm-delete-async-message ((,class :inherit bold :foreground ,magenta)))
   `(helm-eob-line ((,class :background ,pc-black :foreground ,pc-green)))
   `(helm-eshell-prompts-buffer-name ((,class :foreground ,pc-bright-green)))
   `(helm-eshell-prompts-promptidx ((,class :foreground ,cyan)))
   `(helm-etags-file ((,class :foreground ,pc-dark-green :underline t)))
   `(helm-ff-backup-file ((,class :inherit shadow)))
   ;;`(helm-ff-denied ((,class :inherit modus-themes-intense-red)))
   `(helm-ff-directory ((,class :inherit helm-buffer-directory)))
   `(helm-ff-dirs ((,class :inherit bold :foreground ,default-blue)))
   `(helm-ff-dotted-directory ((,class :inherit bold :background ,pc-black :foreground ,pc-green)))
   `(helm-ff-dotted-symlink-directory ((,class :inherit (button helm-ff-dotted-directory))))
   `(helm-ff-executable ((,class :foreground ,magenta)))
   `(helm-ff-file ((,class :foreground ,pc-green)))
   `(helm-ff-file-extension ((,class :foreground ,pc-bright-green)))
   ;;`(helm-ff-invalid-symlink ((,class :inherit modus-themes-link-broken)))
   ;; `(helm-ff-pipe ((,class :inherit modus-themes-special-calm)))
   ;; `(helm-ff-prefix ((,class :inherit modus-themes-special-warm)))
   `(helm-ff-socket ((,class :foreground ,pc-red)))
   ;; `(helm-ff-suid ((,class :inherit modus-themes-special-warm)))
   ;; `(helm-ff-symlink ((,class :inherit modus-themes-link-symlink)))
   `(helm-ff-truename ((,class :foreground ,default-blue)))
   `(helm-fd-finish ((,class :inherit success)))
   `(helm-grep-cmd-line ((,class :foreground ,pc-yellow)))
   ;; `(helm-grep-file ((,class :inherit bold :foreground ,fg-special-cold)))
   `(helm-grep-finish ((,class :inherit bold)))
   ;; `(helm-grep-lineno ((,class :foreground ,fg-special-warm)))
   ;; `(helm-grep-match ((,class :inherit modus-themes-special-calm)))
   `(helm-header ((,class :inherit bold :foreground ,pc-bright-green)))
   `(helm-header-line-left-margin ((,class :inherit bold :foreground ,pc-yellow)))
   ;; `(helm-history-deleted ((,class :inherit modus-themes-special-warm)))
   ;; `(helm-history-remote ((,class :foreground ,red-alt-other)))
   ;; `(helm-lisp-completion-info ((,class :inherit modus-themes-bold :foreground ,fg-special-cold)))
   ;; `(helm-lisp-show-completion ((,class :inherit modus-themes-special-warm)))
   `(helm-locate-finish ((,class :inherit success)))
   ;; `(helm-match ((,class :inherit modus-themes-completion-match-0)))
   `(helm-match-item ((,class :inherit helm-match)))
   ;; `(helm-minibuffer-prompt ((,class :inherit modus-themes-prompt)))
   `(helm-moccur-buffer ((,class :inherit button :foreground ,cyan)))
   ;; `(helm-mode-prefix ((,class :inherit modus-themes-special-calm)))
   `(helm-non-file-buffer ((,class :inherit shadow)))
   `(helm-prefarg ((,class :foreground ,pc-red)))
   ;; `(helm-resume-need-update ((,class :inherit modus-themes-special-calm)))
   ;; `(helm-selection ((,class :inherit modus-themes-completion-selected)))
   `(helm-selection-line ((,class :background ,pc-dark-grey)))
   `(helm-separator ((,class :foreground ,pc-dark-green)))
   `(helm-time-zone-current ((,class :foreground ,green)))
   `(helm-time-zone-home ((,class :foreground ,magenta)))
   `(helm-source-header ((,class :inherit bold :foreground ,pc-red)))
   `(helm-top-columns ((,class :inherit helm-header)))
   `(helm-ucs-char ((,class :foreground ,pc-yellow)))
   ;; `(helm-visible-mark ((,class :inherit modus-themes-subtle-cyan)))
;;;;; helm-ls-git
   `(helm-ls-git-added-copied-face ((,class :foreground ,pc-bright-green)))
   `(helm-ls-git-added-modified-face ((,class :foreground ,pc-yellow)))
   `(helm-ls-git-conflict-face ((,class :inherit bold :foreground ,pc-red)))
   `(helm-ls-git-deleted-and-staged-face ((,class :foreground ,pc-red)))
   `(helm-ls-git-deleted-not-staged-face ((,class :foreground ,red)))
   `(helm-ls-git-modified-and-staged-face ((,class :foreground ,pc-yellow)))
   `(helm-ls-git-modified-not-staged-face ((,class :foreground ,yellow)))
   `(helm-ls-git-renamed-modified-face ((,class :foreground ,magenta)))
   ;; `(helm-ls-git-untracked-face ((,class :foreground ,fg-special-cold)))
;;;;; helm-switch-shell
   ;; `(helm-switch-shell-new-shell-face ((,class :inherit modus-themes-completion-match-0)))
;;;;; helm-xref
   ;; `(helm-xref-file-name ((,class :inherit modus-themes-bold :foreground ,fg-special-cold)))

   `(which-func ((t (:foreground, pc-grey))))))


;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))


(provide-theme 'painless-classic)

;;; painless-classic-theme.el ends here

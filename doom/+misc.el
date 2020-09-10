;;; $DOOMDIR/+misc.el -*- lexical-binding: t; -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; NAVIGATION
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq evil-cross-lines t
      evil-split-window-below t
      evil-vsplit-window-right t
      evil-emacs-state-cursor `(box ,(doom-color 'violet)))

(use-package! imenu-list
  :defer t
  :config
  (set-popup-rules! '(("^\\*Ilist\\*" :side right :size 40 :select t))))

(after! nav-flash
  ;; (defun nav-flash-show (&optional pos end-pos face delay)
  ;; ...
  ;; (let ((inhibit-point-motion-hooks t))
  ;; (goto-char pos)
  ;; (beginning-of-visual-line) ; work around args-out-of-range error when the target file is not opened
  (defun +advice/nav-flash-show (orig-fn &rest args)
    (ignore-errors (apply orig-fn args)))
  (advice-add 'nav-flash-show :around #'+advice/nav-flash-show))

;; Use ) key to toggle it
;; (after! dired
;;   ;; Rust version ls
;;   (when-let (exa (executable-find "exa"))
;;     (setq insert-directory-program exa)
;;     (setq dired-listing-switches (string-join (list "-ahl" "--group-directories-first") " "))))

(after! (:and ranger dired)
  (setq ranger-hide-cursor t
        ranger-show-hidden 'format
        ranger-deer-show-details nil)

  (defun ranger-copy-relative-path ()
    "Copy the current file path relative to `default-directory path."
    (interactive)
    (let ((current-prefix-arg 1))
      (call-interactively 'dired-copy-filename-as-kill)))

  (defun ranger-close-and-kill-inactive-buffers ()
    "ranger close current buffer and kill inactive ranger buffers"
    (interactive)
    (ranger-close)
    (ranger-kill-buffers-without-window))
  ;; do not kill buffer if exists in windows
  (defun ranger-disable ()
    "Interactively disable ranger-mode."
    (interactive)
    (ranger-revert)))

(use-package! highlight-indent-guides
  :init
  (setq highlight-indent-guides-method 'character)
  :config
  (defun +indent-guides-init-faces-h ()
    (when (display-graphic-p)
      (highlight-indent-guides-auto-set-faces))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IVY
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (after! (:and ivy ivy-prescient)
;;   (setq ivy-prescient-retain-classic-highlighting t))


;; (after! ivy-posframe
;;   ;; Lower internal-border-width on MacOS
;;   (when IS-MAC
;;     (setq ivy-posframe-border-width 5))

;;   ;; Use minibuffer to display ivy functions
;;   (dolist (fn '(+ivy/switch-workspace-buffer
;;                 ivy-switch-buffer))
;;     (setf (alist-get fn ivy-posframe-display-functions-alist) #'ivy-display-function-fallback)))

(after! ivy-rich
  (plist-put! ivy-rich-display-transformers-list
              'ivy-switch-buffer
              '(:columns
                ((ivy-switch-buffer-transformer (:width 60))
                 (ivy-rich-switch-buffer-size (:width 7))
                 (ivy-rich-switch-buffer-indicators (:width 4 :face error :align right))
                 (ivy-rich-switch-buffer-major-mode (:width 12 :face warning))
                 (ivy-rich-switch-buffer-project (:width 15 :face success))
                 (ivy-rich-switch-buffer-path (:width (lambda (x) (ivy-rich-switch-buffer-shorten-path x (ivy-rich-minibuffer-width 0.3))))))
                :predicate
                (lambda (cand) (get-buffer cand)))))

(after! counsel
  ;; counsel-rg-base-command is configurable
  (setq counsel-find-file-ignore-regexp "\\(?:^[#.]\\)\\|\\(?:[#~]$\\)\\|\\(?:^Icon?\\)"
        counsel-describe-function-function 'helpful-callable
        counsel-describe-variable-function 'helpful-variable))

;; (use-package! counsel-etags
;;   :defer t
;;   :init
;;   (add-hook! 'prog-mode-hook
;;     (add-hook! 'after-save-hook
;;                :append :local 'counsel-etags-virtual-update-tags))
;;   :config
;;   (setq counsel-etags-update-interval 60))


(use-package! color-rg
  :defer t
  :custom (color-rg-mac-load-path-from-shell nil)
  :commands color-rg-search-project
  :config
  ;; https://emacs.stackexchange.com/a/10588/22102
  (evil-make-overriding-map color-rg-mode-map 'normal)
  ;; force update evil keymaps after git-timemachine-mode loaded
  (add-hook 'color-rg-mode-hook #'evil-normalize-keymaps)

  (custom-set-faces!
    `(color-rg-font-lock-match :foreground ,(doom-color 'red))
    `(color-rg-font-lock-header-line-text :foreground ,(doom-color 'dark-cyan))
    `(color-rg-font-lock-function-location :foreground ,(doom-color 'magenta))
    `(color-rg-font-lock-header-line-keyword :foreground ,(doom-color 'magenta))
    `(color-rg-font-lock-header-line-edit-mode :foreground ,(doom-color 'magenta))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TERM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set-formatter! 'shfmt "shfmt -i=2")

(after! eshell
  ;; eshell-mode imenu index
  (add-hook! 'eshell-mode-hook (setq-local imenu-generic-expression '(("Prompt" " λ \\(.*\\)" 1))))

  (defun eshell/l (&rest args) (eshell/ls "-l" args))
  (defun eshell/e (file) (find-file file))
  (defun eshell/md (dir) (eshell/mkdir dir) (eshell/cd dir))
  (defun eshell/ft (&optional arg) (treemacs arg))

  (defun eshell/up (&optional pattern)
    (let ((p (locate-dominating-file
              (f-parent default-directory)
              (lambda (p)
                (if pattern
                    (string-match-p pattern (f-base p))
                  t)))
             ))
      (eshell/pushd p)))
  )


(after! term
  ;; term-mode imenu index
  (add-hook! 'term-mode-hook (setq-local imenu-generic-expression '(("Prompt" "➜\\(.*\\)" 1)))))

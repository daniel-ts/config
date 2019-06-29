;;; Code: init.el -- Daniel Tschertkow emacs config
(setq inhibit-startup-screen t)
(global-visual-line-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq initial-scratch-message (concat ";; Daniel Tschertkow - " (format-time-string "%d-%m-%Y") "\n"))
(setq default-directory "~/")

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
    backup-by-copying t    ; Don't delink hardlinks
    version-control t      ; Use version numbers on backups
    delete-old-versions t  ; Automatically delete excess backups
    kept-new-versions 20   ; how many of the newest versions to keep
    kept-old-versions 5    ; and how many of the old
    )


;; package management config
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(package-initialize)

;; download and install packages
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; package configuration
(use-package gotham-theme
  :ensure t
  :config (load-theme 'gotham t))

(use-package crux
  :ensure t
  :bind (("C-a" . crux-move-beginning-of-line)))

(use-package smartparens
  :ensure t
  :diminish smartparens-mode
  :config (add-hook 'prog-mode-hook 'smartparens-mode))

(use-package rainbow-delimiters
    :ensure t
    :config
    (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(use-package diminish
  :ensure t)

(use-package yasnippet
  :ensure t)

(add-to-list 'load-path "~/.emacs.d/elpa/pdf-tools-20190413.2018/")

(pdf-loader-install)

(use-package projectile
  :ensure t)

(use-package flycheck
  :ensure t
  :hook (prog-mode . flycheck-mode))

(use-package company
  :ensure t
  :hook (prog-mode . company-mode)
  :diminish (company-mode . " ©"))

(use-package lsp-mode
  :ensure t
  :hook (html-mode . lsp-deferred)
  :commands (lsp lsp-deferred))

(use-package company-lsp
  :ensure t
  :config (push 'company-lsp company-backends))

;; custom hook config
(if (version<= "26.0.50" emacs-version)
    (add-hook 'prog-mode-hook 'display-line-numbers-mode)
  (add-hook 'prog-mode-hook 'linum-mode))
  ;; built in
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; custom other config
  ; clean up mode line
(eval-after-load "visual-line-mode" (diminish 'visual-line-mode))
(eval-after-load "eldoc-mode" (diminish 'eldoc-mode))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (pdf-tools diminish company-lsp yasnippet spinner lsp-mode projectile company flycheck rainbow-delimiters smartparens gotham-theme crux use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

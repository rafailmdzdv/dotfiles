(setq-default indent-tabs-mode nil)


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(use-package lsp-mode
  :ensure t
  :hook (lsp-pyright yaml-mode))

(use-package lsp-pyright
  :ensure t
  :custom (lsp-pyright-langserver-command "pyright") ;; or basedpyright
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred

(use-package yaml-mode
  :ensure t)

(use-package lsp-ui
  :ensure t)

(use-package flycheck
  :ensure t)

(use-package tree-sitter
  :ensure t
  :hook ((lsp-pyright yaml-mode) . tree-sitter-hl-mode)
  :config
  (global-tree-sitter-mode))

(use-package tree-sitter-langs
  :ensure t)

(use-package hl-todo
  :ensure t)

(global-hl-todo-mode t)

(use-package vertico
  :ensure t
  :init
  (vertico-mode))

(use-package company
  :ensure t
  :hook (python-mode))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
(setq dashboard-center-content t
      dashboard-display-icons-p t
      dashboard-icon-type 'nerd-icons
      dashboard-set-heading-icons t
      dashboard-set-file-icons t)

(use-package nerd-icons
  :ensure t)

(use-package magit
  :ensure t)

(use-package evil
  :ensure t)
(setq x-select-enable-clipboard nil)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'rose-pine t)

(evil-mode t)

(setq wl-copy-process nil)
(defun wl-copy (text)
  (setq wl-copy-process (make-process :name "wl-copy"
                                      :buffer nil
                                      :command '("wl-copy" "-f" "-n")
                                      :connection-type 'pipe
                                      :noquery t))
  (process-send-string wl-copy-process text)
  (process-send-eof wl-copy-process))
(defun wl-paste ()
  (if (and wl-copy-process (process-live-p wl-copy-process))
      nil ; should return nil if we're the current paste owner
      (shell-command-to-string "wl-paste -n | tr -d \r")))
(setq interprogram-cut-function 'wl-copy)
(setq interprogram-paste-function 'wl-paste)

;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("c4a66d0d9557de08eadd6cc25112bd7eb776d8c8754ed8cc4e1b16d0c317433c"
	 default))
 '(display-line-numbers 'relative)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(package-selected-packages nil)
 '(tab-bar-show t)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#1F1D2E" :foreground "#e0def4" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Maple Mono NF"))))
 '(lsp-headerline-breadcrumb-path-face ((t (:background "#191724"))))
 '(lsp-headerline-breadcrumb-separator-face ((t (:background "#191724"))))
 '(lsp-headerline-breadcrumb-symbols-face ((t (:background "#191724")))))

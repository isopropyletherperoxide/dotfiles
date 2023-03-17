(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(set-face-attribute 'default nil :family "Source Code Pro" :height 115 :width 'normal :weight 'normal)
(package-initialize)
(hl-line-mode 1)
(setq package-native-compile t)
(setq startup-screen-inhibit-startup-screen t)
(require 'use-package)
(setq use-package-always-ensure t) 
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))
(use-package evil
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-surround)
(use-package evil-leader
  :config (global-evil-leader-mode)
  (evil-leader/set-key "v" 'treemacs))
(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t)) ; if nil, italics is universally disabled

(use-package modus-themes)
 (use-package highlight-indent-guides
              :config 
              (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
 	     (setq highlight-indent-guides-method 'character))
 (use-package doom-modeline
  :init (doom-modeline-mode 1))

(use-package dashboard
  :config
  (dashboard-setup-startup-hook))

(use-package magit)

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package helm
  :config
  (helm-mode)) 

(global-set-key (kbd "M-x") 'helm-M-x)
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (setq lsp-headerline-breadcrumb-icons-enable nil)
  )

;; (use-package lsp-ui)
(use-package flycheck)
(use-package company)
(use-package lsp-treemacs)
(use-package treemacs)
(use-package treemacs-evil)
(use-package treemacs-all-the-icons)
(use-package helm-lsp) 
(use-package dap-mode
  :config 
  (require 'dap-lldb))
(use-package haskell-mode)
(use-package markdown-mode)
(use-package rust-mode
             :defer t)
(use-package rustic)
(use-package lsp-haskell)
(use-package yasnippet
  :config
  (yas-global-mode)) 
(use-package projectile)
(use-package cider
  :defer t)
(use-package which-key
  :config
  (which-key-mode))

(add-hook 'c-mode-hook #'lsp (require 'dap-cpptools))
(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'rust-mode-hook #'lsp)


(setq-default indent-tabs-mode nil)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode)
(setq display-line-numbers-type 'relative)
(setq create-lockfiles nil)
(setq make-backup-files nil)
(global-display-line-numbers-mode)
(treemacs-load-theme "all-the-icons")
(global-company-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" default))
 '(helm-minibuffer-history-key "M-p")
 '(package-selected-packages
   '(evil-leader yasnippet which-key use-package treemacs-evil treemacs-all-the-icons tree-sitter-langs todoist rustic projectile modus-themes magit lsp-ui lsp-haskell highlight-indent-guides helm-lsp flycheck evil-surround evil-collection doom-themes doom-modeline dashboard dap-mode company cider))
 '(warning-suppress-log-types '((comp) (comp) (comp) (comp)))
 '(warning-suppress-types '((comp) (comp) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'doom-one)

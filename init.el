(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(set-face-attribute 'default nil :family "Hack" :height 120 :weight 'normal)
(hl-line-mode 1)
(setq package-native-compile t)

(require 'use-package)
(setq use-package-always-ensure t) 

(use-package evil
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-surround)
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
(use-package minions)
;; Enable Evil

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

(use-package helm) 
(use-package tree-sitter)

(use-package twittering-mode
             :defer t)
(helm-mode)

(global-set-key (kbd "M-x") 'helm-M-x)
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (setq lsp-headerline-breadcrumb-icons-enable nil)
  )


(use-package lsp-ui)
(use-package flycheck)
(use-package company)
(use-package lsp-treemacs)
(use-package treemacs)
(use-package treemacs-evil)
(use-package treemacs-all-the-icons)
(use-package helm-lsp) 
(use-package dap-mode) 
(require 'dap-lldb)
(use-package haskell-mode)
(use-package markdown-mode)
(use-package rust-mode
             :defer t)
(use-package rustic)
(use-package lsp-haskell)
(use-package yasnippet) 
(use-package projectile)
(use-package cider)
(use-package which-key
  :config
  (which-key-mode))

(add-hook 'c-mode-hook #'lsp (require 'dap-cpptools))
(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'rust-mode-hook #'lsp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(Komeji))
 '(custom-safe-themes
   '("89d9dc6f4e9a024737fb8840259c5dd0a140fd440f5ed17b596be43a05d62e67" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" "c865644bfc16c7a43e847828139b74d1117a6077a845d16e71da38c8413a5aaa" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "443e2c3c4dd44510f0ea8247b438e834188dc1c6fb80785d83ad3628eadf9294" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "b99e334a4019a2caa71e1d6445fc346c6f074a05fcbb989800ecbe54474ae1b0" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "2dd4951e967990396142ec54d376cced3f135810b2b69920e77103e0bcedfba9" "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce" "2f8eadc12bf60b581674a41ddc319a40ed373dd4a7c577933acaff15d2bf7cc6" "8fd7f42246dd1b70924d13e7231ef5c860ae6a84ec90465a14573358a570bfca" "53055a6c9215d58699b5362898fae6b9fc30b30605d3edf0edd923ee016e9730" "ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0" "631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b" "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" default))
 '(helm-minibuffer-history-key "M-p")
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(todoist magit obsidian treemacs-all-the-icons minions yasnippet which-key vscode-dark-plus-theme use-package tree-sitter-langs projectile lsp-ui helm-xref helm-lsp flycheck evil elcord doom-themes doom-modeline dap-mode company))
 '(warning-suppress-types '((comp) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode)
(global-linum-mode)
(load-theme 'doom-one)
(treemacs-load-theme "all-the-icons")
(global-company-mode)

(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)

(set-face-attribute 'default nil :font "Hack" :height 100)
(set-face-attribute 'mode-line nil :box nil)
;; init package sources 

(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install use-package)) 

(require 'use-package)
(setq use-package-always-ensure t)


(use-package evil)
(use-package vscode-dark-plus-theme)
(use-package elcord) 

(require 'evil)
(evil-mode 1)

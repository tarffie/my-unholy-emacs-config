;; hud config and stuff

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;;the setq hell

(setq display-line-numbers 'relative t)
(setq inhibit-startup-screen t) ;; this one broke ????

;; MELPA PACKAGE MANAGER TRADEMARK

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;; I have NO CLUE of what this one does but I'll keep


(setq backup-directory-alist '(("." . "~/.emacs_saves")))


(require 'ido)
(ido-mode t) ;; for my FILE SEARCHS




;; HERE I WILL SETUP SOME KEYBINDINGS

(global-set-key (kbd "C-c C-s") 'comment-line) ;; comment the line..

;; TODO change focused buffer on screen

;; TODO better keybindings to change buffers



	     
;; hud config and stuff

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;;the setq hell

(setq-default display-line-numbers 'relative)
(setq inhibit-startup-screen t) ;; this one broke ????

;; MELPA PACKAGE MANAGER TRADEMARK

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;; I have NO CLUE of what this one does but I'll keep


(setq backup-directory-alist '(("." . "~/.emacs_saves")))


(require 'ido)
(ido-mode t) ;; for my FILE SEARCHS




;; HERE I WILL SETUP SOME KEYBINDINGS

(global-set-key (kbd "C-c C-s") 'comment-line) ;; comment the line..

;; TODO change focused buffer on screen

;; TODO better keybindings to change buffers



	     
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tty-dark))
 '(custom-safe-themes
   '("7de92d9e450585f9f435f2d9b265f34218cb235541c3d0d42c154bbbfe44d4dd" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;  hud config and stuff
 
 (menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;;the setq hell

(setq-default display-line-numbers 'relative) ;;remember the use of setq-default 
(setq inhibit-startup-screen t) ;; this one broke ????

;; MELPA PACKAGE MANAGER TRADEMARK

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;; I have NO CLUE of what this one does but I'll keep it


(setq backup-directory-alist '(("." . "~/.emacs_saves")))


(require 'ido)
(ido-mode t) ;; for my FILE SEARCHS




;; HERE I WILL SETUP SOME KEYBINDINGS

(global-set-key (kbd "C-c C-s") 'comment-line) ;; comment the line..

;; call function to change focused buffer on screen

(global-set-key (kbd "\C-c p") (lambda ()
				  (interactive)
				  (other-window 1)))




;; TODO better keybindings to change buffers

;; TOGGLE FULLSCREN ON THAT SHIT 

(global-set-key (kbd "C-c f") (lambda()
				(interactive)
				(toggle-frame-maximized)))



;; some custom functions 'round here



	     
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tty-dark))
 '(custom-safe-themes
   '("7de92d9e450585f9f435f2d9b265f34218cb235541c3d0d42c154bbbfe44d4dd" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; C 'n C++ stuff goes here




;; Trying to implement TABS into my EMACS


;; Better tab identation

(add-hook 'cpp-mode-hook 'my-cpp-mode-hook)
(defun my-cpp-mode-hook ()
  (setq tab-width 4
	indent-tabs-mode t
	c-basic-offset 4))

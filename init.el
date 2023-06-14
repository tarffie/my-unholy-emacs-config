;;  hud config and stuff
 
 (menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;;the setq hell

(setq-default display-line-numbers 'relative) ;;remember the use of setq-default 
(setq inhibit-startup-screen t) ;; this one broke ????

;; MELPA PACKAGE MANAGER TRADEMARK

;; Enable MELPA package repository
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; I Have No Clue Of What This One Does But I'Ll Keep It


(setq backup-directory-alist '(("." . "~/.emacs_saves")))



(require 'ido)
(ido-mode t) ;; for my FILE SEARCHS



;; HERE I WILL SETUP SOME KEYBINDINGS

(global-set-key (kbd "C-c C-s") 'comment-line) ;; comment the line..

;; call function to change focused buffer on screen

(global-set-key (kbd "\C-c p") (lambda ()
				  (interactive)
				  (other-window 1)))

;; (global-set-key (kbd"<backtab>") (lambda ()
;; 				   (interactive)
;; 				   (  still not figured how to make it go back. :/ 

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
   '("7de92d9e450585f9f435f2d9b265f34218cb235541c3d0d42c154bbbfe44d4dd" default))
 '(package-selected-packages '(irony-eldoc company-irony)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; C 'n C++ stuff goes here

;; better highlithing and auto complete

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)


;; C-Like
(dolist (mode-iter '(c-mode c++-mode glsl-mode java-mode javascript-mode rust-mode))
  (font-lock-add-keywords
    mode-iter
    '(("\\([~^&\|!<>=,.\\+*/%-]\\)" 0 'font-lock-operator-face keep)))
  (font-lock-add-keywords
    mode-iter
    '(("\\([\]\[}{)(:;]\\)" 0 'font-lock-delimit-face keep)))
  ;; functions
  (font-lock-add-keywords
    mode-iter
    '(("\\([_a-zA-Z][_a-zA-Z0-9]*\\)\s*(" 1 'font-lock-function-name-face keep)))) 



;; Trying to implement TABS into my EMACS


;; Better tab identation

(add-hook 'cpp-mode-hook 'my-cpp-mode-hook)
(defun my-cpp-mode-hook ()
  (setq tab-width 4
	indent-tabs-mode t
	c-basic-offset 4))

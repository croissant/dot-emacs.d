;;; package --- Summary
;;; init.el
;;; Commentary:
;;; Code:
;(package-initialize)

(setq load-path
      (append '("~/.emacs.d/site-lisp") load-path))

;; leaf
(eval-and-compile
  (customize-set-variable
   'package-archives '(("org" . "https://orgmode.org/elpa/")
                       ("melpa" . "https://melpa.org/packages/")
                       ("gnu" . "https://elpa.gnu.org/packages/")))
  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf))

  (leaf leaf-keywords
    :ensure t
    :init
    ;; optional packages if you want to use :hydra, :el-get, :blackout,,,
    (leaf hydra :ensure t)
    (leaf el-get :ensure t)
    (leaf blackout :ensure t)

    :config
    ;; initialize leaf-keywords.el
    (leaf-keywords-init)))


(leaf leaf
  :config
  (defvar auto-revert-interval 1)
  (global-auto-revert-mode 1)
  (global-set-key [kp-enter] 'newline)
  (setq make-backup-files nil)
  (setq backup-inhibited t)
  (setq delete-auto-save-files t)
  (setq-default indent-tabs-mode nil)
  (setq default-process-coding-system '(utf-8-unix . utf-8-unix))
  (global-display-line-numbers-mode t)
  (fset 'yes-or-no-p 'y-or-n-p)
  (menu-bar-mode nil)
  (column-number-mode t)
  (prefer-coding-system 'utf-8-unix)
  (set-file-name-coding-system 'utf-8-unix)
  (global-hl-line-mode t)
  (leaf exec-path-from-shell
    :ensure t
    :config
    (exec-path-from-shell-initialize))

  (leaf leaf-convert :ensure t)
  (leaf leaf-tree
    :ensure t
    :custom ((imenu-list-size . 30)
             (imenu-list-position . 'left)))

  (leaf auto-save-buffers-enhanced
    :ensure t
    :config
    (auto-save-buffers-enhanced t)
    :custom
    (auto-save-buffers-enhanced-interval . 1)
    (auto-save-buffers-enhanced-quiet-save-p . t))

  (leaf magit :ensure t)

  (leaf editorconfig
    :ensure t
    :config
    (editorconfig-mode 1))

  (leaf docker
    :ensure t
    :config
    (leaf dockerfile-mode :ensure t))

  (leaf iflipb
    :ensure t
    :config
    (global-set-key (kbd "M-n") 'iflipb-next-buffer)
    (global-set-key (kbd "M-p") 'iflipb-previous-buffer)))

(leaf yasnippet
  :ensure t
  :blackout t
  :commands yas-global-mode
  :hook ((after-init-hook . yas-global-mode))
  :custom ((yas-snippet-dirs . '("~/.emacs.d/snippets"))))

(leaf helm
  :ensure t
  :config
  (recentf-mode 1)
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x C-r") 'helm-recentf)
  (global-set-key (kbd "M-.") 'helm-etags-select)
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)
  (global-set-key (kbd "C-x b") 'helm-mini)
  (global-set-key (kbd "C-c h") 'helm-semantic-or-imenu)
  :custom ((helm-semantic-fuzzy-match . t)
           (helm-imenu-fuzzy-match . t)))

(leaf prettier-js
  :ensure t
  :hook
  js-mode-hook
  typescript-mode-hook
  :custom (
           (prettier-js-width-mode . "fill")
           (prettier-js-args . '("--write"))))

(leaf lsp-mode
  :ensure t
  :custom ((lsp-inhibit-message . t)
           (lsp-message-project-root-warning . t)
           (create-lockfiles . nil)
           (lsp-idle-delay . 0.1)
           (lsp-response-timeout . 5))
  :hook
  ((lsp-mode-hook . lsp-ui-mode))
  :commands (lsp lsp-deferred)
  :config
  (leaf lsp-ui
    :ensure t
    :commands lsp-ui-mode))

(leaf company
  :ensure t
  :bind ((:company-active-map
          ("M-n" . nil)
          ("M-p" . nil)
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)
          ("<tab>" . company-complete-selection))
         (:company-search-map
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)))
  :custom
  ((company-idle-delay            . 0)
   (company-minimum-prefix-length . 4)
   (company-selection-wrap-around . t)
   (company-backends . '(company-capf company-yasnippet company-jedi))))

(leaf go-mode
  :ensure t
  :hook ((go-mode-hook . lsp-deferred)
         (before-save . lsp-format-buffer)
         (before-save . lsp-organize-imports))
  :custom ((tab-width . 4)
           (gofmt-command . "goimports"))
  :config
  (setq auto-mode-alist
        (append '(("\\.go$" . go-mode)) auto-mode-alist))
  (leaf go-eldoc :ensure t))

(leaf python-mode
   :ensure t
   :hook ((python-mode-hook . lsp-deferred))
   :config
   (leaf company-jedi :ensure t)
   (leaf python-docstring :ensure t)
   (leaf py-autopep8 :ensure t)
   (leaf pipenv :ensure t))

(leaf typescript-mode
  :ensure t
  :hook ((typescript-mode-hook . lsp-deferred)))

(leaf yaml-mode :ensure t)

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (prettier-js-mode typescript-mode python-mode python-docstring py-autopep8 pipenv magit lsp-ui leaf-tree leaf-convert js-auto-format-mode iflipb hydra helm go-eldoc exec-path-from-shell elpy el-get editorconfig dockerfile-mode docker company-jedi blackout auto-save-buffers-enhanced))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

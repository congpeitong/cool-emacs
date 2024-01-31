

;; 检查语法是否开启
(defconst *spell-check-support-enable* t)

;; emacs安装包目录
(defconst *emacs-package-user-dir* (expand-file-name (format "emacs-package-%s.%s" emacs-major-version emacs-minor-version)
                        user-emacs-directory))

;; 判断是否是 MacOS 系统
(defconst *is-mac* (eq system-type 'darwin) "是否是 MacOS 操作系统")

;; 判断是否是 Linux 系统
(defconst *is-linux* (eq system-type 'gnu/linux) "是否是 Linux 操作系统")

;; 判断是否是 Windows 系统
(defconst *is-win* (eq system-type 'windows-nt) "是否是 Windows 操作系统")

;; gnu 下载地址
(defconst *gnu-url* "http://1.15.88.122/gnu/")
;; nongnu 下载地址
(defconst *nongnu-url* "http://1.15.88.122/nongnu/")
;; melpa 下载地址
(defconst *melpa-url* "http://1.15.88.122/melpa/")
;; mepa-stable 下载地址
(defconst *melpa-stable-url* "http://1.15.88.122/stable-melpa/")

;; 是否是 GUI
(defconst *is-gui* (display-graphic-p))

;; 是否是 TUI
(defconst *is-tui* (not *is-gui*))

;; 是否是 nixos/darwin 模块 使用
(defconst *is-nix-module* (equal (getenv "GRASS_EMACS_ENV") "nix-module"))



(provide 'init-const)

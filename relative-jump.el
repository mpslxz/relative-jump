;; relative-jump.el --- Jumps to line with the relative address. Fits well when used along with a relative numbering package like linum-relative

;; Author: mpslxz
;; Keywords: 
;; X-URL: http://github.com/coldnew/linum-relative
;; Version: 0.1

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:
;; [![MELPA](http://melpa.org/packages/linum-relative-badge.svg)](http://melpa.org/#/linum-relative)
;; [![MELPA Stable](http://stable.melpa.org/packages/linum-relative-badge.svg)](http://stable.melpa.org/#/linum-relative)

;; ![Screenshot](https://github.com/coldnew/linum-relative/raw/master/screenshot/screenshot1.jpg)
;;
;; linum-relative lets you display relative line numbers for current buffer.
;;

;;; Installation:

;; If you have `melpa` and `emacs24` installed, simply type:
;;
;;     M-x package-install linum-relative
;;
;; And add the following to your .emacs
;;
;;     (require 'linum-relative)

;;; Code:

(require 'cl-lib)
(defun relative-jump (relative-line)
  (interactive "srelative jump to: ")
  (goto-line (+ (string-to-number (format-mode-line "%l")) 
		    (string-to-number relative-line)
		    )
	)
)
(global-set-key (kbd "C-M-g C-M-g") 'relative-jump)
(provide 'relative-jump)

;;; relative-jump ends here

;; relative-jump.el --- Jumps to line with the relative address

;; Author: mpslxz <mpslxz@yahoo.com>
;; Homepage: github.com/mpslxz/relative-jump
;; Keywords: convenience

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

;; relative-jump lets you jump to a line with relative address.

;;; Code:

(require 'cl-lib)
(defun relative-jump (relative-line)
"Relative jump to the address indicated by RELATIVE-LINE."
  (interactive "srelative jump to: ")
  (forward-line (+ (string-to-number (format-mode-line "%l"))
		    (string-to-number relative-line)
		    )
	)
)
(global-set-key (kbd "C-M-g C-M-g") 'relative-jump)
(provide 'relative-jump)

;;; relative-jump.el ends here

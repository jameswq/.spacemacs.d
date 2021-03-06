;;; packages.el --- turtletaro layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: turtletaro
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `turtletaro-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `turtletaro/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `turtletaro/pre-init-PACKAGE' and/or
;;   `turtletaro/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst turtletaro-packages
  '(youdao-dictionary
    company
    )
  )

(defun turtletaro/init-youdao-dictionary()
  (use-package youdao-dictionary
    :defer t 
    :init
    (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
    )
  )

(defun turtletaro/post-init-company()
  (setq company-minimum-prefix-length 2)
  )

;;; packages.el ends here

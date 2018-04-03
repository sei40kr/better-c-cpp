;;; packages.el - better-c-cpp layer file for Spacemacs
;;
;; Copyright (c) 2018 Seong Yong-ju
;;
;; Author: Seong Yong-ju <sei40kr@gmail.com>
;;
;; This file is not part of GNU Emacs
;;
;;; License: MIT

(setq better-c-cpp-packages
  '(
     c-eldoc
     flycheck-google-cpplint))

(defun better-c-cpp/init-c-eldoc ()
  (add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)
  (add-hook 'c++-mode-hook 'c-turn-on-eldoc-mode))

(defun better-c-cpp/pre-init-flycheck-google-cpplint ()
  (custom-set-variables '(flycheck-googlelint-filter "-legal/copyright")))

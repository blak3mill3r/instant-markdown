;;; instant-markdown.el --- Really Realtime Markdown previews for Emacs.

;; Copyright (C) 2015 Blake Miller

;; Author: Blake Miller <blak3mill3r@gmail.com>
;; Version: 0.1.0
;; Keywords: markdown, preview, live
;; URL: https://github.com/blak3mill3r/instant-markdown.el

;;; Commentary:

;; Realtime Markdown previews for Emacs, updates as the contents of the buffer change

(defun instant-md-start ()
  (interactive)
  (call-process-shell-command "instant-markdown-d &>/dev/null &")
  (instant-md-go)
  (run-at-time "1 sec" nil 'instant-md-refresh ))

(defun instant-md-refresh (&rest args)
  (shell-command-on-region
   (point-min) (point-max)
   "curl -X PUT -T - http://localhost:8090/ &> /dev/null"))

(defun instant-md-go ()
  (add-hook 'after-change-functions 'instant-md-refresh nil t)) 

(provide 'instant-markdown)

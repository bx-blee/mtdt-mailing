;;; b:eval-file.el --- Evaluate File -- return the last form  -*- lexical-binding: t; -*-;;;
;;;
;;; Taken from
;;; https://stackoverflow.com/questions/30568113/result-value-of-elisp-code-stored-in-a-file
;;;

(defun b:eval-file (file)
  "Execute FILE and return the result of the last expression."
  (eval
   (ignore-errors
     (read-from-whole-string
      (with-temp-buffer
        (insert-file-contents file)
        (buffer-string))))))

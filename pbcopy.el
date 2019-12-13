(defun pbcopy ()
  "Copy contents of current buffer to the MacOS clipboard."
  (interactive)
  (shell-command (concat "echo \"" (buffer-substring-no-properties 1 (buffer-size)) "\" | pbcopy"))
  (message "Copied buffer to MacOS clipboard.")  
  )
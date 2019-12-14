(defun pbcopy ()
  "Copy contents of current buffer to the MacOS clipboard."
  (interactive)
  (setq content (escape (buffer-substring-no-properties 1 (buffer-size))))
  (shell-command (concat "echo -e \"" content  "\" | pbcopy"))
  (message (concat "Copied buffer \"" (buffer-name) "\" to MacOS clipboard.")))


(defun escape(x) 
 (replace-regexp-in-string "\n+" "\\\\n"   
     (replace-regexp-in-string "\"+" "\\\\\"" 
	  (replace-regexp-in-string "\\\\+" "\\\\\\\\" x))))
						    


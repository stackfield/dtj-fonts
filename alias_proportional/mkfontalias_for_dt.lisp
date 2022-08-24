(load "../setting.lisp")

(generate-interface-alias "dtj" '(("sans" . "gothic") ("serif" . "mincho"))
		          '("p") '("interface system")
		          '("medium" "bold") *size-table* *lang-table*)

(generate-application-alias "dtj" '(("sans" . "gothic") ("serif" . "mincho"))
		            '("p") '("application")
		            '("medium" "bold") *application-point-table* *lang-table*)

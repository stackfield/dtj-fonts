(load "setting.lisp")

(generate-interface-alias "dtj" '(("sans" . "gothic") ("serif" . "mincho"))
		'("m") '("interface system")
		'("medium" "bold") *size-table* *lang-table*)

(generate-interface-alias "dtj" '(("sans" . "gothic") ("serif" . "mincho"))
			  '("m") '("interface user")
			  '("medium" "bold") *size-table* *lang-table*)

(generate-application-alias "dtj" '(("sans" . "gothic") ("serif" . "mincho"))
			    '("m") '("application")
			    '("medium" "bold")
			    *application-point-table*
			    *lang-table*)

;; (generate-alias "dtj" '(("gothic" . "gothic"))
;; 		'("m") '("gothic")
;; 		'("medium" "bold") *application-size-table* *lang-table*)

;; (generate-alias "dtj" '(("mincho" . "mincho"))
;; 		'("m") '("mincho")
;; 		'("medium" "bold") *application-size-table* *lang-table*)

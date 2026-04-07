;Test that import order does not matter:
;import_order.metta uses is-even from import_order_helper.metta,
;but is imported first (before its dependency).
!(import! &self import_order)
!(import! &self import_order_helper)

!(test (process-number 20) 30)
!(test (process-number 5) 10)

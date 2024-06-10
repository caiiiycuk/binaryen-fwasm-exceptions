;; NOTE: Assertions have been generated by update_lit_checks.py --all-items and should not be edited.

;; RUN: wasm-opt %s -all -o %t.text.wast -g -S
;; RUN: wasm-as %s -all -g -o %t.wasm
;; RUN: wasm-dis %t.wasm -all -o %t.bin.wast
;; RUN: wasm-as %s -all -o %t.nodebug.wasm
;; RUN: wasm-dis %t.nodebug.wasm -all -o %t.bin.nodebug.wast
;; RUN: cat %t.text.wast | filecheck %s --check-prefix=CHECK-TEXT
;; RUN: cat %t.bin.wast | filecheck %s --check-prefix=CHECK-BIN
;; RUN: cat %t.bin.nodebug.wast | filecheck %s --check-prefix=CHECK-BIN-NODEBUG

(module
  ;; CHECK-TEXT:      (type $0 (func (result i32)))
  ;; CHECK-BIN:      (type $0 (func (result i32)))
  ;; CHECK-BIN-NODEBUG:      (type $0 (func (result i32)))
  (type $0 (func (result i32)))
  ;; CHECK-TEXT:      (import "env" "memory" (memory $0 i64 1 1))
  ;; CHECK-BIN:      (import "env" "memory" (memory $0 i64 1 1))
  (import "env" "memory" (memory $0 i64 1 1))

  ;; CHECK-TEXT:      (func $foo (type $0) (result i32)
  ;; CHECK-TEXT-NEXT:  (i32.load offset=13
  ;; CHECK-TEXT-NEXT:   (i64.const 37)
  ;; CHECK-TEXT-NEXT:  )
  ;; CHECK-TEXT-NEXT: )
  ;; CHECK-BIN:      (func $foo (type $0) (result i32)
  ;; CHECK-BIN-NEXT:  (i32.load offset=13
  ;; CHECK-BIN-NEXT:   (i64.const 37)
  ;; CHECK-BIN-NEXT:  )
  ;; CHECK-BIN-NEXT: )
  (func $foo (type $0) (result i32)
    (i32.load offset=13
      (i64.const 37)
    )
  )
)
;; CHECK-BIN-NODEBUG:      (import "env" "memory" (memory $mimport$0 i64 1 1))

;; CHECK-BIN-NODEBUG:      (func $0 (type $0) (result i32)
;; CHECK-BIN-NODEBUG-NEXT:  (i32.load offset=13
;; CHECK-BIN-NODEBUG-NEXT:   (i64.const 37)
;; CHECK-BIN-NODEBUG-NEXT:  )
;; CHECK-BIN-NODEBUG-NEXT: )

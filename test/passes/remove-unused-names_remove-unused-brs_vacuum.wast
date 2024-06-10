(module
  (type $0 (func (param i32 i32 i32) (result i32)))
  (type $1 (func (param f64) (result i32)))
  (type $2 (func (param i32 i32) (result i32)))
  (type $3 (func (param i32) (result i32)))
  (type $4 (func (param i32)))
  (type $5 (func (result i32)))
  (type $6 (func))
  (type $7 (func (param i32 i32)))
  (type $8 (func (param i64 i32 i32)))
  (type $9 (func (param i64 i64) (result i64)))
  (type $10 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $11 (func (param i32 i32 i32)))
  (type $12 (func (param i64 i32) (result i32)))
  (type $13 (func (param i32 i32 i32 i32 i32)))
  (type $14 (func (param f64 i32) (result f64)))
  (type $15 (func (param i32 i32 i32 i32) (result i32)))
  (import "env" "ABORT" (global $import$2 i32))
  (import "env" "STACKTOP" (global $import$3 i32))
  (import "env" "STACK_MAX" (global $import$4 i32))
  (import "global" "NaN" (global $import$5 f64))
  (import "global" "Infinity" (global $import$6 f64))
  (import "env" "enlargeMemory" (func $import$7 (result i32)))
  (import "env" "getTotalMemory" (func $import$8 (result i32)))
  (import "env" "abortOnCannotGrowMemory" (func $import$9 (result i32)))
  (import "env" "abortStackOverflow" (func $import$10 (param i32)))
  (import "env" "nullFunc_ii" (func $import$11 (param i32)))
  (import "env" "nullFunc_iiii" (func $import$12 (param i32)))
  (import "env" "nullFunc_vi" (func $import$13 (param i32)))
  (import "env" "_pthread_cleanup_pop" (func $import$14 (param i32)))
  (import "env" "___lock" (func $import$15 (param i32)))
  (import "env" "_abort" (func $import$16))
  (import "env" "___setErrNo" (func $import$17 (param i32)))
  (import "env" "___syscall6" (func $import$18 (param i32 i32) (result i32)))
  (import "env" "___syscall140" (func $import$19 (param i32 i32) (result i32)))
  (import "env" "_pthread_cleanup_push" (func $import$20 (param i32 i32)))
  (import "env" "_emscripten_memcpy_big" (func $import$21 (param i32 i32 i32) (result i32)))
  (import "env" "___syscall54" (func $import$22 (param i32 i32) (result i32)))
  (import "env" "___unlock" (func $import$23 (param i32)))
  (import "env" "___syscall146" (func $import$24 (param i32 i32) (result i32)))
  (import "asm2wasm" "f64-to-int" (func $import$25 (param f64) (result i32)))
  (import "asm2wasm" "i32s-div" (func $import$26 (param i32 i32) (result i32)))
  (import "asm2wasm" "i32s-rem" (func $import$27 (param i32 i32) (result i32)))
  (import "asm2wasm" "i32u-rem" (func $import$28 (param i32 i32) (result i32)))
  (import "asm2wasm" "i32u-div" (func $import$29 (param i32 i32) (result i32)))
  (import "env" "memory" (memory $0 256))
  (import "env" "table" (table 18 18 funcref))
  (import "env" "memoryBase" (global $import$32 i32))
  (import "env" "tableBase" (global $import$33 i32))
  (global $global$2 (mut i32) (global.get $import$2))
  (global $global$3 (mut i32) (global.get $import$3))
  (global $global$4 (mut i32) (global.get $import$4))
  (global $global$5 (mut i32) (i32.const 0))
  (global $global$6 (mut i32) (i32.const 0))
  (global $global$7 (mut i32) (i32.const 0))
  (global $global$8 (mut i32) (i32.const 0))
  (global $global$9 (mut f64) (global.get $import$5))
  (global $global$10 (mut f64) (global.get $import$6))
  (global $global$11 (mut i32) (i32.const 0))
  (global $global$12 (mut i32) (i32.const 0))
  (global $global$13 (mut i32) (i32.const 0))
  (global $global$14 (mut i32) (i32.const 0))
  (global $global$15 (mut f64) (f64.const 0))
  (global $global$16 (mut i32) (i32.const 0))
  (global $global$17 (mut i32) (i32.const 0))
  (global $global$18 (mut i32) (i32.const 0))
  (global $global$19 (mut f64) (f64.const 0))
  (global $global$20 (mut i32) (i32.const 0))
  (global $global$21 (mut f32) (f32.const 0))
  (global $global$22 (mut f32) (f32.const 0))
  (func $27 (type $13) (param $var$0 i32) (param $var$1 i32) (param $var$2 i32) (param $var$3 i32) (param $var$4 i32)
    (local $var$5 i32)
    (local $var$6 i32)
    (local $var$7 i32)
    (local $var$8 i32)
    (block $label$0
      (block $label$1
        (block $label$3
          (if
            (local.get $var$4)
            (then
              (block $label$4
                (if
                  (local.get $var$8)
                  (then
                    (block $label$7
                      (loop $label$8
                        (block $label$9
                          (if
                            (local.get $var$3)
                            (then
                              (block $label$12 ;; these empty blocks must never be unreachable-typed
                              )
                            )
                            (else
                              (block $label$13
                                (br $label$9)
                              )
                            )
                          )
                          (br $label$8)
                        )
                      )
                    )
                  )
                  (else
                    (block $label$16
                      (if
                        (local.get $var$6)
                        (then
                          (block $label$17
                          )
                        )
                        (else
                          (block $label$18
                            (br $label$3)
                          )
                        )
                      )
                    )
                  )
                )
                (drop
                  (call $23
                    (local.get $var$7)
                    (local.get $var$4)
                    (local.get $var$0)
                  )
                )
              )
            )
          )
        )
      )
    )
  )
  (func $23 (param i32) (param i32) (param i32) (result i32)
    (unreachable)
  )
  (func $unexitable-loops-result (param $0 i32) (result i64)
   (loop $label$0
    (loop $label$1
     (if
      (i32.load8_s
       (i32.const 201460482)
      )
      (then
       (br $label$0)
      )
      (else
       (block $label$3
        (br_if $label$3
         (local.get $0)
        )
       )
      )
     )
     (br $label$1)
    )
   )
  )
)


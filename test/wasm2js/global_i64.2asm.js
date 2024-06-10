
function asmFunc(imports) {
 var Math_imul = Math.imul;
 var Math_fround = Math.fround;
 var Math_abs = Math.abs;
 var Math_clz32 = Math.clz32;
 var Math_min = Math.min;
 var Math_max = Math.max;
 var Math_floor = Math.floor;
 var Math_ceil = Math.ceil;
 var Math_trunc = Math.trunc;
 var Math_sqrt = Math.sqrt;
 var f = -1412567121;
 var f$hi = 305419896;
 function call($0, $0$hi) {
  $0 = $0 | 0;
  $0$hi = $0$hi | 0;
 }
 
 function exp() {
  var i64toi32_i32$0 = 0;
  i64toi32_i32$0 = f$hi;
  call(f | 0, i64toi32_i32$0 | 0);
  i64toi32_i32$0 = 287454020;
  f = 1432778632;
  f$hi = i64toi32_i32$0;
 }
 
 return {
  "exp": exp
 };
}

var retasmFunc = asmFunc({
});
export var exp = retasmFunc.exp;

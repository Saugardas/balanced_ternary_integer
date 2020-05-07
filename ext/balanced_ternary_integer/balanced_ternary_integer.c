#include "balanced_ternary_integer.h"

VALUE mBalancedTernaryInteger;

void Init_balanced_ternary_integer(void) {
  mBalancedTernaryInteger = rb_define_module("BalancedTernaryInteger");
  Init_to_int(mBalancedTernaryInteger);
}

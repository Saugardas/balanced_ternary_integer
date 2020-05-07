#include "balanced_ternary_integer.h"

short char_to_num(char digit) {
    switch(digit) {
        case 'T':
            return -1;
        case '0':
            return 0;
        case '1':
            return 1;
        default:
            rb_raise(rb_eArgError, "String must contain only 0, 1, T symbols");
    }
}

VALUE rb_to_int_c(VALUE self, VALUE rb_string) {
    Check_Type(rb_string, T_STRING);  // raise TypeError (wrong argument type Integer (expected String))

    char *chars = RSTRING_PTR(rb_string);
    long len = RSTRING_LEN(rb_string);
    VALUE exp = INT2FIX(1);
    VALUE result = INT2FIX(0);
    short digit;

    for (int i = len - 1; i >= 0; i--) {
        digit = INT2NUM(char_to_num(chars[i]));
        result = rb_funcall(result, '+', 1, rb_funcall(digit, '*', 1, exp)); // result += digit * exp
        exp = rb_funcall(exp, '*', 1, INT2FIX(3)); // множитель (1, 3, 9 и тд)
    }
    return result;
}

void Init_to_int(VALUE mBalancedTernaryInteger) {
    rb_define_singleton_method(mBalancedTernaryInteger, "to_int_c", rb_to_int_c, 1);
}

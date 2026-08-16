package org.luaj.vm2.lib.jse;

import org.luaj.vm2.Varargs;
import org.luaj.vm2.lib.VarArgFunction;
import org.luaj.vm2.lib.jse.CoerceLuaToJava;

abstract class JavaMember extends VarArgFunction {
    static final int METHOD_MODIFIERS_VARARGS = 128;
    final CoerceLuaToJava.Coercion[] fixedargs;
    final CoerceLuaToJava.Coercion varargs;

    public JavaMember(Class[] clsArr, int i10) {
        int i11 = 0;
        boolean z10 = (i10 & 128) != 0;
        int length = clsArr.length;
        this.fixedargs = new CoerceLuaToJava.Coercion[z10 ? length - 1 : length];
        while (true) {
            CoerceLuaToJava.Coercion[] coercionArr = this.fixedargs;
            if (i11 >= coercionArr.length) {
                break;
            }
            coercionArr[i11] = CoerceLuaToJava.getCoercion(clsArr[i11]);
            i11++;
        }
        this.varargs = z10 ? CoerceLuaToJava.getCoercion(clsArr[clsArr.length - 1]) : null;
    }

    public Object[] convertArgs(Varargs varargs) {
        Object[] objArr;
        CoerceLuaToJava.Coercion[] coercionArr;
        int i10 = 0;
        if (this.varargs == null) {
            int length = this.fixedargs.length;
            objArr = new Object[length];
            while (i10 < length) {
                int i11 = i10 + 1;
                objArr[i10] = this.fixedargs[i10].coerce(varargs.arg(i11));
                i10 = i11;
            }
        } else {
            int max = Math.max(this.fixedargs.length, varargs.narg());
            objArr = new Object[max];
            while (true) {
                coercionArr = this.fixedargs;
                if (i10 >= coercionArr.length) {
                    break;
                }
                int i12 = i10 + 1;
                objArr[i10] = coercionArr[i10].coerce(varargs.arg(i12));
                i10 = i12;
            }
            int length2 = coercionArr.length;
            while (length2 < max) {
                int i13 = length2 + 1;
                objArr[length2] = this.varargs.coerce(varargs.arg(i13));
                length2 = i13;
            }
        }
        return objArr;
    }

    public int score(Varargs varargs) {
        CoerceLuaToJava.Coercion[] coercionArr;
        int narg = varargs.narg();
        CoerceLuaToJava.Coercion[] coercionArr2 = this.fixedargs;
        int i10 = 0;
        int length = narg > coercionArr2.length ? CoerceLuaToJava.SCORE_WRONG_TYPE * (narg - coercionArr2.length) : 0;
        while (true) {
            coercionArr = this.fixedargs;
            if (i10 >= coercionArr.length) {
                break;
            }
            CoerceLuaToJava.Coercion coercion = coercionArr[i10];
            i10++;
            length += coercion.score(varargs.arg(i10));
        }
        if (this.varargs != null) {
            int length2 = coercionArr.length;
            while (length2 < narg) {
                length2++;
                length += this.varargs.score(varargs.arg(length2));
            }
        }
        return length;
    }
}

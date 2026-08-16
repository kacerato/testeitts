package org.luaj.vm2.lib;

import org.luaj.vm2.LuaError;
import org.luaj.vm2.LuaFunction;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public abstract class LibFunction extends LuaFunction {
    protected String name;
    protected int opcode;

    public static LuaValue[] newupe() {
        return new LuaValue[1];
    }

    public static LuaValue[] newupl(LuaValue luaValue) {
        return new LuaValue[]{luaValue};
    }

    public static LuaValue[] newupn() {
        return new LuaValue[]{LuaValue.NIL};
    }

    public void bind(LuaValue luaValue, Class cls, String[] strArr) {
        bind(luaValue, cls, strArr, 0);
    }

    @Override
    public LuaValue call() {
        return LuaValue.argerror(1, "value");
    }

    @Override
    public Varargs invoke(Varargs varargs) {
        int narg = varargs.narg();
        return narg != 0 ? narg != 1 ? narg != 2 ? narg != 3 ? call(varargs.arg1(), varargs.arg(2), varargs.arg(3), varargs.arg(4)) : call(varargs.arg1(), varargs.arg(2), varargs.arg(3)) : call(varargs.arg1(), varargs.arg(2)) : call(varargs.arg1()) : call();
    }

    @Override
    public String tojstring() {
        String str = this.name;
        return str != null ? str : super.tojstring();
    }

    public void bind(LuaValue luaValue, Class cls, String[] strArr, int i10) {
        try {
            int length = strArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                LibFunction libFunction = (LibFunction) cls.newInstance();
                libFunction.opcode = i10 + i11;
                String str = strArr[i11];
                libFunction.name = str;
                luaValue.set(str, libFunction);
            }
        } catch (Exception e10) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("bind failed: ");
            stringBuffer.append((Object) e10);
            throw new LuaError(stringBuffer.toString());
        }
    }

    @Override
    public LuaValue call(LuaValue luaValue) {
        return call();
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return call(luaValue);
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return call(luaValue, luaValue2);
    }

    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
        return call(luaValue, luaValue2, luaValue3);
    }
}

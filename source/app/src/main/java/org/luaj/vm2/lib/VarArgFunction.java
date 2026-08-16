package org.luaj.vm2.lib;

import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public abstract class VarArgFunction extends LibFunction {
    @Override
    public LuaValue call() {
        return invoke(LuaValue.NONE).arg1();
    }

    @Override
    public Varargs invoke(Varargs varargs) {
        return onInvoke(varargs).eval();
    }

    @Override
    public Varargs onInvoke(Varargs varargs) {
        return invoke(varargs);
    }

    @Override
    public LuaValue call(LuaValue luaValue) {
        return invoke(luaValue).arg1();
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return invoke(LuaValue.varargsOf(luaValue, luaValue2)).arg1();
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return invoke(LuaValue.varargsOf(luaValue, luaValue2, luaValue3)).arg1();
    }
}

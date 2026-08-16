package org.luaj.vm2.lib;

import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public abstract class OneArgFunction extends LibFunction {
    @Override
    public final LuaValue call() {
        return call(LuaValue.NIL);
    }

    @Override
    public abstract LuaValue call(LuaValue luaValue);

    @Override
    public Varargs invoke(Varargs varargs) {
        return call(varargs.arg1());
    }

    @Override
    public final LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return call(luaValue);
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return call(luaValue);
    }
}

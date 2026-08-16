package org.luaj.vm2.lib;

import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public abstract class ZeroArgFunction extends LibFunction {
    @Override
    public abstract LuaValue call();

    @Override
    public LuaValue call(LuaValue luaValue) {
        return call();
    }

    @Override
    public Varargs invoke(Varargs varargs) {
        return call();
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return call();
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return call();
    }
}

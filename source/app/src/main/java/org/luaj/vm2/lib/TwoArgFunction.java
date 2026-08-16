package org.luaj.vm2.lib;

import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public abstract class TwoArgFunction extends LibFunction {
    @Override
    public final LuaValue call() {
        LuaValue luaValue = LuaValue.NIL;
        return call(luaValue, luaValue);
    }

    @Override
    public abstract LuaValue call(LuaValue luaValue, LuaValue luaValue2);

    @Override
    public Varargs invoke(Varargs varargs) {
        return call(varargs.arg1(), varargs.arg(2));
    }

    @Override
    public final LuaValue call(LuaValue luaValue) {
        return call(luaValue, LuaValue.NIL);
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return call(luaValue, luaValue2);
    }
}

package org.luaj.vm2;

import org.luaj.vm2.LuaTable;

public interface Metatable {
    LuaValue arrayget(LuaValue[] luaValueArr, int i10);

    LuaTable.Slot entry(LuaValue luaValue, LuaValue luaValue2);

    LuaValue toLuaValue();

    boolean useWeakKeys();

    boolean useWeakValues();

    LuaValue wrap(LuaValue luaValue);
}

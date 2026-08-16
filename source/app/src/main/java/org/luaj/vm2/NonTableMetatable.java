package org.luaj.vm2;

import org.luaj.vm2.LuaTable;

public class NonTableMetatable implements Metatable {
    private final LuaValue value;

    public NonTableMetatable(LuaValue luaValue) {
        this.value = luaValue;
    }

    @Override
    public LuaValue arrayget(LuaValue[] luaValueArr, int i10) {
        return luaValueArr[i10];
    }

    @Override
    public LuaTable.Slot entry(LuaValue luaValue, LuaValue luaValue2) {
        return LuaTable.defaultEntry(luaValue, luaValue2);
    }

    @Override
    public LuaValue toLuaValue() {
        return this.value;
    }

    @Override
    public boolean useWeakKeys() {
        return false;
    }

    @Override
    public boolean useWeakValues() {
        return false;
    }

    @Override
    public LuaValue wrap(LuaValue luaValue) {
        return luaValue;
    }
}

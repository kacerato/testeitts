package org.luaj.vm2;

public abstract class LuaNumber extends LuaValue {
    public static LuaValue s_metatable;

    @Override
    public LuaNumber checknumber() {
        return this;
    }

    @Override
    public Buffer concat(Buffer buffer) {
        return buffer.concatTo(this);
    }

    @Override
    public LuaValue concatTo(LuaNumber luaNumber) {
        return strvalue().concatTo(luaNumber.strvalue());
    }

    @Override
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override
    public boolean isnumber() {
        return true;
    }

    @Override
    public boolean isstring() {
        return true;
    }

    @Override
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return this;
    }

    @Override
    public LuaValue tonumber() {
        return this;
    }

    @Override
    public int type() {
        return 3;
    }

    @Override
    public String typename() {
        return "number";
    }

    @Override
    public LuaNumber checknumber(String str) {
        return this;
    }

    @Override
    public LuaValue concat(LuaValue luaValue) {
        return luaValue.concatTo(this);
    }

    @Override
    public LuaValue concatTo(LuaString luaString) {
        return strvalue().concatTo(luaString);
    }
}

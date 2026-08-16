package org.luaj.vm2;

public class LuaNil extends LuaValue {
    static final LuaNil _NIL = new LuaNil();
    public static LuaValue s_metatable;

    @Override
    public LuaValue checknotnil() {
        return argerror("value");
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof LuaNil;
    }

    @Override
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override
    public boolean isnil() {
        return true;
    }

    @Override
    public boolean isvalidkey() {
        return false;
    }

    @Override
    public LuaValue not() {
        return LuaValue.TRUE;
    }

    @Override
    public boolean optboolean(boolean z10) {
        return z10;
    }

    @Override
    public LuaClosure optclosure(LuaClosure luaClosure) {
        return luaClosure;
    }

    @Override
    public double optdouble(double d10) {
        return d10;
    }

    @Override
    public LuaFunction optfunction(LuaFunction luaFunction) {
        return luaFunction;
    }

    @Override
    public int optint(int i10) {
        return i10;
    }

    @Override
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return luaInteger;
    }

    @Override
    public String optjstring(String str) {
        return str;
    }

    @Override
    public long optlong(long j10) {
        return j10;
    }

    @Override
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return luaNumber;
    }

    @Override
    public LuaString optstring(LuaString luaString) {
        return luaString;
    }

    @Override
    public LuaTable opttable(LuaTable luaTable) {
        return luaTable;
    }

    @Override
    public LuaThread optthread(LuaThread luaThread) {
        return luaThread;
    }

    @Override
    public Object optuserdata(Class cls, Object obj) {
        return obj;
    }

    @Override
    public LuaValue optvalue(LuaValue luaValue) {
        return luaValue;
    }

    @Override
    public String toString() {
        return "nil";
    }

    @Override
    public boolean toboolean() {
        return false;
    }

    @Override
    public String tojstring() {
        return "nil";
    }

    @Override
    public int type() {
        return 0;
    }

    @Override
    public String typename() {
        return "nil";
    }

    @Override
    public Object optuserdata(Object obj) {
        return obj;
    }
}

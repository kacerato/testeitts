package org.luaj.vm2.lib.jse;

import java.lang.reflect.Array;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaUserdata;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.lib.OneArgFunction;

class JavaArray extends LuaUserdata {
    static final LuaValue LENGTH = LuaValue.valueOf("length");
    static final LuaTable array_metatable;

    public static final class LenFunction extends OneArgFunction {
        private LenFunction() {
        }

        @Override
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(Array.getLength(((LuaUserdata) luaValue).m_instance));
        }
    }

    static {
        LuaTable luaTable = new LuaTable();
        array_metatable = luaTable;
        luaTable.rawset(LuaValue.LEN, new LenFunction());
    }

    public JavaArray(Object obj) {
        super(obj);
        setmetatable(array_metatable);
    }

    @Override
    public LuaValue get(LuaValue luaValue) {
        if (luaValue.equals(LENGTH)) {
            return LuaValue.valueOf(Array.getLength(this.m_instance));
        }
        if (!luaValue.isint()) {
            return super.get(luaValue);
        }
        int i10 = luaValue.toint() - 1;
        return (i10 < 0 || i10 >= Array.getLength(this.m_instance)) ? LuaValue.NIL : CoerceJavaToLua.coerce(Array.get(this.m_instance, luaValue.toint() - 1));
    }

    @Override
    public void set(LuaValue luaValue, LuaValue luaValue2) {
        if (!luaValue.isint()) {
            super.set(luaValue, luaValue2);
            return;
        }
        int i10 = luaValue.toint() - 1;
        if (i10 >= 0 && i10 < Array.getLength(this.m_instance)) {
            Object obj = this.m_instance;
            Array.set(obj, i10, CoerceLuaToJava.coerce(luaValue2, obj.getClass().getComponentType()));
        } else if (this.m_metatable == null || !LuaValue.settable(this, luaValue, luaValue2)) {
            LuaValue.error("array index out of bounds");
        }
    }
}

package org.luaj.vm2;

import android.accounts.AccountManager;

public class LuaUserdata extends LuaValue {
    public Object m_instance;
    public LuaValue m_metatable;

    public LuaUserdata(Object obj) {
        this.m_instance = obj;
    }

    @Override
    public Object checkuserdata() {
        return this.m_instance;
    }

    @Override
    public LuaValue eq(LuaValue luaValue) {
        return eq_b(luaValue) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean eq_b(LuaValue luaValue) {
        if (luaValue.raweq(this)) {
            return true;
        }
        if (this.m_metatable == null || !luaValue.isuserdata()) {
            return false;
        }
        LuaValue luaValue2 = luaValue.getmetatable();
        return luaValue2 != null && LuaValue.eqmtcall(this, this.m_metatable, luaValue, luaValue2);
    }

    public boolean eqmt(LuaValue luaValue) {
        if (this.m_metatable == null || !luaValue.isuserdata()) {
            return false;
        }
        return LuaValue.eqmtcall(this, this.m_metatable, luaValue, luaValue.getmetatable());
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LuaUserdata) {
            return this.m_instance.equals(((LuaUserdata) obj).m_instance);
        }
        return false;
    }

    @Override
    public LuaValue get(LuaValue luaValue) {
        return this.m_metatable != null ? LuaValue.gettable(this, luaValue) : LuaValue.NIL;
    }

    @Override
    public LuaValue getmetatable() {
        return this.m_metatable;
    }

    public int hashCode() {
        return this.m_instance.hashCode();
    }

    @Override
    public boolean isuserdata() {
        return true;
    }

    @Override
    public Object optuserdata(Class cls, Object obj) {
        if (!cls.isAssignableFrom(this.m_instance.getClass())) {
            typerror(cls.getName());
        }
        return this.m_instance;
    }

    @Override
    public boolean raweq(LuaUserdata luaUserdata) {
        return this == luaUserdata || (this.m_metatable == luaUserdata.m_metatable && this.m_instance.equals(luaUserdata.m_instance));
    }

    @Override
    public void set(LuaValue luaValue, LuaValue luaValue2) {
        if (this.m_metatable == null || !LuaValue.settable(this, luaValue, luaValue2)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("cannot set ");
            stringBuffer.append((Object) luaValue);
            stringBuffer.append(" for userdata");
            LuaValue.error(stringBuffer.toString());
        }
    }

    @Override
    public LuaValue setmetatable(LuaValue luaValue) {
        this.m_metatable = luaValue;
        return this;
    }

    @Override
    public String tojstring() {
        return String.valueOf(this.m_instance);
    }

    @Override
    public Object touserdata() {
        return this.m_instance;
    }

    @Override
    public int type() {
        return 7;
    }

    @Override
    public String typename() {
        return AccountManager.KEY_USERDATA;
    }

    public Object userdata() {
        return this.m_instance;
    }

    public LuaUserdata(Object obj, LuaValue luaValue) {
        this.m_instance = obj;
        this.m_metatable = luaValue;
    }

    @Override
    public Object checkuserdata(Class cls) {
        return cls.isAssignableFrom(this.m_instance.getClass()) ? this.m_instance : typerror(cls.getName());
    }

    @Override
    public boolean isuserdata(Class cls) {
        return cls.isAssignableFrom(this.m_instance.getClass());
    }

    @Override
    public Object optuserdata(Object obj) {
        return this.m_instance;
    }

    @Override
    public boolean raweq(LuaValue luaValue) {
        return luaValue.raweq(this);
    }

    @Override
    public Object touserdata(Class cls) {
        if (cls.isAssignableFrom(this.m_instance.getClass())) {
            return this.m_instance;
        }
        return null;
    }
}

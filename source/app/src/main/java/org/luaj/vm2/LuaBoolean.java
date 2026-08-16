package org.luaj.vm2;

import androidx.constraintlayout.core.motion.utils.TypedValues;

public final class LuaBoolean extends LuaValue {
    public static LuaValue s_metatable;

    public final boolean f102759v;
    static final LuaBoolean _TRUE = new LuaBoolean(true);
    static final LuaBoolean _FALSE = new LuaBoolean(false);

    public LuaBoolean(boolean z10) {
        this.f102759v = z10;
    }

    public boolean booleanValue() {
        return this.f102759v;
    }

    @Override
    public boolean checkboolean() {
        return this.f102759v;
    }

    @Override
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override
    public boolean isboolean() {
        return true;
    }

    @Override
    public LuaValue not() {
        return this.f102759v ? LuaValue.FALSE : LuaValue.TRUE;
    }

    @Override
    public boolean optboolean(boolean z10) {
        return this.f102759v;
    }

    @Override
    public boolean toboolean() {
        return this.f102759v;
    }

    @Override
    public String tojstring() {
        return this.f102759v ? "true" : "false";
    }

    @Override
    public int type() {
        return 1;
    }

    @Override
    public String typename() {
        return TypedValues.Custom.S_BOOLEAN;
    }
}

package org.luaj.vm2;

public abstract class LuaFunction extends LuaValue {
    public static LuaValue s_metatable;

    @Override
    public LuaFunction checkfunction() {
        return this;
    }

    public String classnamestub() {
        String name = getClass().getName();
        return name.substring(Math.max(name.lastIndexOf(46), name.lastIndexOf(36)) + 1);
    }

    @Override
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override
    public boolean isfunction() {
        return true;
    }

    public String name() {
        return classnamestub();
    }

    @Override
    public LuaFunction optfunction(LuaFunction luaFunction) {
        return this;
    }

    @Override
    public LuaString strvalue() {
        return LuaValue.valueOf(tojstring());
    }

    @Override
    public String tojstring() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("function: ");
        stringBuffer.append(classnamestub());
        return stringBuffer.toString();
    }

    @Override
    public int type() {
        return 6;
    }

    @Override
    public String typename() {
        return "function";
    }
}

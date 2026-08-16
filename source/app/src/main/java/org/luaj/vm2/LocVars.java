package org.luaj.vm2;

public class LocVars {
    public int endpc;
    public int startpc;
    public LuaString varname;

    public LocVars(LuaString luaString, int i10, int i11) {
        this.varname = luaString;
        this.startpc = i10;
        this.endpc = i11;
    }

    public String tojstring() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append((Object) this.varname);
        stringBuffer.append(" ");
        stringBuffer.append(this.startpc);
        stringBuffer.append("-");
        stringBuffer.append(this.endpc);
        return stringBuffer.toString();
    }
}

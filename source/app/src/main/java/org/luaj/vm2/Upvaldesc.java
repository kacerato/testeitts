package org.luaj.vm2;

public class Upvaldesc {
    public final short idx;
    public final boolean instack;
    public LuaString name;

    public Upvaldesc(LuaString luaString, boolean z10, int i10) {
        this.name = luaString;
        this.instack = z10;
        this.idx = (short) i10;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append((int) this.idx);
        stringBuffer.append(this.instack ? " instack " : " closed ");
        stringBuffer.append(String.valueOf(this.name));
        return stringBuffer.toString();
    }
}

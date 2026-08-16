package org.luaj.vm2;

public final class UpValue {
    LuaValue[] array;
    int index;

    public UpValue(LuaValue[] luaValueArr, int i10) {
        this.array = luaValueArr;
        this.index = i10;
    }

    public final void close() {
        LuaValue[] luaValueArr = this.array;
        int i10 = this.index;
        this.array = new LuaValue[]{luaValueArr[i10]};
        luaValueArr[i10] = null;
        this.index = 0;
    }

    public final LuaValue getValue() {
        return this.array[this.index];
    }

    public final void setValue(LuaValue luaValue) {
        this.array[this.index] = luaValue;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.index);
        stringBuffer.append("/");
        stringBuffer.append(this.array.length);
        stringBuffer.append(" ");
        stringBuffer.append((Object) this.array[this.index]);
        return stringBuffer.toString();
    }

    public String tojstring() {
        return this.array[this.index].tojstring();
    }
}

package org.luaj.vm2;

public final class Buffer {
    private static final int DEFAULT_CAPACITY = 64;
    private static final byte[] NOBYTES = new byte[0];
    private byte[] bytes;
    private int length;
    private int offset;
    private LuaValue value;

    public Buffer() {
        this(64);
    }

    private final void realloc(int i10, int i11) {
        byte[] bArr = this.bytes;
        if (i10 != bArr.length) {
            byte[] bArr2 = new byte[i10];
            System.arraycopy(bArr, this.offset, bArr2, i11, this.length);
            this.bytes = bArr2;
            this.offset = i11;
        }
    }

    public final Buffer append(byte b10) {
        makeroom(0, 1);
        byte[] bArr = this.bytes;
        int i10 = this.offset;
        int i11 = this.length;
        this.length = i11 + 1;
        bArr[i10 + i11] = b10;
        return this;
    }

    public Buffer concatTo(LuaNumber luaNumber) {
        LuaValue luaValue = this.value;
        return (luaValue == null || luaValue.isstring()) ? prepend(luaNumber.strvalue()) : setvalue(luaNumber.concat(this.value));
    }

    public final void makeroom(int i10, int i11) {
        LuaValue luaValue = this.value;
        if (luaValue != null) {
            LuaString strvalue = luaValue.strvalue();
            this.value = null;
            int i12 = strvalue.m_length;
            this.length = i12;
            this.offset = i10;
            byte[] bArr = new byte[i10 + i12 + i11];
            this.bytes = bArr;
            System.arraycopy(strvalue.m_bytes, strvalue.m_offset, bArr, i10, i12);
            return;
        }
        int i13 = this.offset;
        int i14 = this.length;
        if (i13 + i14 + i11 > this.bytes.length || i13 < i10) {
            int i15 = i10 + i14 + i11;
            if (i15 < 32) {
                i15 = 32;
            } else if (i15 < i14 * 2) {
                i15 = i14 * 2;
            }
            realloc(i15, i10 == 0 ? 0 : (i15 - i14) - i11);
        }
    }

    public Buffer prepend(LuaString luaString) {
        int i10 = luaString.m_length;
        makeroom(i10, 0);
        System.arraycopy(luaString.m_bytes, luaString.m_offset, this.bytes, this.offset - i10, i10);
        this.offset -= i10;
        this.length += i10;
        this.value = null;
        return this;
    }

    public Buffer setvalue(LuaValue luaValue) {
        this.bytes = NOBYTES;
        this.length = 0;
        this.offset = 0;
        this.value = luaValue;
        return this;
    }

    public String toString() {
        return tojstring();
    }

    public String tojstring() {
        return value().tojstring();
    }

    public final LuaString tostring() {
        realloc(this.length, 0);
        return LuaString.valueOf(this.bytes, this.offset, this.length);
    }

    public LuaValue value() {
        LuaValue luaValue = this.value;
        return luaValue != null ? luaValue : tostring();
    }

    public Buffer(int i10) {
        this.bytes = new byte[i10];
        this.length = 0;
        this.offset = 0;
        this.value = null;
    }

    public final Buffer append(String str) {
        char[] charArray = str.toCharArray();
        int lengthAsUtf8 = LuaString.lengthAsUtf8(charArray);
        makeroom(0, lengthAsUtf8);
        LuaString.encodeToUtf8(charArray, charArray.length, this.bytes, this.offset + this.length);
        this.length += lengthAsUtf8;
        return this;
    }

    public Buffer concatTo(LuaString luaString) {
        LuaValue luaValue = this.value;
        return (luaValue == null || luaValue.isstring()) ? prepend(luaString) : setvalue(luaString.concat(this.value));
    }

    public Buffer(LuaValue luaValue) {
        this.bytes = NOBYTES;
        this.offset = 0;
        this.length = 0;
        this.value = luaValue;
    }

    public final Buffer append(LuaString luaString) {
        int i10 = luaString.m_length;
        makeroom(0, i10);
        luaString.copyInto(0, this.bytes, this.offset + this.length, i10);
        this.length += i10;
        return this;
    }

    public Buffer concatTo(LuaValue luaValue) {
        return setvalue(luaValue.concat(value()));
    }

    public final Buffer append(LuaValue luaValue) {
        append(luaValue.strvalue());
        return this;
    }
}

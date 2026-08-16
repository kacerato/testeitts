package org.luaj.vm2.compiler;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.luaj.vm2.LoadState;
import org.luaj.vm2.LocVars;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Prototype;

public class DumpState {
    public static boolean ALLOW_INTEGER_CASTING = false;
    public static final int NUMBER_FORMAT_DEFAULT = 0;
    public static final int NUMBER_FORMAT_FLOATS_OR_DOUBLES = 0;
    public static final int NUMBER_FORMAT_INTS_ONLY = 1;
    public static final int NUMBER_FORMAT_NUM_PATCH_INT32 = 4;
    private static final int SIZEOF_INSTRUCTION = 4;
    private static final int SIZEOF_INT = 4;
    private static final int SIZEOF_SIZET = 4;
    private boolean IS_LITTLE_ENDIAN = false;
    private int NUMBER_FORMAT = 0;
    private int SIZEOF_LUA_NUMBER = 8;
    int status = 0;
    boolean strip;
    DataOutputStream writer;

    public DumpState(OutputStream outputStream, boolean z10) {
        this.writer = new DataOutputStream(outputStream);
        this.strip = z10;
    }

    public static int dump(Prototype prototype, OutputStream outputStream, boolean z10) throws IOException {
        DumpState dumpState = new DumpState(outputStream, z10);
        dumpState.dumpHeader();
        dumpState.dumpFunction(prototype);
        return dumpState.status;
    }

    public void dumpBlock(byte[] bArr, int i10) throws IOException {
        this.writer.write(bArr, 0, i10);
    }

    public void dumpChar(int i10) throws IOException {
        this.writer.write(i10);
    }

    public void dumpCode(Prototype prototype) throws IOException {
        int[] iArr = prototype.code;
        dumpInt(iArr.length);
        for (int i10 : iArr) {
            dumpInt(i10);
        }
    }

    public void dumpConstants(Prototype prototype) throws IOException {
        LuaValue[] luaValueArr = prototype.f102764k;
        dumpInt(luaValueArr.length);
        for (LuaValue luaValue : luaValueArr) {
            int type = luaValue.type();
            if (type == 0) {
                this.writer.write(0);
            } else if (type == 1) {
                this.writer.write(1);
                dumpChar(luaValue.toboolean() ? 1 : 0);
            } else if (type == 3) {
                int i10 = this.NUMBER_FORMAT;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 4) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("number format not supported: ");
                            stringBuffer.append(this.NUMBER_FORMAT);
                            throw new IllegalArgumentException(stringBuffer.toString());
                        }
                        if (luaValue.isint()) {
                            this.writer.write(-2);
                        }
                    } else {
                        if (!ALLOW_INTEGER_CASTING && !luaValue.isint()) {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append("not an integer: ");
                            stringBuffer2.append((Object) luaValue);
                            throw new IllegalArgumentException(stringBuffer2.toString());
                        }
                        this.writer.write(3);
                    }
                    dumpInt(luaValue.toint());
                }
                this.writer.write(3);
                dumpDouble(luaValue.todouble());
            } else {
                if (type != 4) {
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append("bad type for ");
                    stringBuffer3.append((Object) luaValue);
                    throw new IllegalArgumentException(stringBuffer3.toString());
                }
                this.writer.write(4);
                dumpString((LuaString) luaValue);
            }
        }
        int length = prototype.f102765p.length;
        dumpInt(length);
        for (int i11 = 0; i11 < length; i11++) {
            dumpFunction(prototype.f102765p[i11]);
        }
    }

    public void dumpDebug(Prototype prototype) throws IOException {
        if (this.strip) {
            dumpInt(0);
        } else {
            dumpString(prototype.source);
        }
        int length = this.strip ? 0 : prototype.lineinfo.length;
        dumpInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            dumpInt(prototype.lineinfo[i10]);
        }
        int length2 = this.strip ? 0 : prototype.locvars.length;
        dumpInt(length2);
        for (int i11 = 0; i11 < length2; i11++) {
            LocVars locVars = prototype.locvars[i11];
            dumpString(locVars.varname);
            dumpInt(locVars.startpc);
            dumpInt(locVars.endpc);
        }
        int length3 = this.strip ? 0 : prototype.upvalues.length;
        dumpInt(length3);
        for (int i12 = 0; i12 < length3; i12++) {
            dumpString(prototype.upvalues[i12].name);
        }
    }

    public void dumpDouble(double d10) throws IOException {
        long doubleToLongBits = Double.doubleToLongBits(d10);
        if (!this.IS_LITTLE_ENDIAN) {
            this.writer.writeLong(doubleToLongBits);
        } else {
            dumpInt((int) doubleToLongBits);
            dumpInt((int) (doubleToLongBits >> 32));
        }
    }

    public void dumpFunction(Prototype prototype) throws IOException {
        dumpInt(prototype.linedefined);
        dumpInt(prototype.lastlinedefined);
        dumpChar(prototype.numparams);
        dumpChar(prototype.is_vararg);
        dumpChar(prototype.maxstacksize);
        dumpCode(prototype);
        dumpConstants(prototype);
        dumpUpvalues(prototype);
        dumpDebug(prototype);
    }

    public void dumpHeader() throws IOException {
        this.writer.write(LoadState.LUA_SIGNATURE);
        this.writer.write(82);
        this.writer.write(0);
        this.writer.write(this.IS_LITTLE_ENDIAN ? 1 : 0);
        this.writer.write(4);
        this.writer.write(4);
        this.writer.write(4);
        this.writer.write(this.SIZEOF_LUA_NUMBER);
        this.writer.write(this.NUMBER_FORMAT);
        this.writer.write(LoadState.LUAC_TAIL);
    }

    public void dumpInt(int i10) throws IOException {
        if (!this.IS_LITTLE_ENDIAN) {
            this.writer.writeInt(i10);
            return;
        }
        this.writer.writeByte(i10 & 255);
        this.writer.writeByte((i10 >> 8) & 255);
        this.writer.writeByte((i10 >> 16) & 255);
        this.writer.writeByte((i10 >> 24) & 255);
    }

    public void dumpString(LuaString luaString) throws IOException {
        int i10 = luaString.len().toint();
        dumpInt(i10 + 1);
        luaString.write(this.writer, 0, i10);
        this.writer.write(0);
    }

    public void dumpUpvalues(Prototype prototype) throws IOException {
        int length = prototype.upvalues.length;
        dumpInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            this.writer.writeByte(prototype.upvalues[i10].instack ? 1 : 0);
            this.writer.writeByte(prototype.upvalues[i10].idx);
        }
    }

    public static int dump(Prototype prototype, OutputStream outputStream, boolean z10, int i10, boolean z11) throws IOException {
        if (i10 != 0 && i10 != 1 && i10 != 4) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("number format not supported: ");
            stringBuffer.append(i10);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        DumpState dumpState = new DumpState(outputStream, z10);
        dumpState.IS_LITTLE_ENDIAN = z11;
        dumpState.NUMBER_FORMAT = i10;
        dumpState.SIZEOF_LUA_NUMBER = i10 != 1 ? 8 : 4;
        dumpState.dumpHeader();
        dumpState.dumpFunction(prototype);
        return dumpState.status;
    }
}

package org.luaj.vm2;

import E2.d;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.luaj.vm2.Globals;

public class LoadState {
    public static final int LUAC_FORMAT = 0;
    public static final int LUAC_HEADERSIZE = 12;
    public static final int LUAC_VERSION = 82;
    public static final int LUA_TBOOLEAN = 1;
    public static final int LUA_TFUNCTION = 6;
    public static final int LUA_TINT = -2;
    public static final int LUA_TLIGHTUSERDATA = 2;
    public static final int LUA_TNIL = 0;
    public static final int LUA_TNONE = -1;
    public static final int LUA_TNUMBER = 3;
    public static final int LUA_TSTRING = 4;
    public static final int LUA_TTABLE = 5;
    public static final int LUA_TTHREAD = 8;
    public static final int LUA_TUSERDATA = 7;
    public static final int LUA_TVALUE = 9;
    public static final int NUMBER_FORMAT_FLOATS_OR_DOUBLES = 0;
    public static final int NUMBER_FORMAT_INTS_ONLY = 1;
    public static final int NUMBER_FORMAT_NUM_PATCH_INT32 = 4;
    public static final String SOURCE_BINARY_STRING = "binary string";
    private byte[] buf = new byte[512];
    public final DataInputStream is;
    private int luacFormat;
    private boolean luacLittleEndian;
    private int luacNumberFormat;
    private int luacSizeofInstruction;
    private int luacSizeofInt;
    private int luacSizeofLuaNumber;
    private int luacSizeofSizeT;
    private int luacVersion;
    String name;
    public static final Globals.Undumper instance = new GlobalsUndumper();
    public static String encoding = null;
    public static final byte[] LUA_SIGNATURE = {27, Opcodes.OPC_astore_1, Opcodes.OPC_lneg, Opcodes.OPC_ladd};
    public static final byte[] LUAC_TAIL = {25, Opcodes.OPC_i2s, 13, 10, 26, 10};
    private static final LuaValue[] NOVALUES = new LuaValue[0];
    private static final Prototype[] NOPROTOS = new Prototype[0];
    private static final LocVars[] NOLOCVARS = new LocVars[0];
    private static final LuaString[] NOSTRVALUES = new LuaString[0];
    private static final Upvaldesc[] NOUPVALDESCS = new Upvaldesc[0];
    private static final int[] NOINTS = new int[0];

    public static final class GlobalsUndumper implements Globals.Undumper {
        private GlobalsUndumper() {
        }

        @Override
        public Prototype undump(InputStream inputStream, String str) throws IOException {
            return LoadState.undump(inputStream, str);
        }
    }

    private LoadState(InputStream inputStream, String str) {
        this.name = str;
        this.is = new DataInputStream(inputStream);
    }

    public static String getSourceName(String str) {
        return (str.startsWith("@") || str.startsWith("=")) ? str.substring(1) : str.startsWith("\u001b") ? SOURCE_BINARY_STRING : str;
    }

    public static void install(Globals globals) {
        globals.undumper = instance;
    }

    public static LuaValue longBitsToLuaNumber(long j10) {
        if ((Long.MAX_VALUE & j10) == 0) {
            return LuaValue.ZERO;
        }
        int i10 = ((int) ((j10 >> 52) & 2047)) - 1023;
        if (i10 >= 0 && i10 < 31) {
            long j11 = d.f5375a & j10;
            int i11 = 52 - i10;
            if ((j11 & ((1 << i11) - 1)) == 0) {
                int i12 = (1 << i10) | ((int) (j11 >> i11));
                if ((j10 >> 63) != 0) {
                    i12 = -i12;
                }
                return LuaInteger.valueOf(i12);
            }
        }
        return LuaValue.valueOf(Double.longBitsToDouble(j10));
    }

    public static Prototype undump(InputStream inputStream, String str) throws IOException {
        int read = inputStream.read();
        byte[] bArr = LUA_SIGNATURE;
        if (read != bArr[0] || inputStream.read() != bArr[1] || inputStream.read() != bArr[2] || inputStream.read() != bArr[3]) {
            return null;
        }
        String sourceName = getSourceName(str);
        LoadState loadState = new LoadState(inputStream, sourceName);
        loadState.loadHeader();
        int i10 = loadState.luacNumberFormat;
        if (i10 == 0 || i10 == 1 || i10 == 4) {
            return loadState.loadFunction(LuaString.valueOf(sourceName));
        }
        throw new LuaError("unsupported int size");
    }

    public void loadConstants(Prototype prototype) throws IOException {
        int loadInt = loadInt();
        LuaValue[] luaValueArr = loadInt > 0 ? new LuaValue[loadInt] : NOVALUES;
        for (int i10 = 0; i10 < loadInt; i10++) {
            byte readByte = this.is.readByte();
            if (readByte == -2) {
                luaValueArr[i10] = LuaInteger.valueOf(loadInt());
            } else if (readByte == 0) {
                luaValueArr[i10] = LuaValue.NIL;
            } else if (readByte == 1) {
                luaValueArr[i10] = this.is.readUnsignedByte() != 0 ? LuaValue.TRUE : LuaValue.FALSE;
            } else if (readByte == 3) {
                luaValueArr[i10] = loadNumber();
            } else {
                if (readByte != 4) {
                    throw new IllegalStateException("bad constant");
                }
                luaValueArr[i10] = loadString();
            }
        }
        prototype.f102764k = luaValueArr;
        int loadInt2 = loadInt();
        Prototype[] prototypeArr = loadInt2 > 0 ? new Prototype[loadInt2] : NOPROTOS;
        for (int i11 = 0; i11 < loadInt2; i11++) {
            prototypeArr[i11] = loadFunction(prototype.source);
        }
        prototype.f102765p = prototypeArr;
    }

    public void loadDebug(Prototype prototype) throws IOException {
        prototype.source = loadString();
        prototype.lineinfo = loadIntArray();
        int loadInt = loadInt();
        prototype.locvars = loadInt > 0 ? new LocVars[loadInt] : NOLOCVARS;
        for (int i10 = 0; i10 < loadInt; i10++) {
            prototype.locvars[i10] = new LocVars(loadString(), loadInt(), loadInt());
        }
        int loadInt2 = loadInt();
        for (int i11 = 0; i11 < loadInt2; i11++) {
            prototype.upvalues[i11].name = loadString();
        }
    }

    public Prototype loadFunction(LuaString luaString) throws IOException {
        Prototype prototype = new Prototype();
        prototype.linedefined = loadInt();
        prototype.lastlinedefined = loadInt();
        prototype.numparams = this.is.readUnsignedByte();
        prototype.is_vararg = this.is.readUnsignedByte();
        prototype.maxstacksize = this.is.readUnsignedByte();
        prototype.code = loadIntArray();
        loadConstants(prototype);
        loadUpvalues(prototype);
        loadDebug(prototype);
        return prototype;
    }

    public void loadHeader() throws IOException {
        this.luacVersion = this.is.readByte();
        this.luacFormat = this.is.readByte();
        int i10 = 0;
        this.luacLittleEndian = this.is.readByte() != 0;
        this.luacSizeofInt = this.is.readByte();
        this.luacSizeofSizeT = this.is.readByte();
        this.luacSizeofInstruction = this.is.readByte();
        this.luacSizeofLuaNumber = this.is.readByte();
        this.luacNumberFormat = this.is.readByte();
        while (true) {
            byte[] bArr = LUAC_TAIL;
            if (i10 >= bArr.length) {
                return;
            }
            if (this.is.readByte() != bArr[i10]) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unexpeted byte in luac tail of header, index=");
                stringBuffer.append(i10);
                throw new LuaError(stringBuffer.toString());
            }
            i10++;
        }
    }

    public int loadInt() throws IOException {
        int i10;
        byte b10;
        this.is.readFully(this.buf, 0, 4);
        if (this.luacLittleEndian) {
            byte[] bArr = this.buf;
            i10 = ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16) | (bArr[3] << 24);
            b10 = bArr[0];
        } else {
            byte[] bArr2 = this.buf;
            i10 = ((bArr2[1] & 255) << 16) | (bArr2[0] << 24) | ((bArr2[2] & 255) << 8);
            b10 = bArr2[3];
        }
        return (b10 & 255) | i10;
    }

    public long loadInt64() throws IOException {
        int loadInt;
        int loadInt2;
        if (this.luacLittleEndian) {
            loadInt2 = loadInt();
            loadInt = loadInt();
        } else {
            loadInt = loadInt();
            loadInt2 = loadInt();
        }
        return (loadInt << 32) | (loadInt2 & 4294967295L);
    }

    public int[] loadIntArray() throws IOException {
        int i10;
        byte b10;
        int loadInt = loadInt();
        if (loadInt == 0) {
            return NOINTS;
        }
        int i11 = loadInt << 2;
        if (this.buf.length < i11) {
            this.buf = new byte[i11];
        }
        int i12 = 0;
        this.is.readFully(this.buf, 0, i11);
        int[] iArr = new int[loadInt];
        int i13 = 0;
        while (i12 < loadInt) {
            if (this.luacLittleEndian) {
                byte[] bArr = this.buf;
                i10 = (bArr[i13 + 3] << 24) | ((bArr[i13 + 2] & 255) << 16) | ((bArr[i13 + 1] & 255) << 8);
                b10 = bArr[i13];
            } else {
                byte[] bArr2 = this.buf;
                i10 = (bArr2[i13] << 24) | ((bArr2[i13 + 1] & 255) << 16) | ((bArr2[i13 + 2] & 255) << 8);
                b10 = bArr2[i13 + 3];
            }
            iArr[i12] = (b10 & 255) | i10;
            i12++;
            i13 += 4;
        }
        return iArr;
    }

    public LuaValue loadNumber() throws IOException {
        return this.luacNumberFormat == 1 ? LuaInteger.valueOf(loadInt()) : longBitsToLuaNumber(loadInt64());
    }

    public LuaString loadString() throws IOException {
        int loadInt64 = this.luacSizeofSizeT == 8 ? (int) loadInt64() : loadInt();
        if (loadInt64 == 0) {
            return null;
        }
        byte[] bArr = new byte[loadInt64];
        this.is.readFully(bArr, 0, loadInt64);
        return LuaString.valueUsing(bArr, 0, loadInt64 - 1);
    }

    public void loadUpvalues(Prototype prototype) throws IOException {
        int loadInt = loadInt();
        prototype.upvalues = loadInt > 0 ? new Upvaldesc[loadInt] : NOUPVALDESCS;
        for (int i10 = 0; i10 < loadInt; i10++) {
            prototype.upvalues[i10] = new Upvaldesc(null, this.is.readByte() != 0, this.is.readByte() & 255);
        }
    }
}

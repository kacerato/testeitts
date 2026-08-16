package org.luaj.vm2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.luaj.vm2.lib.MathLib;

public class LuaString extends LuaValue {
    static final int RECENT_STRINGS_CACHE_SIZE = 128;
    static final int RECENT_STRINGS_MAX_LENGTH = 32;
    public static LuaValue s_metatable;
    public final byte[] m_bytes;
    private final int m_hashcode;
    public final int m_length;
    public final int m_offset;

    public static final class RecentShortStrings {
        private static final LuaString[] recent_short_strings = new LuaString[128];

        private RecentShortStrings() {
        }
    }

    private LuaString(byte[] bArr, int i10, int i11) {
        this.m_bytes = bArr;
        this.m_offset = i10;
        this.m_length = i11;
        this.m_hashcode = hashCode(bArr, i10, i11);
    }

    private boolean byteseq(byte[] bArr, int i10, int i11) {
        return this.m_length == i11 && equals(this.m_bytes, this.m_offset, bArr, i10, i11);
    }

    private double checkarith() {
        double scannumber = scannumber();
        if (Double.isNaN(scannumber)) {
            aritherror();
        }
        return scannumber;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String decodeAsUtf8(byte[] bArr, int i10, int i11) {
        int i12;
        int i13 = i11 + i10;
        int i14 = 0;
        int i15 = i10;
        int i16 = 0;
        while (i15 < i13) {
            int i17 = i15 + 1;
            int i18 = bArr[i15] & 224;
            if (i18 != 192) {
                if (i18 == 224) {
                    i17 = i15 + 2;
                }
                i15 = i17;
                i16++;
            }
            i17++;
            i15 = i17;
            i16++;
        }
        char[] cArr = new char[i16];
        while (i10 < i13) {
            int i19 = i14 + 1;
            int i20 = i10 + 1;
            int i21 = bArr[i10];
            if (i21 >= 0 || i20 >= i13) {
                i10 = i20;
            } else if (i21 < -32 || (i12 = i10 + 2) >= i13) {
                i10 += 2;
                i21 = ((i21 & 63) << 6) | (bArr[i20] & 63);
            } else {
                i10 += 3;
                i21 = (bArr[i12] & 63) | ((bArr[i20] & 63) << 6) | ((i21 & 15) << 12);
            }
            cArr[i14] = (char) i21;
            i14 = i19;
        }
        return new String(cArr);
    }

    public static int encodeToUtf8(char[] cArr, int i10, byte[] bArr, int i11) {
        int i12 = i11;
        for (int i13 = 0; i13 < i10; i13++) {
            char c10 = cArr[i13];
            if (c10 < '\u0080') {
                bArr[i12] = (byte) c10;
                i12++;
            } else if (c10 < '\u0800') {
                int i14 = i12 + 1;
                bArr[i12] = (byte) (((c10 >> 6) & 31) | 192);
                i12 += 2;
                bArr[i14] = (byte) ((c10 & '?') | 128);
            } else {
                bArr[i12] = (byte) (((c10 >> '\f') & 15) | 224);
                int i15 = i12 + 2;
                bArr[i12 + 1] = (byte) (((c10 >> 6) & 63) | 128);
                i12 += 3;
                bArr[i15] = (byte) ((c10 & '?') | 128);
            }
        }
        return i12 - i11;
    }

    public static int lengthAsUtf8(char[] cArr) {
        int length = cArr.length;
        int i10 = length;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            char c10 = cArr[length];
            if (c10 >= '\u0080') {
                i10 += c10 >= '\u0800' ? 2 : 1;
            }
        }
    }

    private double scandouble(int i10, int i11) {
        int i12 = i10 + 64;
        if (i11 > i12) {
            i11 = i12;
        }
        for (int i13 = i10; i13 < i11; i13++) {
            byte b10 = this.m_bytes[i13];
            if (b10 != 43 && b10 != 69 && b10 != 101 && b10 != 45 && b10 != 46) {
                switch (b10) {
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        break;
                    default:
                        return Double.NaN;
                }
            }
        }
        char[] cArr = new char[i11 - i10];
        for (int i14 = i10; i14 < i11; i14++) {
            cArr[i14 - i10] = (char) this.m_bytes[i14];
        }
        try {
            return Double.parseDouble(new String(cArr));
        } catch (Exception unused) {
            return Double.NaN;
        }
    }

    private double scanlong(int i10, int i11, int i12) {
        boolean z10 = this.m_bytes[i11] == 45;
        if (z10) {
            i11++;
        }
        long j10 = 0;
        while (i11 < i12) {
            byte b10 = this.m_bytes[i11];
            byte b11 = 48;
            if (i10 > 10 && (b10 < 48 || b10 > 57)) {
                b11 = (b10 < 65 || b10 > 90) ? Opcodes.OPC_pop : Opcodes.OPC_lstore;
            }
            int i13 = b10 - b11;
            if (i13 < 0 || i13 >= i10) {
                return Double.NaN;
            }
            j10 = (j10 * i10) + i13;
            if (j10 < 0) {
                return Double.NaN;
            }
            i11++;
        }
        return z10 ? -j10 : j10;
    }

    private static LuaString valueFromCopy(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            bArr2[i12] = bArr[i10 + i12];
        }
        return new LuaString(bArr2, 0, i11);
    }

    public static LuaString valueOf(String str) {
        char[] charArray = str.toCharArray();
        int lengthAsUtf8 = lengthAsUtf8(charArray);
        byte[] bArr = new byte[lengthAsUtf8];
        encodeToUtf8(charArray, charArray.length, bArr, 0);
        return valueUsing(bArr, 0, lengthAsUtf8);
    }

    public static LuaString valueUsing(byte[] bArr) {
        return valueUsing(bArr, 0, bArr.length);
    }

    @Override
    public LuaValue add(double d10) {
        return LuaValue.valueOf(checkarith() + d10);
    }

    public int charAt(int i10) {
        if (i10 < 0 || i10 >= this.m_length) {
            throw new IndexOutOfBoundsException();
        }
        return luaByte(i10);
    }

    @Override
    public double checkdouble() {
        double scannumber = scannumber();
        if (Double.isNaN(scannumber)) {
            argerror("number");
        }
        return scannumber;
    }

    @Override
    public int checkint() {
        return (int) checkdouble();
    }

    @Override
    public LuaInteger checkinteger() {
        return LuaValue.valueOf(checkint());
    }

    @Override
    public String checkjstring() {
        return tojstring();
    }

    @Override
    public long checklong() {
        return (long) checkdouble();
    }

    @Override
    public LuaNumber checknumber() {
        return LuaValue.valueOf(checkdouble());
    }

    @Override
    public LuaString checkstring() {
        return this;
    }

    @Override
    public Buffer concat(Buffer buffer) {
        return buffer.concatTo(this);
    }

    @Override
    public LuaValue concatTo(LuaNumber luaNumber) {
        return concatTo(luaNumber.strvalue());
    }

    public void copyInto(int i10, byte[] bArr, int i11, int i12) {
        System.arraycopy(this.m_bytes, this.m_offset + i10, bArr, i11, i12);
    }

    @Override
    public LuaValue div(double d10) {
        return LuaDouble.ddiv(checkarith(), d10);
    }

    @Override
    public LuaValue divInto(double d10) {
        return LuaDouble.ddiv(d10, checkarith());
    }

    @Override
    public LuaValue eq(LuaValue luaValue) {
        return luaValue.raweq(this) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean eq_b(LuaValue luaValue) {
        return luaValue.raweq(this);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof LuaString) {
            return raweq((LuaString) obj);
        }
        return false;
    }

    @Override
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override
    public LuaValue gt(LuaValue luaValue) {
        return luaValue.strcmp(this) < 0 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gt_b(double d10) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override
    public LuaValue gteq(LuaValue luaValue) {
        return luaValue.strcmp(this) <= 0 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gteq_b(double d10) {
        typerror("attempt to compare string with number");
        return false;
    }

    public int hashCode() {
        return this.m_hashcode;
    }

    public int indexOf(byte b10, int i10) {
        while (i10 < this.m_length) {
            if (this.m_bytes[this.m_offset + i10] == b10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public int indexOfAny(LuaString luaString) {
        int i10 = this.m_offset;
        int i11 = this.m_length + i10;
        int i12 = luaString.m_offset + luaString.m_length;
        while (i10 < i11) {
            for (int i13 = luaString.m_offset; i13 < i12; i13++) {
                if (this.m_bytes[i10] == luaString.m_bytes[i13]) {
                    return i10 - this.m_offset;
                }
            }
            i10++;
        }
        return -1;
    }

    public boolean isValidUtf8() {
        int i10;
        int i11 = this.m_offset;
        int i12 = this.m_length + i11;
        while (i11 < i12) {
            byte[] bArr = this.m_bytes;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 < 0) {
                if ((b10 & 224) == 192 && i13 < i12) {
                    i11 += 2;
                    if ((bArr[i13] & Opcodes.OPC_checkcast) == 128) {
                        continue;
                    } else {
                        i13 = i11;
                    }
                }
                if ((b10 & 240) != 224 || (i10 = i13 + 1) >= i12 || (bArr[i13] & Opcodes.OPC_checkcast) != 128) {
                    return false;
                }
                i13 += 2;
                if ((bArr[i10] & Opcodes.OPC_checkcast) != 128) {
                    return false;
                }
            }
            i11 = i13;
        }
        return true;
    }

    @Override
    public boolean isint() {
        double scannumber = scannumber();
        return !Double.isNaN(scannumber) && ((double) ((int) scannumber)) == scannumber;
    }

    @Override
    public boolean islong() {
        double scannumber = scannumber();
        return !Double.isNaN(scannumber) && ((double) ((long) scannumber)) == scannumber;
    }

    @Override
    public boolean isnumber() {
        return !Double.isNaN(scannumber());
    }

    @Override
    public boolean isstring() {
        return true;
    }

    public int lastIndexOf(LuaString luaString) {
        int length = luaString.length();
        for (int i10 = this.m_length - length; i10 >= 0; i10--) {
            if (equals(this.m_bytes, this.m_offset + i10, luaString.m_bytes, luaString.m_offset, length)) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public LuaValue len() {
        return LuaInteger.valueOf(this.m_length);
    }

    @Override
    public int length() {
        return this.m_length;
    }

    @Override
    public LuaValue lt(LuaValue luaValue) {
        return luaValue.strcmp(this) > 0 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lt_b(double d10) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override
    public LuaValue lteq(LuaValue luaValue) {
        return luaValue.strcmp(this) >= 0 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lteq_b(double d10) {
        typerror("attempt to compare string with number");
        return false;
    }

    public int luaByte(int i10) {
        return this.m_bytes[this.m_offset + i10] & 255;
    }

    @Override
    public LuaValue mod(double d10) {
        return LuaDouble.dmod(checkarith(), d10);
    }

    @Override
    public LuaValue modFrom(double d10) {
        return LuaDouble.dmod(d10, checkarith());
    }

    @Override
    public LuaValue mul(double d10) {
        return LuaValue.valueOf(checkarith() * d10);
    }

    @Override
    public LuaValue neg() {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? super.neg() : LuaValue.valueOf(-scannumber);
    }

    @Override
    public double optdouble(double d10) {
        return checknumber().checkdouble();
    }

    @Override
    public int optint(int i10) {
        return checknumber().checkint();
    }

    @Override
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return checknumber().checkinteger();
    }

    @Override
    public String optjstring(String str) {
        return tojstring();
    }

    @Override
    public long optlong(long j10) {
        return checknumber().checklong();
    }

    @Override
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return checknumber().checknumber();
    }

    @Override
    public LuaString optstring(LuaString luaString) {
        return this;
    }

    @Override
    public LuaValue pow(double d10) {
        return MathLib.dpow(checkarith(), d10);
    }

    @Override
    public LuaValue powWith(double d10) {
        return MathLib.dpow(d10, checkarith());
    }

    public void printToStream(PrintStream printStream) {
        int i10 = this.m_length;
        for (int i11 = 0; i11 < i10; i11++) {
            printStream.print((char) this.m_bytes[this.m_offset + i11]);
        }
    }

    @Override
    public boolean raweq(LuaString luaString) {
        if (this == luaString) {
            return true;
        }
        if (luaString.m_length != this.m_length) {
            return false;
        }
        if (luaString.m_bytes == this.m_bytes && luaString.m_offset == this.m_offset) {
            return true;
        }
        if (luaString.hashCode() != hashCode()) {
            return false;
        }
        for (int i10 = 0; i10 < this.m_length; i10++) {
            if (luaString.m_bytes[luaString.m_offset + i10] != this.m_bytes[this.m_offset + i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int rawlen() {
        return this.m_length;
    }

    public double scannumber() {
        int i10;
        byte b10;
        int i11 = this.m_offset;
        int i12 = this.m_length + i11;
        while (i11 < i12 && this.m_bytes[i11] == 32) {
            i11++;
        }
        while (i11 < i12 && this.m_bytes[i12 - 1] == 32) {
            i12--;
        }
        if (i11 >= i12) {
            return Double.NaN;
        }
        byte[] bArr = this.m_bytes;
        if (bArr[i11] == 48 && (i10 = i11 + 1) < i12 && ((b10 = bArr[i10]) == 120 || b10 == 88)) {
            return scanlong(16, i11 + 2, i12);
        }
        double scanlong = scanlong(10, i11, i12);
        return Double.isNaN(scanlong) ? scandouble(i11, i12) : scanlong;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        return r2 - r9.m_length;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int strcmp(LuaString luaString) {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = this.m_length;
            if (i10 >= i12 || i11 >= luaString.m_length) {
                break;
            }
            byte[] bArr = this.m_bytes;
            int i13 = this.m_offset;
            byte b10 = bArr[i13 + i10];
            byte[] bArr2 = luaString.m_bytes;
            int i14 = luaString.m_offset;
            if (b10 != bArr2[i14 + i11]) {
                return bArr[i13 + i10] - bArr2[i14 + i11];
            }
            i10++;
            i11++;
        }
    }

    @Override
    public LuaString strvalue() {
        return this;
    }

    @Override
    public LuaValue sub(double d10) {
        return LuaValue.valueOf(checkarith() - d10);
    }

    @Override
    public LuaValue subFrom(double d10) {
        return LuaValue.valueOf(d10 - checkarith());
    }

    public LuaString substring(int i10, int i11) {
        int i12 = this.m_offset + i10;
        int i13 = i11 - i10;
        return i13 >= this.m_length / 2 ? valueUsing(this.m_bytes, i12, i13) : valueOf(this.m_bytes, i12, i13);
    }

    public InputStream toInputStream() {
        return new ByteArrayInputStream(this.m_bytes, this.m_offset, this.m_length);
    }

    @Override
    public byte tobyte() {
        return (byte) toint();
    }

    @Override
    public char tochar() {
        return (char) toint();
    }

    @Override
    public double todouble() {
        double scannumber = scannumber();
        if (Double.isNaN(scannumber)) {
            return 0.0d;
        }
        return scannumber;
    }

    @Override
    public float tofloat() {
        return (float) todouble();
    }

    @Override
    public int toint() {
        return (int) tolong();
    }

    @Override
    public String tojstring() {
        return decodeAsUtf8(this.m_bytes, this.m_offset, this.m_length);
    }

    @Override
    public long tolong() {
        return (long) todouble();
    }

    @Override
    public LuaValue tonumber() {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? LuaValue.NIL : LuaValue.valueOf(scannumber);
    }

    @Override
    public short toshort() {
        return (short) toint();
    }

    @Override
    public LuaValue tostring() {
        return this;
    }

    @Override
    public int type() {
        return 4;
    }

    @Override
    public String typename() {
        return TypedValues.Custom.S_STRING;
    }

    public void write(DataOutputStream dataOutputStream, int i10, int i11) throws IOException {
        dataOutputStream.write(this.m_bytes, this.m_offset + i10, i11);
    }

    public static boolean equals(LuaString luaString, int i10, LuaString luaString2, int i11, int i12) {
        return equals(luaString.m_bytes, luaString.m_offset + i10, luaString2.m_bytes, luaString2.m_offset + i11, i12);
    }

    public static int hashCode(byte[] bArr, int i10, int i11) {
        int i12 = (i11 >> 5) + 1;
        int i13 = i11;
        while (i11 >= i12) {
            i13 ^= ((i13 << 5) + (i13 >> 2)) + (bArr[(i10 + i11) - 1] & 255);
            i11 -= i12;
        }
        return i13;
    }

    public static LuaString valueOf(byte[] bArr) {
        return valueOf(bArr, 0, bArr.length);
    }

    public static LuaString valueUsing(byte[] bArr, int i10, int i11) {
        if (bArr.length > 32) {
            return new LuaString(bArr, i10, i11);
        }
        int hashCode = hashCode(bArr, i10, i11);
        int i12 = hashCode & 127;
        LuaString luaString = RecentShortStrings.recent_short_strings[i12];
        if (luaString != null && luaString.m_hashcode == hashCode && luaString.byteseq(bArr, i10, i11)) {
            return luaString;
        }
        LuaString luaString2 = new LuaString(bArr, i10, i11);
        RecentShortStrings.recent_short_strings[i12] = luaString2;
        return luaString2;
    }

    @Override
    public LuaValue add(int i10) {
        return LuaValue.valueOf(checkarith() + i10);
    }

    @Override
    public LuaNumber checknumber(String str) {
        double scannumber = scannumber();
        if (Double.isNaN(scannumber)) {
            LuaValue.error(str);
        }
        return LuaValue.valueOf(scannumber);
    }

    @Override
    public LuaValue concat(LuaValue luaValue) {
        return luaValue.concatTo(this);
    }

    @Override
    public LuaValue concatTo(LuaString luaString) {
        int i10 = luaString.m_length;
        int i11 = this.m_length + i10;
        byte[] bArr = new byte[i11];
        System.arraycopy(luaString.m_bytes, luaString.m_offset, bArr, 0, i10);
        System.arraycopy(this.m_bytes, this.m_offset, bArr, luaString.m_length, this.m_length);
        return valueUsing(bArr, 0, i11);
    }

    @Override
    public LuaValue div(int i10) {
        return LuaDouble.ddiv(checkarith(), i10);
    }

    @Override
    public boolean gt_b(int i10) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override
    public boolean gteq_b(int i10) {
        typerror("attempt to compare string with number");
        return false;
    }

    public int indexOf(LuaString luaString, int i10) {
        int length = luaString.length();
        int i11 = this.m_length - length;
        while (i10 <= i11) {
            if (equals(this.m_bytes, this.m_offset + i10, luaString.m_bytes, luaString.m_offset, length)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public boolean lt_b(int i10) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override
    public boolean lteq_b(int i10) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override
    public LuaValue mod(int i10) {
        return LuaDouble.dmod(checkarith(), i10);
    }

    @Override
    public LuaValue mul(int i10) {
        return LuaValue.valueOf(checkarith() * i10);
    }

    @Override
    public LuaValue pow(int i10) {
        return MathLib.dpow(checkarith(), i10);
    }

    @Override
    public LuaValue powWith(int i10) {
        return MathLib.dpow(i10, checkarith());
    }

    @Override
    public boolean raweq(LuaValue luaValue) {
        return luaValue.raweq(this);
    }

    public double scannumber(int i10) {
        if (i10 < 2 || i10 > 36) {
            return Double.NaN;
        }
        int i11 = this.m_offset;
        int i12 = this.m_length + i11;
        while (i11 < i12 && this.m_bytes[i11] == 32) {
            i11++;
        }
        while (i11 < i12 && this.m_bytes[i12 - 1] == 32) {
            i12--;
        }
        if (i11 >= i12) {
            return Double.NaN;
        }
        return scanlong(i10, i11, i12);
    }

    @Override
    public int strcmp(LuaValue luaValue) {
        return -luaValue.strcmp(this);
    }

    @Override
    public LuaValue sub(int i10) {
        return LuaValue.valueOf(checkarith() - i10);
    }

    public LuaValue tonumber(int i10) {
        double scannumber = scannumber(i10);
        return Double.isNaN(scannumber) ? LuaValue.NIL : LuaValue.valueOf(scannumber);
    }

    public static boolean equals(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        if (bArr.length < i10 + i12 || bArr2.length < i11 + i12) {
            return false;
        }
        while (true) {
            i12--;
            if (i12 < 0) {
                return true;
            }
            int i13 = i10 + 1;
            int i14 = i11 + 1;
            if (bArr[i10] != bArr2[i11]) {
                return false;
            }
            i10 = i13;
            i11 = i14;
        }
    }

    public static LuaString valueOf(byte[] bArr, int i10, int i11) {
        if (i11 > 32) {
            return valueFromCopy(bArr, i10, i11);
        }
        int hashCode = hashCode(bArr, i10, i11);
        int i12 = hashCode & 127;
        LuaString luaString = RecentShortStrings.recent_short_strings[i12];
        if (luaString != null && luaString.m_hashcode == hashCode && luaString.byteseq(bArr, i10, i11)) {
            return luaString;
        }
        LuaString valueFromCopy = valueFromCopy(bArr, i10, i11);
        RecentShortStrings.recent_short_strings[i12] = valueFromCopy;
        return valueFromCopy;
    }

    @Override
    public LuaValue add(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? arithmt(LuaValue.ADD, luaValue) : luaValue.add(scannumber);
    }

    @Override
    public LuaValue div(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? arithmt(LuaValue.DIV, luaValue) : luaValue.divInto(scannumber);
    }

    @Override
    public boolean gt_b(LuaValue luaValue) {
        return luaValue.strcmp(this) < 0;
    }

    @Override
    public boolean gteq_b(LuaValue luaValue) {
        return luaValue.strcmp(this) <= 0;
    }

    @Override
    public boolean lt_b(LuaValue luaValue) {
        return luaValue.strcmp(this) > 0;
    }

    @Override
    public boolean lteq_b(LuaValue luaValue) {
        return luaValue.strcmp(this) >= 0;
    }

    @Override
    public LuaValue mod(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? arithmt(LuaValue.MOD, luaValue) : luaValue.modFrom(scannumber);
    }

    @Override
    public LuaValue mul(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? arithmt(LuaValue.MUL, luaValue) : luaValue.mul(scannumber);
    }

    @Override
    public LuaValue pow(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? arithmt(LuaValue.POW, luaValue) : luaValue.powWith(scannumber);
    }

    @Override
    public LuaValue sub(LuaValue luaValue) {
        double scannumber = scannumber();
        return Double.isNaN(scannumber) ? arithmt(LuaValue.SUB, luaValue) : luaValue.subFrom(scannumber);
    }

    public static LuaString valueOf(char[] cArr) {
        return valueOf(cArr, 0, cArr.length);
    }

    public static LuaString valueOf(char[] cArr, int i10, int i11) {
        byte[] bArr = new byte[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            bArr[i12] = (byte) cArr[i12 + i10];
        }
        return valueUsing(bArr, 0, i11);
    }
}

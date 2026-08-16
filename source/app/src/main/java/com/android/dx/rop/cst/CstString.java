package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import org.eclipse.jdt.internal.core.JavaElement;

public final class CstString extends TypedConstant {
    public static final CstString EMPTY_STRING = new CstString("");
    private final ByteArray bytes;
    private final String string;

    public CstString(String str) {
        if (str != null) {
            this.string = str.intern();
            this.bytes = new ByteArray(stringToUtf8Bytes(str));
            return;
        }
        throw new NullPointerException("string == null");
    }

    public static byte[] stringToUtf8Bytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length * 3];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char charAt = str.charAt(i11);
            if (charAt != 0 && charAt < '\u0080') {
                bArr[i10] = (byte) charAt;
                i10++;
            } else if (charAt < '\u0800') {
                bArr[i10] = (byte) (((charAt >> 6) & 31) | 192);
                bArr[i10 + 1] = (byte) ((charAt & '?') | 128);
                i10 += 2;
            } else {
                bArr[i10] = (byte) (((charAt >> '\f') & 15) | 224);
                bArr[i10 + 1] = (byte) (((charAt >> 6) & 63) | 128);
                bArr[i10 + 2] = (byte) ((charAt & '?') | 128);
                i10 += 3;
            }
        }
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        return bArr2;
    }

    private static String throwBadUtf8(int i10, int i11) {
        throw new IllegalArgumentException("bad utf-8 byte " + Hex.u1(i10) + " at offset " + Hex.u4(i11));
    }

    public static String utf8BytesToString(ByteArray byteArray) {
        char c10;
        int i10;
        int size = byteArray.size();
        char[] cArr = new char[size];
        int i11 = 0;
        int i12 = 0;
        while (size > 0) {
            int unsignedByte = byteArray.getUnsignedByte(i12);
            switch (unsignedByte >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    size--;
                    if (unsignedByte != 0) {
                        c10 = (char) unsignedByte;
                        i12++;
                        break;
                    } else {
                        return throwBadUtf8(unsignedByte, i12);
                    }
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    return throwBadUtf8(unsignedByte, i12);
                case 12:
                case 13:
                    size -= 2;
                    if (size < 0) {
                        return throwBadUtf8(unsignedByte, i12);
                    }
                    int i13 = i12 + 1;
                    int unsignedByte2 = byteArray.getUnsignedByte(i13);
                    if ((unsignedByte2 & 192) != 128) {
                        return throwBadUtf8(unsignedByte2, i13);
                    }
                    int i14 = ((unsignedByte & 31) << 6) | (unsignedByte2 & 63);
                    if (i14 != 0 && i14 < 128) {
                        return throwBadUtf8(unsignedByte2, i13);
                    }
                    c10 = (char) i14;
                    i12 += 2;
                    break;
                case 14:
                    size -= 3;
                    if (size < 0) {
                        return throwBadUtf8(unsignedByte, i12);
                    }
                    int i15 = i12 + 1;
                    int unsignedByte3 = byteArray.getUnsignedByte(i15);
                    int i16 = unsignedByte3 & 192;
                    if (i16 != 128) {
                        return throwBadUtf8(unsignedByte3, i15);
                    }
                    int i17 = i12 + 2;
                    int unsignedByte4 = byteArray.getUnsignedByte(i17);
                    if (i16 == 128 && (i10 = ((unsignedByte & 15) << 12) | ((unsignedByte3 & 63) << 6) | (unsignedByte4 & 63)) >= 2048) {
                        c10 = (char) i10;
                        i12 += 3;
                        break;
                    }
                    return throwBadUtf8(unsignedByte4, i17);
            }
            cArr[i11] = c10;
            i11++;
        }
        return new String(cArr, 0, i11);
    }

    @Override
    public int compareTo0(Constant constant) {
        return this.string.compareTo(((CstString) constant).string);
    }

    public boolean equals(Object obj) {
        if (obj instanceof CstString) {
            return this.string.equals(((CstString) obj).string);
        }
        return false;
    }

    public ByteArray getBytes() {
        return this.bytes;
    }

    public String getString() {
        return this.string;
    }

    @Override
    public Type getType() {
        return Type.STRING;
    }

    public int getUtf16Size() {
        return this.string.length();
    }

    public int getUtf8Size() {
        return this.bytes.size();
    }

    public int hashCode() {
        return this.string.hashCode();
    }

    @Override
    public boolean isCategory2() {
        return false;
    }

    @Override
    public String toHuman() {
        int length = this.string.length();
        StringBuilder sb2 = new StringBuilder((length * 3) / 2);
        int i10 = 0;
        while (i10 < length) {
            char charAt = this.string.charAt(i10);
            if (charAt >= ' ' && charAt < '\u007f') {
                if (charAt == '\'' || charAt == '\"' || charAt == '\\') {
                    sb2.append(JavaElement.JEM_ESCAPE);
                }
                sb2.append(charAt);
            } else if (charAt > '\u007f') {
                sb2.append("\\u");
                sb2.append(Character.forDigit(charAt >> '\f', 16));
                sb2.append(Character.forDigit((charAt >> '\b') & 15, 16));
                sb2.append(Character.forDigit((charAt >> 4) & 15, 16));
                sb2.append(Character.forDigit(charAt & 15, 16));
            } else if (charAt == '\t') {
                sb2.append("\\t");
            } else if (charAt == '\n') {
                sb2.append("\\n");
            } else if (charAt != '\r') {
                char charAt2 = i10 < length + (-1) ? this.string.charAt(i10 + 1) : (char) 0;
                boolean z10 = charAt2 >= '0' && charAt2 <= '7';
                sb2.append(JavaElement.JEM_ESCAPE);
                for (int i11 = 6; i11 >= 0; i11 -= 3) {
                    char c10 = (char) (((charAt >> i11) & 7) + 48);
                    if (c10 != '0' || z10) {
                        sb2.append(c10);
                        z10 = true;
                    }
                }
                if (!z10) {
                    sb2.append('0');
                }
            } else {
                sb2.append("\\r");
            }
            i10++;
        }
        return sb2.toString();
    }

    public String toQuoted() {
        return '\"' + toHuman() + '\"';
    }

    public String toString() {
        return "string{\"" + toHuman() + "\"}";
    }

    @Override
    public String typeName() {
        return "utf8";
    }

    public String toQuoted(int i10) {
        String str;
        String human = toHuman();
        if (human.length() <= i10 - 2) {
            str = "";
        } else {
            human = human.substring(0, i10 - 5);
            str = "...";
        }
        return '\"' + human + str + '\"';
    }

    public CstString(ByteArray byteArray) {
        if (byteArray != null) {
            this.bytes = byteArray;
            this.string = utf8BytesToString(byteArray).intern();
            return;
        }
        throw new NullPointerException("bytes == null");
    }
}

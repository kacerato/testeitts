package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC10552zB;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C9547tA;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.YS;
import java.io.UTFDataFormatException;
import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class L2 extends AbstractC4406d4 implements InterfaceC4596n5, YS {

    public static final L2[] f36559g = new L2[0];

    public static final boolean f36560h = true;

    public final int f36561e;

    public final byte[] f36562f;

    public L2(int i10, byte[] bArr) {
        this.f36561e = i10;
        this.f36562f = bArr;
    }

    public static UTFDataFormatException k(int i10) {
        return new UTFDataFormatException("bad byte: " + Integer.toHexString((char) (i10 & 255)) + ")");
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int R() {
        return 1;
    }

    @Override
    public final int a(InterfaceC5580Mq0 interfaceC5580Mq0, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (L2) interfaceC5580Mq0);
    }

    public boolean b(String str) {
        if (this.f36561e != str.length()) {
            return false;
        }
        K2 k22 = new K2(0, this);
        int i10 = 0;
        while (k22.a()) {
            try {
                if (k22.b() != str.charAt(i10)) {
                    return false;
                }
                i10++;
            } catch (UTFDataFormatException unused) {
                return false;
            }
        }
        if (f36560h || i10 == this.f36561e) {
            return true;
        }
        throw new AssertionError();
    }

    @Override
    public final boolean c(Object obj) {
        if (obj instanceof L2) {
            L2 l22 = (L2) obj;
            if (this.f36561e == l22.f36561e && Arrays.equals(this.f36562f, l22.f36562f)) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(L2 l22) {
        return a(l22.f36562f);
    }

    public final boolean e(L2 l22) {
        return toString().equalsIgnoreCase(l22.toString());
    }

    public final int f(int i10, int i11) {
        return toString().indexOf(i10, i11);
    }

    public final boolean g(L2 l22) {
        return this == l22;
    }

    public final int h(L2 l22) {
        return toString().compareTo(l22.toString());
    }

    public final int i(L2 l22) {
        return toString().lastIndexOf(l22.toString());
    }

    public final boolean isEmpty() {
        return this.f36561e == 0;
    }

    public final boolean j(L2 l22) {
        return b(l22.f36562f);
    }

    @Override
    public final int k0() {
        return Arrays.hashCode(this.f36562f) + (this.f36561e * 7);
    }

    public final int l(int i10) {
        return toString().indexOf(i10);
    }

    public final int l0() {
        char c10;
        int i10;
        byte b10;
        int i11;
        int i12;
        int i13;
        int i14 = this.f36561e;
        int i15 = 0;
        if (i14 == 0) {
            if (f36560h || a(i14, this.f36562f).hashCode() == 0) {
                return 0;
            }
            throw new AssertionError();
        }
        int i16 = 0;
        while (true) {
            byte[] bArr = this.f36562f;
            int i17 = i15 + 1;
            c10 = (char) (bArr[i15] & 255);
            if (c10 == 0) {
                if (f36560h || i16 == a(this.f36561e, bArr).hashCode()) {
                    return i16;
                }
                throw new AssertionError();
            }
            if (c10 < '\u0080') {
                i16 = (i16 * 31) + c10;
                i15 = i17;
            } else {
                if ((c10 & '\u00e0') == 192) {
                    i15 += 2;
                    b10 = bArr[i17];
                    int i18 = b10 & 255;
                    if ((b10 & Opcodes.OPC_checkcast) != 128) {
                        throw e(c10, i18);
                    }
                    i12 = i16 * 31;
                    i13 = (c10 & H2.c.f7959b) << 6;
                } else {
                    if ((c10 & '\u00f0') != 224) {
                        throw k(c10);
                    }
                    int i19 = i15 + 2;
                    byte b11 = bArr[i17];
                    i10 = b11 & 255;
                    i15 += 3;
                    b10 = bArr[i19];
                    i11 = b10 & 255;
                    if ((b11 & Opcodes.OPC_checkcast) != 128 || (b10 & Opcodes.OPC_checkcast) != 128) {
                        break;
                    }
                    i12 = i16 * 31;
                    i13 = ((b11 & Opcodes.OPC_lstore_0) << 6) | ((c10 & 15) << 12);
                }
                i16 = i12 + ((char) ((b10 & Opcodes.OPC_lstore_0) | i13));
            }
        }
        throw a(c10, i10, i11);
    }

    public final int m(int i10) {
        return toString().lastIndexOf(i10);
    }

    public String m0() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(toString());
        sb2.append(" [");
        for (int i10 = 0; i10 < this.f36562f.length; i10++) {
            if (i10 > 0) {
                sb2.append(" ");
            }
            sb2.append(Integer.toHexString(this.f36562f[i10] & 255));
        }
        sb2.append("]");
        return sb2.toString();
    }

    public final int n0() {
        return toString().hashCode();
    }

    public final int o0() {
        return this.f36561e;
    }

    public String p0() {
        try {
            return C10656zq0.e(a(this.f36561e, this.f36562f));
        } catch (UTFDataFormatException e10) {
            throw new RuntimeException("Bad format", e10);
        }
    }

    public String toString() {
        try {
            return a(this.f36561e, this.f36562f);
        } catch (UTFDataFormatException e10) {
            throw new RuntimeException("Bad format", e10);
        }
    }

    public static UTFDataFormatException e(int i10, int i11) {
        return new UTFDataFormatException("bad second byte (first: " + Integer.toHexString((char) (i10 & 255)) + ", second: " + Integer.toHexString((char) (i11 & 255)) + ")");
    }

    public final int f(L2 l22) {
        return toString().indexOf(l22.toString());
    }

    public final int g(int i10, int i11) {
        return toString().lastIndexOf(i10, i11);
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        throw new C5417Jv0();
    }

    public L2(String str) {
        this.f36561e = str.length();
        this.f36562f = a(str);
    }

    public final int a(L2 l22, int i10) {
        return toString().indexOf(l22.toString(), i10);
    }

    public final boolean c(com.android.tools.r8.internal.C2 c22) {
        if (!c22.b(com.android.tools.r8.internal.C2.R)) {
            return true;
        }
        try {
            return a(c22, a(this.f36561e, this.f36562f));
        } catch (UTFDataFormatException unused) {
            return false;
        }
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(this.f36562f);
    }

    public final int b(L2 l22, int i10) {
        return toString().lastIndexOf(l22.toString(), i10);
    }

    public boolean c(String str) {
        return b(a(str));
    }

    @Override
    public final int a(YS ys, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (L2) ys);
    }

    public final int b(L2 l22) {
        return toString().compareToIgnoreCase(l22.toString());
    }

    public final boolean c(L2 l22) {
        byte[] bArr;
        for (int i10 = 0; this.f36562f.length - i10 >= l22.f36562f.length; i10++) {
            int i11 = 0;
            while (true) {
                bArr = l22.f36562f;
                if (i11 >= bArr.length - 1 || this.f36562f[i10 + i11] != bArr[i11]) {
                    break;
                }
                i11++;
            }
            if (i11 == bArr.length - 1) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(this.f36562f);
    }

    public static String a(int i10, byte[] bArr) {
        char[] cArr = new char[i10];
        return new String(cArr, 0, a(bArr, cArr));
    }

    public final boolean b(byte[] bArr) {
        if (this.f36562f.length < bArr.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArr.length - 1; i10++) {
            if (this.f36562f[i10] != bArr[i10]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0070, code lost:
    
        throw a(r4, r7, r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(byte[] bArr, char[] cArr) {
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = i10 + 1;
            char c10 = (char) (bArr[i10] & 255);
            if (c10 == 0) {
                return i11;
            }
            cArr[i11] = c10;
            if (c10 < '\u0080') {
                i11++;
                if (i11 == length) {
                    return i11;
                }
                i10 = i12;
            } else if ((c10 & '\u00e0') == 192) {
                i10 += 2;
                byte b10 = bArr[i12];
                int i13 = b10 & 255;
                if ((b10 & Opcodes.OPC_checkcast) == 128) {
                    cArr[i11] = (char) ((b10 & Opcodes.OPC_lstore_0) | ((c10 & H2.c.f7959b) << 6));
                    i11++;
                    if (i11 == length) {
                        return i11;
                    }
                } else {
                    throw e(c10, i13);
                }
            } else if ((c10 & '\u00f0') == 224) {
                int i14 = i10 + 2;
                byte b11 = bArr[i12];
                int i15 = b11 & 255;
                i10 += 3;
                byte b12 = bArr[i14];
                int i16 = b12 & 255;
                if ((b11 & Opcodes.OPC_checkcast) != 128 || (b12 & Opcodes.OPC_checkcast) != 128) {
                    break;
                }
                cArr[i11] = (char) (((b11 & Opcodes.OPC_lstore_0) << 6) | ((c10 & 15) << 12) | (b12 & Opcodes.OPC_lstore_0));
                i11++;
                if (i11 == length) {
                    return i11;
                }
            } else {
                throw k(c10);
            }
        }
    }

    public static UTFDataFormatException a(int i10, int i11, int i12) {
        return new UTFDataFormatException("bad second or third byte (first: " + Integer.toHexString((char) (i10 & 255)) + ", second: " + Integer.toHexString((char) (i11 & 255)) + ", third: " + Integer.toHexString((char) (i12 & 255)) + ")");
    }

    public static byte[] a(String str) {
        int i10 = 1;
        for (int i11 = 0; i11 < str.length(); i11++) {
            char charAt = str.charAt(i11);
            i10 += (charAt == 0 || charAt > '\u007f') ? charAt <= '\u07ff' ? 2 : 3 : 1;
            if (!f36560h && i10 <= 0) {
                throw new AssertionError();
            }
        }
        byte[] bArr = new byte[i10];
        int i12 = 0;
        for (int i13 = 0; i13 < str.length(); i13++) {
            i12 = a(str.charAt(i13), bArr, i12);
        }
        bArr[i12] = 0;
        return bArr;
    }

    public static int a(char c10, byte[] bArr, int i10) {
        if (c10 != 0 && c10 <= '\u007f') {
            int i11 = i10 + 1;
            bArr[i10] = (byte) c10;
            return i11;
        }
        if (c10 <= '\u07ff') {
            int i12 = i10 + 1;
            bArr[i10] = (byte) (((c10 >> 6) & 31) | 192);
            int i13 = i10 + 2;
            bArr[i12] = (byte) ((c10 & '?') | 128);
            return i13;
        }
        bArr[i10] = (byte) (((c10 >> '\f') & 15) | 224);
        int i14 = i10 + 2;
        bArr[i10 + 1] = (byte) (((c10 >> 6) & 63) | 128);
        int i15 = i10 + 3;
        bArr[i14] = (byte) ((c10 & '?') | 128);
        return i15;
    }

    @Override
    public final int a(C4766w5 c4766w5) {
        return C4766w5.a(this, c4766w5.f38343j);
    }

    @Override
    public int compareTo(L2 l22) {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f36562f;
            char c10 = (char) (bArr[i10] & 255);
            byte[] bArr2 = l22.f36562f;
            char c11 = (char) (bArr2[i10] & 255);
            int i11 = c10 - c11;
            if (i11 != 0) {
                return (c10 == 0 || c11 == 0 || !((c10 == '\u00c0' && (bArr[i10 + 1] & 255) == 128) || (c11 == '\u00c0' && (bArr2[i10 + 1] & 255) == 128))) ? i11 : (c10 == '\u00c0' && (bArr[i10 + 1] & 255) == 128) ? -1 : 1;
            }
            if (c10 == 0) {
                return 0;
            }
            i10++;
        }
    }

    public static boolean a(com.android.tools.r8.internal.C2 c22, String str) {
        if (!c22.b(com.android.tools.r8.internal.C2.R)) {
            return true;
        }
        int i10 = 0;
        while (i10 < str.length()) {
            int codePointAt = str.codePointAt(i10);
            if (AbstractC10552zB.b(codePointAt)) {
                return false;
            }
            i10 += Character.charCount(codePointAt);
        }
        return true;
    }

    public final boolean a(byte[] bArr) {
        byte[] bArr2 = this.f36562f;
        if (bArr2.length < bArr.length) {
            return false;
        }
        int length = bArr2.length - bArr.length;
        int i10 = 0;
        while (true) {
            byte[] bArr3 = this.f36562f;
            if (length >= bArr3.length) {
                return true;
            }
            if (bArr3[length] != bArr[i10]) {
                return false;
            }
            length++;
            i10++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0059 A[LOOP:0: B:26:0x0051->B:28:0x0059, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005c A[EDGE_INSN: B:29:0x005c->B:30:0x005c BREAK  A[LOOP:0: B:26:0x0051->B:28:0x0059], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0074 A[LOOP:1: B:31:0x0072->B:32:0x0074, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final L2 a(L2 l22, L2 l23, C4724u1 c4724u1) {
        boolean z10;
        boolean z11;
        int i10;
        byte[] bArr;
        int i11;
        if (!f36560h && (!l22.c("L") || !l23.c("L"))) {
            throw new AssertionError();
        }
        if (l22.equals(l23)) {
            return this;
        }
        if (l22.f36561e == 1) {
            L2 l24 = c4724u1.f37854F;
            l23.getClass();
            if (!l23.a(l24.f36562f)) {
                z10 = true;
                z11 = (l23.f36561e == 1 || l22.a(c4724u1.f37854F.f36562f)) ? false : true;
                int i12 = !z10 ? 1 : z11 ? -1 : 0;
                i10 = 0;
                while (true) {
                    bArr = this.f36562f;
                    if (bArr[i10] == 91) {
                        break;
                    }
                    i10++;
                }
                int i13 = ((l23.f36561e + this.f36561e) - l22.f36561e) + i12;
                byte[] bArr2 = new byte[((l23.f36562f.length + bArr.length) - l22.f36562f.length) + i12];
                for (i11 = 0; i11 < i10; i11++) {
                    bArr2[i11] = 91;
                }
                byte[] bArr3 = l23.f36562f;
                System.arraycopy(bArr3, 0, bArr2, i10, bArr3.length - 1);
                int length = l22.f36562f.length;
                int i14 = length - 1;
                int length2 = l23.f36562f.length;
                int i15 = length2 - 1;
                if (!z11) {
                    if (z10) {
                        bArr2[i15] = Opcodes.OPC_laload;
                        length = i14;
                        byte[] bArr4 = this.f36562f;
                        System.arraycopy(bArr4, length, bArr2, length2, bArr4.length - length);
                        return c4724u1.a(i13, bArr2);
                    }
                    length = i14;
                }
                length2 = i15;
                byte[] bArr42 = this.f36562f;
                System.arraycopy(bArr42, length, bArr2, length2, bArr42.length - length);
                return c4724u1.a(i13, bArr2);
            }
        }
        z10 = false;
        if (l23.f36561e == 1) {
        }
        if (!z10) {
        }
        i10 = 0;
        while (true) {
            bArr = this.f36562f;
            if (bArr[i10] == 91) {
            }
            i10++;
        }
        int i132 = ((l23.f36561e + this.f36561e) - l22.f36561e) + i12;
        byte[] bArr22 = new byte[((l23.f36562f.length + bArr.length) - l22.f36562f.length) + i12];
        while (i11 < i10) {
        }
        byte[] bArr32 = l23.f36562f;
        System.arraycopy(bArr32, 0, bArr22, i10, bArr32.length - 1);
        int length3 = l22.f36562f.length;
        int i142 = length3 - 1;
        int length22 = l23.f36562f.length;
        int i152 = length22 - 1;
        if (!z11) {
        }
        length22 = i152;
        byte[] bArr422 = this.f36562f;
        System.arraycopy(bArr422, length3, bArr22, length22, bArr422.length - length3);
        return c4724u1.a(i132, bArr22);
    }

    public final L2 a(int i10, C4724u1 c4724u1) {
        byte[] bArr = new byte[this.f36562f.length + i10];
        Arrays.fill(bArr, 0, i10, (byte) 91);
        byte[] bArr2 = this.f36562f;
        System.arraycopy(bArr2, 0, bArr, i10, bArr2.length);
        return c4724u1.a(this.f36561e + i10, bArr);
    }
}

package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import android.text.Spanned;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class C implements InterfaceC2374f {

    public static final int f13523d = 8;

    public static byte[] f13524e = {4, 10, 9, 2, 13, 8, 0, 14, 6, 11, 1, 12, 7, 15, 5, 3, 14, 11, 4, 12, 6, 13, 15, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, 13, 10, 3, 4, 2, 14, 15, 12, 7, 6, 0, 9, 11, 7, 13, 10, 1, 0, 8, 9, 15, 14, 4, 6, 12, 11, 2, 5, 3, 6, 12, 7, 1, 5, 15, 13, 8, 4, 10, 9, 14, 0, 3, 11, 2, 4, 11, 10, 0, 7, 2, 1, 13, 3, 6, 8, 5, 9, 12, 15, 14, 13, 11, 4, 1, 3, 15, 5, 9, 0, 10, 14, 7, 6, 8, 2, 12, 1, 15, 13, 0, 5, 7, 10, 4, 9, 2, 3, 14, 6, 11, 8, 12};

    public static byte[] f13525f = {4, 2, 15, 5, 9, 1, 0, 8, 14, 3, 11, 12, 13, 7, 10, 6, 12, 9, 15, 14, 8, 1, 3, 10, 2, 7, 4, 13, 6, 0, 11, 5, 13, 8, 14, 12, 7, 3, 9, 10, 1, 5, 2, 4, 6, 15, 0, 11, 14, 9, 11, 2, 5, 15, 7, 1, 0, 13, 12, 6, 10, 4, 3, 8, 3, 14, 5, 9, 6, 8, 0, 13, 10, 11, 7, 12, 2, 1, 15, 4, 8, 15, 6, 11, 1, 9, 12, 5, 13, 3, 7, 10, 0, 14, 2, 4, 9, 11, 12, 0, 3, 6, 7, 5, 4, 8, 14, 15, 1, 10, 2, 13, 12, 6, 5, 2, 11, 0, 9, 13, 3, 14, 7, 10, 15, 4, 1, 8};

    public static byte[] f13526g = {9, 6, 3, 2, 8, 11, 1, 7, 10, 4, 14, 15, 12, 0, 13, 5, 3, 7, 14, 9, 8, 10, 15, 0, 5, 2, 6, 12, 11, 4, 13, 1, 14, 4, 6, 2, 11, 3, 13, 8, 12, 15, 5, 10, 0, 7, 1, 9, 14, 7, 10, 12, 13, 1, 3, 9, 0, 2, 11, 4, 15, 8, 5, 6, 11, 5, 1, 9, 8, 13, 15, 0, 14, 4, 2, 3, 12, 7, 10, 6, 3, 10, 13, 12, 1, 2, 0, 11, 7, 5, 9, 4, 8, 15, 14, 6, 1, 13, 2, 9, 7, 10, 6, 0, 8, 12, 4, 5, 15, 3, 11, 14, 11, 10, 15, 5, 0, 12, 14, 8, 6, 2, 3, 9, 1, 7, 13, 4};

    public static byte[] f13527h = {8, 4, 11, 1, 3, 5, 0, 9, 2, 14, 10, 12, 13, 6, 7, 15, 0, 1, 2, 10, 4, 13, 5, 12, 9, 7, 3, 15, 11, 8, 6, 14, 14, 12, 0, 10, 9, 2, 13, 11, 7, 5, 8, 15, 3, 6, 1, 4, 7, 5, 0, 13, 11, 6, 1, 2, 3, 10, 12, 15, 4, 14, 9, 8, 2, 7, 12, 15, 9, 5, 10, 11, 1, 4, 0, 13, 6, 8, 14, 3, 8, 3, 2, 6, 4, 13, 14, 11, 12, 1, 7, 15, 10, 0, 9, 5, 5, 2, 10, 11, 9, 1, 12, 3, 7, 4, 13, 0, 6, 15, 8, 14, 0, 4, 11, 14, 8, 3, 7, 1, 10, 2, 9, 6, 15, 13, 5, 12};

    public static byte[] f13528i = {1, 11, 12, 2, 9, 13, 0, 15, 4, 5, 8, 14, 10, 7, 6, 3, 0, 1, 7, 13, 11, 4, 5, 2, 8, 14, 15, 12, 9, 10, 6, 3, 8, 2, 5, 0, 4, 9, 15, 10, 3, 7, 12, 13, 6, 14, 1, 11, 3, 6, 0, 1, 5, 13, 10, 8, 11, 2, 9, 7, 14, 15, 12, 4, 8, 13, 11, 0, 4, 5, 1, 2, 9, 3, 12, 14, 6, 15, 10, 7, 12, 9, 11, 1, 8, 14, 2, 4, 7, 3, 6, 5, 10, 0, 15, 13, 10, 9, 6, 8, 13, 14, 2, 0, 15, 3, 5, 11, 4, 1, 12, 7, 7, 4, 0, 5, 10, 2, 15, 14, 12, 6, 1, 11, 13, 9, 3, 8};

    public static byte[] f13529j = {15, 12, 2, 10, 6, 4, 5, 0, 7, 9, 14, 13, 1, 11, 8, 3, 11, 6, 3, 4, 12, 15, 14, 2, 7, 13, 8, 0, 5, 10, 9, 1, 1, 12, 11, 0, 15, 14, 6, 5, 10, 13, 4, 8, 9, 3, 7, 2, 1, 5, 14, 12, 10, 7, 0, 13, 6, 2, 11, 4, 9, 3, 15, 8, 0, 12, 8, 9, 13, 2, 10, 11, 7, 3, 6, 5, 4, 14, 15, 1, 8, 0, 15, 3, 2, 5, 14, 11, 1, 10, 4, 7, 12, 9, 13, 6, 3, 0, 6, 15, 1, 14, 9, 2, 13, 8, 12, 4, 11, 10, 5, 7, 1, 10, 6, 8, 15, 11, 0, 4, 12, 3, 5, 9, 7, 13, 2, 14};

    public static byte[] f13530k = {12, 4, 6, 2, 10, 5, 11, 9, 14, 8, 13, 7, 0, 3, 15, 1, 6, 8, 2, 3, 9, 10, 5, 12, 1, 14, 4, 7, 11, 13, 0, 15, 11, 3, 5, 8, 2, 15, 10, 13, 14, 1, 7, 4, 12, 9, 6, 0, 12, 8, 2, 1, 13, 4, 15, 6, 7, 0, 10, 5, 3, 14, 9, 11, 7, 15, 5, 10, 8, 1, 6, 13, 0, 9, 3, 14, 11, 4, 2, 12, 5, 13, 15, 6, 9, 2, 12, 10, 11, 7, 8, 1, 4, 3, 14, 0, 8, 14, 2, 5, 6, 9, 1, 12, 15, 4, 11, 0, 13, 10, 3, 7, 1, 7, 14, 13, 0, 5, 8, 3, 4, 15, 10, 6, 9, 12, 11, 2};

    public static byte[] f13531l = {4, 10, 9, 2, 13, 8, 0, 14, 6, 11, 1, 12, 7, 15, 5, 3, 14, 11, 4, 12, 6, 13, 15, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, 13, 10, 3, 4, 2, 14, 15, 12, 7, 6, 0, 9, 11, 7, 13, 10, 1, 0, 8, 9, 15, 14, 4, 6, 12, 11, 2, 5, 3, 6, 12, 7, 1, 5, 15, 13, 8, 4, 10, 9, 14, 0, 3, 11, 2, 4, 11, 10, 0, 7, 2, 1, 13, 3, 6, 8, 5, 9, 12, 15, 14, 13, 11, 4, 1, 3, 15, 5, 9, 0, 10, 14, 7, 6, 8, 2, 12, 1, 15, 13, 0, 5, 7, 10, 4, 9, 2, 3, 14, 6, 11, 8, 12};

    public static byte[] f13532m = {10, 4, 5, 6, 8, 1, 3, 7, 13, 12, 14, 0, 9, 2, 11, 15, 5, 15, 4, 0, 2, 13, 11, 9, 1, 7, 6, 3, 12, 14, 10, 8, 7, 15, 12, 14, 9, 4, 1, 0, 3, 11, 5, 2, 6, 10, 8, 13, 4, 10, 7, 12, 0, 15, 2, 8, 14, 1, 6, 5, 13, 11, 9, 3, 7, 6, 4, 11, 9, 12, 2, 10, 1, 8, 0, 14, 15, 13, 3, 5, 7, 6, 2, 4, 13, 9, 15, 0, 10, 1, 5, 11, 8, 14, 12, 3, 13, 14, 4, 1, 7, 0, 5, 10, 3, 12, 8, 15, 6, 2, 9, 11, 1, 3, 10, 9, 5, 11, 4, 15, 8, 6, 7, 14, 13, 0, 2, 12};

    public static Hashtable f13533n = new Hashtable();

    public boolean f13535b;

    public int[] f13534a = null;

    public byte[] f13536c = f13524e;

    static {
        j("Default", f13524e);
        j("E-TEST", f13525f);
        j("E-A", f13526g);
        j("E-B", f13527h);
        j("E-C", f13528i);
        j("E-D", f13529j);
        j("Param-Z", f13530k);
        j("D-TEST", f13531l);
        j("D-A", f13532m);
    }

    public C() {
        Bi.r.a(new Hi.c(b(), 178));
    }

    public static void j(String str, byte[] bArr) {
        f13533n.put(org.bouncycastle.util.w.p(str), bArr);
    }

    private int k(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] << 24) & (-16777216)) + ((bArr[i10 + 2] << 16) & Spanned.SPAN_PRIORITY) + ((bArr[i10 + 1] << 8) & 65280) + (bArr[i10] & 255);
    }

    private int[] l(boolean z10, byte[] bArr) {
        this.f13535b = z10;
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
        }
        int[] iArr = new int[8];
        for (int i10 = 0; i10 != 8; i10++) {
            iArr[i10] = k(bArr, i10 * 4);
        }
        return iArr;
    }

    public static byte[] m(String str) {
        byte[] bArr = (byte[]) f13533n.get(org.bouncycastle.util.w.p(str));
        if (bArr != null) {
            return org.bouncycastle.util.a.p(bArr);
        }
        throw new IllegalArgumentException("Unknown S-Box - possible types: \"Default\", \"E-Test\", \"E-A\", \"E-B\", \"E-C\", \"E-D\", \"Param-Z\", \"D-Test\", \"D-A\".");
    }

    public static String n(byte[] bArr) {
        Enumeration keys = f13533n.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            if (org.bouncycastle.util.a.g((byte[]) f13533n.get(str), bArr)) {
                return str;
            }
        }
        throw new IllegalArgumentException("SBOX provided did not map to a known one");
    }

    private void o(int i10, byte[] bArr, int i11) {
        bArr[i11 + 3] = (byte) (i10 >>> 24);
        bArr[i11 + 2] = (byte) (i10 >>> 16);
        bArr[i11 + 1] = (byte) (i10 >>> 8);
        bArr[i11] = (byte) i10;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof Xi.y0) {
            Xi.y0 y0Var = (Xi.y0) interfaceC2379k;
            byte[] b10 = y0Var.b();
            if (b10.length != f13524e.length) {
                throw new IllegalArgumentException("invalid S-box passed to GOST28147 init");
            }
            this.f13536c = org.bouncycastle.util.a.p(b10);
            if (y0Var.a() != null) {
                this.f13534a = l(z10, ((C3360o0) y0Var.a()).b());
            }
        } else if (interfaceC2379k instanceof C3360o0) {
            this.f13534a = l(z10, ((C3360o0) interfaceC2379k).b());
        } else if (interfaceC2379k != null) {
            throw new IllegalArgumentException("invalid parameter passed to GOST28147 init - " + interfaceC2379k.getClass().getName());
        }
        Bi.r.a(new Hi.c(b(), 178, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "GOST28147";
    }

    @Override
    public int c() {
        return 8;
    }

    public final void f(int[] iArr, byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12;
        int i13;
        int k10 = k(bArr, i10);
        int k11 = k(bArr, i10 + 4);
        int i14 = 7;
        if (this.f13535b) {
            for (int i15 = 0; i15 < 3; i15++) {
                int i16 = 0;
                while (i16 < 8) {
                    int i17 = k11 ^ i(k10, iArr[i16]);
                    i16++;
                    int i18 = k10;
                    k10 = i17;
                    k11 = i18;
                }
            }
            i12 = k11;
            i13 = k10;
            while (i14 > 0) {
                int i19 = i12 ^ i(i13, iArr[i14]);
                i14--;
                i12 = i13;
                i13 = i19;
            }
        } else {
            int i20 = 0;
            while (i20 < 8) {
                int i21 = k11 ^ i(k10, iArr[i20]);
                i20++;
                int i22 = k10;
                k10 = i21;
                k11 = i22;
            }
            i12 = k11;
            i13 = k10;
            for (int i23 = 0; i23 < 3; i23++) {
                int i24 = 7;
                while (i24 >= 0 && (i23 != 2 || i24 != 0)) {
                    int i25 = i12 ^ i(i13, iArr[i24]);
                    i24--;
                    i12 = i13;
                    i13 = i25;
                }
            }
        }
        int i26 = i(i13, iArr[0]) ^ i12;
        o(i13, bArr2, i11);
        o(i26, bArr2, i11 + 4);
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int[] iArr = this.f13534a;
        if (iArr == null) {
            throw new IllegalStateException("GOST28147 engine not initialised");
        }
        if (i10 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        f(iArr, bArr, i10, bArr2, i11);
        return 8;
    }

    public final int i(int i10, int i11) {
        int i12 = i11 + i10;
        byte[] bArr = this.f13536c;
        int i13 = bArr[i12 & 15] + (bArr[((i12 >> 4) & 15) + 16] << 4) + (bArr[((i12 >> 8) & 15) + 32] << 8) + (bArr[((i12 >> 12) & 15) + 48] << 12) + (bArr[((i12 >> 16) & 15) + 64] << 16) + (bArr[((i12 >> 20) & 15) + 80] << 20) + (bArr[((i12 >> 24) & 15) + 96] << 24) + (bArr[((i12 >> 28) & 15) + 112] << 28);
        return (i13 << 11) | (i13 >>> 21);
    }

    @Override
    public void reset() {
    }
}

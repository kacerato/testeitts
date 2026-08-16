package hi;

import fi.C13228d;
import java.io.IOException;
import java.util.StringTokenizer;
import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14549x;
import oh.C14554z0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C13481E extends AbstractC14545v implements InterfaceC14514f {

    public static final int f90614d = 0;

    public static final int f90615e = 1;

    public static final int f90616f = 2;

    public static final int f90617g = 3;

    public static final int f90618h = 4;

    public static final int f90619i = 5;

    public static final int f90620j = 6;

    public static final int f90621k = 7;

    public static final int f90622l = 8;

    public InterfaceC14516g f90623b;

    public int f90624c;

    public C13481E(int i10, String str) {
        InterfaceC14516g c14554z0;
        this.f90624c = i10;
        if (i10 == 1 || i10 == 2 || i10 == 6) {
            c14554z0 = new C14554z0(str);
        } else if (i10 == 8) {
            c14554z0 = new C14549x(str);
        } else {
            if (i10 != 4) {
                if (i10 != 7) {
                    throw new IllegalArgumentException("can't process String for tag: " + i10);
                }
                byte[] C10 = C(str);
                if (C10 == null) {
                    throw new IllegalArgumentException("IP Address is invalid");
                }
                this.f90623b = new oh.C0(C10);
                return;
            }
            c14554z0 = new C13228d(str);
        }
        this.f90623b = c14554z0;
    }

    public static C13481E v(Object obj) {
        if (obj == null || (obj instanceof C13481E)) {
            return (C13481E) obj;
        }
        if (!(obj instanceof oh.M)) {
            if (obj instanceof byte[]) {
                try {
                    return v(oh.B.B((byte[]) obj));
                } catch (IOException unused) {
                    throw new IllegalArgumentException("unable to parse encoded general name");
                }
            }
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
        oh.M m10 = (oh.M) obj;
        int g10 = m10.g();
        switch (g10) {
            case 0:
            case 3:
            case 5:
                return new C13481E(g10, oh.E.H(m10, false));
            case 1:
            case 2:
            case 6:
                return new C13481E(g10, AbstractC14536q.G(m10, false));
            case 4:
                return new C13481E(g10, C13228d.y(m10, true));
            case 7:
                return new C13481E(g10, AbstractC14551y.G(m10, false));
            case 8:
                return new C13481E(g10, C14549x.L(m10, false));
            default:
                throw new IllegalArgumentException("unknown tag: " + g10);
        }
    }

    public static C13481E w(oh.M m10, boolean z10) {
        if (z10) {
            return v(oh.M.W(m10, true));
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    public final int[] A(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, b3.s.f32937c, true);
        int[] iArr = new int[8];
        if (str.charAt(0) == ':' && str.charAt(1) == ':') {
            stringTokenizer.nextToken();
        }
        int i10 = -1;
        int i11 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (nextToken.equals(b3.s.f32937c)) {
                iArr[i11] = 0;
                int i12 = i11;
                i11++;
                i10 = i12;
            } else if (nextToken.indexOf(46) < 0) {
                int i13 = i11 + 1;
                iArr[i11] = Integer.parseInt(nextToken, 16);
                if (stringTokenizer.hasMoreTokens()) {
                    stringTokenizer.nextToken();
                }
                i11 = i13;
            } else {
                StringTokenizer stringTokenizer2 = new StringTokenizer(nextToken, ".");
                int i14 = i11 + 1;
                iArr[i11] = (Integer.parseInt(stringTokenizer2.nextToken()) << 8) | Integer.parseInt(stringTokenizer2.nextToken());
                i11 += 2;
                iArr[i14] = Integer.parseInt(stringTokenizer2.nextToken()) | (Integer.parseInt(stringTokenizer2.nextToken()) << 8);
            }
        }
        if (i11 != 8) {
            int i15 = i11 - i10;
            int i16 = 8 - i15;
            System.arraycopy(iArr, i10, iArr, i16, i15);
            while (i10 != i16) {
                iArr[i10] = 0;
                i10++;
            }
        }
        return iArr;
    }

    public final int[] B(String str) {
        int[] iArr = new int[8];
        int parseInt = Integer.parseInt(str);
        for (int i10 = 0; i10 != parseInt; i10++) {
            int i11 = i10 / 16;
            iArr[i11] = iArr[i11] | (1 << (15 - (i10 % 16)));
        }
        return iArr;
    }

    public final byte[] C(String str) {
        if (org.bouncycastle.util.j.j(str) || org.bouncycastle.util.j.i(str)) {
            int indexOf = str.indexOf(47);
            if (indexOf < 0) {
                byte[] bArr = new byte[16];
                u(A(str), bArr, 0);
                return bArr;
            }
            byte[] bArr2 = new byte[32];
            u(A(str.substring(0, indexOf)), bArr2, 0);
            String substring = str.substring(indexOf + 1);
            u(substring.indexOf(58) > 0 ? A(substring) : B(substring), bArr2, 16);
            return bArr2;
        }
        if (!org.bouncycastle.util.j.h(str) && !org.bouncycastle.util.j.g(str)) {
            return null;
        }
        int indexOf2 = str.indexOf(47);
        if (indexOf2 < 0) {
            byte[] bArr3 = new byte[4];
            y(str, bArr3, 0);
            return bArr3;
        }
        byte[] bArr4 = new byte[8];
        y(str.substring(0, indexOf2), bArr4, 0);
        String substring2 = str.substring(indexOf2 + 1);
        if (substring2.indexOf(46) > 0) {
            y(substring2, bArr4, 4);
        } else {
            z(substring2, bArr4, 4);
        }
        return bArr4;
    }

    public int g() {
        return this.f90624c;
    }

    @Override
    public oh.B r() {
        int i10 = this.f90624c;
        return new K0(i10 == 4, i10, this.f90623b);
    }

    public String toString() {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f90624c);
        stringBuffer.append(": ");
        int i10 = this.f90624c;
        if (i10 != 1 && i10 != 2) {
            if (i10 == 4) {
                string = C13228d.x(this.f90623b).toString();
            } else if (i10 != 6) {
                string = this.f90623b.toString();
            }
            stringBuffer.append(string);
            return stringBuffer.toString();
        }
        string = AbstractC14536q.F(this.f90623b).getString();
        stringBuffer.append(string);
        return stringBuffer.toString();
    }

    public final void u(int[] iArr, byte[] bArr, int i10) {
        for (int i11 = 0; i11 != iArr.length; i11++) {
            int i12 = i11 * 2;
            int i13 = iArr[i11];
            bArr[i12 + i10] = (byte) (i13 >> 8);
            bArr[i12 + 1 + i10] = (byte) i13;
        }
    }

    public InterfaceC14516g x() {
        return this.f90623b;
    }

    public final void y(String str, byte[] bArr, int i10) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "./");
        int i11 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            bArr[i11 + i10] = (byte) Integer.parseInt(stringTokenizer.nextToken());
            i11++;
        }
    }

    public final void z(String str, byte[] bArr, int i10) {
        int parseInt = Integer.parseInt(str);
        for (int i11 = 0; i11 != parseInt; i11++) {
            int i12 = (i11 / 8) + i10;
            bArr[i12] = (byte) (bArr[i12] | (1 << (7 - (i11 % 8))));
        }
    }

    public C13481E(int i10, InterfaceC14516g interfaceC14516g) {
        this.f90623b = interfaceC14516g;
        this.f90624c = i10;
    }

    public C13481E(C13228d c13228d) {
        this.f90623b = c13228d;
        this.f90624c = 4;
    }

    public C13481E(B0 b02) {
        this.f90623b = C13228d.x(b02);
        this.f90624c = 4;
    }
}

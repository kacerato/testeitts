package el;

import Ii.Q;
import Li.C2769a;
import Xi.C3360o0;
import org.bouncycastle.util.p;

public abstract class g {

    public int f85863a;

    public int f85864b;

    public static class a extends g {
        public a(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public short[] a(byte[] bArr) {
            int i10 = this.f85863a;
            short[] sArr = new short[i10 * i10];
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[16];
            C2769a c2769a = new C2769a();
            c2769a.a(true, new C3360o0(bArr));
            for (int i11 = 0; i11 < this.f85863a; i11++) {
                p.R((short) i11, bArr2, 0);
                for (int i12 = 0; i12 < this.f85863a; i12 += 8) {
                    p.R((short) i12, bArr2, 2);
                    c2769a.g(bArr2, 0, bArr3, 0);
                    for (int i13 = 0; i13 < 8; i13++) {
                        sArr[(this.f85863a * i11) + i12 + i13] = (short) (p.C(bArr3, i13 * 2) & (this.f85864b - 1));
                    }
                }
            }
            return sArr;
        }
    }

    public static class b extends g {
        public b(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public short[] a(byte[] bArr) {
            int i10 = this.f85863a;
            short[] sArr = new short[i10 * i10];
            int i11 = (i10 * 16) / 8;
            byte[] bArr2 = new byte[i11];
            int length = bArr.length + 2;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, 0, bArr3, 2, bArr.length);
            Q q10 = new Q(128);
            for (short s10 = 0; s10 < this.f85863a; s10 = (short) (s10 + 1)) {
                p.R(s10, bArr3, 0);
                q10.update(bArr3, 0, length);
                q10.e(bArr2, 0, i11);
                short s11 = 0;
                while (true) {
                    int i12 = this.f85863a;
                    if (s11 < i12) {
                        sArr[(i12 * s10) + s11] = (short) (p.C(bArr2, s11 * 2) & (this.f85864b - 1));
                        s11 = (short) (s11 + 1);
                    }
                }
            }
            return sArr;
        }
    }

    public g(int i10, int i11) {
        this.f85863a = i10;
        this.f85864b = i11;
    }

    public abstract short[] a(byte[] bArr);
}

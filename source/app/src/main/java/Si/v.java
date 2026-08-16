package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Li.D0;

public final class v implements I {

    public static final int f23518g = 128;

    public int f23520b;

    public D0 f23522d;

    public int f23523e;

    public int f23524f;

    public final b f23519a = new b();

    public final int[] f23521c = new int[2];

    public static class b extends D0 {
        public b() {
        }

        public int y() {
            return super.v();
        }
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        this.f23519a.a(true, interfaceC2379k);
        this.f23522d = (D0) this.f23519a.copy();
        g();
    }

    @Override
    public String b() {
        return "Zuc128Mac";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        h();
        int f10 = this.f23520b ^ f(this.f23524f * 8);
        this.f23520b = f10;
        int e10 = f10 ^ e();
        this.f23520b = e10;
        D0.s(e10, bArr, i10);
        reset();
        return d();
    }

    @Override
    public int d() {
        return 4;
    }

    public final int e() {
        if (this.f23524f != 0) {
            return this.f23519a.y();
        }
        int i10 = this.f23523e + 1;
        int[] iArr = this.f23521c;
        int length = i10 % iArr.length;
        this.f23523e = length;
        return iArr[length];
    }

    public final int f(int i10) {
        int[] iArr = this.f23521c;
        int i11 = this.f23523e;
        int i12 = iArr[i11];
        if (i10 == 0) {
            return i12;
        }
        int i13 = iArr[(i11 + 1) % iArr.length];
        return (i13 >>> (32 - i10)) | (i12 << i10);
    }

    public final void g() {
        int i10 = 0;
        this.f23520b = 0;
        while (true) {
            int[] iArr = this.f23521c;
            if (i10 >= iArr.length - 1) {
                this.f23523e = iArr.length - 1;
                this.f23524f = 3;
                return;
            } else {
                iArr[i10] = this.f23519a.y();
                i10++;
            }
        }
    }

    public final void h() {
        int i10 = (this.f23524f + 1) % 4;
        this.f23524f = i10;
        if (i10 == 0) {
            this.f23521c[this.f23523e] = this.f23519a.y();
            this.f23523e = (this.f23523e + 1) % this.f23521c.length;
        }
    }

    public final void i(int i10) {
        this.f23520b = f(i10) ^ this.f23520b;
    }

    @Override
    public void reset() {
        D0 d02 = this.f23522d;
        if (d02 != null) {
            this.f23519a.j(d02);
        }
        g();
    }

    @Override
    public void update(byte b10) {
        h();
        int i10 = this.f23524f * 8;
        int i11 = 128;
        int i12 = 0;
        while (i11 > 0) {
            if ((b10 & i11) != 0) {
                i(i10 + i12);
            }
            i11 >>= 1;
            i12++;
        }
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            update(bArr[i10 + i12]);
        }
    }
}

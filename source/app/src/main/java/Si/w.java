package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Li.D0;
import Li.F0;

public final class w implements I {

    public static final int f23525h = 128;

    public final a f23526a;

    public final int f23527b;

    public final int[] f23528c;

    public final int[] f23529d;

    public F0 f23530e;

    public int f23531f;

    public int f23532g;

    public static class a extends F0 {
        public a(int i10) {
            super(i10);
        }

        public int z() {
            return super.v();
        }
    }

    public w(int i10) {
        this.f23526a = new a(i10);
        this.f23527b = i10;
        int i11 = i10 / 32;
        this.f23528c = new int[i11];
        this.f23529d = new int[i11 + 1];
    }

    private void f() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this.f23528c;
            if (i11 >= iArr.length) {
                break;
            }
            iArr[i11] = this.f23526a.z();
            i11++;
        }
        while (true) {
            int[] iArr2 = this.f23529d;
            if (i10 >= iArr2.length - 1) {
                this.f23531f = iArr2.length - 1;
                this.f23532g = 3;
                return;
            } else {
                iArr2[i10] = this.f23526a.z();
                i10++;
            }
        }
    }

    private void h() {
        int i10 = (this.f23532g + 1) % 4;
        this.f23532g = i10;
        if (i10 == 0) {
            this.f23529d[this.f23531f] = this.f23526a.z();
            this.f23531f = (this.f23531f + 1) % this.f23529d.length;
        }
    }

    private void i(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = this.f23528c;
            if (i11 >= iArr.length) {
                return;
            }
            iArr[i11] = iArr[i11] ^ e(i11, i10);
            i11++;
        }
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        this.f23526a.a(true, interfaceC2379k);
        this.f23530e = (F0) this.f23526a.copy();
        f();
    }

    @Override
    public String b() {
        return "Zuc256Mac-" + this.f23527b;
    }

    @Override
    public int c(byte[] bArr, int i10) {
        g();
        i(this.f23532g * 8);
        int i11 = 0;
        while (true) {
            int[] iArr = this.f23528c;
            if (i11 >= iArr.length) {
                reset();
                return d();
            }
            D0.s(iArr[i11], bArr, (i11 * 4) + i10);
            i11++;
        }
    }

    @Override
    public int d() {
        return this.f23527b / 8;
    }

    public final int e(int i10, int i11) {
        int[] iArr = this.f23529d;
        int i12 = this.f23531f;
        int i13 = iArr[(i12 + i10) % iArr.length];
        if (i11 == 0) {
            return i13;
        }
        int i14 = iArr[((i12 + i10) + 1) % iArr.length];
        return (i14 >>> (32 - i11)) | (i13 << i11);
    }

    public final void g() {
        int i10 = (this.f23532g + 1) % 4;
        this.f23532g = i10;
        if (i10 == 0) {
            this.f23531f = (this.f23531f + 1) % this.f23529d.length;
        }
    }

    @Override
    public void reset() {
        F0 f02 = this.f23530e;
        if (f02 != null) {
            this.f23526a.j(f02);
        }
        f();
    }

    @Override
    public void update(byte b10) {
        h();
        int i10 = this.f23532g * 8;
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

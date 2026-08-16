package Pl;

import Bi.InterfaceC2392y;

public class e {

    public InterfaceC2392y f21632a;

    public int f21633b;

    public int f21634c;

    public Ql.a f21635d;

    public byte[] f21636e;

    public byte[] f21637f;

    public int f21638g;

    public int f21639h;

    public int f21640i;

    public int f21641j;

    public int f21642k;

    public byte[] f21643l;

    public byte[] f21644m;

    public e(InterfaceC2392y interfaceC2392y, int i10, int i11) {
        this.f21641j = i10;
        this.f21632a = interfaceC2392y;
        this.f21635d = new Ql.a(interfaceC2392y);
        this.f21633b = this.f21632a.f();
        double d10 = i10;
        this.f21634c = ((int) Math.ceil((r7 << 3) / d10)) + ((int) Math.ceil(b((r7 << i10) + 1) / d10));
        this.f21640i = 1 << i10;
        this.f21642k = (int) Math.ceil(((((r8 - 1) * r7) + 1) + r7) / i11);
        int i12 = this.f21633b;
        this.f21643l = new byte[i12];
        this.f21636e = new byte[i12];
        this.f21644m = new byte[i12];
        this.f21637f = new byte[i12 * this.f21634c];
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f21636e);
    }

    public final int b(int i10) {
        int i11 = 1;
        int i12 = 2;
        while (i12 < i10) {
            i12 <<= 1;
            i11++;
        }
        return i11;
    }

    public byte[][] c() {
        return new byte[][]{this.f21644m, this.f21643l, this.f21637f, this.f21636e};
    }

    public int[] d() {
        return new int[]{this.f21638g, this.f21639h, this.f21642k, this.f21641j};
    }

    public void e(byte[] bArr) {
        this.f21638g = 0;
        this.f21639h = 0;
        byte[] bArr2 = new byte[this.f21633b];
        System.arraycopy(bArr, 0, bArr2, 0, this.f21643l.length);
        this.f21643l = this.f21635d.c(bArr2);
    }

    public e f() {
        e eVar = new e(this);
        eVar.g();
        return eVar;
    }

    public final void g() {
        byte[] bArr = new byte[this.f21632a.f()];
        for (int i10 = 0; i10 < this.f21642k + 10000; i10++) {
            int i11 = this.f21638g;
            if (i11 == this.f21634c && this.f21639h == this.f21640i - 1) {
                InterfaceC2392y interfaceC2392y = this.f21632a;
                byte[] bArr2 = this.f21637f;
                interfaceC2392y.update(bArr2, 0, bArr2.length);
                byte[] bArr3 = new byte[this.f21632a.f()];
                this.f21636e = bArr3;
                this.f21632a.c(bArr3, 0);
                return;
            }
            if (i11 == 0 || this.f21639h == this.f21640i - 1) {
                this.f21638g = i11 + 1;
                this.f21639h = 0;
                this.f21644m = this.f21635d.c(this.f21643l);
            } else {
                InterfaceC2392y interfaceC2392y2 = this.f21632a;
                byte[] bArr4 = this.f21644m;
                interfaceC2392y2.update(bArr4, 0, bArr4.length);
                this.f21644m = bArr;
                this.f21632a.c(bArr, 0);
                int i12 = this.f21639h + 1;
                this.f21639h = i12;
                if (i12 == this.f21640i - 1) {
                    byte[] bArr5 = this.f21644m;
                    byte[] bArr6 = this.f21637f;
                    int i13 = this.f21633b;
                    System.arraycopy(bArr5, 0, bArr6, (this.f21638g - 1) * i13, i13);
                }
            }
        }
        throw new IllegalStateException("unable to updateLeaf in steps: " + this.f21642k + " " + this.f21638g + " " + this.f21639h);
    }

    public String toString() {
        StringBuilder sb2;
        String str = "";
        for (int i10 = 0; i10 < 4; i10++) {
            str = str + d()[i10] + " ";
        }
        String str2 = str + " " + this.f21633b + " " + this.f21634c + " " + this.f21640i + " ";
        byte[][] c10 = c();
        for (int i11 = 0; i11 < 4; i11++) {
            if (c10[i11] != null) {
                sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(new String(em.h.h(c10[i11])));
                sb2.append(" ");
            } else {
                sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append("null ");
            }
            str2 = sb2.toString();
        }
        return str2;
    }

    public e(InterfaceC2392y interfaceC2392y, int i10, int i11, byte[] bArr) {
        this.f21641j = i10;
        this.f21632a = interfaceC2392y;
        this.f21635d = new Ql.a(interfaceC2392y);
        this.f21633b = this.f21632a.f();
        double d10 = i10;
        this.f21634c = ((int) Math.ceil((r7 << 3) / d10)) + ((int) Math.ceil(b((r7 << i10) + 1) / d10));
        this.f21640i = 1 << i10;
        this.f21642k = (int) Math.ceil(((((r8 - 1) * r7) + 1) + r7) / i11);
        int i12 = this.f21633b;
        this.f21643l = new byte[i12];
        this.f21636e = new byte[i12];
        this.f21644m = new byte[i12];
        this.f21637f = new byte[i12 * this.f21634c];
        e(bArr);
    }

    public e(InterfaceC2392y interfaceC2392y, byte[][] bArr, int[] iArr) {
        this.f21638g = iArr[0];
        this.f21639h = iArr[1];
        this.f21642k = iArr[2];
        this.f21641j = iArr[3];
        this.f21632a = interfaceC2392y;
        this.f21635d = new Ql.a(interfaceC2392y);
        this.f21633b = this.f21632a.f();
        this.f21634c = ((int) Math.ceil((r9 << 3) / this.f21641j)) + ((int) Math.ceil(b((r9 << this.f21641j) + 1) / this.f21641j));
        this.f21640i = 1 << this.f21641j;
        this.f21644m = bArr[0];
        this.f21643l = bArr[1];
        this.f21637f = bArr[2];
        this.f21636e = bArr[3];
    }

    public e(e eVar) {
        this.f21632a = eVar.f21632a;
        this.f21633b = eVar.f21633b;
        this.f21634c = eVar.f21634c;
        this.f21635d = eVar.f21635d;
        this.f21636e = org.bouncycastle.util.a.p(eVar.f21636e);
        this.f21637f = org.bouncycastle.util.a.p(eVar.f21637f);
        this.f21638g = eVar.f21638g;
        this.f21639h = eVar.f21639h;
        this.f21640i = eVar.f21640i;
        this.f21641j = eVar.f21641j;
        this.f21642k = eVar.f21642k;
        this.f21643l = org.bouncycastle.util.a.p(eVar.f21643l);
        this.f21644m = org.bouncycastle.util.a.p(eVar.f21644m);
    }
}

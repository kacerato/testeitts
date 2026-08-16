package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2392y;
import org.bouncycastle.crypto.DataLengthException;

public class C implements Bi.a0, InterfaceC2392y {

    public static final byte[] f9452l = org.bouncycastle.util.w.j("ParallelHash");

    public final C2651i f9453a;

    public final C2651i f9454b;

    public final int f9455c;

    public final int f9456d;

    public final int f9457e;

    public final byte[] f9458f;

    public final byte[] f9459g;

    public boolean f9460h;

    public int f9461i;

    public int f9462j;

    public final EnumC2383o f9463k;

    public C(int i10, byte[] bArr, int i11) {
        this(i10, bArr, i11, i10 * 2, EnumC2383o.ANY);
    }

    private void a() {
        d(this.f9458f, 0, this.f9462j);
        this.f9462j = 0;
    }

    @Override
    public String b() {
        return "ParallelHash" + this.f9453a.b().substring(6);
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        if (this.f9460h) {
            g(this.f9456d);
        }
        int e10 = this.f9453a.e(bArr, i10, f());
        reset();
        return e10;
    }

    public final void d(byte[] bArr, int i10, int i11) {
        this.f9454b.update(bArr, i10, i11);
        C2651i c2651i = this.f9454b;
        byte[] bArr2 = this.f9459g;
        c2651i.e(bArr2, 0, bArr2.length);
        C2651i c2651i2 = this.f9453a;
        byte[] bArr3 = this.f9459g;
        c2651i2.update(bArr3, 0, bArr3.length);
        this.f9461i++;
    }

    @Override
    public int e(byte[] bArr, int i10, int i11) {
        if (this.f9460h) {
            g(this.f9456d);
        }
        int e10 = this.f9453a.e(bArr, i10, i11);
        reset();
        return e10;
    }

    @Override
    public int f() {
        return this.f9456d;
    }

    public final void g(int i10) {
        if (this.f9462j != 0) {
            a();
        }
        byte[] d10 = b0.d(this.f9461i);
        byte[] d11 = b0.d(i10 * 8);
        this.f9453a.update(d10, 0, d10.length);
        this.f9453a.update(d11, 0, d11.length);
        this.f9460h = false;
    }

    @Override
    public int h(byte[] bArr, int i10, int i11) {
        if (this.f9460h) {
            g(0);
        }
        return this.f9453a.h(bArr, i10, i11);
    }

    @Override
    public int i() {
        return this.f9453a.i();
    }

    @Override
    public void reset() {
        this.f9453a.reset();
        org.bouncycastle.util.a.n(this.f9458f);
        byte[] c10 = b0.c(this.f9457e);
        this.f9453a.update(c10, 0, c10.length);
        this.f9461i = 0;
        this.f9462j = 0;
        this.f9460h = true;
    }

    @Override
    public void update(byte b10) throws IllegalStateException {
        byte[] bArr = this.f9458f;
        int i10 = this.f9462j;
        int i11 = i10 + 1;
        this.f9462j = i11;
        bArr[i10] = b10;
        if (i11 == bArr.length) {
            a();
        }
    }

    public C(int i10, byte[] bArr, int i11, int i12) {
        this(i10, bArr, i11, i12, EnumC2383o.ANY);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalStateException {
        int i12 = 0;
        int max = Math.max(0, i11);
        if (this.f9462j != 0) {
            while (i12 < max) {
                int i13 = this.f9462j;
                byte[] bArr2 = this.f9458f;
                if (i13 == bArr2.length) {
                    break;
                }
                this.f9462j = i13 + 1;
                bArr2[i13] = bArr[i12 + i10];
                i12++;
            }
            if (this.f9462j == this.f9458f.length) {
                a();
            }
        }
        if (i12 < max) {
            while (true) {
                int i14 = max - i12;
                int i15 = this.f9457e;
                if (i14 < i15) {
                    break;
                }
                d(bArr, i10 + i12, i15);
                i12 += this.f9457e;
            }
        }
        while (i12 < max) {
            update(bArr[i12 + i10]);
            i12++;
        }
    }

    public C(int i10, byte[] bArr, int i11, int i12, EnumC2383o enumC2383o) {
        this.f9453a = new C2651i(i10, f9452l, bArr);
        this.f9454b = new C2651i(i10, new byte[0], new byte[0]);
        this.f9455c = i10;
        this.f9457e = i11;
        this.f9456d = (i12 + 7) / 8;
        this.f9458f = new byte[i11];
        this.f9459g = new byte[(i10 * 2) / 8];
        this.f9463k = enumC2383o;
        Bi.r.a(Z.a(this, i10, enumC2383o));
        reset();
    }

    public C(C c10) {
        this.f9453a = new C2651i(c10.f9453a);
        this.f9454b = new C2651i(c10.f9454b);
        int i10 = c10.f9455c;
        this.f9455c = i10;
        this.f9457e = c10.f9457e;
        this.f9456d = c10.f9456d;
        this.f9458f = org.bouncycastle.util.a.p(c10.f9458f);
        this.f9459g = org.bouncycastle.util.a.p(c10.f9459g);
        EnumC2383o enumC2383o = c10.f9463k;
        this.f9463k = enumC2383o;
        this.f9460h = c10.f9460h;
        this.f9461i = c10.f9461i;
        this.f9462j = c10.f9462j;
        Bi.r.a(Z.a(this, i10, enumC2383o));
    }
}

package Si;

import Bi.I;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Li.C2795u;
import Ti.C3092c;
import Xi.C3360o0;
import Xi.w0;

public class l implements I {

    public byte[] f23440a;

    public byte[] f23441b;

    public int f23442c;

    public InterfaceC2374f f23443d;

    public Wi.a f23444e;

    public int f23445f;

    public C3360o0 f23446g;

    public C3360o0 f23447h;

    public l(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, interfaceC2374f.c() * 8, null);
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        C3360o0 c3360o0;
        reset();
        boolean z10 = interfaceC2379k instanceof C3360o0;
        if (!z10 && !(interfaceC2379k instanceof w0)) {
            throw new IllegalArgumentException("params must be an instance of KeyParameter or ParametersWithIV");
        }
        byte[] b10 = (z10 ? (C3360o0) interfaceC2379k : (C3360o0) ((w0) interfaceC2379k).b()).b();
        if (b10.length == 16) {
            c3360o0 = new C3360o0(b10, 0, 8);
            this.f23446g = new C3360o0(b10, 8, 8);
            this.f23447h = c3360o0;
        } else {
            if (b10.length != 24) {
                throw new IllegalArgumentException("Key must be either 112 or 168 bit long");
            }
            c3360o0 = new C3360o0(b10, 0, 8);
            this.f23446g = new C3360o0(b10, 8, 8);
            this.f23447h = new C3360o0(b10, 16, 8);
        }
        if (interfaceC2379k instanceof w0) {
            this.f23443d.a(true, new w0(c3360o0, ((w0) interfaceC2379k).a()));
        } else {
            this.f23443d.a(true, c3360o0);
        }
    }

    @Override
    public String b() {
        return "ISO9797Alg3";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        int c10 = this.f23443d.c();
        if (this.f23444e == null) {
            while (true) {
                int i11 = this.f23442c;
                if (i11 >= c10) {
                    break;
                }
                this.f23441b[i11] = 0;
                this.f23442c = i11 + 1;
            }
        } else {
            if (this.f23442c == c10) {
                this.f23443d.g(this.f23441b, 0, this.f23440a, 0);
                this.f23442c = 0;
            }
            this.f23444e.a(this.f23441b, this.f23442c);
        }
        this.f23443d.g(this.f23441b, 0, this.f23440a, 0);
        C2795u c2795u = new C2795u();
        c2795u.a(false, this.f23446g);
        byte[] bArr2 = this.f23440a;
        c2795u.g(bArr2, 0, bArr2, 0);
        c2795u.a(true, this.f23447h);
        byte[] bArr3 = this.f23440a;
        c2795u.g(bArr3, 0, bArr3, 0);
        System.arraycopy(this.f23440a, 0, bArr, i10, this.f23445f);
        reset();
        return this.f23445f;
    }

    @Override
    public int d() {
        return this.f23445f;
    }

    @Override
    public void reset() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f23441b;
            if (i10 >= bArr.length) {
                this.f23442c = 0;
                this.f23443d.reset();
                return;
            } else {
                bArr[i10] = 0;
                i10++;
            }
        }
    }

    @Override
    public void update(byte b10) {
        int i10 = this.f23442c;
        byte[] bArr = this.f23441b;
        if (i10 == bArr.length) {
            this.f23443d.g(bArr, 0, this.f23440a, 0);
            this.f23442c = 0;
        }
        byte[] bArr2 = this.f23441b;
        int i11 = this.f23442c;
        this.f23442c = i11 + 1;
        bArr2[i11] = b10;
    }

    public l(InterfaceC2374f interfaceC2374f, int i10) {
        this(interfaceC2374f, i10, null);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int c10 = this.f23443d.c();
        int i12 = this.f23442c;
        int i13 = c10 - i12;
        if (i11 > i13) {
            System.arraycopy(bArr, i10, this.f23441b, i12, i13);
            this.f23443d.g(this.f23441b, 0, this.f23440a, 0);
            this.f23442c = 0;
            i11 -= i13;
            i10 += i13;
            while (i11 > c10) {
                this.f23443d.g(bArr, i10, this.f23440a, 0);
                i11 -= c10;
                i10 += c10;
            }
        }
        System.arraycopy(bArr, i10, this.f23441b, this.f23442c, i11);
        this.f23442c += i11;
    }

    public l(InterfaceC2374f interfaceC2374f, int i10, Wi.a aVar) {
        if (i10 % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        if (!(interfaceC2374f instanceof C2795u)) {
            throw new IllegalArgumentException("cipher must be instance of DESEngine");
        }
        this.f23443d = C3092c.m(interfaceC2374f);
        this.f23444e = aVar;
        this.f23445f = i10 / 8;
        this.f23440a = new byte[interfaceC2374f.c()];
        this.f23441b = new byte[interfaceC2374f.c()];
        this.f23442c = 0;
    }

    public l(InterfaceC2374f interfaceC2374f, Wi.a aVar) {
        this(interfaceC2374f, interfaceC2374f.c() * 8, aVar);
    }
}

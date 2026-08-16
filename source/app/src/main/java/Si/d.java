package Si;

import Bi.I;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;

public class d implements I {

    public byte[] f23387a;

    public byte[] f23388b;

    public int f23389c;

    public o f23390d;

    public Wi.a f23391e;

    public int f23392f;

    public d(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, 8, (interfaceC2374f.c() * 8) / 2, null);
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        reset();
        this.f23390d.d(interfaceC2379k);
    }

    @Override
    public String b() {
        return this.f23390d.a();
    }

    @Override
    public int c(byte[] bArr, int i10) {
        int b10 = this.f23390d.b();
        Wi.a aVar = this.f23391e;
        if (aVar == null) {
            while (true) {
                int i11 = this.f23389c;
                if (i11 >= b10) {
                    break;
                }
                this.f23388b[i11] = 0;
                this.f23389c = i11 + 1;
            }
        } else {
            aVar.a(this.f23388b, this.f23389c);
        }
        this.f23390d.e(this.f23388b, 0, this.f23387a, 0);
        this.f23390d.c(this.f23387a);
        System.arraycopy(this.f23387a, 0, bArr, i10, this.f23392f);
        reset();
        return this.f23392f;
    }

    @Override
    public int d() {
        return this.f23392f;
    }

    @Override
    public void reset() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f23388b;
            if (i10 >= bArr.length) {
                this.f23389c = 0;
                this.f23390d.f();
                return;
            } else {
                bArr[i10] = 0;
                i10++;
            }
        }
    }

    @Override
    public void update(byte b10) {
        int i10 = this.f23389c;
        byte[] bArr = this.f23388b;
        if (i10 == bArr.length) {
            this.f23390d.e(bArr, 0, this.f23387a, 0);
            this.f23389c = 0;
        }
        byte[] bArr2 = this.f23388b;
        int i11 = this.f23389c;
        this.f23389c = i11 + 1;
        bArr2[i11] = b10;
    }

    public d(InterfaceC2374f interfaceC2374f, int i10, int i11) {
        this(interfaceC2374f, i10, i11, null);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int b10 = this.f23390d.b();
        int i12 = this.f23389c;
        int i13 = b10 - i12;
        if (i11 > i13) {
            System.arraycopy(bArr, i10, this.f23388b, i12, i13);
            this.f23390d.e(this.f23388b, 0, this.f23387a, 0);
            this.f23389c = 0;
            i11 -= i13;
            i10 += i13;
            while (i11 > b10) {
                this.f23390d.e(bArr, i10, this.f23387a, 0);
                i11 -= b10;
                i10 += b10;
            }
        }
        System.arraycopy(bArr, i10, this.f23388b, this.f23389c, i11);
        this.f23389c += i11;
    }

    public d(InterfaceC2374f interfaceC2374f, int i10, int i11, Wi.a aVar) {
        this.f23391e = null;
        if (i11 % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        this.f23387a = new byte[interfaceC2374f.c()];
        o oVar = new o(interfaceC2374f, i10);
        this.f23390d = oVar;
        this.f23391e = aVar;
        this.f23392f = i11 / 8;
        this.f23388b = new byte[oVar.b()];
        this.f23389c = 0;
    }

    public d(InterfaceC2374f interfaceC2374f, Wi.a aVar) {
        this(interfaceC2374f, 8, (interfaceC2374f.c() * 8) / 2, aVar);
    }
}

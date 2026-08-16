package Si;

import Bi.I;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Ti.C3092c;

public class c implements I {

    public byte[] f23381a;

    public byte[] f23382b;

    public int f23383c;

    public InterfaceC2374f f23384d;

    public Wi.a f23385e;

    public int f23386f;

    public c(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, (interfaceC2374f.c() * 8) / 2, null);
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        reset();
        this.f23384d.a(true, interfaceC2379k);
    }

    @Override
    public String b() {
        return this.f23384d.b();
    }

    @Override
    public int c(byte[] bArr, int i10) {
        int c10 = this.f23384d.c();
        if (this.f23385e == null) {
            while (true) {
                int i11 = this.f23383c;
                if (i11 >= c10) {
                    break;
                }
                this.f23382b[i11] = 0;
                this.f23383c = i11 + 1;
            }
        } else {
            if (this.f23383c == c10) {
                this.f23384d.g(this.f23382b, 0, this.f23381a, 0);
                this.f23383c = 0;
            }
            this.f23385e.a(this.f23382b, this.f23383c);
        }
        this.f23384d.g(this.f23382b, 0, this.f23381a, 0);
        System.arraycopy(this.f23381a, 0, bArr, i10, this.f23386f);
        reset();
        return this.f23386f;
    }

    @Override
    public int d() {
        return this.f23386f;
    }

    @Override
    public void reset() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f23382b;
            if (i10 >= bArr.length) {
                this.f23383c = 0;
                this.f23384d.reset();
                return;
            } else {
                bArr[i10] = 0;
                i10++;
            }
        }
    }

    @Override
    public void update(byte b10) {
        int i10 = this.f23383c;
        byte[] bArr = this.f23382b;
        if (i10 == bArr.length) {
            this.f23384d.g(bArr, 0, this.f23381a, 0);
            this.f23383c = 0;
        }
        byte[] bArr2 = this.f23382b;
        int i11 = this.f23383c;
        this.f23383c = i11 + 1;
        bArr2[i11] = b10;
    }

    public c(InterfaceC2374f interfaceC2374f, int i10) {
        this(interfaceC2374f, i10, null);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int c10 = this.f23384d.c();
        int i12 = this.f23383c;
        int i13 = c10 - i12;
        if (i11 > i13) {
            System.arraycopy(bArr, i10, this.f23382b, i12, i13);
            this.f23384d.g(this.f23382b, 0, this.f23381a, 0);
            this.f23383c = 0;
            i11 -= i13;
            i10 += i13;
            while (i11 > c10) {
                this.f23384d.g(bArr, i10, this.f23381a, 0);
                i11 -= c10;
                i10 += c10;
            }
        }
        System.arraycopy(bArr, i10, this.f23382b, this.f23383c, i11);
        this.f23383c += i11;
    }

    public c(InterfaceC2374f interfaceC2374f, int i10, Wi.a aVar) {
        if (i10 % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        this.f23384d = C3092c.m(interfaceC2374f);
        this.f23385e = aVar;
        this.f23386f = i10 / 8;
        this.f23381a = new byte[interfaceC2374f.c()];
        this.f23382b = new byte[interfaceC2374f.c()];
        this.f23383c = 0;
    }

    public c(InterfaceC2374f interfaceC2374f, Wi.a aVar) {
        this(interfaceC2374f, (interfaceC2374f.c() * 8) / 2, aVar);
    }
}

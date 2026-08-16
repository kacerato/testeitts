package Si;

import Bi.I;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Ti.C3092c;

public class b implements I {

    public byte[] f23376a;

    public byte[] f23377b;

    public int f23378c;

    public InterfaceC2374f f23379d;

    public int f23380e;

    public b(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, (interfaceC2374f.c() * 8) / 2);
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        reset();
        this.f23379d.a(true, interfaceC2379k);
    }

    @Override
    public String b() {
        return this.f23379d.b();
    }

    @Override
    public int c(byte[] bArr, int i10) {
        int c10 = this.f23379d.c();
        while (true) {
            int i11 = this.f23378c;
            if (i11 >= c10) {
                this.f23379d.g(this.f23377b, 0, this.f23376a, 0);
                System.arraycopy(this.f23376a, 0, bArr, i10, this.f23380e);
                reset();
                return this.f23380e;
            }
            this.f23377b[i11] = 0;
            this.f23378c = i11 + 1;
        }
    }

    @Override
    public int d() {
        return this.f23380e;
    }

    @Override
    public void reset() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f23377b;
            if (i10 >= bArr.length) {
                this.f23378c = 0;
                this.f23379d.reset();
                return;
            } else {
                bArr[i10] = 0;
                i10++;
            }
        }
    }

    @Override
    public void update(byte b10) {
        int i10 = this.f23378c;
        byte[] bArr = this.f23377b;
        if (i10 == bArr.length) {
            this.f23379d.g(bArr, 0, this.f23376a, 0);
            this.f23378c = 0;
        }
        byte[] bArr2 = this.f23377b;
        int i11 = this.f23378c;
        this.f23378c = i11 + 1;
        bArr2[i11] = b10;
    }

    public b(InterfaceC2374f interfaceC2374f, int i10) {
        if (i10 % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        this.f23379d = new C3092c(interfaceC2374f);
        this.f23380e = i10 / 8;
        this.f23376a = new byte[interfaceC2374f.c()];
        this.f23377b = new byte[interfaceC2374f.c()];
        this.f23378c = 0;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int c10 = this.f23379d.c();
        int i12 = this.f23378c;
        int i13 = c10 - i12;
        if (i11 > i13) {
            System.arraycopy(bArr, i10, this.f23377b, i12, i13);
            this.f23379d.g(this.f23377b, 0, this.f23376a, 0);
            this.f23378c = 0;
            i11 -= i13;
            i10 += i13;
            while (i11 > c10) {
                this.f23379d.g(bArr, i10, this.f23376a, 0);
                i11 -= c10;
                i10 += c10;
            }
        }
        System.arraycopy(bArr, i10, this.f23377b, this.f23378c, i11);
        this.f23378c += i11;
    }
}

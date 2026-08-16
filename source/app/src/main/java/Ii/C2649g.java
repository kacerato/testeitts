package Ii;

import Bi.EnumC2383o;
import org.bouncycastle.crypto.OutputLengthException;

public class C2649g implements Bi.a0 {

    public static final int f9802j = 65535;

    public static final int f9803k = 32;

    public static final long f9804l = 4294967296L;

    public int f9805a;

    public C2647e f9806b;

    public byte[] f9807c;

    public byte[] f9808d;

    public int f9809e;

    public int f9810f;

    public long f9811g;

    public long f9812h;

    public final EnumC2383o f9813i;

    public C2649g() {
        this(65535, EnumC2383o.ANY);
    }

    public final long a() {
        return this.f9805a * 4294967296L;
    }

    @Override
    public String b() {
        return "BLAKE2xs";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        return e(bArr, i10, this.f9805a);
    }

    public final int d() {
        int i10 = this.f9805a;
        if (i10 == 65535) {
            return 32;
        }
        return Math.min(32, i10 - this.f9810f);
    }

    @Override
    public int e(byte[] bArr, int i10, int i11) {
        int h10 = h(bArr, i10, i11);
        reset();
        return h10;
    }

    @Override
    public int f() {
        return this.f9805a;
    }

    public long g() {
        return 137438953472L;
    }

    @Override
    public int h(byte[] bArr, int i10, int i11) {
        if (i10 > bArr.length - i11) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.f9807c == null) {
            byte[] bArr2 = new byte[this.f9806b.f()];
            this.f9807c = bArr2;
            this.f9806b.c(bArr2, 0);
        }
        int i12 = this.f9805a;
        if (i12 != 65535) {
            if (this.f9810f + i11 > i12) {
                throw new IllegalArgumentException("Output length is above the digest length");
            }
        } else if ((this.f9811g << 5) >= g()) {
            throw new IllegalArgumentException("Maximum length is 2^32 blocks of 32 bytes");
        }
        for (int i13 = 0; i13 < i11; i13++) {
            if (this.f9809e >= 32) {
                C2647e c2647e = new C2647e(d(), 32, this.f9812h);
                byte[] bArr3 = this.f9807c;
                c2647e.update(bArr3, 0, bArr3.length);
                org.bouncycastle.util.a.e0(this.f9808d, (byte) 0);
                c2647e.c(this.f9808d, 0);
                this.f9809e = 0;
                this.f9812h++;
                this.f9811g++;
            }
            byte[] bArr4 = this.f9808d;
            int i14 = this.f9809e;
            bArr[i10 + i13] = bArr4[i14];
            this.f9809e = i14 + 1;
            this.f9810f++;
        }
        return i11;
    }

    @Override
    public int i() {
        return this.f9806b.i();
    }

    @Override
    public void reset() {
        this.f9806b.reset();
        this.f9807c = null;
        this.f9809e = 32;
        this.f9810f = 0;
        this.f9811g = 0L;
        this.f9812h = a();
    }

    @Override
    public void update(byte b10) {
        this.f9806b.update(b10);
    }

    public C2649g(int i10) {
        this(i10, EnumC2383o.ANY);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f9806b.update(bArr, i10, i11);
    }

    public C2649g(int i10, EnumC2383o enumC2383o) {
        this(i10, null, null, null, enumC2383o);
    }

    public C2649g(int i10, byte[] bArr) {
        this(i10, bArr, null, null, EnumC2383o.ANY);
    }

    public C2649g(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, EnumC2383o enumC2383o) {
        this.f9807c = null;
        this.f9808d = new byte[32];
        this.f9809e = 32;
        this.f9810f = 0;
        this.f9811g = 0L;
        if (i10 < 1 || i10 > 65535) {
            throw new IllegalArgumentException("BLAKE2xs digest length must be between 1 and 2^16-1");
        }
        this.f9805a = i10;
        this.f9812h = a();
        this.f9813i = enumC2383o;
        this.f9806b = new C2647e(32, bArr, bArr2, bArr3, this.f9812h, enumC2383o);
    }

    public C2649g(C2649g c2649g) {
        this.f9807c = null;
        this.f9808d = new byte[32];
        this.f9809e = 32;
        this.f9810f = 0;
        this.f9811g = 0L;
        this.f9805a = c2649g.f9805a;
        this.f9806b = new C2647e(c2649g.f9806b);
        this.f9807c = org.bouncycastle.util.a.p(c2649g.f9807c);
        this.f9808d = org.bouncycastle.util.a.p(c2649g.f9808d);
        this.f9809e = c2649g.f9809e;
        this.f9810f = c2649g.f9810f;
        this.f9811g = c2649g.f9811g;
        this.f9812h = c2649g.f9812h;
        this.f9813i = c2649g.f9813i;
    }
}

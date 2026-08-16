package Xi;

import java.security.SecureRandom;

public class C3367s0 extends Bi.G {

    public int f29414d;

    public int f29415e;

    public boolean f29416f;

    public C3367s0(SecureRandom secureRandom, int i10, int i11, int i12) {
        this(secureRandom, i10, i11, i12, false);
    }

    public int c() {
        return this.f29414d;
    }

    public int d() {
        return this.f29415e;
    }

    public boolean e() {
        return this.f29416f;
    }

    public C3367s0(SecureRandom secureRandom, int i10, int i11, int i12, boolean z10) {
        super(secureRandom, i10);
        this.f29416f = false;
        this.f29414d = i11;
        if (i12 % 2 == 1) {
            throw new IllegalArgumentException("cntSmallPrimes must be a multiple of 2");
        }
        if (i12 < 30) {
            throw new IllegalArgumentException("cntSmallPrimes must be >= 30 for security reasons");
        }
        this.f29415e = i12;
        this.f29416f = z10;
    }
}

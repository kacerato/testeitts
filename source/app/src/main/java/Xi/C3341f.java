package Xi;

import java.security.SecureRandom;

public class C3341f extends Bi.G {

    public C3345h f29339d;

    public C3341f(SecureRandom secureRandom, C3345h c3345h) {
        super(secureRandom, d(c3345h));
        this.f29339d = c3345h;
    }

    public static int d(C3345h c3345h) {
        return c3345h.d().bitLength();
    }

    public C3345h c() {
        return this.f29339d;
    }
}

package Xi;

import java.security.SecureRandom;

public class C3355m extends Bi.G {

    public C3363q f29380d;

    public C3355m(SecureRandom secureRandom, C3363q c3363q) {
        super(secureRandom, d(c3363q));
        this.f29380d = c3363q;
    }

    public static int d(C3363q c3363q) {
        return c3363q.d() != 0 ? c3363q.d() : c3363q.f().bitLength();
    }

    public C3363q c() {
        return this.f29380d;
    }
}

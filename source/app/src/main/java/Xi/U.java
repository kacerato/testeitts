package Xi;

import java.security.SecureRandom;

public class U extends Bi.G {

    public W f29284d;

    public U(SecureRandom secureRandom, W w10) {
        super(secureRandom, d(w10));
        this.f29284d = w10;
    }

    public static int d(W w10) {
        return w10.b() != 0 ? w10.b() : w10.c().bitLength();
    }

    public W c() {
        return this.f29284d;
    }
}

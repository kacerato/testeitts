package hl;

import Xi.C3335c;
import java.security.SecureRandom;

public class C13531d implements Yk.d {

    public final SecureRandom f91103a;

    public C13531d(SecureRandom secureRandom) {
        this.f91103a = secureRandom;
    }

    @Override
    public Yk.c a(C3335c c3335c) {
        byte[] bArr = new byte[32];
        byte[] bArr2 = new byte[2048];
        k.i(this.f91103a, bArr, bArr2, ((h) c3335c).f91111c);
        return new Yk.c(new h(bArr2), bArr);
    }

    public Yk.c b(C3335c c3335c) {
        return a(c3335c);
    }
}

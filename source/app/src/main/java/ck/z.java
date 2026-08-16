package ck;

import java.security.spec.KeySpec;

public class z implements KeySpec {

    public final char[] f34958b;

    public final byte[] f34959c;

    public final int f34960d;

    public final int f34961e;

    public final int f34962f;

    public final int f34963g;

    public z(char[] cArr, byte[] bArr, int i10, int i11, int i12, int i13) {
        this.f34958b = cArr;
        this.f34959c = org.bouncycastle.util.a.p(bArr);
        this.f34960d = i10;
        this.f34961e = i11;
        this.f34962f = i12;
        this.f34963g = i13;
    }

    public int a() {
        return this.f34961e;
    }

    public int b() {
        return this.f34960d;
    }

    public int c() {
        return this.f34963g;
    }

    public int d() {
        return this.f34962f;
    }

    public char[] e() {
        return this.f34958b;
    }

    public byte[] f() {
        return org.bouncycastle.util.a.p(this.f34959c);
    }
}

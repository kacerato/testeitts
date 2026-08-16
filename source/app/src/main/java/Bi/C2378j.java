package Bi;

import java.security.SecureRandom;

public class C2378j {

    public SecureRandom f1864a;

    public int f1865b;

    public byte[] a() {
        byte[] bArr = new byte[this.f1865b];
        this.f1864a.nextBytes(bArr);
        return bArr;
    }

    public void b(G g10) {
        this.f1864a = g10.a();
        this.f1865b = (g10.b() + 7) / 8;
        r.a(new Hi.c("SymKeyGen", g10.b()));
    }
}

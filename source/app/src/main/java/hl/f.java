package hl;

import Bi.C2371c;
import Bi.G;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.security.SecureRandom;
import org.bouncycastle.crypto.util.f;

public class f {

    public final f.b f91105a;

    public final SecureRandom f91106b;

    public boolean f91107c = false;

    public static class a extends f {

        public C2371c f91108d;

        public C13530c f91109e;

        public a(C13486b c13486b, byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
            super(c13486b, bArr, bArr2, secureRandom);
            this.f91109e = new C13530c();
            C13532e c13532e = new C13532e();
            c13532e.b(new G(secureRandom, 2048));
            C2371c a10 = c13532e.a();
            this.f91108d = a10;
            this.f91109e.b(a10.a());
        }

        public org.bouncycastle.crypto.util.f e(byte[] bArr) {
            if (this.f91107c) {
                throw new IllegalStateException("builder already used");
            }
            this.f91107c = true;
            this.f91105a.b(this.f91109e.a(f.d(bArr)));
            return this.f91105a.a();
        }

        public byte[] f() {
            return f.c((h) this.f91108d.b());
        }

        public f g(byte[] bArr) {
            this.f91105a.c(bArr);
            return this;
        }
    }

    public static class b extends f {
        public b(C13486b c13486b, byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
            super(c13486b, bArr, bArr2, secureRandom);
        }

        public org.bouncycastle.crypto.util.f e() {
            if (this.f91107c) {
                throw new IllegalStateException("builder already used");
            }
            this.f91107c = true;
            return this.f91105a.a();
        }

        public byte[] f(byte[] bArr) {
            Yk.c a10 = new C13531d(this.f91106b).a(f.d(bArr));
            this.f91105a.b(a10.b());
            return f.c((h) a10.a());
        }

        public f g(byte[] bArr) {
            this.f91105a.c(bArr);
            return this;
        }
    }

    public f(C13486b c13486b, byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        this.f91105a = new f.b(c13486b, bArr, bArr2);
        this.f91106b = secureRandom;
    }

    public static byte[] c(h hVar) {
        try {
            return new h0(new C13486b(Xk.m.f29584v), hVar.d()).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    public static h d(byte[] bArr) {
        return new h(h0.w(bArr).z().J());
    }
}

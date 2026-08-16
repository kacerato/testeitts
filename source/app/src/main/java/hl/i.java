package hl;

import Bi.C2371c;
import Bi.G;
import Bi.a0;
import Ii.Q;
import java.security.SecureRandom;

public class i {

    public final a0 f91112a;

    public static class b {

        public final C2371c f91113a;

        public final C13530c f91114b;

        public byte[] f91115c;

        public boolean f91116d;

        public b(SecureRandom secureRandom) {
            C13530c c13530c = new C13530c();
            this.f91114b = c13530c;
            this.f91115c = null;
            this.f91116d = false;
            C13532e c13532e = new C13532e();
            c13532e.b(new G(secureRandom, 2048));
            C2371c a10 = c13532e.a();
            this.f91113a = a10;
            c13530c.b(a10.a());
        }

        public i a(byte[] bArr) {
            if (this.f91116d) {
                throw new IllegalStateException("builder already used");
            }
            this.f91116d = true;
            return new i(this.f91114b.a(new h(bArr)), this.f91115c);
        }

        public byte[] b() {
            return ((h) this.f91113a.b()).d();
        }

        public b c(byte[] bArr) {
            this.f91115c = org.bouncycastle.util.a.p(bArr);
            return this;
        }
    }

    public static class c {

        public final SecureRandom f91117a;

        public byte[] f91118b = null;

        public byte[] f91119c = null;

        public boolean f91120d = false;

        public c(SecureRandom secureRandom) {
            this.f91117a = secureRandom;
        }

        public i a() {
            if (this.f91120d) {
                throw new IllegalStateException("builder already used");
            }
            this.f91120d = true;
            return new i(this.f91119c, this.f91118b);
        }

        public byte[] b(byte[] bArr) {
            Yk.c a10 = new C13531d(this.f91117a).a(new h(bArr));
            this.f91119c = a10.b();
            return ((h) a10.a()).d();
        }

        public c c(byte[] bArr) {
            this.f91118b = org.bouncycastle.util.a.p(bArr);
            return this;
        }
    }

    public i(byte[] bArr, byte[] bArr2) {
        Q q10 = new Q(256);
        this.f91112a = q10;
        q10.update(bArr, 0, bArr.length);
        if (bArr2 != null) {
            q10.update(bArr2, 0, bArr2.length);
        }
        org.bouncycastle.util.a.e0(bArr, (byte) 0);
    }

    public static void b(byte[] bArr, byte[] bArr2) {
        for (int i10 = 0; i10 != bArr.length; i10++) {
            bArr[i10] = (byte) (bArr[i10] ^ bArr2[i10]);
        }
    }

    public byte[] a(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        this.f91112a.e(bArr2, 0, length);
        b(bArr, bArr2);
        org.bouncycastle.util.a.e0(bArr2, (byte) 0);
        return bArr;
    }
}

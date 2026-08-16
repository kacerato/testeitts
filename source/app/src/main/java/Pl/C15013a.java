package pl;

import Bi.A;
import Bi.B;
import Bi.C2371c;
import Bi.P;
import Xi.C3335c;
import cl.C4221d;
import cl.C4222e;
import cl.C4223f;
import cl.i;
import cl.j;
import hi.C13486b;
import il.C13754a;
import il.C13755b;
import il.C13756c;
import il.C13757d;
import il.h;
import java.io.IOException;
import java.security.SecureRandom;
import org.bouncycastle.crypto.util.f;

public class C15013a {

    public final f.b f104144a;

    public final SecureRandom f104145b;

    public boolean f104146c = false;

    public static class C1958a extends C15013a {

        public C2371c f104147d;

        public A f104148e;

        public C1958a(Yk.e eVar, C13486b c13486b, byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
            super(c13486b, bArr, bArr2, secureRandom);
            A c13754a;
            if (eVar instanceof i) {
                cl.g gVar = new cl.g();
                gVar.b(new C4223f(secureRandom, (i) eVar));
                C2371c a10 = gVar.a();
                this.f104147d = a10;
                c13754a = new C4221d((j) a10.a());
            } else {
                if (!(eVar instanceof il.g)) {
                    throw new IllegalArgumentException("unknown KEMParameters");
                }
                C13757d c13757d = new C13757d();
                c13757d.b(new C13756c(secureRandom, (il.g) eVar));
                C2371c a11 = c13757d.a();
                this.f104147d = a11;
                c13754a = new C13754a((h) a11.a());
            }
            this.f104148e = c13754a;
        }

        public org.bouncycastle.crypto.util.f e(byte[] bArr) {
            this.f104144a.b(this.f104148e.b(bArr));
            return this.f104144a.a();
        }

        public byte[] f() {
            return C15013a.c(this.f104147d.b());
        }

        public C15013a g(byte[] bArr) {
            this.f104144a.c(bArr);
            return this;
        }
    }

    public static class b extends C15013a {

        public B f104149d;

        public b(Yk.e eVar, C13486b c13486b, byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
            super(c13486b, bArr, bArr2, secureRandom);
            B c13755b;
            if (eVar instanceof i) {
                c13755b = new C4222e(secureRandom);
            } else {
                if (!(eVar instanceof il.g)) {
                    throw new IllegalArgumentException("unknown KEMParameters");
                }
                c13755b = new C13755b(secureRandom);
            }
            this.f104149d = c13755b;
        }

        public org.bouncycastle.crypto.util.f e() {
            if (this.f104146c) {
                throw new IllegalStateException("builder already used");
            }
            this.f104146c = true;
            return this.f104144a.a();
        }

        public byte[] f(byte[] bArr) {
            this.f104146c = false;
            try {
                P a10 = this.f104149d.a(C15013a.d(bArr));
                this.f104144a.b(a10.f());
                return a10.e();
            } catch (IOException unused) {
                throw new IllegalArgumentException("cannot decode public key");
            }
        }

        public C15013a g(byte[] bArr) {
            this.f104144a.c(bArr);
            return this;
        }
    }

    public C15013a(C13486b c13486b, byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        this.f104144a = new f.b(c13486b, bArr, bArr2);
        this.f104145b = secureRandom;
    }

    public static byte[] c(C3335c c3335c) {
        try {
            return C15018f.a(c3335c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    public static C3335c d(byte[] bArr) throws IOException {
        return C15016d.d(bArr);
    }
}

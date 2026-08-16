package ck;

import hi.C13486b;
import java.security.spec.AlgorithmParameterSpec;

public class r implements AlgorithmParameterSpec {

    public final String f34937b;

    public final int f34938c;

    public final AlgorithmParameterSpec f34939d;

    public final C13486b f34940e;

    public byte[] f34941f;

    public static final class a {

        public final String f34942a;

        public final int f34943b;

        public AlgorithmParameterSpec f34944c;

        public C13486b f34945d;

        public byte[] f34946e;

        public a(String str, int i10) {
            this(str, i10, null);
        }

        public r a() {
            return new r(this.f34942a, this.f34943b, this.f34944c, this.f34945d, this.f34946e);
        }

        public a b(C13486b c13486b) {
            this.f34945d = c13486b;
            return this;
        }

        public a c() {
            this.f34945d = null;
            return this;
        }

        public a d(AlgorithmParameterSpec algorithmParameterSpec) {
            this.f34944c = algorithmParameterSpec;
            return this;
        }

        public a(String str, int i10, byte[] bArr) {
            this.f34942a = str;
            this.f34943b = i10;
            this.f34945d = new C13486b(ki.r.f95320P6, new C13486b(Sh.d.f23337c));
            this.f34946e = bArr == null ? new byte[0] : org.bouncycastle.util.a.p(bArr);
        }
    }

    public r(String str, int i10, AlgorithmParameterSpec algorithmParameterSpec, C13486b c13486b, byte[] bArr) {
        this.f34937b = str;
        this.f34938c = i10;
        this.f34939d = algorithmParameterSpec;
        this.f34940e = c13486b;
        this.f34941f = bArr;
    }

    public C13486b a() {
        return this.f34940e;
    }

    public String b() {
        return this.f34937b;
    }

    public int c() {
        return this.f34938c;
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f34941f);
    }

    public AlgorithmParameterSpec e() {
        return this.f34939d;
    }
}

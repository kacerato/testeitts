package okhttp3;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

public final class l {

    public static final C14589i[] f99386e;

    public static final C14589i[] f99387f;

    public static final l f99388g;

    public static final l f99389h;

    public static final l f99390i;

    public static final l f99391j;

    public final boolean f99392a;

    public final boolean f99393b;

    @Nullable
    public final String[] f99394c;

    @Nullable
    public final String[] f99395d;

    static {
        C14589i c14589i = C14589i.f99337n1;
        C14589i c14589i2 = C14589i.f99340o1;
        C14589i c14589i3 = C14589i.f99343p1;
        C14589i c14589i4 = C14589i.f99346q1;
        C14589i c14589i5 = C14589i.f99349r1;
        C14589i c14589i6 = C14589i.f99296Z0;
        C14589i c14589i7 = C14589i.f99307d1;
        C14589i c14589i8 = C14589i.f99298a1;
        C14589i c14589i9 = C14589i.f99310e1;
        C14589i c14589i10 = C14589i.f99328k1;
        C14589i c14589i11 = C14589i.f99325j1;
        C14589i[] c14589iArr = {c14589i, c14589i2, c14589i3, c14589i4, c14589i5, c14589i6, c14589i7, c14589i8, c14589i9, c14589i10, c14589i11};
        f99386e = c14589iArr;
        C14589i[] c14589iArr2 = {c14589i, c14589i2, c14589i3, c14589i4, c14589i5, c14589i6, c14589i7, c14589i8, c14589i9, c14589i10, c14589i11, C14589i.f99266K0, C14589i.f99268L0, C14589i.f99321i0, C14589i.f99324j0, C14589i.f99257G, C14589i.f99265K, C14589i.f99326k};
        f99387f = c14589iArr2;
        a e10 = new a(true).e(c14589iArr);
        H h10 = H.TLS_1_3;
        H h11 = H.TLS_1_2;
        f99388g = e10.h(h10, h11).f(true).c();
        a e11 = new a(true).e(c14589iArr2);
        H h12 = H.TLS_1_1;
        H h13 = H.TLS_1_0;
        f99389h = e11.h(h10, h11, h12, h13).f(true).c();
        f99390i = new a(true).e(c14589iArr2).h(h13).f(true).c();
        f99391j = new a(false).c();
    }

    public l(a aVar) {
        this.f99392a = aVar.f99396a;
        this.f99394c = aVar.f99397b;
        this.f99395d = aVar.f99398c;
        this.f99393b = aVar.f99399d;
    }

    public void a(SSLSocket sSLSocket, boolean z10) {
        l e10 = e(sSLSocket, z10);
        String[] strArr = e10.f99395d;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = e10.f99394c;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    @Nullable
    public List<C14589i> b() {
        String[] strArr = this.f99394c;
        if (strArr != null) {
            return C14589i.b(strArr);
        }
        return null;
    }

    public boolean c(SSLSocket sSLSocket) {
        if (!this.f99392a) {
            return false;
        }
        String[] strArr = this.f99395d;
        if (strArr != null && !Gg.c.C(Gg.c.f7814q, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f99394c;
        return strArr2 == null || Gg.c.C(C14589i.f99299b, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public boolean d() {
        return this.f99392a;
    }

    public final l e(SSLSocket sSLSocket, boolean z10) {
        String[] A10 = this.f99394c != null ? Gg.c.A(C14589i.f99299b, sSLSocket.getEnabledCipherSuites(), this.f99394c) : sSLSocket.getEnabledCipherSuites();
        String[] A11 = this.f99395d != null ? Gg.c.A(Gg.c.f7814q, sSLSocket.getEnabledProtocols(), this.f99395d) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int x10 = Gg.c.x(C14589i.f99299b, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z10 && x10 != -1) {
            A10 = Gg.c.j(A10, supportedCipherSuites[x10]);
        }
        return new a(this).d(A10).g(A11).c();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        l lVar = (l) obj;
        boolean z10 = this.f99392a;
        if (z10 != lVar.f99392a) {
            return false;
        }
        return !z10 || (Arrays.equals(this.f99394c, lVar.f99394c) && Arrays.equals(this.f99395d, lVar.f99395d) && this.f99393b == lVar.f99393b);
    }

    public boolean f() {
        return this.f99393b;
    }

    @Nullable
    public List<H> g() {
        String[] strArr = this.f99395d;
        if (strArr != null) {
            return H.b(strArr);
        }
        return null;
    }

    public int hashCode() {
        if (this.f99392a) {
            return ((((527 + Arrays.hashCode(this.f99394c)) * 31) + Arrays.hashCode(this.f99395d)) * 31) + (!this.f99393b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (!this.f99392a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.f99394c != null ? b().toString() : "[all enabled]") + ", tlsVersions=" + (this.f99395d != null ? g().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f99393b + ")";
    }

    public static final class a {

        public boolean f99396a;

        @Nullable
        public String[] f99397b;

        @Nullable
        public String[] f99398c;

        public boolean f99399d;

        public a(boolean z10) {
            this.f99396a = z10;
        }

        public a a() {
            if (!this.f99396a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            this.f99397b = null;
            return this;
        }

        public a b() {
            if (!this.f99396a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            this.f99398c = null;
            return this;
        }

        public l c() {
            return new l(this);
        }

        public a d(String... strArr) {
            if (!this.f99396a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f99397b = (String[]) strArr.clone();
            return this;
        }

        public a e(C14589i... c14589iArr) {
            if (!this.f99396a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[c14589iArr.length];
            for (int i10 = 0; i10 < c14589iArr.length; i10++) {
                strArr[i10] = c14589iArr[i10].f99366a;
            }
            return d(strArr);
        }

        public a f(boolean z10) {
            if (!this.f99396a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f99399d = z10;
            return this;
        }

        public a g(String... strArr) {
            if (!this.f99396a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f99398c = (String[]) strArr.clone();
            return this;
        }

        public a h(H... hArr) {
            if (!this.f99396a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[hArr.length];
            for (int i10 = 0; i10 < hArr.length; i10++) {
                strArr[i10] = hArr[i10].javaName;
            }
            return g(strArr);
        }

        public a(l lVar) {
            this.f99396a = lVar.f99392a;
            this.f99397b = lVar.f99394c;
            this.f99398c = lVar.f99395d;
            this.f99399d = lVar.f99393b;
        }
    }
}

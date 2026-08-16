package org.bouncycastle.openssl;

import Xh.A;
import Xh.t;
import Xh.v;
import Xh.y;
import gm.C13400a;
import gm.C13401b;
import hi.C13486b;
import hi.C13508u;
import hi.h0;
import java.io.IOException;
import java.io.Reader;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import ki.r;
import li.C14143e;
import li.C14145g;
import li.C14146h;
import oh.A0;
import oh.B;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import org.openjdk.tools.doclint.DocLint;
import uh.C15624o;

public class i extends gm.e {

    public static final String f101871e = "CERTIFICATE REQUEST";

    public static final String f101872f = "NEW CERTIFICATE REQUEST";

    public static final String f101873g = "CERTIFICATE";

    public static final String f101874h = "TRUSTED CERTIFICATE";

    public static final String f101875i = "X509 CERTIFICATE";

    public static final String f101876j = "X509 CRL";

    public static final String f101877k = "PKCS7";

    public static final String f101878l = "CMS";

    public static final String f101879m = "ATTRIBUTE CERTIFICATE";

    public static final String f101880n = "EC PARAMETERS";

    public static final String f101881o = "PUBLIC KEY";

    public static final String f101882p = "RSA PUBLIC KEY";

    public static final String f101883q = "RSA PRIVATE KEY";

    public static final String f101884r = "DSA PRIVATE KEY";

    public static final String f101885s = "EC PRIVATE KEY";

    public static final String f101886t = "ENCRYPTED PRIVATE KEY";

    public static final String f101887u = "PRIVATE KEY";

    public final Map f101888d;

    public static class b implements org.bouncycastle.openssl.h {
        public b() {
        }

        @Override
        public org.bouncycastle.openssl.g a(byte[] bArr) throws IOException {
            try {
                E G10 = E.G(bArr);
                if (G10.size() != 6) {
                    throw new PEMException("malformed sequence in DSA private key");
                }
                C14539s F10 = C14539s.F(G10.I(1));
                C14539s F11 = C14539s.F(G10.I(2));
                C14539s F12 = C14539s.F(G10.I(3));
                C14539s F13 = C14539s.F(G10.I(4));
                C14539s F14 = C14539s.F(G10.I(5));
                C14549x c14549x = r.f95349s6;
                return new org.bouncycastle.openssl.g(new h0(new C13486b(c14549x, new C13508u(F10.I(), F11.I(), F12.I())), F13), new v(new C13486b(c14549x, new C13508u(F10.I(), F11.I(), F12.I())), F14));
            } catch (IOException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new PEMException("problem creating DSA private key: " + e11.toString(), e11);
            }
        }
    }

    public static class c implements gm.d {
        public c() {
        }

        @Override
        public Object a(C13401b c13401b) throws IOException {
            try {
                B B10 = B.B(c13401b.b());
                if (B10 instanceof C14549x) {
                    return B.B(c13401b.b());
                }
                if (B10 instanceof E) {
                    return ki.l.B(B10);
                }
                return null;
            } catch (IOException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new PEMException("exception extracting EC named curve: " + e11.toString());
            }
        }
    }

    public static class d implements org.bouncycastle.openssl.h {
        public d() {
        }

        @Override
        public org.bouncycastle.openssl.g a(byte[] bArr) throws IOException {
            try {
                Zh.a u10 = Zh.a.u(E.G(bArr));
                C13486b c13486b = new C13486b(r.f95305I5, u10.y());
                v vVar = new v(c13486b, u10);
                return u10.z() != null ? new org.bouncycastle.openssl.g(new h0(c13486b, u10.z().F()), vVar) : new org.bouncycastle.openssl.g(null, vVar);
            } catch (IOException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new PEMException("problem creating EC private key: " + e11.toString(), e11);
            }
        }
    }

    public static class e implements gm.d {
        @Override
        public Object a(C13401b c13401b) throws IOException {
            try {
                return new Sk.n(Xh.j.w(c13401b.b()));
            } catch (Exception e10) {
                throw new PEMException("problem parsing ENCRYPTED PRIVATE KEY: " + e10.toString(), e10);
            }
        }
    }

    public static class f implements gm.d {

        public final org.bouncycastle.openssl.h f101889a;

        public f(org.bouncycastle.openssl.h hVar) {
            this.f101889a = hVar;
        }

        @Override
        public Object a(C13401b c13401b) throws IOException {
            boolean z10 = false;
            String str = null;
            for (C13400a c13400a : c13401b.c()) {
                if (c13400a.b().equals("Proc-Type") && c13400a.c().equals("4,ENCRYPTED")) {
                    z10 = true;
                } else if (c13400a.b().equals("DEK-Info")) {
                    str = c13400a.c();
                }
            }
            byte[] b10 = c13401b.b();
            try {
                if (!z10) {
                    return this.f101889a.a(b10);
                }
                StringTokenizer stringTokenizer = new StringTokenizer(str, DocLint.SEPARATOR);
                return new org.bouncycastle.openssl.e(stringTokenizer.nextToken(), em.h.b(stringTokenizer.nextToken()), b10, this.f101889a);
            } catch (IOException e10) {
                if (z10) {
                    throw new PEMException("exception decoding - please check password and data.", e10);
                }
                throw new PEMException(e10.getMessage(), e10);
            } catch (IllegalArgumentException e11) {
                if (z10) {
                    throw new PEMException("exception decoding - please check password and data.", e11);
                }
                throw new PEMException(e11.getMessage(), e11);
            }
        }
    }

    public static class g implements gm.d {
        public g() {
        }

        @Override
        public Object a(C13401b c13401b) throws IOException {
            try {
                return new Sk.e(c13401b.b());
            } catch (Exception e10) {
                throw new PEMException("problem parsing certrequest: " + e10.toString(), e10);
            }
        }
    }

    public static class h implements gm.d {
        public h() {
        }

        @Override
        public Object a(C13401b c13401b) throws IOException {
            try {
                return C15624o.w(new oh.r(c13401b.b()).k());
            } catch (Exception e10) {
                throw new PEMException("problem parsing PKCS7 object: " + e10.toString(), e10);
            }
        }
    }

    public static class C1924i implements gm.d {
        @Override
        public Object a(C13401b c13401b) throws IOException {
            try {
                return v.v(c13401b.b());
            } catch (Exception e10) {
                throw new PEMException("problem parsing PRIVATE KEY: " + e10.toString(), e10);
            }
        }
    }

    public static class j implements gm.d {
        @Override
        public Object a(C13401b c13401b) throws IOException {
            return h0.w(c13401b.b());
        }
    }

    public static class k implements org.bouncycastle.openssl.h {
        public k() {
        }

        @Override
        public org.bouncycastle.openssl.g a(byte[] bArr) throws IOException {
            try {
                E G10 = E.G(bArr);
                if (G10.size() != 9) {
                    throw new PEMException("malformed sequence in RSA private key");
                }
                y y10 = y.y(G10);
                A a10 = new A(y10.A(), y10.E());
                C13486b c13486b = new C13486b(t.f29017H0, A0.f98776c);
                return new org.bouncycastle.openssl.g(new h0(c13486b, a10), new v(c13486b, y10));
            } catch (IOException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new PEMException("problem creating RSA private key: " + e11.toString(), e11);
            }
        }
    }

    public static class l implements gm.d {
        @Override
        public Object a(C13401b c13401b) throws IOException {
            try {
                return new h0(new C13486b(t.f29017H0, A0.f98776c), A.u(c13401b.b()));
            } catch (IOException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new PEMException("problem extracting key: " + e11.toString(), e11);
            }
        }
    }

    public static class m implements gm.d {
        public m() {
        }

        @Override
        public Object a(C13401b c13401b) throws IOException {
            return new C14143e(c13401b.b());
        }
    }

    public static class n implements gm.d {
        public n() {
        }

        @Override
        public Object a(C13401b c13401b) throws IOException {
            try {
                return new C14145g(c13401b.b());
            } catch (Exception e10) {
                throw new PEMException("problem parsing cert: " + e10.toString(), e10);
            }
        }
    }

    public static class o implements gm.d {
        public o() {
        }

        @Override
        public Object a(C13401b c13401b) throws IOException {
            try {
                return new C14146h(c13401b.b());
            } catch (Exception e10) {
                throw new PEMException("problem parsing cert: " + e10.toString(), e10);
            }
        }
    }

    public static class p implements gm.d {
        public p() {
        }

        @Override
        public Object a(C13401b c13401b) throws IOException {
            try {
                return new org.bouncycastle.openssl.m(c13401b.b());
            } catch (Exception e10) {
                throw new PEMException("problem parsing cert: " + e10.toString(), e10);
            }
        }
    }

    public i(Reader reader) {
        super(reader);
        HashMap hashMap = new HashMap();
        this.f101888d = hashMap;
        hashMap.put(f101871e, new g());
        hashMap.put(f101872f, new g());
        hashMap.put(f101873g, new o());
        hashMap.put(f101874h, new p());
        hashMap.put(f101875i, new o());
        hashMap.put(f101876j, new n());
        hashMap.put(f101877k, new h());
        hashMap.put(f101878l, new h());
        hashMap.put(f101879m, new m());
        hashMap.put(f101880n, new c());
        hashMap.put(f101881o, new j());
        hashMap.put(f101882p, new l());
        hashMap.put(f101883q, new f(new k()));
        hashMap.put(f101884r, new f(new b()));
        hashMap.put(f101885s, new f(new d()));
        hashMap.put(f101886t, new e());
        hashMap.put(f101887u, new C1924i());
    }

    public Set<String> d() {
        return Collections.unmodifiableSet(this.f101888d.o());
    }

    public Object readObject() throws IOException {
        C13401b c10 = c();
        if (c10 == null) {
            return null;
        }
        String d10 = c10.d();
        Object obj = this.f101888d.get(d10);
        if (obj != null) {
            return ((gm.d) obj).a(c10);
        }
        throw new IOException("unrecognised object: " + d10);
    }
}

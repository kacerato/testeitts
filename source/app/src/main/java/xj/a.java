package Xj;

import Bi.InterfaceC2392y;
import Bi.r;
import Xh.C;
import Xh.C3327b;
import Xh.C3329d;
import Xh.m;
import Xh.n;
import Xh.p;
import Xh.q;
import Xh.s;
import Xh.t;
import Xh.u;
import ck.C4217j;
import ck.v;
import dk.C12947c;
import dk.C12948d;
import dk.InterfaceC12950f;
import ei.C13155a;
import fk.InterfaceC13235a;
import fk.InterfaceC13250p;
import hi.C13477A;
import hi.C13478B;
import hi.C13479C;
import hi.C13486b;
import hi.C13499k;
import hi.C13510w;
import hi.E0;
import hi.M;
import hi.g0;
import hi.h0;
import hi.j0;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import nj.C14454c;
import oh.A0;
import oh.AbstractC14506b;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14509c0;
import oh.C14517g0;
import oh.C14518h;
import oh.C14537q0;
import oh.C14549x;
import oh.E;
import oh.G;
import oh.G0;
import oh.I0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.jce.provider.C14740v;
import org.bouncycastle.util.w;
import yh.InterfaceC16192a;
import yj.InterfaceC16198c;

public class a extends KeyStoreSpi implements t, E0, InterfaceC13235a {

    public static final String f29452o = "org.bouncycastle.pkcs12.max_it_count";

    public static final int f29453p = 20;

    public static final int f29454q = 51200;

    public static final k f29455r = new k();

    public static final int f29456s = 0;

    public static final int f29457t = 1;

    public static final int f29458u = 2;

    public static final int f29459v = 3;

    public static final int f29460w = 4;

    public static final int f29461x = 0;

    public static final int f29462y = 1;

    public static final int f29463z = 2;

    public l f29465c;

    public l f29466d;

    public l f29467e;

    public CertificateFactory f29471i;

    public C14549x f29472j;

    public C14549x f29473k;

    public final InterfaceC12950f f29464b = new C12947c();

    public Hashtable f29468f = new Hashtable();

    public Hashtable f29469g = new Hashtable();

    public SecureRandom f29470h = r.h();

    public C13486b f29474l = new C13486b(Bj.b.f1911i, A0.f98776c);

    public int f29475m = 102400;

    public int f29476n = 20;

    public static class b extends Yj.a {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public b() {
            super(r0, new a(r2, r3, r3));
            C12947c c12947c = new C12947c();
            C12947c c12947c2 = new C12947c();
            C14549x c14549x = t.f29106g4;
        }
    }

    public static class c extends Yj.a {
        public c() {
            super(new C12947c(), new a(new C12947c(), t.f29106g4, t.f29115j4));
        }
    }

    public static class d extends Yj.a {
        public d() {
            super(new C12947c(), new a(new C12947c(), Sh.d.f23323Q, Sh.d.f23373y));
        }
    }

    public static class e extends Yj.a {
        public e() {
            super(new C12947c(), new a(new C12947c(), Sh.d.f23327U, Sh.d.f23309C));
        }
    }

    public class f {

        public byte[] f29477a;

        public f(PublicKey publicKey) {
            this.f29477a = a.this.f(publicKey).x();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof f) {
                return org.bouncycastle.util.a.g(this.f29477a, ((f) obj).f29477a);
            }
            return false;
        }

        public int hashCode() {
            return org.bouncycastle.util.a.t0(this.f29477a);
        }

        public f(byte[] bArr) {
            this.f29477a = bArr;
        }
    }

    public static class g extends Yj.a {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public g() {
            super(r0, new a(r2, r3, r3));
            C12948d c12948d = new C12948d();
            C12948d c12948d2 = new C12948d();
            C14549x c14549x = t.f29106g4;
        }
    }

    public static class h extends Yj.a {
        public h() {
            super(new C12948d(), new a(new C12948d(), t.f29106g4, t.f29115j4));
        }
    }

    public static class i extends Yj.a {
        public i() {
            super(new C12947c(), new a(new C12947c(), Sh.d.f23323Q, Sh.d.f23373y));
        }
    }

    public static class j extends Yj.a {
        public j() {
            super(new C12947c(), new a(new C12947c(), Sh.d.f23327U, Sh.d.f23309C));
        }
    }

    public static class k {

        public final Map f29479a;

        public k() {
            HashMap hashMap = new HashMap();
            hashMap.put(new C14549x("1.2.840.113533.7.66.10"), org.bouncycastle.util.k.j(128));
            hashMap.put(t.f29123n1, org.bouncycastle.util.k.j(192));
            hashMap.put(Sh.d.f23373y, org.bouncycastle.util.k.j(128));
            hashMap.put(Sh.d.f23314H, org.bouncycastle.util.k.j(192));
            hashMap.put(Sh.d.f23323Q, org.bouncycastle.util.k.j(256));
            hashMap.put(Sh.d.f23309C, org.bouncycastle.util.k.j(128));
            hashMap.put(Sh.d.f23327U, org.bouncycastle.util.k.j(256));
            hashMap.put(Aj.a.f827a, org.bouncycastle.util.k.j(128));
            hashMap.put(Aj.a.f828b, org.bouncycastle.util.k.j(192));
            hashMap.put(Aj.a.f829c, org.bouncycastle.util.k.j(256));
            hashMap.put(InterfaceC16192a.f130274f, org.bouncycastle.util.k.j(256));
            this.f29479a = Collections.unmodifiableMap(hashMap);
        }

        public int a(C13486b c13486b) {
            Integer num = (Integer) this.f29479a.get(c13486b.u());
            if (num != null) {
                return num.intValue();
            }
            return -1;
        }
    }

    public static class l {

        public Hashtable f29480a;

        public Hashtable f29481b;

        public l() {
            this.f29480a = new Hashtable();
            this.f29481b = new Hashtable();
        }

        public Enumeration b() {
            return this.f29480a.elements();
        }

        public Object c(String str) {
            String str2 = (String) this.f29481b.get(str == null ? null : w.l(str));
            if (str2 == null) {
                return null;
            }
            return this.f29480a.get(str2);
        }

        public Enumeration d() {
            return this.f29480a.keys();
        }

        public void e(String str, Object obj) {
            String l10 = str == null ? null : w.l(str);
            String str2 = (String) this.f29481b.get(l10);
            if (str2 != null) {
                this.f29480a.remove(str2);
            }
            this.f29481b.put(l10, str);
            this.f29480a.put(str, obj);
        }

        public Object f(String str) {
            String str2 = (String) this.f29481b.remove(str == null ? null : w.l(str));
            if (str2 == null) {
                return null;
            }
            return this.f29480a.remove(str2);
        }

        public int g() {
            return this.f29480a.size();
        }
    }

    public a(InterfaceC12950f interfaceC12950f, C14549x c14549x, C14549x c14549x2) {
        this.f29465c = new l();
        this.f29466d = new l();
        this.f29467e = new l();
        this.f29472j = c14549x;
        this.f29473k = c14549x2;
        try {
            this.f29471i = interfaceC12950f.r("X.509");
        } catch (Exception e10) {
            throw new IllegalArgumentException("can't create cert factory - " + e10.toString());
        }
    }

    public static byte[] j(h0 h0Var) {
        InterfaceC2392y d10 = org.bouncycastle.crypto.util.g.d();
        byte[] bArr = new byte[d10.f()];
        byte[] F10 = h0Var.z().F();
        d10.update(F10, 0, F10.length);
        d10.c(bArr, 0);
        return bArr;
    }

    public static int k(C14549x c14549x) {
        return (c14549x.A(Sh.d.f23323Q) || c14549x.A(Sh.d.f23327U)) ? 32 : 16;
    }

    public static boolean m(C14549x c14549x) {
        return c14549x.A(Sh.d.f23323Q) || c14549x.A(Sh.d.f23327U) || c14549x.A(Sh.d.f23373y) || c14549x.A(Sh.d.f23309C);
    }

    @Override
    public void a(SecureRandom secureRandom) {
        this.f29470h = secureRandom;
    }

    public final byte[] c(C14549x c14549x, byte[] bArr, int i10, char[] cArr, boolean z10, byte[] bArr2) throws Exception {
        PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, i10);
        Mac w10 = this.f29464b.w(c14549x.J());
        w10.init(new Hj.l(cArr, z10), pBEParameterSpec);
        w10.update(bArr2);
        return w10.doFinal();
    }

    public final Cipher d(int i10, char[] cArr, C13486b c13486b) throws NoSuchAlgorithmException, InvalidKeySpecException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, NoSuchProviderException {
        AlgorithmParameterSpec c4217j;
        p v10 = p.v(c13486b.x());
        q u10 = q.u(v10.x().x());
        C13486b v11 = C13486b.v(v10.u());
        SecretKeyFactory s10 = this.f29464b.s(v10.x().u().J());
        SecretKey generateSecret = u10.A() ? s10.generateSecret(new PBEKeySpec(cArr, u10.z(), q(u10.v()), f29455r.a(v11))) : s10.generateSecret(new v(cArr, u10.z(), q(u10.v()), f29455r.a(v11), u10.y()));
        Cipher e10 = this.f29464b.e(v10.u().u().J());
        InterfaceC14516g x10 = v10.u().x();
        if (x10 instanceof AbstractC14551y) {
            c4217j = new IvParameterSpec(AbstractC14551y.F(x10).H());
        } else {
            E G10 = E.G(x10);
            if (!(G10.I(1) instanceof C14549x)) {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(v11.u().J(), C14720a.f101701e);
                try {
                    algorithmParameters.init(G10.getEncoded());
                    e10.init(i10, generateSecret, algorithmParameters);
                    return e10;
                } catch (IOException e11) {
                    throw new InvalidKeySpecException(e11.getMessage());
                }
            }
            yh.d w10 = yh.d.w(x10);
            c4217j = new C4217j(w10.u(), w10.v());
        }
        e10.init(i10, generateSecret, c4217j);
        return e10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C e(String str, Certificate certificate) throws CertificateEncodingException {
        G0 g02;
        C3329d c3329d = new C3329d(t.f29124n2, new C0(certificate.getEncoded()));
        C14518h c14518h = new C14518h();
        boolean z10 = false;
        if (certificate instanceof InterfaceC13250p) {
            InterfaceC13250p interfaceC13250p = (InterfaceC13250p) certificate;
            C14549x c14549x = t.f29108h2;
            AbstractC14506b abstractC14506b = (AbstractC14506b) interfaceC13250p.c(c14549x);
            if ((abstractC14506b == null || !abstractC14506b.getString().equals(str)) && str != null) {
                interfaceC13250p.a(c14549x, new C14537q0(str));
            }
            Enumeration d10 = interfaceC13250p.d();
            while (d10.hasMoreElements()) {
                C14549x c14549x2 = (C14549x) d10.nextElement();
                if (!c14549x2.A(t.f29113j2)) {
                    C14518h c14518h2 = new C14518h();
                    c14518h2.a(c14549x2);
                    c14518h2.a(new I0(interfaceC13250p.c(c14549x2)));
                    c14518h.a(new G0(c14518h2));
                    z10 = true;
                }
            }
        }
        if (!z10) {
            C14518h c14518h3 = new C14518h();
            c14518h3.a(t.f29108h2);
            c14518h3.a(new I0(new C14537q0(str)));
            c14518h.a(new G0(c14518h3));
        }
        if (certificate instanceof X509Certificate) {
            C13479C v10 = j0.w(((X509Certificate) certificate).getTBSCertificate()).v();
            if (v10 != null) {
                C13478B x10 = v10.x(C13478B.f90549y);
                if (x10 != null) {
                    C14518h c14518h4 = new C14518h();
                    c14518h4.a(InterfaceC16198c.f130356R);
                    c14518h4.a(new I0(C13477A.v(x10.A()).x()));
                    c14518h.a(new G0(c14518h4));
                } else {
                    C14518h c14518h5 = new C14518h();
                    c14518h5.a(InterfaceC16198c.f130356R);
                    c14518h5.a(new I0(M.f90684d));
                    g02 = new G0(c14518h5);
                }
            } else {
                C14518h c14518h6 = new C14518h();
                c14518h6.a(InterfaceC16198c.f130356R);
                c14518h6.a(new I0(M.f90684d));
                g02 = new G0(c14518h6);
            }
            c14518h.a(g02);
        }
        return new C(t.f29080Z3, c3329d.r(), new I0(c14518h));
    }

    @Override
    public Enumeration engineAliases() {
        Hashtable hashtable = new Hashtable();
        Enumeration d10 = this.f29467e.d();
        while (d10.hasMoreElements()) {
            hashtable.put(d10.nextElement(), "cert");
        }
        Enumeration d11 = this.f29465c.d();
        while (d11.hasMoreElements()) {
            String str = (String) d11.nextElement();
            if (hashtable.get(str) == null) {
                hashtable.put(str, "key");
            }
        }
        return hashtable.keys();
    }

    @Override
    public boolean engineContainsAlias(String str) {
        return (this.f29467e.c(str) == null && this.f29465c.c(str) == null) ? false : true;
    }

    @Override
    public void engineDeleteEntry(String str) throws KeyStoreException {
        String str2;
        Certificate certificate;
        Certificate certificate2 = (Certificate) this.f29467e.f(str);
        if (certificate2 != null) {
            this.f29468f.remove(new f(certificate2.getPublicKey()));
        }
        if (((Key) this.f29465c.f(str)) == null || (str2 = (String) this.f29466d.f(str)) == null || (certificate = (Certificate) this.f29469g.remove(str2)) == null) {
            return;
        }
        this.f29468f.remove(new f(certificate.getPublicKey()));
    }

    @Override
    public Certificate engineGetCertificate(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null alias passed to getCertificate.");
        }
        Certificate certificate = (Certificate) this.f29467e.c(str);
        if (certificate != null) {
            return certificate;
        }
        String str2 = (String) this.f29466d.c(str);
        return (Certificate) (str2 != null ? this.f29469g.get(str2) : this.f29469g.get(str));
    }

    @Override
    public String engineGetCertificateAlias(Certificate certificate) {
        Enumeration b10 = this.f29467e.b();
        Enumeration d10 = this.f29467e.d();
        while (b10.hasMoreElements()) {
            Certificate certificate2 = (Certificate) b10.nextElement();
            String str = (String) d10.nextElement();
            if (certificate2.equals(certificate)) {
                return str;
            }
        }
        Enumeration elements = this.f29469g.elements();
        Enumeration keys = this.f29469g.keys();
        while (elements.hasMoreElements()) {
            Certificate certificate3 = (Certificate) elements.nextElement();
            String str2 = (String) keys.nextElement();
            if (certificate3.equals(certificate)) {
                return str2;
            }
        }
        return null;
    }

    @Override
    public Certificate[] engineGetCertificateChain(String str) {
        byte[] A10;
        if (str == null) {
            throw new IllegalArgumentException("null alias passed to getCertificateChain.");
        }
        Certificate[] certificateArr = null;
        if (!engineIsKeyEntry(str)) {
            return null;
        }
        Certificate engineGetCertificate = engineGetCertificate(str);
        if (engineGetCertificate != null) {
            Vector vector = new Vector();
            while (engineGetCertificate != null) {
                X509Certificate x509Certificate = (X509Certificate) engineGetCertificate;
                byte[] extensionValue = x509Certificate.getExtensionValue(C13478B.f90547w.J());
                Certificate certificate = (extensionValue == null || (A10 = C13499k.y(AbstractC14551y.F(extensionValue).H()).A()) == null) ? null : (Certificate) this.f29468f.get(new f(A10));
                if (certificate == null) {
                    Principal issuerDN = x509Certificate.getIssuerDN();
                    if (!issuerDN.equals(x509Certificate.getSubjectDN())) {
                        Enumeration keys = this.f29468f.keys();
                        while (true) {
                            if (!keys.hasMoreElements()) {
                                break;
                            }
                            X509Certificate x509Certificate2 = (X509Certificate) this.f29468f.get(keys.nextElement());
                            if (x509Certificate2.getSubjectDN().equals(issuerDN)) {
                                try {
                                    x509Certificate.verify(x509Certificate2.getPublicKey());
                                    certificate = x509Certificate2;
                                    break;
                                } catch (Exception unused) {
                                    continue;
                                }
                            }
                        }
                    }
                }
                if (!vector.contains(engineGetCertificate)) {
                    vector.addElement(engineGetCertificate);
                    if (certificate != engineGetCertificate) {
                        engineGetCertificate = certificate;
                    }
                }
                engineGetCertificate = null;
            }
            int size = vector.size();
            certificateArr = new Certificate[size];
            for (int i10 = 0; i10 != size; i10++) {
                certificateArr[i10] = (Certificate) vector.elementAt(i10);
            }
        }
        return certificateArr;
    }

    @Override
    public Date engineGetCreationDate(String str) {
        if (str == null) {
            throw new NullPointerException("alias == null");
        }
        if (this.f29465c.c(str) == null && this.f29467e.c(str) == null) {
            return null;
        }
        return new Date();
    }

    @Override
    public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
        if (str != null) {
            return (Key) this.f29465c.c(str);
        }
        throw new IllegalArgumentException("null alias passed to getKey.");
    }

    @Override
    public boolean engineIsCertificateEntry(String str) {
        return this.f29467e.c(str) != null && this.f29465c.c(str) == null;
    }

    @Override
    public boolean engineIsKeyEntry(String str) {
        return this.f29465c.c(str) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x036a  */
    /* JADX WARN: Type inference failed for: r2v8, types: [Xj.a$l] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.security.cert.Certificate, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v42 */
    /* JADX WARN: Type inference failed for: r4v5, types: [oh.y] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.String] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void engineLoad(InputStream inputStream, char[] cArr) throws IOException {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        ?? r42;
        ?? r52;
        if (inputStream == null) {
            return;
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        bufferedInputStream.mark(10);
        int read = bufferedInputStream.read();
        if (read < 0) {
            throw new EOFException("no data in keystore stream");
        }
        if (read != 48) {
            throw new IOException("stream does not represent a PKCS12 key store");
        }
        bufferedInputStream.reset();
        try {
            u v10 = u.v(new oh.r(bufferedInputStream).k());
            Xh.g u10 = v10.u();
            Vector vector = new Vector();
            int i10 = 0;
            if (v10.x() == null) {
                z10 = false;
                z11 = true;
            } else {
                if (cArr == null) {
                    throw new NullPointerException("no password supplied when one expected");
                }
                n x10 = v10.x();
                C13510w x11 = x10.x();
                this.f29474l = x11.u();
                byte[] y10 = x10.y();
                this.f29475m = q(x10.v());
                this.f29476n = y10.length;
                byte[] H10 = ((AbstractC14551y) u10.u()).H();
                try {
                    byte[] c10 = c(this.f29474l.u(), y10, this.f29475m, cArr, false, H10);
                    byte[] v11 = x11.v();
                    if (org.bouncycastle.util.a.I(c10, v11)) {
                        z10 = false;
                    } else {
                        if (cArr.length > 0) {
                            throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
                        }
                        if (!org.bouncycastle.util.a.I(c(this.f29474l.u(), y10, this.f29475m, cArr, true, H10), v11)) {
                            throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
                        }
                        z10 = true;
                    }
                    z11 = false;
                } catch (IOException e10) {
                    throw e10;
                } catch (Exception e11) {
                    throw new IOException("error constructing MAC: " + e11.toString());
                }
            }
            C0787a c0787a = null;
            this.f29465c = new l();
            this.f29466d = new l();
            if (u10.v().A(t.f29014G1)) {
                Xh.g[] v12 = C3327b.w(AbstractC14551y.F(u10.u()).H()).v();
                z12 = false;
                z13 = true;
                for (int i11 = 0; i11 != v12.length; i11++) {
                    if (v12[i11].v().A(t.f29014G1)) {
                        E G10 = E.G(AbstractC14551y.F(v12[i11].u()).H());
                        for (int i12 = 0; i12 != G10.size(); i12++) {
                            C y11 = C.y(G10.I(i12));
                            if (y11.v().A(t.f29076Y3)) {
                                z12 = o(y11, cArr, z10);
                                z13 = false;
                            } else if (y11.v().A(t.f29080Z3)) {
                                vector.addElement(y11);
                            } else if (y11.v().A(t.f29072X3)) {
                                n(y11);
                            } else {
                                PrintStream printStream = System.out;
                                printStream.println("extra in data " + ((Object) y11.v()));
                                printStream.println(C13155a.c(y11));
                            }
                        }
                    } else if (v12[i11].v().A(t.f29038O1)) {
                        Xh.i y12 = Xh.i.y(v12[i11].u());
                        E G11 = E.G(g(false, y12.x(), cArr, z10, y12.u().H()));
                        for (int i13 = 0; i13 != G11.size(); i13++) {
                            C y13 = C.y(G11.I(i13));
                            if (y13.v().A(t.f29080Z3)) {
                                vector.addElement(y13);
                            } else if (y13.v().A(t.f29076Y3)) {
                                z12 = o(y13, cArr, z10);
                            } else if (y13.v().A(t.f29072X3)) {
                                n(y13);
                            } else {
                                PrintStream printStream2 = System.out;
                                printStream2.println("extra in encryptedData " + ((Object) y13.v()));
                                printStream2.println(C13155a.c(y13));
                            }
                        }
                        z13 = false;
                    } else {
                        PrintStream printStream3 = System.out;
                        printStream3.println("extra " + v12[i11].v().J());
                        printStream3.println("extra " + C13155a.c(v12[i11].u()));
                    }
                }
            } else {
                z12 = false;
                z13 = true;
            }
            this.f29467e = new l();
            this.f29468f = new Hashtable();
            this.f29469g = new Hashtable();
            int i14 = 0;
            while (i14 != vector.size()) {
                C c11 = (C) vector.elementAt(i14);
                C3329d w10 = C3329d.w(c11.x());
                if (!w10.u().A(t.f29124n2)) {
                    throw new RuntimeException("Unsupported certificate type: " + ((Object) w10.u()));
                }
                try {
                    ?? generateCertificate = this.f29471i.generateCertificate(new ByteArrayInputStream(((AbstractC14551y) w10.v()).H()));
                    if (c11.u() != null) {
                        Enumeration I10 = c11.u().I();
                        Object obj = c0787a;
                        r52 = obj;
                        while (I10.hasMoreElements()) {
                            E G12 = E.G(I10.nextElement());
                            C14549x K10 = C14549x.K(G12.I(i10));
                            G F10 = G.F(G12.I(1));
                            if (F10.size() > 0) {
                                B b10 = (B) F10.H(i10);
                                if (generateCertificate instanceof InterfaceC13250p) {
                                    InterfaceC13250p interfaceC13250p = (InterfaceC13250p) generateCertificate;
                                    InterfaceC14516g c12 = interfaceC13250p.c(K10);
                                    if (c12 != null) {
                                        if (K10.A(t.f29113j2)) {
                                            String j10 = em.h.j(((AbstractC14551y) b10).H());
                                            if (!this.f29465c.f29481b.containsKey(j10) && !this.f29466d.f29481b.containsKey(j10)) {
                                            }
                                        }
                                        if (!c12.r().A(b10)) {
                                            throw new IOException("attempt to add existing attribute with different value");
                                        }
                                    } else {
                                        if (F10.size() > 1) {
                                            interfaceC13250p.a(K10, F10);
                                        } else {
                                            interfaceC13250p.a(K10, b10);
                                        }
                                        if (K10.A(t.f29108h2)) {
                                            obj = obj;
                                            if (K10.A(t.f29113j2)) {
                                                obj = (AbstractC14551y) b10;
                                            }
                                        } else {
                                            r52 = ((AbstractC14506b) b10).getString();
                                            obj = obj;
                                        }
                                    }
                                }
                                if (K10.A(t.f29108h2)) {
                                }
                            } else {
                                obj = obj;
                            }
                            i10 = 0;
                        }
                        r42 = obj;
                    } else {
                        r42 = 0;
                        r52 = null;
                    }
                    this.f29468f.put(new f(generateCertificate.getPublicKey()), generateCertificate);
                    if (!z12) {
                        if (r42 != 0) {
                            this.f29469g.put(new String(em.h.h(r42.H())), generateCertificate);
                        }
                        if (r52 != null) {
                            this.f29467e.e(r52, generateCertificate);
                        }
                    } else if (this.f29469g.isEmpty()) {
                        String str = new String(em.h.h(f(generateCertificate.getPublicKey()).x()));
                        this.f29469g.put(str, generateCertificate);
                        l lVar = this.f29465c;
                        lVar.e(str, lVar.f("unmarked"));
                    }
                    i14++;
                    i10 = 0;
                    c0787a = null;
                } catch (Exception e12) {
                    throw new RuntimeException(e12.toString());
                }
            }
            if (z11 && z13 && cArr != null && cArr.length != 0 && !org.bouncycastle.util.q.f("org.bouncycastle.pkcs12.ignore_useless_passwd")) {
                throw new IOException("password supplied for keystore that does not require one");
            }
        } catch (Exception e13) {
            throw new IOException(e13.getMessage());
        }
    }

    public boolean engineProbe(InputStream inputStream) throws IOException {
        return false;
    }

    @Override
    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        if (this.f29465c.c(str) == null) {
            this.f29467e.e(str, certificate);
            this.f29468f.put(new f(certificate.getPublicKey()), certificate);
        } else {
            throw new KeyStoreException("There is a key entry with the name " + str + ".");
        }
    }

    @Override
    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        if (!(key instanceof PrivateKey)) {
            throw new KeyStoreException("PKCS12 does not support non-PrivateKeys");
        }
        if ((key instanceof PrivateKey) && certificateArr == null) {
            throw new KeyStoreException("no certificate chain for private key");
        }
        if (this.f29465c.c(str) != null) {
            engineDeleteEntry(str);
        }
        this.f29465c.e(str, key);
        if (certificateArr != null) {
            this.f29467e.e(str, certificateArr[0]);
            for (int i10 = 0; i10 != certificateArr.length; i10++) {
                this.f29468f.put(new f(certificateArr[i10].getPublicKey()), certificateArr[i10]);
            }
        }
    }

    @Override
    public int engineSize() {
        Hashtable hashtable = new Hashtable();
        Enumeration d10 = this.f29467e.d();
        while (d10.hasMoreElements()) {
            hashtable.put(d10.nextElement(), "cert");
        }
        Enumeration d11 = this.f29465c.d();
        while (d11.hasMoreElements()) {
            String str = (String) d11.nextElement();
            if (hashtable.get(str) == null) {
                hashtable.put(str, "key");
            }
        }
        return hashtable.size();
    }

    @Override
    public void engineStore(OutputStream outputStream, char[] cArr) throws IOException {
        h(outputStream, cArr, false);
    }

    public final g0 f(PublicKey publicKey) {
        try {
            return new g0(j(h0.w(publicKey.getEncoded())));
        } catch (Exception unused) {
            throw new RuntimeException("error creating key");
        }
    }

    public byte[] g(boolean z10, C13486b c13486b, char[] cArr, boolean z11, byte[] bArr) throws IOException {
        C14549x u10 = c13486b.u();
        int i10 = z10 ? 1 : 2;
        if (u10.O(t.f29094d4)) {
            s v10 = s.v(c13486b.x());
            try {
                PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(v10.u(), org.bouncycastle.util.b.l(v10.x()));
                Hj.l lVar = new Hj.l(cArr, z11);
                Cipher e10 = this.f29464b.e(u10.J());
                e10.init(i10, lVar, pBEParameterSpec);
                return e10.doFinal(bArr);
            } catch (Exception e11) {
                throw new IOException("exception decrypting data - " + e11.toString());
            }
        }
        if (!u10.A(t.f29112j1)) {
            throw new IOException("unknown PBE algorithm: " + ((Object) u10));
        }
        try {
            return d(i10, cArr, c13486b).doFinal(bArr);
        } catch (Exception e12) {
            throw new IOException("exception decrypting data - " + e12.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02de A[Catch: CertificateEncodingException -> 0x02cb, TryCatch #3 {CertificateEncodingException -> 0x02cb, blocks: (B:59:0x028e, B:61:0x02b3, B:63:0x02c0, B:66:0x02d6, B:68:0x02de, B:69:0x02e9, B:70:0x02ee, B:72:0x02f4, B:76:0x0328, B:77:0x0369, B:79:0x02ce), top: B:58:0x028e }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02f4 A[Catch: CertificateEncodingException -> 0x02cb, LOOP:4: B:70:0x02ee->B:72:0x02f4, LOOP_END, TryCatch #3 {CertificateEncodingException -> 0x02cb, blocks: (B:59:0x028e, B:61:0x02b3, B:63:0x02c0, B:66:0x02d6, B:68:0x02de, B:69:0x02e9, B:70:0x02ee, B:72:0x02f4, B:76:0x0328, B:77:0x0369, B:79:0x02ce), top: B:58:0x028e }] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.Hashtable] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.Hashtable] */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.security.cert.Certificate, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.security.cert.Certificate, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(OutputStream outputStream, char[] cArr, boolean z10) throws IOException {
        C13486b c13486b;
        n nVar;
        String str;
        boolean z11;
        C14549x c14549x;
        Enumeration d10;
        Enumeration enumeration;
        byte[] bArr;
        C13486b c13486b2;
        boolean z12;
        int g10 = this.f29465c.g();
        String str2 = InterfaceC14520i.f98894c;
        if (g10 == 0) {
            if (cArr == null) {
                Enumeration d11 = this.f29467e.d();
                C14518h c14518h = new C14518h();
                while (d11.hasMoreElements()) {
                    try {
                        String str3 = (String) d11.nextElement();
                        c14518h.a(e(str3, (Certificate) this.f29467e.c(str3)));
                    } catch (CertificateEncodingException e10) {
                        throw new IOException("Error encoding certificate: " + e10.toString());
                    }
                }
                C14549x c14549x2 = t.f29014G1;
                if (z10) {
                    new u(new Xh.g(c14549x2, new C0(new G0(new Xh.g(c14549x2, new C0(new G0(c14518h).getEncoded()))).getEncoded())), null).f(outputStream, InterfaceC14520i.f98892a);
                    return;
                } else {
                    new u(new Xh.g(c14549x2, new C14509c0(new C14517g0(new Xh.g(c14549x2, new C14509c0(new C14517g0(c14518h).getEncoded()))).getEncoded())), null).f(outputStream, InterfaceC14520i.f98894c);
                    return;
                }
            }
        } else if (cArr == null) {
            throw new NullPointerException("no password supplied for PKCS#12 KeyStore");
        }
        C14518h c14518h2 = new C14518h();
        Enumeration d12 = this.f29465c.d();
        while (d12.hasMoreElements()) {
            byte[] bArr2 = new byte[20];
            this.f29470h.nextBytes(bArr2);
            String str4 = (String) d12.nextElement();
            PrivateKey privateKey = (PrivateKey) this.f29465c.c(str4);
            if (m(this.f29472j)) {
                enumeration = d12;
                q qVar = new q(bArr2, f29454q, k(this.f29472j), new C13486b(t.f29152z1, A0.f98776c));
                C14549x c14549x3 = this.f29472j;
                Xh.k kVar = new Xh.k(c14549x3, i(c14549x3));
                c13486b2 = new C13486b(t.f29112j1, new p(new m(t.f29107h1, qVar), kVar));
                bArr = r(kVar, privateKey, qVar, cArr);
            } else {
                enumeration = d12;
                s sVar = new s(bArr2, f29454q);
                byte[] s10 = s(this.f29472j.J(), privateKey, sVar, cArr);
                C13486b c13486b3 = new C13486b(this.f29472j, sVar.r());
                bArr = s10;
                c13486b2 = c13486b3;
            }
            Xh.j jVar = new Xh.j(c13486b2, bArr);
            C14518h c14518h3 = new C14518h();
            if (privateKey instanceof InterfaceC13250p) {
                InterfaceC13250p interfaceC13250p = (InterfaceC13250p) privateKey;
                C14549x c14549x4 = t.f29108h2;
                AbstractC14506b abstractC14506b = (AbstractC14506b) interfaceC13250p.c(c14549x4);
                if (abstractC14506b == null || !abstractC14506b.getString().equals(str4)) {
                    interfaceC13250p.a(c14549x4, new C14537q0(str4));
                }
                C14549x c14549x5 = t.f29113j2;
                if (interfaceC13250p.c(c14549x5) == null) {
                    interfaceC13250p.a(c14549x5, f(engineGetCertificate(str4).getPublicKey()));
                }
                Enumeration d13 = interfaceC13250p.d();
                z12 = false;
                while (d13.hasMoreElements()) {
                    C14549x c14549x6 = (C14549x) d13.nextElement();
                    C14518h c14518h4 = new C14518h();
                    c14518h4.a(c14549x6);
                    c14518h4.a(new I0(interfaceC13250p.c(c14549x6)));
                    c14518h3.a(new G0(c14518h4));
                    z12 = true;
                }
            } else {
                z12 = false;
            }
            if (!z12) {
                C14518h c14518h5 = new C14518h();
                Certificate engineGetCertificate = engineGetCertificate(str4);
                c14518h5.a(t.f29113j2);
                c14518h5.a(new I0(f(engineGetCertificate.getPublicKey())));
                c14518h3.a(new G0(c14518h5));
                C14518h c14518h6 = new C14518h();
                c14518h6.a(t.f29108h2);
                c14518h6.a(new I0(new C14537q0(str4)));
                c14518h3.a(new G0(c14518h6));
            }
            c14518h2.a(new C(t.f29076Y3, jVar.r(), new I0(c14518h3)));
            d12 = enumeration;
        }
        C14509c0 c14509c0 = new C14509c0(new G0(c14518h2).s(InterfaceC14520i.f98892a));
        byte[] bArr3 = new byte[20];
        this.f29470h.nextBytes(bArr3);
        C14518h c14518h7 = new C14518h();
        if (m(this.f29473k)) {
            q qVar2 = new q(bArr3, f29454q, k(this.f29473k), new C13486b(t.f29152z1, A0.f98776c));
            C14549x c14549x7 = t.f29112j1;
            m mVar = new m(t.f29107h1, qVar2);
            C14549x c14549x8 = this.f29473k;
            c13486b = new C13486b(c14549x7, new p(mVar, new Xh.k(c14549x8, i(c14549x8))));
        } else {
            c13486b = new C13486b(this.f29473k, new s(bArr3, f29454q).r());
        }
        C13486b c13486b4 = c13486b;
        Object hashtable = new Hashtable();
        Enumeration d14 = this.f29465c.d();
        while (d14.hasMoreElements()) {
            try {
                String str5 = (String) d14.nextElement();
                ?? engineGetCertificate2 = engineGetCertificate(str5);
                Enumeration enumeration2 = d14;
                C3329d c3329d = new C3329d(t.f29124n2, new C0(engineGetCertificate2.getEncoded()));
                C14518h c14518h8 = new C14518h();
                if (engineGetCertificate2 instanceof InterfaceC13250p) {
                    InterfaceC13250p interfaceC13250p2 = (InterfaceC13250p) engineGetCertificate2;
                    C14549x c14549x9 = t.f29108h2;
                    AbstractC14506b abstractC14506b2 = (AbstractC14506b) interfaceC13250p2.c(c14549x9);
                    if (abstractC14506b2 != null) {
                        if (!abstractC14506b2.getString().equals(str5)) {
                        }
                        c14549x = t.f29113j2;
                        if (interfaceC13250p2.c(c14549x) == null) {
                            interfaceC13250p2.a(c14549x, f(engineGetCertificate2.getPublicKey()));
                        }
                        d10 = interfaceC13250p2.d();
                        z11 = false;
                        while (d10.hasMoreElements()) {
                            C14549x c14549x10 = (C14549x) d10.nextElement();
                            Enumeration enumeration3 = d10;
                            C14518h c14518h9 = new C14518h();
                            c14518h9.a(c14549x10);
                            c14518h9.a(new I0(interfaceC13250p2.c(c14549x10)));
                            c14518h8.a(new G0(c14518h9));
                            d10 = enumeration3;
                            str2 = str2;
                            z11 = true;
                        }
                        str = str2;
                    }
                    interfaceC13250p2.a(c14549x9, new C14537q0(str5));
                    c14549x = t.f29113j2;
                    if (interfaceC13250p2.c(c14549x) == null) {
                    }
                    d10 = interfaceC13250p2.d();
                    z11 = false;
                    while (d10.hasMoreElements()) {
                    }
                    str = str2;
                } else {
                    str = str2;
                    z11 = false;
                }
                if (!z11) {
                    C14518h c14518h10 = new C14518h();
                    c14518h10.a(t.f29113j2);
                    c14518h10.a(new I0(f(engineGetCertificate2.getPublicKey())));
                    c14518h8.a(new G0(c14518h10));
                    C14518h c14518h11 = new C14518h();
                    c14518h11.a(t.f29108h2);
                    c14518h11.a(new I0(new C14537q0(str5)));
                    c14518h8.a(new G0(c14518h11));
                }
                c14518h7.a(new C(t.f29080Z3, c3329d.r(), new I0(c14518h8)));
                hashtable.put(engineGetCertificate2, engineGetCertificate2);
                d14 = enumeration2;
                str2 = str;
            } catch (CertificateEncodingException e11) {
                throw new IOException("Error encoding certificate: " + e11.toString());
            }
        }
        String str6 = str2;
        Enumeration d15 = this.f29467e.d();
        while (d15.hasMoreElements()) {
            try {
                String str7 = (String) d15.nextElement();
                Certificate certificate = (Certificate) this.f29467e.c(str7);
                if (this.f29465c.c(str7) == null) {
                    c14518h7.a(e(str7, certificate));
                    hashtable.put(certificate, certificate);
                }
            } catch (CertificateEncodingException e12) {
                throw new IOException("Error encoding certificate: " + e12.toString());
            }
        }
        ?? l10 = l();
        Enumeration keys = this.f29468f.keys();
        while (keys.hasMoreElements()) {
            try {
                ?? r62 = (Certificate) this.f29468f.get((f) keys.nextElement());
                if (l10.contains(r62) && hashtable.get(r62) == null) {
                    C3329d c3329d2 = new C3329d(t.f29124n2, new C0(r62.getEncoded()));
                    C14518h c14518h12 = new C14518h();
                    if (r62 instanceof InterfaceC13250p) {
                        InterfaceC13250p interfaceC13250p3 = (InterfaceC13250p) r62;
                        Enumeration d16 = interfaceC13250p3.d();
                        while (d16.hasMoreElements()) {
                            C14549x c14549x11 = (C14549x) d16.nextElement();
                            if (!c14549x11.A(t.f29113j2)) {
                                C14518h c14518h13 = new C14518h();
                                c14518h13.a(c14549x11);
                                c14518h13.a(new I0(interfaceC13250p3.c(c14549x11)));
                                c14518h12.a(new G0(c14518h13));
                                hashtable = hashtable;
                            }
                        }
                    }
                    Object obj = hashtable;
                    c14518h7.a(new C(t.f29080Z3, c3329d2.r(), new I0(c14518h12)));
                    hashtable = obj;
                }
            } catch (CertificateEncodingException e13) {
                throw new IOException("Error encoding certificate: " + e13.toString());
            }
        }
        byte[] g11 = g(true, c13486b4, cArr, false, new G0(c14518h7).s(InterfaceC14520i.f98892a));
        C14549x c14549x12 = t.f29014G1;
        Xh.g gVar = new Xh.g(c14549x12, new C14509c0(new C3327b(new Xh.g[]{new Xh.g(c14549x12, c14509c0), new Xh.g(t.f29038O1, new Xh.i(c14549x12, c13486b4, new C14509c0(g11)).r())}).s(z10 ? InterfaceC14520i.f98892a : str6)));
        byte[] bArr4 = new byte[this.f29476n];
        this.f29470h.nextBytes(bArr4);
        byte[] H10 = ((AbstractC14551y) gVar.u()).H();
        if (this.f29472j.A(Sh.d.f23327U)) {
            nVar = null;
        } else {
            try {
                nVar = new n(new C13510w(this.f29474l, c(this.f29474l.u(), bArr4, this.f29475m, cArr, false, H10)), bArr4, this.f29475m);
            } catch (Exception e14) {
                throw new IOException("error constructing MAC: " + e14.toString());
            }
        }
        new u(gVar, nVar).f(outputStream, z10 ? InterfaceC14520i.f98892a : str6);
    }

    public final B i(C14549x c14549x) {
        if (c14549x.A(Sh.d.f23373y) || c14549x.A(Sh.d.f23323Q)) {
            byte[] bArr = new byte[16];
            this.f29470h.nextBytes(bArr);
            return new C0(bArr);
        }
        if (!c14549x.A(Sh.d.f23309C) && !c14549x.A(Sh.d.f23327U)) {
            throw new IllegalStateException("unknown encryption OID in getAlgParams()");
        }
        byte[] bArr2 = new byte[12];
        this.f29470h.nextBytes(bArr2);
        return new C14454c(bArr2, 16).r();
    }

    public final Set l() {
        HashSet hashSet = new HashSet();
        Enumeration d10 = this.f29465c.d();
        while (d10.hasMoreElements()) {
            Certificate[] engineGetCertificateChain = engineGetCertificateChain((String) d10.nextElement());
            for (int i10 = 0; i10 != engineGetCertificateChain.length; i10++) {
                hashSet.add(engineGetCertificateChain[i10]);
            }
        }
        Enumeration d11 = this.f29467e.d();
        while (d11.hasMoreElements()) {
            hashSet.add(engineGetCertificate((String) d11.nextElement()));
        }
        return hashSet;
    }

    public final void n(C c10) throws IOException {
        PrivateKey p10 = C14720a.p(Xh.v.v(c10.x()));
        InterfaceC13250p interfaceC13250p = (InterfaceC13250p) p10;
        Enumeration I10 = c10.u().I();
        AbstractC14551y abstractC14551y = null;
        String str = null;
        while (I10.hasMoreElements()) {
            E G10 = E.G(I10.nextElement());
            C14549x K10 = C14549x.K(G10.I(0));
            G F10 = G.F(G10.I(1));
            if (F10.size() > 0) {
                B b10 = (B) F10.H(0);
                InterfaceC14516g c11 = interfaceC13250p.c(K10);
                if (c11 == null) {
                    interfaceC13250p.a(K10, b10);
                } else if (!c11.r().A(b10)) {
                    throw new IOException("attempt to add existing attribute with different value");
                }
                if (K10.A(t.f29108h2)) {
                    str = ((AbstractC14506b) b10).getString();
                    this.f29465c.e(str, p10);
                } else if (K10.A(t.f29113j2)) {
                    abstractC14551y = (AbstractC14551y) b10;
                }
            }
        }
        String str2 = new String(em.h.h(abstractC14551y.H()));
        if (str == null) {
            this.f29465c.e(str2, p10);
        } else {
            this.f29466d.e(str, str2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    public final boolean o(C c10, char[] cArr, boolean z10) throws IOException {
        String str;
        AbstractC14551y abstractC14551y;
        Xh.j w10 = Xh.j.w(c10.x());
        PrivateKey p10 = p(w10.v(), w10.u(), cArr, z10);
        AbstractC14551y abstractC14551y2 = null;
        if (c10.u() != null) {
            Enumeration I10 = c10.u().I();
            str = null;
            AbstractC14551y abstractC14551y3 = null;
            while (I10.hasMoreElements()) {
                E e10 = (E) I10.nextElement();
                C14549x c14549x = (C14549x) e10.I(0);
                G g10 = (G) e10.I(1);
                if (g10.size() > 0) {
                    B b10 = (B) g10.H(0);
                    abstractC14551y = b10;
                    if (p10 instanceof InterfaceC13250p) {
                        InterfaceC13250p interfaceC13250p = (InterfaceC13250p) p10;
                        InterfaceC14516g c11 = interfaceC13250p.c(c14549x);
                        if (c11 != null) {
                            boolean A10 = c11.r().A(b10);
                            abstractC14551y = b10;
                            if (!A10) {
                                throw new IOException("attempt to add existing attribute with different value");
                            }
                        } else {
                            interfaceC13250p.a(c14549x, b10);
                            abstractC14551y = b10;
                        }
                    }
                } else {
                    abstractC14551y = 0;
                }
                if (c14549x.A(t.f29108h2)) {
                    str = ((AbstractC14506b) abstractC14551y).getString();
                    this.f29465c.e(str, p10);
                } else if (c14549x.A(t.f29113j2)) {
                    abstractC14551y3 = abstractC14551y;
                }
            }
            abstractC14551y2 = abstractC14551y3;
        } else {
            str = null;
        }
        if (abstractC14551y2 == null) {
            this.f29465c.e("unmarked", p10);
            return true;
        }
        String str2 = new String(em.h.h(abstractC14551y2.H()));
        if (str == null) {
            this.f29465c.e(str2, p10);
        } else {
            this.f29466d.e(str, str2);
        }
        return false;
    }

    public PrivateKey p(C13486b c13486b, byte[] bArr, char[] cArr, boolean z10) throws IOException {
        C14549x u10 = c13486b.u();
        try {
            if (u10.O(t.f29094d4)) {
                s v10 = s.v(c13486b.x());
                PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(v10.u(), q(v10.x()));
                Cipher e10 = this.f29464b.e(u10.J());
                e10.init(4, new Hj.l(cArr, z10), pBEParameterSpec);
                return (PrivateKey) e10.unwrap(bArr, "", 2);
            }
            if (u10.A(t.f29112j1)) {
                return (PrivateKey) d(4, cArr, c13486b).unwrap(bArr, "", 2);
            }
            throw new IOException("exception unwrapping private key - cannot recognise: " + ((Object) u10));
        } catch (Exception e11) {
            throw new IOException("exception unwrapping private key - " + e11.toString());
        }
    }

    public final int q(BigInteger bigInteger) {
        int l10 = org.bouncycastle.util.b.l(bigInteger);
        if (l10 < 0) {
            throw new IllegalStateException("negative iteration count found");
        }
        BigInteger a10 = org.bouncycastle.util.q.a(f29452o);
        if (a10 == null || org.bouncycastle.util.b.l(a10) >= l10) {
            return l10;
        }
        throw new IllegalStateException("iteration count " + l10 + " greater than " + org.bouncycastle.util.b.l(a10));
    }

    public byte[] r(Xh.k kVar, Key key, q qVar, char[] cArr) throws IOException {
        PBEKeySpec pBEKeySpec = new PBEKeySpec(cArr, qVar.z(), org.bouncycastle.util.b.l(qVar.v()), org.bouncycastle.util.b.l(qVar.x()) * 8);
        try {
            SecretKeyFactory s10 = this.f29464b.s("PBKDF2withHMacSHA256");
            Cipher e10 = this.f29464b.e(kVar.u().J());
            AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(kVar.u().J());
            algorithmParameters.init(kVar.x().r().getEncoded());
            e10.init(3, s10.generateSecret(pBEKeySpec), algorithmParameters);
            return e10.wrap(key);
        } catch (Exception e11) {
            throw new IOException("exception encrypting data - " + e11.toString());
        }
    }

    public byte[] s(String str, Key key, s sVar, char[] cArr) throws IOException {
        PBEKeySpec pBEKeySpec = new PBEKeySpec(cArr);
        try {
            SecretKeyFactory s10 = this.f29464b.s(str);
            PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(sVar.u(), org.bouncycastle.util.b.l(sVar.x()));
            Cipher e10 = this.f29464b.e(str);
            e10.init(3, s10.generateSecret(pBEKeySpec), pBEParameterSpec);
            return e10.wrap(key);
        } catch (Exception e11) {
            throw new IOException("exception encrypting data - " + e11.toString());
        }
    }

    @Override
    public void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws IOException, NoSuchAlgorithmException, CertificateException {
        if (loadStoreParameter == null) {
            engineLoad(null, null);
        } else {
            if (loadStoreParameter instanceof Hj.c) {
                engineLoad(((Hj.c) loadStoreParameter).a(), Yj.c.a(loadStoreParameter));
                return;
            }
            throw new IllegalArgumentException("no support for 'param' of type " + loadStoreParameter.getClass().getName());
        }
    }

    @Override
    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        throw new RuntimeException("operation not supported");
    }

    @Override
    public void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws IOException, NoSuchAlgorithmException, CertificateException {
        Hj.n nVar;
        char[] password;
        if (loadStoreParameter == null) {
            throw new IllegalArgumentException("'param' arg cannot be null");
        }
        boolean z10 = loadStoreParameter instanceof Hj.n;
        if (!z10 && !(loadStoreParameter instanceof C14740v)) {
            throw new IllegalArgumentException("No support for 'param' of type " + loadStoreParameter.getClass().getName());
        }
        if (z10) {
            nVar = (Hj.n) loadStoreParameter;
        } else {
            C14740v c14740v = (C14740v) loadStoreParameter;
            nVar = new Hj.n(c14740v.a(), loadStoreParameter.getProtectionParameter(), c14740v.b());
        }
        KeyStore.ProtectionParameter protectionParameter = loadStoreParameter.getProtectionParameter();
        if (protectionParameter == null) {
            password = null;
        } else {
            if (!(protectionParameter instanceof KeyStore.PasswordProtection)) {
                throw new IllegalArgumentException("No support for protection parameter of type " + protectionParameter.getClass().getName());
            }
            password = ((KeyStore.PasswordProtection) protectionParameter).getPassword();
        }
        h(nVar.a(), password, nVar.b());
    }
}

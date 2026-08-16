package org.bouncycastle.jcajce.provider.keystore.bcfks;

import Bi.L;
import Hj.a;
import Ii.O;
import Oi.J;
import Oi.N;
import Xh.k;
import Xh.m;
import Xh.p;
import Xh.q;
import Xh.t;
import Xh.v;
import Xi.C3360o0;
import android.security.keystore.KeyProperties;
import dk.C12947c;
import dk.C12948d;
import dk.InterfaceC12950f;
import fk.InterfaceC13236b;
import hi.C13486b;
import hi.C13505q;
import hi.E0;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAKey;
import java.security.interfaces.RSAKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.text.ParseException;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import ki.r;
import nj.C14452a;
import oh.A0;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.util.w;
import qh.C15101b;
import qh.C15102c;
import qh.C15103d;
import qh.C15106g;
import qh.l;
import qh.n;
import wj.InterfaceC16012a;
import yj.InterfaceC16198c;
import zj.InterfaceC16316a;

public class BcFKSKeyStoreSpi extends KeyStoreSpi {

    public static final Map<String, C14549x> f101419m;

    public static final Map<C14549x, String> f101420n;

    public static final BigInteger f101421o;

    public static final BigInteger f101422p;

    public static final BigInteger f101423q;

    public static final BigInteger f101424r;

    public static final BigInteger f101425s;

    public PublicKey f101426b;

    public a.c f101427c;

    public final InterfaceC12950f f101428d;

    public C13486b f101431g;

    public m f101432h;

    public C13486b f101433i;

    public Date f101434j;

    public Date f101435k;

    public final Map<String, C15106g> f101429e = new HashMap();

    public final Map<String, PrivateKey> f101430f = new HashMap();

    public C14549x f101436l = Sh.d.f23328V;

    public static class ExtKeyStoreException extends KeyStoreException {
        private final Throwable cause;

        public ExtKeyStoreException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    public class a implements Enumeration {

        public final Iterator f101437a;

        public a(Iterator it) {
            this.f101437a = it;
        }

        @Override
        public boolean hasMoreElements() {
            return this.f101437a.hasNext();
        }

        @Override
        public Object nextElement() {
            return this.f101437a.next();
        }
    }

    public static class b extends BcFKSKeyStoreSpi {
        public b() {
            super(new C12948d());
        }

        @Override
        public Enumeration engineAliases() {
            return super.engineAliases();
        }

        @Override
        public boolean engineContainsAlias(String str) {
            return super.engineContainsAlias(str);
        }

        @Override
        public void engineDeleteEntry(String str) throws KeyStoreException {
            super.engineDeleteEntry(str);
        }

        @Override
        public Certificate engineGetCertificate(String str) {
            return super.engineGetCertificate(str);
        }

        @Override
        public String engineGetCertificateAlias(Certificate certificate) {
            return super.engineGetCertificateAlias(certificate);
        }

        @Override
        public Certificate[] engineGetCertificateChain(String str) {
            return super.engineGetCertificateChain(str);
        }

        @Override
        public Date engineGetCreationDate(String str) {
            return super.engineGetCreationDate(str);
        }

        @Override
        public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
            return super.engineGetKey(str, cArr);
        }

        @Override
        public boolean engineIsCertificateEntry(String str) {
            return super.engineIsCertificateEntry(str);
        }

        @Override
        public boolean engineIsKeyEntry(String str) {
            return super.engineIsKeyEntry(str);
        }

        @Override
        public void engineLoad(InputStream inputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
            super.engineLoad(inputStream, cArr);
        }

        @Override
        public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
            super.engineSetCertificateEntry(str, certificate);
        }

        @Override
        public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, key, cArr, certificateArr);
        }

        @Override
        public int engineSize() {
            return super.engineSize();
        }

        @Override
        public void engineStore(OutputStream outputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
            super.engineStore(outputStream, cArr);
        }

        @Override
        public void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws CertificateException, NoSuchAlgorithmException, IOException {
            super.engineLoad(loadStoreParameter);
        }

        @Override
        public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, bArr, certificateArr);
        }

        @Override
        public void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws CertificateException, NoSuchAlgorithmException, IOException {
            super.engineStore(loadStoreParameter);
        }
    }

    public static class c extends Yj.a {
        public c() {
            super(new C12948d(), new BcFKSKeyStoreSpi(new C12948d()));
        }
    }

    public static class d extends f {
        public d() {
            super(new C12948d());
        }

        @Override
        public Enumeration engineAliases() {
            return super.engineAliases();
        }

        @Override
        public boolean engineContainsAlias(String str) {
            return super.engineContainsAlias(str);
        }

        @Override
        public void engineDeleteEntry(String str) throws KeyStoreException {
            super.engineDeleteEntry(str);
        }

        @Override
        public Certificate engineGetCertificate(String str) {
            return super.engineGetCertificate(str);
        }

        @Override
        public String engineGetCertificateAlias(Certificate certificate) {
            return super.engineGetCertificateAlias(certificate);
        }

        @Override
        public Certificate[] engineGetCertificateChain(String str) {
            return super.engineGetCertificateChain(str);
        }

        @Override
        public Date engineGetCreationDate(String str) {
            return super.engineGetCreationDate(str);
        }

        @Override
        public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
            return super.engineGetKey(str, cArr);
        }

        @Override
        public boolean engineIsCertificateEntry(String str) {
            return super.engineIsCertificateEntry(str);
        }

        @Override
        public boolean engineIsKeyEntry(String str) {
            return super.engineIsKeyEntry(str);
        }

        @Override
        public void engineLoad(InputStream inputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
            super.engineLoad(inputStream, cArr);
        }

        @Override
        public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
            super.engineSetCertificateEntry(str, certificate);
        }

        @Override
        public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, key, cArr, certificateArr);
        }

        @Override
        public int engineSize() {
            return super.engineSize();
        }

        @Override
        public void engineStore(OutputStream outputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
            super.engineStore(outputStream, cArr);
        }

        @Override
        public void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws CertificateException, NoSuchAlgorithmException, IOException {
            super.engineLoad(loadStoreParameter);
        }

        @Override
        public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, bArr, certificateArr);
        }

        @Override
        public void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws CertificateException, NoSuchAlgorithmException, IOException {
            super.engineStore(loadStoreParameter);
        }
    }

    public static class e extends Yj.a {
        public e() {
            super(new C12948d(), new BcFKSKeyStoreSpi(new C12948d()));
        }
    }

    public static class f extends BcFKSKeyStoreSpi implements t, E0 {

        public final Map<String, byte[]> f101439t;

        public final byte[] f101440u;

        public f(InterfaceC12950f interfaceC12950f) {
            super(interfaceC12950f);
            try {
                byte[] bArr = new byte[32];
                this.f101440u = bArr;
                interfaceC12950f.u("DEFAULT").nextBytes(bArr);
                this.f101439t = new HashMap();
            } catch (GeneralSecurityException e10) {
                throw new IllegalArgumentException("can't create random - " + e10.toString());
            }
        }

        @Override
        public void engineDeleteEntry(String str) throws KeyStoreException {
            throw new KeyStoreException("delete operation not supported in shared mode");
        }

        @Override
        public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
            try {
                byte[] r10 = r(str, cArr);
                if (!this.f101439t.containsKey(str) || org.bouncycastle.util.a.I(this.f101439t.get(str), r10)) {
                    Key engineGetKey = super.engineGetKey(str, cArr);
                    if (engineGetKey != null && !this.f101439t.containsKey(str)) {
                        this.f101439t.put(str, r10);
                    }
                    return engineGetKey;
                }
                throw new UnrecoverableKeyException("unable to recover key (" + str + ")");
            } catch (InvalidKeyException e10) {
                throw new UnrecoverableKeyException("unable to recover key (" + str + "): " + e10.getMessage());
            }
        }

        @Override
        public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
            throw new KeyStoreException("set operation not supported in shared mode");
        }

        @Override
        public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
            throw new KeyStoreException("set operation not supported in shared mode");
        }

        public final byte[] r(String str, char[] cArr) throws NoSuchAlgorithmException, InvalidKeyException {
            return N.i(cArr != null ? org.bouncycastle.util.a.B(w.o(cArr), w.n(str)) : org.bouncycastle.util.a.B(this.f101440u, w.n(str)), this.f101440u, 16384, 8, 1, 32);
        }

        @Override
        public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
            throw new KeyStoreException("set operation not supported in shared mode");
        }
    }

    public static class g extends BcFKSKeyStoreSpi {
        public g() {
            super(new C12947c());
        }

        @Override
        public Enumeration engineAliases() {
            return super.engineAliases();
        }

        @Override
        public boolean engineContainsAlias(String str) {
            return super.engineContainsAlias(str);
        }

        @Override
        public void engineDeleteEntry(String str) throws KeyStoreException {
            super.engineDeleteEntry(str);
        }

        @Override
        public Certificate engineGetCertificate(String str) {
            return super.engineGetCertificate(str);
        }

        @Override
        public String engineGetCertificateAlias(Certificate certificate) {
            return super.engineGetCertificateAlias(certificate);
        }

        @Override
        public Certificate[] engineGetCertificateChain(String str) {
            return super.engineGetCertificateChain(str);
        }

        @Override
        public Date engineGetCreationDate(String str) {
            return super.engineGetCreationDate(str);
        }

        @Override
        public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
            return super.engineGetKey(str, cArr);
        }

        @Override
        public boolean engineIsCertificateEntry(String str) {
            return super.engineIsCertificateEntry(str);
        }

        @Override
        public boolean engineIsKeyEntry(String str) {
            return super.engineIsKeyEntry(str);
        }

        @Override
        public void engineLoad(InputStream inputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
            super.engineLoad(inputStream, cArr);
        }

        @Override
        public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
            super.engineSetCertificateEntry(str, certificate);
        }

        @Override
        public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, key, cArr, certificateArr);
        }

        @Override
        public int engineSize() {
            return super.engineSize();
        }

        @Override
        public void engineStore(OutputStream outputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
            super.engineStore(outputStream, cArr);
        }

        @Override
        public void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws CertificateException, NoSuchAlgorithmException, IOException {
            super.engineLoad(loadStoreParameter);
        }

        @Override
        public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, bArr, certificateArr);
        }

        @Override
        public void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws CertificateException, NoSuchAlgorithmException, IOException {
            super.engineStore(loadStoreParameter);
        }
    }

    public static class h extends Yj.a {
        public h() {
            super(new C12948d(), new BcFKSKeyStoreSpi(new C12947c()));
        }
    }

    public static class i extends f {
        public i() {
            super(new C12947c());
        }

        @Override
        public Enumeration engineAliases() {
            return super.engineAliases();
        }

        @Override
        public boolean engineContainsAlias(String str) {
            return super.engineContainsAlias(str);
        }

        @Override
        public void engineDeleteEntry(String str) throws KeyStoreException {
            super.engineDeleteEntry(str);
        }

        @Override
        public Certificate engineGetCertificate(String str) {
            return super.engineGetCertificate(str);
        }

        @Override
        public String engineGetCertificateAlias(Certificate certificate) {
            return super.engineGetCertificateAlias(certificate);
        }

        @Override
        public Certificate[] engineGetCertificateChain(String str) {
            return super.engineGetCertificateChain(str);
        }

        @Override
        public Date engineGetCreationDate(String str) {
            return super.engineGetCreationDate(str);
        }

        @Override
        public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
            return super.engineGetKey(str, cArr);
        }

        @Override
        public boolean engineIsCertificateEntry(String str) {
            return super.engineIsCertificateEntry(str);
        }

        @Override
        public boolean engineIsKeyEntry(String str) {
            return super.engineIsKeyEntry(str);
        }

        @Override
        public void engineLoad(InputStream inputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
            super.engineLoad(inputStream, cArr);
        }

        @Override
        public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
            super.engineSetCertificateEntry(str, certificate);
        }

        @Override
        public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, key, cArr, certificateArr);
        }

        @Override
        public int engineSize() {
            return super.engineSize();
        }

        @Override
        public void engineStore(OutputStream outputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
            super.engineStore(outputStream, cArr);
        }

        @Override
        public void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws CertificateException, NoSuchAlgorithmException, IOException {
            super.engineLoad(loadStoreParameter);
        }

        @Override
        public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
            super.engineSetKeyEntry(str, bArr, certificateArr);
        }

        @Override
        public void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws CertificateException, NoSuchAlgorithmException, IOException {
            super.engineStore(loadStoreParameter);
        }
    }

    public static class j extends Yj.a {
        public j() {
            super(new C12947c(), new BcFKSKeyStoreSpi(new C12947c()));
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f101419m = hashMap;
        HashMap hashMap2 = new HashMap();
        f101420n = hashMap2;
        C14549x c14549x = Bj.b.f1910h;
        hashMap.put("DESEDE", c14549x);
        hashMap.put("TRIPLEDES", c14549x);
        hashMap.put("TDEA", c14549x);
        hashMap.put("HMACSHA1", t.f29144w1);
        hashMap.put("HMACSHA224", t.f29147x1);
        hashMap.put("HMACSHA256", t.f29152z1);
        hashMap.put("HMACSHA384", t.f29000A1);
        hashMap.put("HMACSHA512", t.f29003B1);
        hashMap.put("SEED", InterfaceC16012a.f127584a);
        hashMap.put("CAMELLIA.128", Aj.a.f827a);
        hashMap.put("CAMELLIA.192", Aj.a.f828b);
        hashMap.put("CAMELLIA.256", Aj.a.f829c);
        hashMap.put("ARIA.128", InterfaceC16316a.f131473h);
        hashMap.put("ARIA.192", InterfaceC16316a.f131478m);
        hashMap.put("ARIA.256", InterfaceC16316a.f131483r);
        hashMap2.put(t.f29017H0, KeyProperties.KEY_ALGORITHM_RSA);
        hashMap2.put(r.f95305I5, KeyProperties.KEY_ALGORITHM_EC);
        hashMap2.put(Bj.b.f1914l, "DH");
        hashMap2.put(t.f29073Y0, "DH");
        hashMap2.put(r.f95349s6, "DSA");
        f101421o = BigInteger.valueOf(0L);
        f101422p = BigInteger.valueOf(1L);
        f101423q = BigInteger.valueOf(2L);
        f101424r = BigInteger.valueOf(3L);
        f101425s = BigInteger.valueOf(4L);
    }

    public BcFKSKeyStoreSpi(InterfaceC12950f interfaceC12950f) {
        this.f101428d = interfaceC12950f;
    }

    public static String n(C14549x c14549x) {
        String str = f101420n.get(c14549x);
        return str != null ? str : c14549x.J();
    }

    public final byte[] a(byte[] bArr, C13486b c13486b, m mVar, char[] cArr) throws NoSuchAlgorithmException, IOException, NoSuchProviderException {
        String J10 = c13486b.u().J();
        Mac w10 = this.f101428d.w(J10);
        try {
            if (cArr == null) {
                cArr = new char[0];
            }
            w10.init(new SecretKeySpec(g(mVar, "INTEGRITY_CHECK", cArr, -1), J10));
            return w10.doFinal(bArr);
        } catch (InvalidKeyException e10) {
            throw new IOException("Cannot set up MAC calculation: " + e10.getMessage());
        }
    }

    public final Cipher b(String str, byte[] bArr) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, NoSuchProviderException {
        Cipher e10 = this.f101428d.e(str);
        e10.init(1, new SecretKeySpec(bArr, KeyProperties.KEY_ALGORITHM_AES));
        return e10;
    }

    public final C15102c c(Xh.j jVar, Certificate[] certificateArr) throws CertificateEncodingException {
        C13505q[] c13505qArr = new C13505q[certificateArr.length];
        for (int i10 = 0; i10 != certificateArr.length; i10++) {
            c13505qArr[i10] = C13505q.v(certificateArr[i10].getEncoded());
        }
        return new C15102c(jVar, c13505qArr);
    }

    public final Certificate d(Object obj) {
        InterfaceC12950f interfaceC12950f = this.f101428d;
        if (interfaceC12950f != null) {
            try {
                return interfaceC12950f.r("X.509").generateCertificate(new ByteArrayInputStream(C13505q.v(obj).getEncoded()));
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            return CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(C13505q.v(obj).getEncoded()));
        } catch (Exception unused2) {
            return null;
        }
    }

    public final byte[] e(String str, C13486b c13486b, char[] cArr, byte[] bArr) throws IOException {
        Cipher e10;
        AlgorithmParameters algorithmParameters;
        if (!c13486b.u().A(t.f29112j1)) {
            throw new IOException("BCFKS KeyStore cannot recognize protection algorithm.");
        }
        p v10 = p.v(c13486b.x());
        k u10 = v10.u();
        try {
            if (u10.u().A(Sh.d.f23328V)) {
                e10 = this.f101428d.e("AES/CCM/NoPadding");
                algorithmParameters = this.f101428d.l("CCM");
                algorithmParameters.init(C14452a.v(u10.x()).getEncoded());
            } else {
                if (!u10.u().A(Sh.d.f23329W)) {
                    throw new IOException("BCFKS KeyStore cannot recognize protection encryption algorithm.");
                }
                e10 = this.f101428d.e("AESKWP");
                algorithmParameters = null;
            }
            m x10 = v10.x();
            if (cArr == null) {
                cArr = new char[0];
            }
            e10.init(2, new SecretKeySpec(g(x10, str, cArr, 32), KeyProperties.KEY_ALGORITHM_AES), algorithmParameters);
            return e10.doFinal(bArr);
        } catch (IOException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new IOException(e12.toString());
        }
    }

    @Override
    public Enumeration<String> engineAliases() {
        return new a(new HashSet(this.f101429e.o()).iterator());
    }

    @Override
    public boolean engineContainsAlias(String str) {
        if (str != null) {
            return this.f101429e.containsKey(str);
        }
        throw new NullPointerException("alias value is null");
    }

    @Override
    public void engineDeleteEntry(String str) throws KeyStoreException {
        if (this.f101429e.get(str) == null) {
            return;
        }
        this.f101430f.remove(str);
        this.f101429e.remove(str);
        this.f101435k = new Date();
    }

    @Override
    public Certificate engineGetCertificate(String str) {
        C15106g c15106g = this.f101429e.get(str);
        if (c15106g == null) {
            return null;
        }
        if (c15106g.B().equals(f101422p) || c15106g.B().equals(f101424r)) {
            return d(C15102c.w(c15106g.x()).u()[0]);
        }
        if (c15106g.B().equals(f101421o)) {
            return d(c15106g.x());
        }
        return null;
    }

    @Override
    public String engineGetCertificateAlias(Certificate certificate) {
        if (certificate == null) {
            return null;
        }
        try {
            byte[] encoded = certificate.getEncoded();
            for (String str : this.f101429e.o()) {
                C15106g c15106g = this.f101429e.get(str);
                if (c15106g.B().equals(f101421o)) {
                    if (org.bouncycastle.util.a.g(c15106g.x(), encoded)) {
                        return str;
                    }
                } else if (c15106g.B().equals(f101422p) || c15106g.B().equals(f101424r)) {
                    try {
                        if (org.bouncycastle.util.a.g(C15102c.w(c15106g.x()).u()[0].r().getEncoded(), encoded)) {
                            return str;
                        }
                    } catch (IOException unused) {
                        continue;
                    }
                }
            }
        } catch (CertificateEncodingException unused2) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Certificate[] engineGetCertificateChain(String str) {
        C15106g c15106g = this.f101429e.get(str);
        if (c15106g == null) {
            return null;
        }
        if (!c15106g.B().equals(f101422p) && !c15106g.B().equals(f101424r)) {
            return null;
        }
        C13505q[] u10 = C15102c.w(c15106g.x()).u();
        int length = u10.length;
        X509Certificate[] x509CertificateArr = new X509Certificate[length];
        for (int i10 = 0; i10 != length; i10++) {
            x509CertificateArr[i10] = d(u10[i10]);
        }
        return x509CertificateArr;
    }

    @Override
    public Date engineGetCreationDate(String str) {
        C15106g c15106g = this.f101429e.get(str);
        if (c15106g == null) {
            return null;
        }
        try {
            return c15106g.A().I();
        } catch (ParseException unused) {
            return new Date();
        }
    }

    @Override
    public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
        C15106g c15106g = this.f101429e.get(str);
        if (c15106g == null) {
            return null;
        }
        if (c15106g.B().equals(f101422p) || c15106g.B().equals(f101424r)) {
            PrivateKey privateKey = this.f101430f.get(str);
            if (privateKey != null) {
                return privateKey;
            }
            Xh.j w10 = Xh.j.w(C15102c.w(c15106g.x()).v());
            try {
                v v10 = v.v(e("PRIVATE_KEY_ENCRYPTION", w10.v(), cArr, w10.u()));
                PrivateKey generatePrivate = this.f101428d.b(n(v10.y().u())).generatePrivate(new PKCS8EncodedKeySpec(v10.getEncoded()));
                this.f101430f.put(str, generatePrivate);
                return generatePrivate;
            } catch (Exception e10) {
                throw new UnrecoverableKeyException("BCFKS KeyStore unable to recover private key (" + str + "): " + e10.getMessage());
            }
        }
        if (!c15106g.B().equals(f101423q) && !c15106g.B().equals(f101425s)) {
            throw new UnrecoverableKeyException("BCFKS KeyStore unable to recover secret key (" + str + "): type not recognized");
        }
        C15103d v11 = C15103d.v(c15106g.x());
        try {
            qh.m u10 = qh.m.u(e("SECRET_KEY_ENCRYPTION", v11.x(), cArr, v11.u()));
            return this.f101428d.s(u10.v().J()).generateSecret(new SecretKeySpec(u10.x(), u10.v().J()));
        } catch (Exception e11) {
            throw new UnrecoverableKeyException("BCFKS KeyStore unable to recover secret key (" + str + "): " + e11.getMessage());
        }
    }

    @Override
    public boolean engineIsCertificateEntry(String str) {
        C15106g c15106g = this.f101429e.get(str);
        if (c15106g != null) {
            return c15106g.B().equals(f101421o);
        }
        return false;
    }

    @Override
    public boolean engineIsKeyEntry(String str) {
        C15106g c15106g = this.f101429e.get(str);
        if (c15106g == null) {
            return false;
        }
        BigInteger B10 = c15106g.B();
        return B10.equals(f101422p) || B10.equals(f101423q) || B10.equals(f101424r) || B10.equals(f101425s);
    }

    @Override
    public void engineLoad(InputStream inputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
        C13486b y10;
        InterfaceC14516g x10;
        PublicKey publicKey;
        qh.j w10;
        this.f101429e.clear();
        this.f101430f.clear();
        this.f101434j = null;
        this.f101435k = null;
        this.f101431g = null;
        if (inputStream == null) {
            Date date = new Date();
            this.f101434j = date;
            this.f101435k = date;
            this.f101426b = null;
            this.f101427c = null;
            this.f101431g = new C13486b(t.f29003B1, A0.f98776c);
            this.f101432h = i(t.f29107h1, 64);
            return;
        }
        try {
            qh.i u10 = qh.i.u(new oh.r(inputStream).k());
            qh.k v10 = u10.v();
            if (v10.x() == 0) {
                l u11 = l.u(v10.v());
                this.f101431g = u11.x();
                this.f101432h = u11.y();
                y10 = this.f101431g;
                try {
                    p(u10.x().r().getEncoded(), u11, cArr);
                } catch (NoSuchProviderException e10) {
                    throw new IOException(e10.getMessage());
                }
            } else {
                if (v10.x() != 1) {
                    throw new IOException("BCFKS KeyStore unable to recognize integrity check.");
                }
                n v11 = n.v(v10.v());
                y10 = v11.y();
                try {
                    C13505q[] u12 = v11.u();
                    if (this.f101427c == null) {
                        x10 = u10.x();
                        publicKey = this.f101426b;
                    } else {
                        if (u12 == null) {
                            throw new IOException("validator specified but no certifcates in store");
                        }
                        CertificateFactory r10 = this.f101428d.r("X.509");
                        int length = u12.length;
                        X509Certificate[] x509CertificateArr = new X509Certificate[length];
                        for (int i10 = 0; i10 != length; i10++) {
                            x509CertificateArr[i10] = (X509Certificate) r10.generateCertificate(new ByteArrayInputStream(u12[i10].getEncoded()));
                        }
                        if (!this.f101427c.a(x509CertificateArr)) {
                            throw new IOException("certificate chain in key store signature not valid");
                        }
                        x10 = u10.x();
                        publicKey = x509CertificateArr[0].getPublicKey();
                    }
                    q(x10, v11, publicKey);
                } catch (GeneralSecurityException e11) {
                    throw new IOException("error verifying signature: " + e11.getMessage(), e11);
                }
            }
            InterfaceC14516g x11 = u10.x();
            if (x11 instanceof C15101b) {
                C15101b c15101b = (C15101b) x11;
                w10 = qh.j.w(e("STORE_ENCRYPTION", c15101b.v(), cArr, c15101b.u().H()));
            } else {
                w10 = qh.j.w(x11);
            }
            try {
                this.f101434j = w10.v().I();
                this.f101435k = w10.y().I();
                if (!w10.x().equals(y10)) {
                    throw new IOException("BCFKS KeyStore storeData integrity algorithm does not match store integrity algorithm.");
                }
                Iterator<InterfaceC14516g> it = w10.z().iterator();
                while (it.hasNext()) {
                    C15106g z10 = C15106g.z(it.next());
                    this.f101429e.put(z10.y(), z10);
                }
            } catch (ParseException unused) {
                throw new IOException("BCFKS KeyStore unable to parse store data information.");
            }
        } catch (Exception e12) {
            throw new IOException(e12.getMessage());
        }
    }

    @Override
    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        Date date;
        C15106g c15106g = this.f101429e.get(str);
        Date date2 = new Date();
        if (c15106g == null) {
            date = date2;
        } else {
            if (!c15106g.B().equals(f101421o)) {
                throw new KeyStoreException("BCFKS KeyStore already has a key entry with alias " + str);
            }
            date = f(c15106g, date2);
        }
        try {
            this.f101429e.put(str, new C15106g(f101421o, str, date, date2, certificate.getEncoded(), null));
            this.f101435k = date2;
        } catch (CertificateEncodingException e10) {
            throw new ExtKeyStoreException("BCFKS KeyStore unable to handle certificate: " + e10.getMessage(), e10);
        }
    }

    @Override
    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        qh.m mVar;
        C15103d c15103d;
        Xh.j jVar;
        Date date = new Date();
        C15106g c15106g = this.f101429e.get(str);
        Date f10 = c15106g != null ? f(c15106g, date) : date;
        this.f101430f.remove(str);
        if (key instanceof PrivateKey) {
            if (certificateArr == null) {
                throw new KeyStoreException("BCFKS KeyStore requires a certificate chain for private key storage.");
            }
            try {
                byte[] encoded = key.getEncoded();
                m i10 = i(t.f29107h1, 32);
                if (cArr == null) {
                    cArr = new char[0];
                }
                byte[] g10 = g(i10, "PRIVATE_KEY_ENCRYPTION", cArr, 32);
                C14549x c14549x = this.f101436l;
                C14549x c14549x2 = Sh.d.f23328V;
                if (c14549x.A(c14549x2)) {
                    Cipher b10 = b("AES/CCM/NoPadding", g10);
                    jVar = new Xh.j(new C13486b(t.f29112j1, new p(i10, new k(c14549x2, C14452a.v(b10.getParameters().getEncoded())))), b10.doFinal(encoded));
                } else {
                    jVar = new Xh.j(new C13486b(t.f29112j1, new p(i10, new k(Sh.d.f23329W))), b("AESKWP", g10).doFinal(encoded));
                }
                this.f101429e.put(str, new C15106g(f101422p, str, f10, date, c(jVar, certificateArr).getEncoded(), null));
            } catch (Exception e10) {
                throw new ExtKeyStoreException("BCFKS KeyStore exception storing private key: " + e10.toString(), e10);
            }
        } else {
            if (!(key instanceof SecretKey)) {
                throw new KeyStoreException("BCFKS KeyStore unable to recognize key.");
            }
            if (certificateArr != null) {
                throw new KeyStoreException("BCFKS KeyStore cannot store certificate chain with secret key.");
            }
            try {
                byte[] encoded2 = key.getEncoded();
                m i11 = i(t.f29107h1, 32);
                if (cArr == null) {
                    cArr = new char[0];
                }
                byte[] g11 = g(i11, "SECRET_KEY_ENCRYPTION", cArr, 32);
                String p10 = w.p(key.getAlgorithm());
                if (p10.indexOf(KeyProperties.KEY_ALGORITHM_AES) > -1) {
                    mVar = new qh.m(Sh.d.f23371w, encoded2);
                } else {
                    Map<String, C14549x> map = f101419m;
                    C14549x c14549x3 = map.get(p10);
                    if (c14549x3 != null) {
                        mVar = new qh.m(c14549x3, encoded2);
                    } else {
                        C14549x c14549x4 = map.get(p10 + "." + (encoded2.length * 8));
                        if (c14549x4 == null) {
                            throw new KeyStoreException("BCFKS KeyStore cannot recognize secret key (" + p10 + ") for storage.");
                        }
                        mVar = new qh.m(c14549x4, encoded2);
                    }
                }
                C14549x c14549x5 = this.f101436l;
                C14549x c14549x6 = Sh.d.f23328V;
                if (c14549x5.A(c14549x6)) {
                    Cipher b11 = b("AES/CCM/NoPadding", g11);
                    c15103d = new C15103d(new C13486b(t.f29112j1, new p(i11, new k(c14549x6, C14452a.v(b11.getParameters().getEncoded())))), b11.doFinal(mVar.getEncoded()));
                } else {
                    c15103d = new C15103d(new C13486b(t.f29112j1, new p(i11, new k(Sh.d.f23329W))), b("AESKWP", g11).doFinal(mVar.getEncoded()));
                }
                this.f101429e.put(str, new C15106g(f101423q, str, f10, date, c15103d.getEncoded(), null));
            } catch (Exception e11) {
                throw new ExtKeyStoreException("BCFKS KeyStore exception storing private key: " + e11.toString(), e11);
            }
        }
        this.f101435k = date;
    }

    @Override
    public int engineSize() {
        return this.f101429e.size();
    }

    @Override
    public void engineStore(OutputStream outputStream, char[] cArr) throws IOException, NoSuchAlgorithmException, CertificateException {
        m mVar;
        BigInteger x10;
        if (this.f101434j == null) {
            throw new IOException("KeyStore not initialized");
        }
        C15101b m10 = m(this.f101431g, cArr);
        if (InterfaceC16198c.f130353O.A(this.f101432h.u())) {
            yj.f w10 = yj.f.w(this.f101432h.x());
            mVar = this.f101432h;
            x10 = w10.x();
        } else {
            q u10 = q.u(this.f101432h.x());
            mVar = this.f101432h;
            x10 = u10.x();
        }
        this.f101432h = h(mVar, x10.intValue());
        try {
            outputStream.write(new qh.i(m10, new qh.k(new l(this.f101431g, this.f101432h, a(m10.getEncoded(), this.f101431g, this.f101432h, cArr)))).getEncoded());
            outputStream.flush();
        } catch (NoSuchProviderException e10) {
            throw new IOException("cannot calculate mac: " + e10.getMessage());
        }
    }

    public final Date f(C15106g c15106g, Date date) {
        try {
            return c15106g.v().I();
        } catch (ParseException unused) {
            return date;
        }
    }

    public final byte[] g(m mVar, String str, char[] cArr, int i10) throws IOException {
        byte[] a10 = L.a(cArr);
        byte[] a11 = L.a(str.toCharArray());
        if (InterfaceC16198c.f130353O.A(mVar.u())) {
            yj.f w10 = yj.f.w(mVar.x());
            if (w10.x() != null) {
                i10 = w10.x().intValue();
            } else if (i10 == -1) {
                throw new IOException("no keyLength found in ScryptParams");
            }
            return N.i(org.bouncycastle.util.a.B(a10, a11), w10.z(), w10.v().intValue(), w10.u().intValue(), w10.u().intValue(), i10);
        }
        if (!mVar.u().A(t.f29107h1)) {
            throw new IOException("BCFKS KeyStore: unrecognized MAC PBKD.");
        }
        q u10 = q.u(mVar.x());
        if (u10.x() != null) {
            i10 = u10.x().intValue();
        } else if (i10 == -1) {
            throw new IOException("no keyLength found in PBKDF2Params");
        }
        if (u10.y().u().A(t.f29003B1)) {
            J j10 = new J(new O());
            j10.j(org.bouncycastle.util.a.B(a10, a11), u10.z(), u10.v().intValue());
            return ((C3360o0) j10.e(i10 * 8)).b();
        }
        if (u10.y().u().A(Sh.d.f23366r)) {
            J j11 = new J(new Ii.N(512));
            j11.j(org.bouncycastle.util.a.B(a10, a11), u10.z(), u10.v().intValue());
            return ((C3360o0) j11.e(i10 * 8)).b();
        }
        throw new IOException("BCFKS KeyStore: unrecognized MAC PBKD PRF: " + ((Object) u10.y().u()));
    }

    public final m h(m mVar, int i10) {
        C14549x c14549x = InterfaceC16198c.f130353O;
        boolean A10 = c14549x.A(mVar.u());
        InterfaceC14516g x10 = mVar.x();
        if (A10) {
            yj.f w10 = yj.f.w(x10);
            byte[] bArr = new byte[w10.z().length];
            l().nextBytes(bArr);
            return new m(c14549x, new yj.f(bArr, w10.v(), w10.u(), w10.y(), BigInteger.valueOf(i10)));
        }
        q u10 = q.u(x10);
        byte[] bArr2 = new byte[u10.z().length];
        l().nextBytes(bArr2);
        return new m(t.f29107h1, new q(bArr2, u10.v().intValue(), i10, u10.y()));
    }

    public final m i(C14549x c14549x, int i10) {
        byte[] bArr = new byte[64];
        l().nextBytes(bArr);
        C14549x c14549x2 = t.f29107h1;
        if (c14549x2.A(c14549x)) {
            return new m(c14549x2, new q(bArr, Xj.a.f29454q, i10, new C13486b(t.f29003B1, A0.f98776c)));
        }
        throw new IllegalStateException("unknown derivation algorithm: " + ((Object) c14549x));
    }

    public final m j(org.bouncycastle.crypto.util.m mVar, int i10) {
        C14549x c14549x = InterfaceC16198c.f130353O;
        if (c14549x.A(mVar.a())) {
            org.bouncycastle.crypto.util.v vVar = (org.bouncycastle.crypto.util.v) mVar;
            byte[] bArr = new byte[vVar.e()];
            l().nextBytes(bArr);
            return new m(c14549x, new yj.f(bArr, vVar.c(), vVar.b(), vVar.d(), i10));
        }
        org.bouncycastle.crypto.util.l lVar = (org.bouncycastle.crypto.util.l) mVar;
        byte[] bArr2 = new byte[lVar.d()];
        l().nextBytes(bArr2);
        return new m(t.f29107h1, new q(bArr2, lVar.b(), i10, lVar.c()));
    }

    public final C13486b k(Key key, a.f fVar) throws IOException {
        if (key == null) {
            return null;
        }
        if (key instanceof InterfaceC13236b) {
            if (fVar == a.f.SHA512withECDSA) {
                return new C13486b(r.f95315N5);
            }
            if (fVar == a.f.SHA3_512withECDSA) {
                return new C13486b(Sh.d.f23356l0);
            }
        }
        if (key instanceof DSAKey) {
            if (fVar == a.f.SHA512withDSA) {
                return new C13486b(Sh.d.f23340d0);
            }
            if (fVar == a.f.SHA3_512withDSA) {
                return new C13486b(Sh.d.f23348h0);
            }
        }
        if (key instanceof RSAKey) {
            if (fVar == a.f.SHA512withRSA) {
                return new C13486b(t.f29055T0, A0.f98776c);
            }
            if (fVar == a.f.SHA3_512withRSA) {
                return new C13486b(Sh.d.f23364p0, A0.f98776c);
            }
        }
        throw new IOException("unknown signature algorithm");
    }

    public final SecureRandom l() {
        return Bi.r.h();
    }

    public final C15101b m(C13486b c13486b, char[] cArr) throws IOException, NoSuchAlgorithmException {
        C15106g[] c15106gArr = (C15106g[]) this.f101429e.values().toArray(new C15106g[this.f101429e.size()]);
        m h10 = h(this.f101432h, 32);
        if (cArr == null) {
            cArr = new char[0];
        }
        byte[] g10 = g(h10, "STORE_ENCRYPTION", cArr, 32);
        qh.j jVar = new qh.j(c13486b, this.f101434j, this.f101435k, new qh.h(c15106gArr), null);
        try {
            C14549x c14549x = this.f101436l;
            C14549x c14549x2 = Sh.d.f23328V;
            if (!c14549x.A(c14549x2)) {
                return new C15101b(new C13486b(t.f29112j1, new p(h10, new k(Sh.d.f23329W))), b("AESKWP", g10).doFinal(jVar.getEncoded()));
            }
            Cipher b10 = b("AES/CCM/NoPadding", g10);
            return new C15101b(new C13486b(t.f29112j1, new p(h10, new k(c14549x2, C14452a.v(b10.getParameters().getEncoded())))), b10.doFinal(jVar.getEncoded()));
        } catch (InvalidKeyException e10) {
            throw new IOException(e10.toString());
        } catch (NoSuchProviderException e11) {
            throw new IOException(e11.toString());
        } catch (BadPaddingException e12) {
            throw new IOException(e12.toString());
        } catch (IllegalBlockSizeException e13) {
            throw new IOException(e13.toString());
        } catch (NoSuchPaddingException e14) {
            throw new NoSuchAlgorithmException(e14.toString());
        }
    }

    public final boolean o(org.bouncycastle.crypto.util.m mVar, m mVar2) {
        if (!mVar.a().A(mVar2.u())) {
            return false;
        }
        if (InterfaceC16198c.f130353O.A(mVar2.u())) {
            if (!(mVar instanceof org.bouncycastle.crypto.util.v)) {
                return false;
            }
            org.bouncycastle.crypto.util.v vVar = (org.bouncycastle.crypto.util.v) mVar;
            yj.f w10 = yj.f.w(mVar2.x());
            return vVar.e() == w10.z().length && vVar.b() == w10.u().intValue() && vVar.c() == w10.v().intValue() && vVar.d() == w10.y().intValue();
        }
        if (!(mVar instanceof org.bouncycastle.crypto.util.l)) {
            return false;
        }
        org.bouncycastle.crypto.util.l lVar = (org.bouncycastle.crypto.util.l) mVar;
        q u10 = q.u(mVar2.x());
        return lVar.d() == u10.z().length && lVar.b() == u10.v().intValue();
    }

    public final void p(byte[] bArr, l lVar, char[] cArr) throws NoSuchAlgorithmException, IOException, NoSuchProviderException {
        if (!org.bouncycastle.util.a.I(a(bArr, lVar.x(), lVar.y(), cArr), lVar.v())) {
            throw new IOException("BCFKS KeyStore corrupted: MAC calculation failed");
        }
    }

    public final void q(InterfaceC14516g interfaceC14516g, n nVar, PublicKey publicKey) throws GeneralSecurityException, IOException {
        Signature a10 = this.f101428d.a(nVar.y().u().J());
        a10.initVerify(publicKey);
        a10.update(interfaceC14516g.r().s(InterfaceC14520i.f98892a));
        if (!a10.verify(nVar.x().J())) {
            throw new IOException("BCFKS KeyStore corrupted: signature calculation failed");
        }
    }

    @Override
    public void engineLoad(KeyStore.LoadStoreParameter loadStoreParameter) throws CertificateException, NoSuchAlgorithmException, IOException {
        if (loadStoreParameter == null) {
            engineLoad(null, null);
            return;
        }
        if (!(loadStoreParameter instanceof Hj.a)) {
            if (loadStoreParameter instanceof Hj.c) {
                engineLoad(((Hj.c) loadStoreParameter).a(), Yj.c.a(loadStoreParameter));
                return;
            }
            throw new IllegalArgumentException("no support for 'parameter' of type " + loadStoreParameter.getClass().getName());
        }
        Hj.a aVar = (Hj.a) loadStoreParameter;
        char[] a10 = Yj.c.a(aVar);
        this.f101432h = j(aVar.g(), 64);
        this.f101436l = aVar.e() == a.d.AES256_CCM ? Sh.d.f23328V : Sh.d.f23329W;
        this.f101431g = aVar.f() == a.e.HmacSHA512 ? new C13486b(t.f29003B1, A0.f98776c) : new C13486b(Sh.d.f23366r, A0.f98776c);
        this.f101426b = (PublicKey) aVar.i();
        this.f101427c = aVar.c();
        this.f101433i = k(this.f101426b, aVar.h());
        C14549x c14549x = this.f101436l;
        InputStream a11 = aVar.a();
        engineLoad(a11, a10);
        if (a11 != null) {
            if (!o(aVar.g(), this.f101432h) || !c14549x.A(this.f101436l)) {
                throw new IOException("configuration parameters do not match existing store");
            }
        }
    }

    @Override
    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        Date date = new Date();
        C15106g c15106g = this.f101429e.get(str);
        Date f10 = c15106g != null ? f(c15106g, date) : date;
        if (certificateArr != null) {
            try {
                Xh.j w10 = Xh.j.w(bArr);
                try {
                    this.f101430f.remove(str);
                    this.f101429e.put(str, new C15106g(f101424r, str, f10, date, c(w10, certificateArr).getEncoded(), null));
                } catch (Exception e10) {
                    throw new ExtKeyStoreException("BCFKS KeyStore exception storing protected private key: " + e10.toString(), e10);
                }
            } catch (Exception e11) {
                throw new ExtKeyStoreException("BCFKS KeyStore private key encoding must be an EncryptedPrivateKeyInfo.", e11);
            }
        } else {
            try {
                this.f101429e.put(str, new C15106g(f101425s, str, f10, date, bArr, null));
            } catch (Exception e12) {
                throw new ExtKeyStoreException("BCFKS KeyStore exception storing protected private key: " + e12.toString(), e12);
            }
        }
        this.f101435k = date;
    }

    @Override
    public void engineStore(KeyStore.LoadStoreParameter loadStoreParameter) throws CertificateException, NoSuchAlgorithmException, IOException {
        n nVar;
        if (loadStoreParameter == null) {
            throw new IllegalArgumentException("'parameter' arg cannot be null");
        }
        if (loadStoreParameter instanceof Hj.b) {
            Hj.b bVar = (Hj.b) loadStoreParameter;
            char[] a10 = Yj.c.a(loadStoreParameter);
            this.f101432h = j(bVar.b(), 64);
            engineStore(bVar.a(), a10);
            return;
        }
        if (!(loadStoreParameter instanceof Hj.a)) {
            if (loadStoreParameter instanceof Hj.c) {
                engineStore(((Hj.c) loadStoreParameter).b(), Yj.c.a(loadStoreParameter));
                return;
            }
            throw new IllegalArgumentException("no support for 'parameter' of type " + loadStoreParameter.getClass().getName());
        }
        Hj.a aVar = (Hj.a) loadStoreParameter;
        if (aVar.i() == null) {
            char[] a11 = Yj.c.a(aVar);
            this.f101432h = j(aVar.g(), 64);
            this.f101436l = aVar.e() == a.d.AES256_CCM ? Sh.d.f23328V : Sh.d.f23329W;
            this.f101431g = aVar.f() == a.e.HmacSHA512 ? new C13486b(t.f29003B1, A0.f98776c) : new C13486b(Sh.d.f23366r, A0.f98776c);
            engineStore(aVar.b(), a11);
            return;
        }
        this.f101433i = k(aVar.i(), aVar.h());
        this.f101432h = j(aVar.g(), 64);
        this.f101436l = aVar.e() == a.d.AES256_CCM ? Sh.d.f23328V : Sh.d.f23329W;
        this.f101431g = aVar.f() == a.e.HmacSHA512 ? new C13486b(t.f29003B1, A0.f98776c) : new C13486b(Sh.d.f23366r, A0.f98776c);
        C15101b m10 = m(this.f101433i, Yj.c.a(aVar));
        try {
            Signature a12 = this.f101428d.a(this.f101433i.u().J());
            a12.initSign((PrivateKey) aVar.i());
            a12.update(m10.getEncoded());
            X509Certificate[] d10 = aVar.d();
            if (d10 != null) {
                int length = d10.length;
                C13505q[] c13505qArr = new C13505q[length];
                for (int i10 = 0; i10 != length; i10++) {
                    c13505qArr[i10] = C13505q.v(d10[i10].getEncoded());
                }
                nVar = new n(this.f101433i, c13505qArr, a12.sign());
            } else {
                nVar = new n(this.f101433i, a12.sign());
            }
            aVar.b().write(new qh.i(m10, new qh.k(nVar)).getEncoded());
            aVar.b().flush();
        } catch (GeneralSecurityException e10) {
            throw new IOException("error creating signature: " + e10.getMessage(), e10);
        }
    }
}

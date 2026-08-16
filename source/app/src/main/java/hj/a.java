package Hj;

import java.io.InputStream;
import java.io.OutputStream;
import java.security.Key;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.X509Certificate;
import org.bouncycastle.crypto.util.l;

public class a extends Hj.c {

    public final org.bouncycastle.crypto.util.m f8481d;

    public final d f8482e;

    public final e f8483f;

    public final f f8484g;

    public final Key f8485h;

    public final X509Certificate[] f8486i;

    public final c f8487j;

    public static class b {

        public final OutputStream f8488a;

        public final InputStream f8489b;

        public final KeyStore.ProtectionParameter f8490c;

        public final Key f8491d;

        public org.bouncycastle.crypto.util.m f8492e;

        public d f8493f;

        public e f8494g;

        public f f8495h;

        public X509Certificate[] f8496i;

        public c f8497j;

        public b() {
            this((OutputStream) null, (KeyStore.ProtectionParameter) null);
        }

        public a k() {
            return new a(this);
        }

        public b l(X509Certificate[] x509CertificateArr) {
            int length = x509CertificateArr.length;
            X509Certificate[] x509CertificateArr2 = new X509Certificate[length];
            System.arraycopy(x509CertificateArr, 0, x509CertificateArr2, 0, length);
            this.f8496i = x509CertificateArr2;
            return this;
        }

        public b m(d dVar) {
            this.f8493f = dVar;
            return this;
        }

        public b n(e eVar) {
            this.f8494g = eVar;
            return this;
        }

        public b o(org.bouncycastle.crypto.util.m mVar) {
            this.f8492e = mVar;
            return this;
        }

        public b p(f fVar) {
            this.f8495h = fVar;
            return this;
        }

        public b(InputStream inputStream, c cVar) {
            this.f8492e = new l.b().e(16384).g(64).f(org.bouncycastle.crypto.util.l.f101078g).d();
            this.f8493f = d.AES256_CCM;
            this.f8494g = e.HmacSHA512;
            this.f8495h = f.SHA512withECDSA;
            this.f8496i = null;
            this.f8489b = inputStream;
            this.f8488a = null;
            this.f8490c = null;
            this.f8497j = cVar;
            this.f8491d = null;
        }

        public b(InputStream inputStream, KeyStore.ProtectionParameter protectionParameter) {
            this.f8492e = new l.b().e(16384).g(64).f(org.bouncycastle.crypto.util.l.f101078g).d();
            this.f8493f = d.AES256_CCM;
            this.f8494g = e.HmacSHA512;
            this.f8495h = f.SHA512withECDSA;
            this.f8496i = null;
            this.f8489b = inputStream;
            this.f8488a = null;
            this.f8490c = protectionParameter;
            this.f8491d = null;
        }

        public b(InputStream inputStream, PublicKey publicKey) {
            this.f8492e = new l.b().e(16384).g(64).f(org.bouncycastle.crypto.util.l.f101078g).d();
            this.f8493f = d.AES256_CCM;
            this.f8494g = e.HmacSHA512;
            this.f8495h = f.SHA512withECDSA;
            this.f8496i = null;
            this.f8489b = inputStream;
            this.f8488a = null;
            this.f8490c = null;
            this.f8491d = publicKey;
        }

        public b(InputStream inputStream, char[] cArr) {
            this(inputStream, new KeyStore.PasswordProtection(cArr));
        }

        public b(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter) {
            this.f8492e = new l.b().e(16384).g(64).f(org.bouncycastle.crypto.util.l.f101078g).d();
            this.f8493f = d.AES256_CCM;
            this.f8494g = e.HmacSHA512;
            this.f8495h = f.SHA512withECDSA;
            this.f8496i = null;
            this.f8489b = null;
            this.f8488a = outputStream;
            this.f8490c = protectionParameter;
            this.f8491d = null;
        }

        public b(OutputStream outputStream, PrivateKey privateKey) {
            this.f8492e = new l.b().e(16384).g(64).f(org.bouncycastle.crypto.util.l.f101078g).d();
            this.f8493f = d.AES256_CCM;
            this.f8494g = e.HmacSHA512;
            this.f8495h = f.SHA512withECDSA;
            this.f8496i = null;
            this.f8489b = null;
            this.f8488a = outputStream;
            this.f8490c = null;
            this.f8491d = privateKey;
        }

        public b(OutputStream outputStream, char[] cArr) {
            this(outputStream, new KeyStore.PasswordProtection(cArr));
        }
    }

    public interface c {
        boolean a(X509Certificate[] x509CertificateArr);
    }

    public enum d {
        AES256_CCM,
        AES256_KWP
    }

    public enum e {
        HmacSHA512,
        HmacSHA3_512
    }

    public enum f {
        SHA512withDSA,
        SHA3_512withDSA,
        SHA512withECDSA,
        SHA3_512withECDSA,
        SHA512withRSA,
        SHA3_512withRSA
    }

    public a(b bVar) {
        super(bVar.f8489b, bVar.f8488a, bVar.f8490c);
        this.f8481d = bVar.f8492e;
        this.f8482e = bVar.f8493f;
        this.f8483f = bVar.f8494g;
        this.f8484g = bVar.f8495h;
        this.f8485h = bVar.f8491d;
        this.f8486i = bVar.f8496i;
        this.f8487j = bVar.f8497j;
    }

    public c c() {
        return this.f8487j;
    }

    public X509Certificate[] d() {
        return this.f8486i;
    }

    public d e() {
        return this.f8482e;
    }

    public e f() {
        return this.f8483f;
    }

    public org.bouncycastle.crypto.util.m g() {
        return this.f8481d;
    }

    public f h() {
        return this.f8484g;
    }

    public Key i() {
        return this.f8485h;
    }
}

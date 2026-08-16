package org.bouncycastle.operator.jcajce;

import Qk.H;
import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import dk.C12948d;
import fm.C13262f;
import hi.C13486b;
import hi.h0;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import li.C14146h;
import oh.AbstractC14508c;
import oh.E;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.operator.RuntimeOperatorException;

public class c {

    public OperatorHelper f101935a = new OperatorHelper(new C12948d());

    public class a implements InterfaceC3015h {

        public final C14146h f101936a;

        public final X509Certificate f101937b;

        public a(C14146h c14146h, X509Certificate x509Certificate) {
            this.f101936a = c14146h;
            this.f101937b = x509Certificate;
        }

        @Override
        public InterfaceC3014g a(C13486b c13486b) throws OperatorCreationException {
            if (c13486b.u().A(Qh.c.f22356P)) {
                return c.this.i(c13486b, this.f101937b.getPublicKey());
            }
            try {
                Signature j10 = c.this.f101935a.j(c13486b);
                j10.initVerify(this.f101937b.getPublicKey());
                Signature j11 = c.this.j(c13486b, this.f101937b.getPublicKey());
                return j11 != null ? new d(c13486b, j10, j11) : new e(c13486b, j10);
            } catch (GeneralSecurityException e10) {
                throw new OperatorCreationException("exception on setup: " + ((Object) e10), e10);
            }
        }

        @Override
        public C14146h b() {
            return this.f101936a;
        }

        @Override
        public boolean c() {
            return true;
        }
    }

    public class b implements InterfaceC3015h {

        public final PublicKey f101939a;

        public b(PublicKey publicKey) {
            this.f101939a = publicKey;
        }

        @Override
        public InterfaceC3014g a(C13486b c13486b) throws OperatorCreationException {
            if (c13486b.u().A(Qh.c.f22356P)) {
                return c.this.i(c13486b, this.f101939a);
            }
            PublicKey publicKey = this.f101939a;
            if (!(publicKey instanceof Hj.e) || !((Hj.e) publicKey).a().A(Qh.c.f22357Q)) {
                Signature k10 = c.this.k(c13486b, this.f101939a);
                Signature j10 = c.this.j(c13486b, this.f101939a);
                return j10 != null ? new d(c13486b, k10, j10) : new e(c13486b, k10);
            }
            List<PublicKey> b10 = ((Hj.e) this.f101939a).b();
            for (int i10 = 0; i10 != b10.size(); i10++) {
                try {
                    Signature k11 = c.this.k(c13486b, b10.get(i10));
                    Signature j11 = c.this.j(c13486b, b10.get(i10));
                    return j11 != null ? new d(c13486b, k11, j11) : new e(c13486b, k11);
                } catch (OperatorCreationException unused) {
                }
            }
            throw new OperatorCreationException("no matching algorithm found for key");
        }

        @Override
        public C14146h b() {
            return null;
        }

        @Override
        public boolean c() {
            return false;
        }
    }

    public static class C1926c implements InterfaceC3014g {

        public Signature[] f101941a;

        public OutputStream f101942b;

        public C1926c(Signature[] signatureArr) throws OperatorCreationException {
            this.f101941a = signatureArr;
            int i10 = 0;
            while (i10 < signatureArr.length && signatureArr[i10] == null) {
                i10++;
            }
            if (i10 == signatureArr.length) {
                throw new OperatorCreationException("no matching signature found in composite");
            }
            OutputStream b10 = Jj.f.b(signatureArr[i10]);
            while (true) {
                this.f101942b = b10;
                do {
                    i10++;
                    if (i10 == signatureArr.length) {
                        return;
                    }
                } while (signatureArr[i10] == null);
                b10 = new C13262f(this.f101942b, Jj.f.b(signatureArr[i10]));
            }
        }

        @Override
        public C13486b a() {
            return new C13486b(Qh.c.f22356P);
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f101942b;
        }

        @Override
        public boolean verify(byte[] bArr) {
            try {
                E G10 = E.G(bArr);
                boolean z10 = false;
                for (int i10 = 0; i10 != G10.size(); i10++) {
                    Signature signature = this.f101941a[i10];
                    if (signature != null && !signature.verify(AbstractC14508c.H(G10.I(i10)).J())) {
                        z10 = true;
                    }
                }
                return !z10;
            } catch (SignatureException e10) {
                throw new RuntimeOperatorException("exception obtaining signature: " + e10.getMessage(), e10);
            }
        }
    }

    public static class d extends e implements H {

        public Signature f101943d;

        public d(C13486b c13486b, Signature signature, Signature signature2) {
            super(c13486b, signature);
            this.f101943d = signature2;
        }

        @Override
        public boolean b(byte[] bArr, byte[] bArr2) {
            try {
                try {
                    this.f101943d.update(bArr);
                    boolean verify = this.f101943d.verify(bArr2);
                    try {
                        this.f101943d.verify(bArr2);
                    } catch (Exception unused) {
                    }
                    return verify;
                } catch (Throwable th2) {
                    try {
                        this.f101943d.verify(bArr2);
                    } catch (Exception unused2) {
                    }
                    throw th2;
                }
            } catch (SignatureException e10) {
                throw new RuntimeOperatorException("exception obtaining raw signature: " + e10.getMessage(), e10);
            }
        }

        @Override
        public boolean verify(byte[] bArr) {
            try {
                return super.verify(bArr);
            } finally {
                try {
                    this.f101943d.verify(bArr);
                } catch (Exception unused) {
                }
            }
        }
    }

    public static class e implements InterfaceC3014g {

        public final C13486b f101944a;

        public final Signature f101945b;

        public final OutputStream f101946c;

        public e(C13486b c13486b, Signature signature) {
            this.f101944a = c13486b;
            this.f101945b = signature;
            this.f101946c = Jj.f.b(signature);
        }

        @Override
        public C13486b a() {
            return this.f101944a;
        }

        @Override
        public OutputStream getOutputStream() {
            OutputStream outputStream = this.f101946c;
            if (outputStream != null) {
                return outputStream;
            }
            throw new IllegalStateException("verifier not initialised");
        }

        @Override
        public boolean verify(byte[] bArr) {
            try {
                return this.f101945b.verify(bArr);
            } catch (SignatureException e10) {
                throw new RuntimeOperatorException("exception obtaining signature: " + e10.getMessage(), e10);
            }
        }
    }

    public InterfaceC3015h e(h0 h0Var) throws OperatorCreationException {
        return f(this.f101935a.b(h0Var));
    }

    public InterfaceC3015h f(PublicKey publicKey) throws OperatorCreationException {
        return new b(publicKey);
    }

    public InterfaceC3015h g(X509Certificate x509Certificate) throws OperatorCreationException {
        try {
            return new a(new org.bouncycastle.cert.jcajce.i(x509Certificate), x509Certificate);
        } catch (CertificateEncodingException e10) {
            throw new OperatorCreationException("cannot process certificate: " + e10.getMessage(), e10);
        }
    }

    public InterfaceC3015h h(C14146h c14146h) throws OperatorCreationException, CertificateException {
        return g(this.f101935a.a(c14146h));
    }

    public final InterfaceC3014g i(C13486b c13486b, PublicKey publicKey) throws OperatorCreationException {
        int i10 = 0;
        if (!(publicKey instanceof Hj.e)) {
            E G10 = E.G(c13486b.x());
            Signature[] signatureArr = new Signature[G10.size()];
            while (i10 != G10.size()) {
                try {
                    signatureArr[i10] = k(C13486b.v(G10.I(i10)), publicKey);
                } catch (Exception unused) {
                    signatureArr[i10] = null;
                }
                i10++;
            }
            return new C1926c(signatureArr);
        }
        List<PublicKey> b10 = ((Hj.e) publicKey).b();
        E G11 = E.G(c13486b.x());
        Signature[] signatureArr2 = new Signature[G11.size()];
        while (i10 != G11.size()) {
            C13486b v10 = C13486b.v(G11.I(i10));
            if (b10.get(i10) != null) {
                signatureArr2[i10] = k(v10, b10.get(i10));
            } else {
                signatureArr2[i10] = null;
            }
            i10++;
        }
        return new C1926c(signatureArr2);
    }

    public final Signature j(C13486b c13486b, PublicKey publicKey) {
        try {
            Signature i10 = this.f101935a.i(c13486b);
            if (i10 == null) {
                return i10;
            }
            i10.initVerify(publicKey);
            return i10;
        } catch (Exception unused) {
            return null;
        }
    }

    public final Signature k(C13486b c13486b, PublicKey publicKey) throws OperatorCreationException {
        try {
            Signature j10 = this.f101935a.j(c13486b);
            j10.initVerify(publicKey);
            return j10;
        } catch (GeneralSecurityException e10) {
            throw new OperatorCreationException("exception on setup: " + ((Object) e10), e10);
        }
    }

    public c l(String str) {
        this.f101935a = new OperatorHelper(new dk.i(str));
        return this;
    }

    public c m(Provider provider) {
        this.f101935a = new OperatorHelper(new dk.k(provider));
        return this;
    }
}

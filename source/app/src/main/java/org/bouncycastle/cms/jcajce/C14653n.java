package org.bouncycastle.cms.jcajce;

import Qk.C3019l;
import Xi.C3344g0;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import oh.A0;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.cms.CMSException;
import uh.C15632x;
import uh.InterfaceC15621l;

public class C14653n {

    public static final Qk.I f100904h = C3019l.f22473a;

    public static final byte[] f100905i = org.bouncycastle.util.w.j("The Cryptographic Message Syntax");

    public final C14549x f100906a;

    public final int f100907b;

    public C14642c f100908c;

    public SecureRandom f100909d;

    public C13486b f100910e;

    public AlgorithmParameters f100911f;

    public C14549x f100912g;

    public class a implements PrivilegedAction {
        @Override
        public Object run() {
            try {
                return Boolean.valueOf(Cipher.class.getMethod("updateAAD", byte[].class) != null);
            } catch (Exception unused) {
                return Boolean.FALSE;
            }
        }
    }

    public class b extends c implements Qk.D {

        public Qk.C f100913e;

        public b(C14549x c14549x, C14549x c14549x2, int i10, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws CMSException {
            super(C14653n.this, null);
            f(c14549x, c14549x2, i10, algorithmParameters, secureRandom);
        }

        @Override
        public C13486b a() {
            return this.f100916b;
        }

        @Override
        public byte[] b() {
            return this.f100913e.c();
        }

        @Override
        public OutputStream c() {
            if (C14653n.d()) {
                return new C14651l(this.f100917c);
            }
            return null;
        }

        @Override
        public OutputStream d(OutputStream outputStream) {
            this.f100913e = new Qk.C(outputStream, C15632x.v((C14653n.this.f100912g != null ? C13486b.v(this.f100916b.x()) : this.f100916b).x()).u());
            return new Jj.b(this.f100913e, this.f100917c);
        }

        @Override
        public Qk.r getKey() {
            return new org.bouncycastle.operator.jcajce.g(this.f100916b, this.f100915a);
        }
    }

    public class c {

        public SecretKey f100915a;

        public C13486b f100916b;

        public Cipher f100917c;

        public c() {
        }

        public final void e(C14549x c14549x, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws CMSException {
            Oi.x xVar = new Oi.x(new Ii.L());
            byte[] encoded = this.f100915a.getEncoded();
            try {
                xVar.c(new C3344g0(encoded, C14653n.f100905i, this.f100916b.s(InterfaceC14520i.f98892a)));
                xVar.a(encoded, 0, encoded.length);
                try {
                    this.f100917c.init(1, new SecretKeySpec(encoded, this.f100915a.getAlgorithm()), algorithmParameters, secureRandom);
                    this.f100916b = new C13486b(c14549x, this.f100916b);
                } catch (GeneralSecurityException e10) {
                    throw new CMSException("unable to initialize cipher: " + e10.getMessage(), e10);
                }
            } catch (IOException e11) {
                throw new CMSException("unable to encode enc algorithm parameters", e11);
            }
        }

        public void f(C14549x c14549x, C14549x c14549x2, int i10, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws CMSException {
            KeyGenerator l10 = C14653n.this.f100908c.l(c14549x2);
            SecureRandom i11 = Bi.r.i(secureRandom);
            if (i10 < 0) {
                l10.init(i11);
            } else {
                l10.init(i10, i11);
            }
            this.f100917c = C14653n.this.f100908c.f(c14549x2);
            this.f100915a = l10.generateKey();
            if (algorithmParameters == null) {
                algorithmParameters = C14653n.this.f100908c.s(c14549x2, this.f100915a, i11);
            }
            if (algorithmParameters != null) {
                this.f100916b = C14653n.this.f100908c.t(c14549x2, algorithmParameters);
                if (c14549x != null) {
                    e(c14549x, algorithmParameters, i11);
                    return;
                }
                try {
                    this.f100917c.init(1, this.f100915a, algorithmParameters, i11);
                    return;
                } catch (GeneralSecurityException e10) {
                    throw new CMSException("unable to initialize cipher: " + e10.getMessage(), e10);
                }
            }
            try {
                this.f100917c.init(1, this.f100915a, algorithmParameters, i11);
                AlgorithmParameters parameters = this.f100917c.getParameters();
                this.f100916b = C14653n.this.f100908c.t(c14549x2, parameters);
                if (c14549x != null) {
                    e(c14549x, parameters, i11);
                }
            } catch (GeneralSecurityException e11) {
                throw new CMSException("unable to initialize cipher: " + e11.getMessage(), e11);
            }
        }

        public c(C14653n c14653n, a aVar) {
            this();
        }
    }

    public class d extends c implements Qk.F {
        public d(C14549x c14549x, C14549x c14549x2, int i10, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws CMSException {
            super(C14653n.this, null);
            f(c14549x, c14549x2, i10, algorithmParameters, secureRandom);
        }

        @Override
        public C13486b a() {
            return this.f100916b;
        }

        @Override
        public OutputStream d(OutputStream outputStream) {
            return new Jj.b(outputStream, this.f100917c);
        }

        @Override
        public Qk.r getKey() {
            return new org.bouncycastle.operator.jcajce.g(this.f100916b, this.f100915a);
        }
    }

    public C14653n(C13486b c13486b) {
        this(c13486b.u(), f100904h.b(c13486b.u()));
        this.f100910e = c13486b;
    }

    public static boolean d() {
        return f();
    }

    public static boolean f() {
        return ((Boolean) AccessController.doPrivileged(new a())).booleanValue();
    }

    public Qk.F e() throws CMSException {
        InterfaceC14516g x10;
        if (this.f100911f != null) {
            return this.f100908c.z(this.f100906a) ? new b(this.f100912g, this.f100906a, this.f100907b, this.f100911f, this.f100909d) : new d(this.f100912g, this.f100906a, this.f100907b, this.f100911f, this.f100909d);
        }
        C13486b c13486b = this.f100910e;
        if (c13486b != null && (x10 = c13486b.x()) != null && !x10.equals(A0.f98776c)) {
            try {
                AlgorithmParameters c10 = this.f100908c.c(this.f100910e.u());
                this.f100911f = c10;
                c10.init(x10.r().getEncoded());
            } catch (Exception e10) {
                throw new CMSException("unable to process provided algorithmIdentifier: " + e10.toString(), e10);
            }
        }
        return this.f100908c.z(this.f100906a) ? new b(this.f100912g, this.f100906a, this.f100907b, this.f100911f, this.f100909d) : new d(this.f100912g, this.f100906a, this.f100907b, this.f100911f, this.f100909d);
    }

    public C14653n g(AlgorithmParameters algorithmParameters) {
        this.f100911f = algorithmParameters;
        return this;
    }

    public C14653n h(boolean z10) {
        C14549x c14549x;
        if (!z10) {
            C14549x c14549x2 = this.f100912g;
            if (c14549x2 != null) {
                if (!c14549x2.A(InterfaceC15621l.f120704I8)) {
                    throw new IllegalStateException("SHA256 HKDF not enabled");
                }
                c14549x = null;
            }
            return this;
        }
        c14549x = InterfaceC15621l.f120704I8;
        this.f100912g = c14549x;
        return this;
    }

    public C14653n i(String str) {
        this.f100908c = new C14642c(new S(str));
        return this;
    }

    public C14653n j(Provider provider) {
        this.f100908c = new C14642c(new T(provider));
        return this;
    }

    public C14653n k(SecureRandom secureRandom) {
        this.f100909d = secureRandom;
        return this;
    }

    public C14653n(C14549x c14549x) {
        this(c14549x, f100904h.b(c14549x));
    }

    public C14653n(C14549x c14549x, int i10) {
        int i11;
        this.f100908c = new C14642c(new C14641b());
        this.f100906a = c14549x;
        int b10 = f100904h.b(c14549x);
        if (c14549x.A(Xh.t.f29123n1)) {
            i11 = 168;
            if (i10 != 168 && i10 != b10) {
                throw new IllegalArgumentException("incorrect keySize for encryptionOID passed to builder.");
            }
        } else {
            if (!c14549x.A(Wh.b.f27781e)) {
                if (b10 > 0 && b10 != i10) {
                    throw new IllegalArgumentException("incorrect keySize for encryptionOID passed to builder.");
                }
                this.f100907b = i10;
                return;
            }
            i11 = 56;
            if (i10 != 56 && i10 != b10) {
                throw new IllegalArgumentException("incorrect keySize for encryptionOID passed to builder.");
            }
        }
        this.f100907b = i11;
    }
}

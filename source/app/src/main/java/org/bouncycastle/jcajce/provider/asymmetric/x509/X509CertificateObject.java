package org.bouncycastle.jcajce.provider.asymmetric.x509;

import dk.InterfaceC12950f;
import fk.InterfaceC13250p;
import hi.C13500l;
import hi.C13505q;
import java.io.IOException;
import java.security.PublicKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.CertificateParsingException;
import java.util.Date;
import java.util.Enumeration;
import javax.security.auth.x500.X500Principal;
import oh.AbstractC14508c;
import oh.B;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.jcajce.provider.asymmetric.util.m;

public class X509CertificateObject extends h implements InterfaceC13250p {

    public final Object f101350h;

    public i f101351i;

    public X500Principal f101352j;

    public PublicKey f101353k;

    public X500Principal f101354l;

    public long[] f101355m;

    public volatile boolean f101356n;

    public volatile int f101357o;

    public InterfaceC13250p f101358p;

    public static class X509CertificateEncodingException extends CertificateEncodingException {
        private final Throwable cause;

        public X509CertificateEncodingException(Throwable th2) {
            this.cause = th2;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    public X509CertificateObject(InterfaceC12950f interfaceC12950f, C13505q c13505q) throws CertificateParsingException {
        super(interfaceC12950f, c13505q, n(c13505q), o(c13505q), p(c13505q), q(c13505q));
        this.f101350h = new Object();
        this.f101358p = new m();
    }

    public static C13500l n(C13505q c13505q) throws CertificateParsingException {
        try {
            byte[] l10 = h.l(c13505q, "2.5.29.19");
            if (l10 == null) {
                return null;
            }
            return C13500l.v(B.B(l10));
        } catch (Exception e10) {
            throw new CertificateParsingException("cannot construct BasicConstraints: " + ((Object) e10));
        }
    }

    public static boolean[] o(C13505q c13505q) throws CertificateParsingException {
        try {
            byte[] l10 = h.l(c13505q, "2.5.29.15");
            if (l10 == null) {
                return null;
            }
            AbstractC14508c H10 = AbstractC14508c.H(B.B(l10));
            byte[] F10 = H10.F();
            int length = (F10.length * 8) - H10.n();
            int i10 = 9;
            if (length >= 9) {
                i10 = length;
            }
            boolean[] zArr = new boolean[i10];
            for (int i11 = 0; i11 != length; i11++) {
                zArr[i11] = (F10[i11 / 8] & (128 >>> (i11 % 8))) != 0;
            }
            return zArr;
        } catch (Exception e10) {
            throw new CertificateParsingException("cannot construct KeyUsage: " + ((Object) e10));
        }
    }

    public static String p(C13505q c13505q) throws CertificateParsingException {
        try {
            return j.d(c13505q.A());
        } catch (Exception e10) {
            throw new CertificateParsingException("cannot construct SigAlgName: " + ((Object) e10));
        }
    }

    public static byte[] q(C13505q c13505q) throws CertificateParsingException {
        try {
            InterfaceC14516g x10 = c13505q.A().x();
            if (x10 == null) {
                return null;
            }
            return x10.r().s(InterfaceC14520i.f98892a);
        } catch (Exception e10) {
            throw new CertificateParsingException("cannot construct SigAlgParams: " + ((Object) e10));
        }
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101358p.a(c14549x, interfaceC14516g);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f101358p.c(c14549x);
    }

    @Override
    public void checkValidity(Date date) throws CertificateExpiredException, CertificateNotYetValidException {
        long time = date.getTime();
        long[] s10 = s();
        if (time > s10[1]) {
            throw new CertificateExpiredException("certificate expired on " + this.f101382c.u().x());
        }
        if (time >= s10[0]) {
            return;
        }
        throw new CertificateNotYetValidException("certificate not valid till " + this.f101382c.B().x());
    }

    @Override
    public Enumeration d() {
        return this.f101358p.d();
    }

    @Override
    public boolean equals(Object obj) {
        i r10;
        AbstractC14508c z10;
        if (obj == this) {
            return true;
        }
        if (obj instanceof X509CertificateObject) {
            X509CertificateObject x509CertificateObject = (X509CertificateObject) obj;
            if (this.f101356n && x509CertificateObject.f101356n) {
                if (this.f101357o != x509CertificateObject.f101357o) {
                    return false;
                }
            } else if ((this.f101351i == null || x509CertificateObject.f101351i == null) && (z10 = this.f101382c.z()) != null && !z10.A(x509CertificateObject.f101382c.z())) {
                return false;
            }
            r10 = r();
            obj = x509CertificateObject.r();
        } else {
            r10 = r();
        }
        return r10.equals(obj);
    }

    @Override
    public byte[] getEncoded() throws CertificateEncodingException {
        return org.bouncycastle.util.a.p(r().getEncoded());
    }

    @Override
    public X500Principal getIssuerX500Principal() {
        X500Principal x500Principal;
        synchronized (this.f101350h) {
            try {
                X500Principal x500Principal2 = this.f101352j;
                if (x500Principal2 != null) {
                    return x500Principal2;
                }
                X500Principal issuerX500Principal = super.getIssuerX500Principal();
                synchronized (this.f101350h) {
                    try {
                        if (this.f101352j == null) {
                            this.f101352j = issuerX500Principal;
                        }
                        x500Principal = this.f101352j;
                    } finally {
                    }
                }
                return x500Principal;
            } finally {
            }
        }
    }

    @Override
    public PublicKey getPublicKey() {
        PublicKey publicKey;
        synchronized (this.f101350h) {
            try {
                PublicKey publicKey2 = this.f101353k;
                if (publicKey2 != null) {
                    return publicKey2;
                }
                PublicKey publicKey3 = super.getPublicKey();
                if (publicKey3 == null) {
                    return null;
                }
                synchronized (this.f101350h) {
                    try {
                        if (this.f101353k == null) {
                            this.f101353k = publicKey3;
                        }
                        publicKey = this.f101353k;
                    } finally {
                    }
                }
                return publicKey;
            } finally {
            }
        }
    }

    @Override
    public X500Principal getSubjectX500Principal() {
        X500Principal x500Principal;
        synchronized (this.f101350h) {
            try {
                X500Principal x500Principal2 = this.f101354l;
                if (x500Principal2 != null) {
                    return x500Principal2;
                }
                X500Principal subjectX500Principal = super.getSubjectX500Principal();
                synchronized (this.f101350h) {
                    try {
                        if (this.f101354l == null) {
                            this.f101354l = subjectX500Principal;
                        }
                        x500Principal = this.f101354l;
                    } finally {
                    }
                }
                return x500Principal;
            } finally {
            }
        }
    }

    @Override
    public int hashCode() {
        if (!this.f101356n) {
            this.f101357o = r().hashCode();
            this.f101356n = true;
        }
        return this.f101357o;
    }

    public final i r() {
        byte[] bArr;
        X509CertificateEncodingException x509CertificateEncodingException;
        i iVar;
        synchronized (this.f101350h) {
            try {
                i iVar2 = this.f101351i;
                if (iVar2 != null) {
                    return iVar2;
                }
                try {
                    x509CertificateEncodingException = null;
                    bArr = this.f101382c.s(InterfaceC14520i.f98892a);
                } catch (IOException e10) {
                    bArr = null;
                    x509CertificateEncodingException = new X509CertificateEncodingException(e10);
                }
                i iVar3 = new i(this.f101381b, this.f101382c, this.f101383d, this.f101384e, this.f101385f, this.f101386g, bArr, x509CertificateEncodingException);
                synchronized (this.f101350h) {
                    try {
                        if (this.f101351i == null) {
                            this.f101351i = iVar3;
                        }
                        iVar = this.f101351i;
                    } finally {
                    }
                }
                return iVar;
            } finally {
            }
        }
    }

    public long[] s() {
        long[] jArr;
        synchronized (this.f101350h) {
            try {
                long[] jArr2 = this.f101355m;
                if (jArr2 != null) {
                    return jArr2;
                }
                long[] jArr3 = {super.getNotBefore().getTime(), super.getNotAfter().getTime()};
                synchronized (this.f101350h) {
                    try {
                        if (this.f101355m == null) {
                            this.f101355m = jArr3;
                        }
                        jArr = this.f101355m;
                    } finally {
                    }
                }
                return jArr;
            } finally {
            }
        }
    }

    public int u() {
        try {
            byte[] encoded = r().getEncoded();
            int i10 = 0;
            for (int i11 = 1; i11 < encoded.length; i11++) {
                i10 += encoded[i11] * i11;
            }
            return i10;
        } catch (CertificateEncodingException unused) {
            return 0;
        }
    }
}

package org.bouncycastle.jcajce.provider.asymmetric.x509;

import dk.InterfaceC12950f;
import hi.C13478B;
import hi.L;
import hi.r;
import java.io.IOException;
import java.security.cert.CRLException;
import oh.AbstractC14508c;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;

public class X509CRLObject extends f {

    public final Object f101346g;

    public g f101347h;

    public volatile boolean f101348i;

    public volatile int f101349j;

    public static class X509CRLException extends CRLException {
        private final Throwable cause;

        public X509CRLException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }

        public X509CRLException(Throwable th2) {
            this.cause = th2;
        }
    }

    public X509CRLObject(InterfaceC12950f interfaceC12950f, r rVar) throws CRLException {
        super(interfaceC12950f, rVar, i(rVar), j(rVar), l(rVar));
        this.f101346g = new Object();
    }

    public static String i(r rVar) throws CRLException {
        try {
            return j.d(rVar.C());
        } catch (Exception e10) {
            throw new X509CRLException("CRL contents invalid: " + e10.getMessage(), e10);
        }
    }

    public static byte[] j(r rVar) throws CRLException {
        try {
            InterfaceC14516g x10 = rVar.C().x();
            if (x10 == null) {
                return null;
            }
            return x10.r().s(InterfaceC14520i.f98892a);
        } catch (Exception e10) {
            throw new CRLException("CRL contents invalid: " + ((Object) e10));
        }
    }

    public static boolean l(r rVar) throws CRLException {
        try {
            byte[] e10 = f.e(rVar, C13478B.f90541q.J());
            if (e10 == null) {
                return false;
            }
            return L.y(e10).B();
        } catch (Exception e11) {
            throw new ExtCRLException("Exception reading IssuingDistributionPoint", e11);
        }
    }

    @Override
    public boolean equals(Object obj) {
        g k10;
        AbstractC14508c B10;
        if (this == obj) {
            return true;
        }
        if (obj instanceof X509CRLObject) {
            X509CRLObject x509CRLObject = (X509CRLObject) obj;
            if (this.f101348i && x509CRLObject.f101348i) {
                if (this.f101349j != x509CRLObject.f101349j) {
                    return false;
                }
            } else if ((this.f101347h == null || x509CRLObject.f101347h == null) && (B10 = this.f101370c.B()) != null && !B10.A(x509CRLObject.f101370c.B())) {
                return false;
            }
            k10 = k();
            obj = x509CRLObject.k();
        } else {
            k10 = k();
        }
        return k10.equals(obj);
    }

    @Override
    public byte[] getEncoded() throws CRLException {
        return org.bouncycastle.util.a.p(k().getEncoded());
    }

    @Override
    public int hashCode() {
        if (!this.f101348i) {
            this.f101349j = k().hashCode();
            this.f101348i = true;
        }
        return this.f101349j;
    }

    public final g k() {
        byte[] bArr;
        X509CRLException x509CRLException;
        g gVar;
        synchronized (this.f101346g) {
            try {
                g gVar2 = this.f101347h;
                if (gVar2 != null) {
                    return gVar2;
                }
                try {
                    x509CRLException = null;
                    bArr = this.f101370c.s(InterfaceC14520i.f98892a);
                } catch (IOException e10) {
                    bArr = null;
                    x509CRLException = new X509CRLException(e10);
                }
                g gVar3 = new g(this.f101369b, this.f101370c, this.f101371d, this.f101372e, this.f101373f, bArr, x509CRLException);
                synchronized (this.f101346g) {
                    try {
                        if (this.f101347h == null) {
                            this.f101347h = gVar3;
                        }
                        gVar = this.f101347h;
                    } finally {
                    }
                }
                return gVar;
            } finally {
            }
        }
    }
}

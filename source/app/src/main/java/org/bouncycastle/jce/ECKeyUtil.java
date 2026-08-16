package org.bouncycastle.jce;

import Xh.v;
import hi.C13486b;
import hi.h0;
import java.io.UnsupportedEncodingException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Security;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import ki.l;
import ki.n;
import ki.r;
import oh.B;
import oh.C14549x;
import org.bouncycastle.jce.provider.C14720a;
import yh.InterfaceC16192a;

public class ECKeyUtil {

    public static class UnexpectedException extends RuntimeException {
        private Throwable cause;

        public UnexpectedException(Throwable th2) {
            super(th2.toString());
            this.cause = th2;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    public static PrivateKey a(PrivateKey privateKey, String str) throws IllegalArgumentException, NoSuchAlgorithmException, NoSuchProviderException {
        Provider provider = Security.getProvider(str);
        if (provider != null) {
            return b(privateKey, provider);
        }
        throw new NoSuchProviderException("cannot find provider: " + str);
    }

    public static PrivateKey b(PrivateKey privateKey, Provider provider) throws IllegalArgumentException, NoSuchAlgorithmException {
        l lVar;
        try {
            v v10 = v.v(B.B(privateKey.getEncoded()));
            if (v10.y().u().A(InterfaceC16192a.f130281m)) {
                throw new UnsupportedEncodingException("cannot convert GOST key to explicit parameters.");
            }
            ki.j u10 = ki.j.u(v10.y().x());
            if (u10.z()) {
                lVar = org.bouncycastle.jcajce.provider.asymmetric.util.i.j(C14549x.K(u10.x()));
                if (lVar.E()) {
                    lVar = new l(lVar.v(), lVar.u(), lVar.C(), lVar.A());
                }
            } else {
                if (!u10.y()) {
                    return privateKey;
                }
                Tj.c cVar = C14720a.f101702f;
                lVar = new l(cVar.b().a(), new n(cVar.b().b(), false), cVar.b().d(), cVar.b().c());
            }
            return KeyFactory.getInstance(privateKey.getAlgorithm(), provider).generatePrivate(new PKCS8EncodedKeySpec(new v(new C13486b(r.f95305I5, new ki.j(lVar)), v10.E()).getEncoded()));
        } catch (IllegalArgumentException e10) {
            throw e10;
        } catch (NoSuchAlgorithmException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new UnexpectedException(e12);
        }
    }

    public static PublicKey c(PublicKey publicKey, String str) throws IllegalArgumentException, NoSuchAlgorithmException, NoSuchProviderException {
        Provider provider = Security.getProvider(str);
        if (provider != null) {
            return d(publicKey, provider);
        }
        throw new NoSuchProviderException("cannot find provider: " + str);
    }

    public static PublicKey d(PublicKey publicKey, Provider provider) throws IllegalArgumentException, NoSuchAlgorithmException {
        l lVar;
        try {
            h0 w10 = h0.w(B.B(publicKey.getEncoded()));
            if (w10.u().u().A(InterfaceC16192a.f130281m)) {
                throw new IllegalArgumentException("cannot convert GOST key to explicit parameters.");
            }
            ki.j u10 = ki.j.u(w10.u().x());
            if (u10.z()) {
                lVar = org.bouncycastle.jcajce.provider.asymmetric.util.i.j(C14549x.K(u10.x()));
                if (lVar.E()) {
                    lVar = new l(lVar.v(), lVar.u(), lVar.C(), lVar.A());
                }
            } else {
                if (!u10.y()) {
                    return publicKey;
                }
                Tj.c cVar = C14720a.f101702f;
                lVar = new l(cVar.b().a(), new n(cVar.b().b(), false), cVar.b().d(), cVar.b().c());
            }
            return KeyFactory.getInstance(publicKey.getAlgorithm(), provider).generatePublic(new X509EncodedKeySpec(new h0(new C13486b(r.f95305I5, new ki.j(lVar)), w10.z().F()).getEncoded()));
        } catch (IllegalArgumentException e10) {
            throw e10;
        } catch (NoSuchAlgorithmException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new UnexpectedException(e12);
        }
    }
}

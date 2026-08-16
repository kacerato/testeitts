package org.bouncycastle.cms.jcajce;

import Qk.C3019l;
import ck.C4206D;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashSet;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import oh.A0;
import oh.AbstractC14551y;
import oh.C14549x;
import oh.InterfaceC14520i;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.InterfaceC14665l0;
import vh.C15847a;
import vh.C15848b;
import yh.InterfaceC16192a;

public abstract class D implements InterfaceC14665l0 {

    public static final Set f100808h;

    public static Q f100809i;

    public static Q f100810j;

    public static Q f100811k;

    public PrivateKey f100812c;

    public C14642c f100813d;

    public C14642c f100814e;

    public Qk.I f100815f;

    public C13486b f100816g;

    public class a implements Q {
        @Override
        public byte[] a(C13486b c13486b, int i10, byte[] bArr) {
            try {
                return new C15847a(new C13486b(c13486b.u(), A0.f98776c), bArr, org.bouncycastle.util.p.k(i10)).s(InterfaceC14520i.f98892a);
            } catch (IOException e10) {
                throw new IllegalStateException("Unable to create KDF material: " + ((Object) e10));
            }
        }
    }

    public class b implements Q {
        @Override
        public byte[] a(C13486b c13486b, int i10, byte[] bArr) {
            return bArr;
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f100808h = hashSet;
        hashSet.add(ki.r.f95353v6);
        hashSet.add(ki.r.f95357x6);
        f100809i = new a();
        f100810j = new b();
        f100811k = new U();
    }

    public D(PrivateKey privateKey) {
        C14642c c14642c = new C14642c(new C14641b());
        this.f100813d = c14642c;
        this.f100814e = c14642c;
        this.f100815f = new C3019l();
        this.f100816g = null;
        this.f100812c = C14640a.a(privateKey);
    }

    @Override
    public C13486b f() {
        if (this.f100816g == null) {
            this.f100816g = Xh.v.v(this.f100812c.getEncoded()).y();
        }
        return this.f100816g;
    }

    public final SecretKey g(C13486b c13486b, C13486b c13486b2, PublicKey publicKey, AbstractC14551y abstractC14551y, PrivateKey privateKey, Q q10) throws CMSException, GeneralSecurityException, IOException {
        PrivateKey a10 = C14640a.a(privateKey);
        C4206D c4206d = null;
        c4206d = null;
        if (C14640a.m(c13486b.u())) {
            C15848b w10 = C15848b.w(abstractC14551y.H());
            PublicKey generatePublic = this.f100813d.k(c13486b.u()).generatePublic(new X509EncodedKeySpec(new h0(f(), w10.v().y()).getEncoded()));
            KeyAgreement j10 = this.f100813d.j(c13486b.u());
            byte[] H10 = w10.u() != null ? w10.u().H() : null;
            Q q11 = f100809i;
            if (q10 == q11) {
                H10 = q11.a(c13486b2, this.f100815f.a(c13486b2), H10);
            }
            j10.init(a10, new ck.s(a10, generatePublic, H10));
            j10.doPhase(publicKey, true);
            return j10.generateSecret(c13486b2.u().J());
        }
        KeyAgreement j11 = this.f100813d.j(c13486b.u());
        if (C14640a.k(c13486b.u())) {
            int a11 = this.f100815f.a(c13486b2);
            c4206d = new C4206D(abstractC14551y != null ? q10.a(c13486b2, a11, abstractC14551y.H()) : q10.a(c13486b2, a11, null));
        } else if (C14640a.n(c13486b.u())) {
            if (abstractC14551y != null) {
                c4206d = new C4206D(abstractC14551y.H());
            }
        } else {
            if (!C14640a.l(c13486b.u())) {
                throw new CMSException("Unknown key agreement algorithm: " + ((Object) c13486b.u()));
            }
            if (abstractC14551y != null) {
                c4206d = new C4206D(abstractC14551y.H());
            }
        }
        j11.init(a10, c4206d);
        j11.doPhase(publicKey, true);
        return j11.generateSecret(c13486b2.u().J());
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        throw r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Key h(C13486b c13486b, C13486b c13486b2, h0 h0Var, AbstractC14551y abstractC14551y, byte[] bArr) throws CMSException {
        try {
            try {
                C13486b v10 = C13486b.v(c13486b.x());
                PublicKey generatePublic = this.f100813d.k(h0Var.u().u()).generatePublic(new X509EncodedKeySpec(h0Var.getEncoded()));
                try {
                    SecretKey g10 = g(c13486b, v10, generatePublic, abstractC14551y, this.f100812c, f100811k);
                    if (!v10.u().A(InterfaceC16192a.f130272d) && !v10.u().A(InterfaceC16192a.f130273e)) {
                        return n(v10.u(), g10, c13486b2.u(), bArr);
                    }
                    yh.h v11 = yh.h.v(bArr);
                    yh.i v12 = yh.i.v(v10.x());
                    Cipher f10 = this.f100813d.f(v10.u());
                    f10.init(4, g10, new ck.k(v12.u(), abstractC14551y.H()));
                    return f10.unwrap(org.bouncycastle.util.a.B(v11.u(), v11.x()), this.f100813d.v(c13486b2.u()), 3);
                } catch (InvalidKeyException e10) {
                    if (f100808h.contains(c13486b.u())) {
                        return n(v10.u(), g(c13486b, v10, generatePublic, abstractC14551y, this.f100812c, f100809i), c13486b2.u(), bArr);
                    }
                    if (abstractC14551y == null) {
                        throw e10;
                    }
                    try {
                        return n(v10.u(), g(c13486b, v10, generatePublic, abstractC14551y, this.f100812c, f100810j), c13486b2.u(), bArr);
                    } catch (InvalidKeyException unused) {
                        throw e10;
                    }
                }
            } catch (InvalidKeyException e11) {
                throw new CMSException("key invalid in message.", e11);
            }
        } catch (NoSuchAlgorithmException e12) {
            throw new CMSException("can't find algorithm.", e12);
        } catch (InvalidKeySpecException e13) {
            throw new CMSException("originator key spec invalid.", e13);
        } catch (NoSuchPaddingException e14) {
            throw new CMSException("required padding not supported.", e14);
        } catch (Exception e15) {
            throw new CMSException("originator key invalid.", e15);
        }
    }

    public D i(String str) {
        this.f100814e = C14640a.c(str);
        return this;
    }

    public D j(Provider provider) {
        this.f100814e = C14640a.d(provider);
        return this;
    }

    public D k(C13486b c13486b) {
        this.f100816g = c13486b;
        return this;
    }

    public D l(String str) {
        C14642c c14642c = new C14642c(new S(str));
        this.f100813d = c14642c;
        this.f100814e = c14642c;
        return this;
    }

    public D m(Provider provider) {
        C14642c c14642c = new C14642c(new T(provider));
        this.f100813d = c14642c;
        this.f100814e = c14642c;
        return this;
    }

    public Key n(C14549x c14549x, SecretKey secretKey, C14549x c14549x2, byte[] bArr) throws CMSException, InvalidKeyException, NoSuchAlgorithmException {
        Cipher f10 = this.f100813d.f(c14549x);
        f10.init(4, secretKey);
        return f10.unwrap(bArr, this.f100813d.v(c14549x2), 3);
    }
}

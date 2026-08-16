package org.bouncycastle.cms.jcajce;

import Qk.C3019l;
import ck.C4206D;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.util.ArrayList;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.SecretKey;
import oh.C0;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14520i;
import org.bouncycastle.cms.AbstractC14669n0;
import org.bouncycastle.cms.CMSException;
import vh.C15848b;
import yh.InterfaceC16192a;

public class F extends AbstractC14669n0 {

    public static Q f100817m = new U();

    public Qk.I f100818d;

    public List f100819e;

    public List f100820f;

    public PublicKey f100821g;

    public PrivateKey f100822h;

    public C14642c f100823i;

    public SecureRandom f100824j;

    public KeyPair f100825k;

    public byte[] f100826l;

    public F(C14549x c14549x, PrivateKey privateKey, PublicKey publicKey, C14549x c14549x2) {
        super(c14549x, h0.w(publicKey.getEncoded()), c14549x2);
        this.f100818d = new C3019l();
        this.f100819e = new ArrayList();
        this.f100820f = new ArrayList();
        this.f100823i = new C14642c(new C14641b());
        this.f100821g = publicKey;
        this.f100822h = C14640a.a(privateKey);
    }

    @Override
    public oh.E c(C13486b c13486b, C13486b c13486b2, Qk.r rVar) throws CMSException {
        C4206D c4206d;
        AlgorithmParameterSpec algorithmParameterSpec;
        C0 c02;
        if (this.f100819e.isEmpty()) {
            throw new CMSException("No recipients associated with generator - use addRecipient()");
        }
        g(c13486b.u());
        PrivateKey privateKey = this.f100822h;
        C14549x u10 = c13486b.u();
        C14518h c14518h = new C14518h();
        for (int i10 = 0; i10 != this.f100819e.size(); i10++) {
            PublicKey publicKey = (PublicKey) this.f100820f.get(i10);
            uh.D d10 = (uh.D) this.f100819e.get(i10);
            try {
                C14549x u11 = c13486b2.u();
                if (C14640a.m(u10)) {
                    algorithmParameterSpec = new ck.s(this.f100825k, publicKey, this.f100826l);
                } else {
                    if (C14640a.k(u10)) {
                        c4206d = new C4206D(f100817m.a(c13486b2, this.f100818d.b(u11), this.f100826l));
                    } else if (C14640a.n(u10)) {
                        byte[] bArr = this.f100826l;
                        if (bArr != null) {
                            c4206d = new C4206D(bArr);
                        } else {
                            if (u10.A(Xh.t.f29039O2)) {
                                throw new CMSException("User keying material must be set for static keys.");
                            }
                            algorithmParameterSpec = null;
                        }
                    } else {
                        if (!C14640a.l(u10)) {
                            throw new CMSException("Unknown key agreement algorithm: " + ((Object) u10));
                        }
                        byte[] bArr2 = this.f100826l;
                        if (bArr2 == null) {
                            throw new CMSException("User keying material must be set for static keys.");
                        }
                        c4206d = new C4206D(bArr2);
                    }
                    algorithmParameterSpec = c4206d;
                }
                KeyAgreement j10 = this.f100823i.j(u10);
                j10.init(privateKey, algorithmParameterSpec, this.f100824j);
                j10.doPhase(publicKey, true);
                SecretKey generateSecret = j10.generateSecret(u11.J());
                Cipher f10 = this.f100823i.f(u11);
                if (!u11.A(InterfaceC16192a.f130272d) && !u11.A(InterfaceC16192a.f130273e)) {
                    f10.init(3, generateSecret, this.f100824j);
                    c02 = new C0(f10.wrap(this.f100823i.w(rVar)));
                    c14518h.a(new uh.O(d10, c02));
                }
                f10.init(3, generateSecret, new ck.k(InterfaceC16192a.f130276h, this.f100826l));
                byte[] wrap = f10.wrap(this.f100823i.w(rVar));
                c02 = new C0(new yh.h(org.bouncycastle.util.a.X(wrap, 0, wrap.length - 4), org.bouncycastle.util.a.X(wrap, wrap.length - 4, wrap.length)).s(InterfaceC14520i.f98892a));
                c14518h.a(new uh.O(d10, c02));
            } catch (IOException e10) {
                throw new CMSException("unable to encode wrapped key: " + e10.getMessage(), e10);
            } catch (GeneralSecurityException e11) {
                throw new CMSException("cannot perform agreement step: " + e11.getMessage(), e11);
            }
        }
        return new G0(c14518h);
    }

    @Override
    public byte[] d(C13486b c13486b) throws CMSException {
        g(c13486b.u());
        KeyPair keyPair = this.f100825k;
        if (keyPair == null) {
            return this.f100826l;
        }
        uh.J b10 = b(h0.w(keyPair.getPublic().getEncoded()));
        try {
            return this.f100826l != null ? new C15848b(b10, new C0(this.f100826l)).getEncoded() : new C15848b(b10, null).getEncoded();
        } catch (IOException e10) {
            throw new CMSException("unable to encode user keying material: " + e10.getMessage(), e10);
        }
    }

    public F e(X509Certificate x509Certificate) throws CertificateEncodingException {
        this.f100819e.add(new uh.D(C14640a.f(x509Certificate)));
        this.f100820f.add(x509Certificate.getPublicKey());
        return this;
    }

    public F f(byte[] bArr, PublicKey publicKey) throws CertificateEncodingException {
        this.f100819e.add(new uh.D(new uh.S(bArr)));
        this.f100820f.add(publicKey);
        return this;
    }

    public final void g(C14549x c14549x) throws CMSException {
        if (this.f100824j == null) {
            this.f100824j = new SecureRandom();
        }
        if (C14640a.m(c14549x) && this.f100825k == null) {
            try {
                h0 w10 = h0.w(this.f100821g.getEncoded());
                AlgorithmParameters c10 = this.f100823i.c(c14549x);
                c10.init(w10.u().x().r().getEncoded());
                KeyPairGenerator m10 = this.f100823i.m(c14549x);
                m10.initialize(c10.getParameterSpec(AlgorithmParameterSpec.class), this.f100824j);
                this.f100825k = m10.generateKeyPair();
            } catch (Exception e10) {
                throw new CMSException("cannot determine MQV ephemeral key pair parameters from public key: " + ((Object) e10), e10);
            }
        }
    }

    public F h(String str) {
        this.f100823i = new C14642c(new S(str));
        return this;
    }

    public F i(Provider provider) {
        this.f100823i = new C14642c(new T(provider));
        return this;
    }

    public F j(SecureRandom secureRandom) {
        this.f100824j = secureRandom;
        return this;
    }

    public F k(byte[] bArr) {
        this.f100826l = org.bouncycastle.util.a.p(bArr);
        return this;
    }
}

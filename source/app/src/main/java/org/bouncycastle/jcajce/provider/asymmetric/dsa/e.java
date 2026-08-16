package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2387t;
import Bi.InterfaceC2392y;
import Ii.B;
import Ii.G;
import Xi.C3335c;
import Xi.x0;
import bj.InterfaceC3894b;
import bj.z;
import hi.E0;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;

public class e extends SignatureSpi implements Xh.t, E0 {

    public InterfaceC2392y f101148b;

    public InterfaceC2387t f101149c;

    public InterfaceC3894b f101150d = z.f33418a;

    public SecureRandom f101151e;

    public static class a extends e {
        public a() {
            super(org.bouncycastle.crypto.util.g.f(), new bj.d(new bj.q(org.bouncycastle.crypto.util.g.f())));
        }
    }

    public static class b extends e {
        public b() {
            super(org.bouncycastle.crypto.util.g.h(), new bj.d(new bj.q(org.bouncycastle.crypto.util.g.h())));
        }
    }

    public static class c extends e {
        public c() {
            super(org.bouncycastle.crypto.util.g.j(), new bj.d(new bj.q(org.bouncycastle.crypto.util.g.j())));
        }
    }

    public static class d extends e {
        public d() {
            super(org.bouncycastle.crypto.util.g.t(), new bj.d(new bj.q(org.bouncycastle.crypto.util.g.t())));
        }
    }

    public static class C1916e extends e {
        public C1916e() {
            super(org.bouncycastle.crypto.util.g.d(), new bj.d(new bj.q(org.bouncycastle.crypto.util.g.d())));
        }
    }

    public static class f extends e {
        public f() {
            super(org.bouncycastle.crypto.util.g.l(), new bj.d(new bj.q(org.bouncycastle.crypto.util.g.l())));
        }
    }

    public static class g extends e {
        public g() {
            super(org.bouncycastle.crypto.util.g.n(), new bj.d(new bj.q(org.bouncycastle.crypto.util.g.n())));
        }
    }

    public static class h extends e {
        public h() {
            super(org.bouncycastle.crypto.util.g.p(), new bj.d(new bj.q(org.bouncycastle.crypto.util.g.p())));
        }
    }

    public static class i extends e {
        public i() {
            super(org.bouncycastle.crypto.util.g.r(), new bj.d(new bj.q(org.bouncycastle.crypto.util.g.r())));
        }
    }

    public static class j extends e {
        public j() {
            super(org.bouncycastle.crypto.util.g.f(), new bj.d());
        }
    }

    public static class k extends e {
        public k() {
            super(org.bouncycastle.crypto.util.g.h(), new bj.d());
        }
    }

    public static class l extends e {
        public l() {
            super(org.bouncycastle.crypto.util.g.j(), new bj.d());
        }
    }

    public static class m extends e {
        public m() {
            super(org.bouncycastle.crypto.util.g.t(), new bj.d());
        }
    }

    public static class n extends e {
        public n() {
            super(new G(), new bj.d());
        }
    }

    public static class o extends e {
        public o() {
            super(org.bouncycastle.crypto.util.g.l(), new bj.d());
        }
    }

    public static class p extends e {
        public p() {
            super(org.bouncycastle.crypto.util.g.n(), new bj.d());
        }
    }

    public static class q extends e {
        public q() {
            super(org.bouncycastle.crypto.util.g.p(), new bj.d());
        }
    }

    public static class r extends e {
        public r() {
            super(org.bouncycastle.crypto.util.g.r(), new bj.d());
        }
    }

    public static class s extends e {
        public s() {
            super(new B(), new bj.d());
        }
    }

    public static class t extends e {
        public t() {
            super(org.bouncycastle.crypto.util.g.d(), new bj.d());
        }
    }

    public e(InterfaceC2392y interfaceC2392y, InterfaceC2387t interfaceC2387t) {
        this.f101148b = interfaceC2392y;
        this.f101149c = interfaceC2387t;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineGetParameter unsupported");
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        InterfaceC2379k b10 = org.bouncycastle.jcajce.provider.asymmetric.dsa.f.b(privateKey);
        SecureRandom secureRandom = this.f101151e;
        if (secureRandom != null) {
            b10 = new x0(b10, secureRandom);
        }
        this.f101148b.reset();
        this.f101149c.a(true, b10);
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        C3335c c10 = org.bouncycastle.jcajce.provider.asymmetric.dsa.f.c(publicKey);
        this.f101148b.reset();
        this.f101149c.a(false, c10);
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.f101148b.f()];
        this.f101148b.c(bArr, 0);
        try {
            BigInteger[] b10 = this.f101149c.b(bArr);
            return this.f101150d.b(this.f101149c.getOrder(), b10[0], b10[1]);
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f101148b.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f101148b.f()];
        this.f101148b.c(bArr2, 0);
        try {
            BigInteger[] a10 = this.f101150d.a(this.f101149c.getOrder(), bArr);
            return this.f101149c.c(bArr2, a10[0], a10[1]);
        } catch (Exception unused) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f101151e = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f101148b.update(bArr, i10, i11);
    }
}

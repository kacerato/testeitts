package Sj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2392y;
import Ii.G;
import Ii.a0;
import Li.C2778e0;
import bj.s;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;

public class h extends SignatureSpi {

    public s f23575a;

    public static class a extends h {
        public a() {
            super(org.bouncycastle.crypto.util.g.b(), new C2778e0());
        }
    }

    public static class b extends h {
        public b() {
            super(new G(), new C2778e0());
        }
    }

    public static class c extends h {
        public c() {
            super(org.bouncycastle.crypto.util.g.d(), new C2778e0());
        }
    }

    public static class d extends h {
        public d() {
            super(org.bouncycastle.crypto.util.g.f(), new C2778e0());
        }
    }

    public static class e extends h {
        public e() {
            super(org.bouncycastle.crypto.util.g.h(), new C2778e0());
        }
    }

    public static class f extends h {
        public f() {
            super(org.bouncycastle.crypto.util.g.j(), new C2778e0());
        }
    }

    public static class g extends h {
        public g() {
            super(org.bouncycastle.crypto.util.g.t(), new C2778e0());
        }
    }

    public static class C0564h extends h {
        public C0564h() {
            super(org.bouncycastle.crypto.util.g.v(), new C2778e0());
        }
    }

    public static class i extends h {
        public i() {
            super(org.bouncycastle.crypto.util.g.x(), new C2778e0());
        }
    }

    public static class j extends h {
        public j() {
            super(new a0(), new C2778e0());
        }
    }

    public h(InterfaceC2392y interfaceC2392y, InterfaceC2370b interfaceC2370b) {
        this.f23575a = new s(interfaceC2370b, interfaceC2392y, true);
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        this.f23575a.a(true, l.c((RSAPrivateKey) privateKey));
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        this.f23575a.a(false, l.d((RSAPublicKey) publicKey));
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        try {
            return this.f23575a.c();
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f23575a.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f23575a.b(bArr);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f23575a.update(bArr, i10, i11);
    }
}

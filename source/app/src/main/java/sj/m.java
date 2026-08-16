package Sj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2392y;
import Ii.F;
import Ii.G;
import Ii.a0;
import Li.C2778e0;
import bj.C3892B;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;

public class m extends SignatureSpi {

    public C3892B f23600a;

    public static class a extends m {
        public a() {
            super(new F(), new C2778e0());
        }
    }

    public static class b extends m {
        public b() {
            super(new G(), new C2778e0());
        }
    }

    public static class c extends m {
        public c() {
            super(org.bouncycastle.crypto.util.g.d(), new C2778e0());
        }
    }

    public static class d extends m {
        public d() {
            super(org.bouncycastle.crypto.util.g.f(), new C2778e0());
        }
    }

    public static class e extends m {
        public e() {
            super(org.bouncycastle.crypto.util.g.h(), new C2778e0());
        }
    }

    public static class f extends m {
        public f() {
            super(org.bouncycastle.crypto.util.g.j(), new C2778e0());
        }
    }

    public static class g extends m {
        public g() {
            super(org.bouncycastle.crypto.util.g.t(), new C2778e0());
        }
    }

    public static class h extends m {
        public h() {
            super(org.bouncycastle.crypto.util.g.v(), new C2778e0());
        }
    }

    public static class i extends m {
        public i() {
            super(org.bouncycastle.crypto.util.g.x(), new C2778e0());
        }
    }

    public static class j extends m {
        public j() {
            super(new a0(), new C2778e0());
        }
    }

    public m(InterfaceC2392y interfaceC2392y, InterfaceC2370b interfaceC2370b) {
        this.f23600a = new C3892B(interfaceC2370b, interfaceC2392y);
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        this.f23600a.a(true, l.c((RSAPrivateKey) privateKey));
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        this.f23600a.a(false, l.d((RSAPublicKey) publicKey));
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        try {
            return this.f23600a.c();
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f23600a.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f23600a.b(bArr);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f23600a.update(bArr, i10, i11);
    }
}

package Nl;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Ii.B;
import Ii.L;
import Ii.O;
import Ii.Q;
import Nl.e;
import Xi.x0;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import oh.C14549x;
import ql.C15119A;
import ql.C15122D;
import sl.InterfaceC15335F;

public class j extends Signature implements InterfaceC15335F {

    public InterfaceC2392y f16439b;

    public C15122D f16440c;

    public C14549x f16441d;

    public SecureRandom f16442e;

    public static class a extends j {
        public a() {
            super("XMSSMT", new B(), new C15122D());
        }
    }

    public static class b extends j {
        public b() {
            super("XMSSMT-SHA256", new B(), new C15122D());
        }
    }

    public static class c extends j {
        public c() {
            super("SHA256withXMSSMT-SHA256", new L(), new C15122D());
        }
    }

    public static class d extends j {
        public d() {
            super("XMSSMT-SHA512", new B(), new C15122D());
        }
    }

    public static class e extends j {
        public e() {
            super("SHA512withXMSSMT-SHA512", new O(), new C15122D());
        }
    }

    public static class f extends j {
        public f() {
            super("XMSSMT-SHAKE128", new B(), new C15122D());
        }
    }

    public static class g extends j {
        public g() {
            super("SHAKE128(512)withXMSSMT-SHAKE128", new e.a(new Q(128)), new C15122D());
        }
    }

    public static class h extends j {
        public h() {
            super("SHAKE128withXMSSMT-SHAKE128", new Q(128), new C15122D());
        }
    }

    public static class i extends j {
        public i() {
            super("XMSSMT-SHAKE256", new B(), new C15122D());
        }
    }

    public static class C0459j extends j {
        public C0459j() {
            super("SHAKE256(1024)withXMSSMT-SHAKE256", new e.a(new Q(256)), new C15122D());
        }
    }

    public static class k extends j {
        public k() {
            super("SHAKE256withXMSSMT-SHAKE256", new Q(256), new C15122D());
        }
    }

    public j(String str) {
        super(str);
    }

    @Override
    public boolean a() {
        return (this.f16441d == null || this.f16440c.e() == 0) ? false : true;
    }

    @Override
    public PrivateKey c() {
        C14549x c14549x = this.f16441d;
        if (c14549x == null) {
            throw new IllegalStateException("signature object not in a signing state");
        }
        Nl.a aVar = new Nl.a(c14549x, (C15119A) this.f16440c.c());
        this.f16441d = null;
        return aVar;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof Nl.a)) {
            throw new InvalidKeyException("unknown private key passed to XMSSMT");
        }
        Nl.a aVar = (Nl.a) privateKey;
        InterfaceC2379k c10 = aVar.c();
        this.f16441d = aVar.d();
        SecureRandom secureRandom = this.f16442e;
        if (secureRandom != null) {
            c10 = new x0(c10, secureRandom);
        }
        this.f16439b.reset();
        this.f16440c.a(true, c10);
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof Nl.b)) {
            throw new InvalidKeyException("unknown public key passed to XMSSMT");
        }
        InterfaceC2379k c10 = ((Nl.b) publicKey).c();
        this.f16441d = null;
        this.f16439b.reset();
        this.f16440c.a(false, c10);
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        try {
            return this.f16440c.b(Nl.e.c(this.f16439b));
        } catch (Exception e10) {
            if (e10 instanceof IllegalStateException) {
                throw new SignatureException(e10.getMessage(), e10);
            }
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f16439b.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f16440c.d(Nl.e.c(this.f16439b), bArr);
    }

    public j(String str, InterfaceC2392y interfaceC2392y, C15122D c15122d) {
        super(str);
        this.f16439b = interfaceC2392y;
        this.f16440c = c15122d;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f16442e = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f16439b.update(bArr, i10, i11);
    }
}

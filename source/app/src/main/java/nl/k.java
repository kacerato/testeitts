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
import ql.I;
import ql.M;
import sl.InterfaceC15335F;

public class k extends Signature implements InterfaceC15335F {

    public InterfaceC2392y f16443b;

    public M f16444c;

    public SecureRandom f16445d;

    public C14549x f16446e;

    public static class a extends k {
        public a() {
            super("XMSS", new B(), new M());
        }
    }

    public static class b extends k {
        public b() {
            super("XMSS-SHA256", new B(), new M());
        }
    }

    public static class c extends k {
        public c() {
            super("SHA256withXMSS-SHA256", new L(), new M());
        }
    }

    public static class d extends k {
        public d() {
            super("XMSS-SHA512", new B(), new M());
        }
    }

    public static class e extends k {
        public e() {
            super("SHA512withXMSS-SHA512", new O(), new M());
        }
    }

    public static class f extends k {
        public f() {
            super("XMSS-SHAKE128", new B(), new M());
        }
    }

    public static class g extends k {
        public g() {
            super("SHAKE128(512)withXMSS-SHAKE128", new e.a(new Q(128)), new M());
        }
    }

    public static class h extends k {
        public h() {
            super("SHAKE128withXMSS-SHAKE128", new Q(128), new M());
        }
    }

    public static class i extends k {
        public i() {
            super("XMSS-SHAKE256", new B(), new M());
        }
    }

    public static class j extends k {
        public j() {
            super("SHAKE256(1024)withXMSS-SHAKE256", new e.a(new Q(256)), new M());
        }
    }

    public static class C0460k extends k {
        public C0460k() {
            super("SHAKE256withXMSS-SHAKE256", new Q(256), new M());
        }
    }

    public k(String str) {
        super(str);
    }

    @Override
    public boolean a() {
        return (this.f16446e == null || this.f16444c.e() == 0) ? false : true;
    }

    @Override
    public PrivateKey c() {
        C14549x c14549x = this.f16446e;
        if (c14549x == null) {
            throw new IllegalStateException("signature object not in a signing state");
        }
        Nl.c cVar = new Nl.c(c14549x, (I) this.f16444c.c());
        this.f16446e = null;
        return cVar;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof Nl.c)) {
            throw new InvalidKeyException("unknown private key passed to XMSS");
        }
        Nl.c cVar = (Nl.c) privateKey;
        InterfaceC2379k b10 = cVar.b();
        this.f16446e = cVar.c();
        SecureRandom secureRandom = this.f16445d;
        if (secureRandom != null) {
            b10 = new x0(b10, secureRandom);
        }
        this.f16443b.reset();
        this.f16444c.a(true, b10);
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof Nl.d)) {
            throw new InvalidKeyException("unknown public key passed to XMSS");
        }
        InterfaceC2379k b10 = ((Nl.d) publicKey).b();
        this.f16446e = null;
        this.f16443b.reset();
        this.f16444c.a(false, b10);
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        try {
            return this.f16444c.b(Nl.e.c(this.f16443b));
        } catch (Exception e10) {
            if (e10 instanceof IllegalStateException) {
                throw new SignatureException(e10.getMessage(), e10);
            }
            throw new SignatureException(e10.toString(), e10);
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f16443b.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f16444c.d(Nl.e.c(this.f16443b), bArr);
    }

    public k(String str, InterfaceC2392y interfaceC2392y, M m10) {
        super(str);
        this.f16443b = interfaceC2392y;
        this.f16444c = m10;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f16445d = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f16443b.update(bArr, i10, i11);
    }
}

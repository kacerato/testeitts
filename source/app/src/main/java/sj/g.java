package Sj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2392y;
import Ii.B;
import Ii.C2665x;
import Ii.C2666y;
import Ii.F;
import Ii.G;
import Ii.H;
import Li.C2778e0;
import Xh.t;
import Xi.F0;
import bi.InterfaceC3890b;
import hi.C13486b;
import hi.C13510w;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import oh.A0;
import oh.C14549x;
import oh.InterfaceC14520i;

public class g extends SignatureSpi {

    public InterfaceC2392y f23572a;

    public InterfaceC2370b f23573b;

    public C13486b f23574c;

    public static class a extends g {
        public a() {
            super(t.f29135s1, new C2665x(), new Ki.c(new C2778e0()));
        }
    }

    public static class b extends g {
        public b() {
            super(t.f29138t1, new C2666y(), new Ki.c(new C2778e0()));
        }
    }

    public static class c extends g {
        public c() {
            super(t.f29141u1, org.bouncycastle.crypto.util.g.b(), new Ki.c(new C2778e0()));
        }
    }

    public static class d extends g {
        public d() {
            super(InterfaceC3890b.f33237c, new F(), new Ki.c(new C2778e0()));
        }
    }

    public static class e extends g {
        public e() {
            super(InterfaceC3890b.f33236b, new G(), new Ki.c(new C2778e0()));
        }
    }

    public static class f extends g {
        public f() {
            super(InterfaceC3890b.f33238d, new H(), new Ki.c(new C2778e0()));
        }
    }

    public static class C0563g extends g {
        public C0563g() {
            super(Bj.b.f1911i, org.bouncycastle.crypto.util.g.d(), new Ki.c(new C2778e0()));
        }
    }

    public static class h extends g {
        public h() {
            super(Sh.d.f23343f, org.bouncycastle.crypto.util.g.f(), new Ki.c(new C2778e0()));
        }
    }

    public static class i extends g {
        public i() {
            super(Sh.d.f23337c, org.bouncycastle.crypto.util.g.h(), new Ki.c(new C2778e0()));
        }
    }

    public static class j extends g {
        public j() {
            super(Sh.d.f23339d, org.bouncycastle.crypto.util.g.j(), new Ki.c(new C2778e0()));
        }
    }

    public static class k extends g {
        public k() {
            super(Sh.d.f23349i, org.bouncycastle.crypto.util.g.l(), new Ki.c(new C2778e0()));
        }
    }

    public static class l extends g {
        public l() {
            super(Sh.d.f23351j, org.bouncycastle.crypto.util.g.n(), new Ki.c(new C2778e0()));
        }
    }

    public static class m extends g {
        public m() {
            super(Sh.d.f23353k, org.bouncycastle.crypto.util.g.p(), new Ki.c(new C2778e0()));
        }
    }

    public static class n extends g {
        public n() {
            super(Sh.d.f23355l, org.bouncycastle.crypto.util.g.r(), new Ki.c(new C2778e0()));
        }
    }

    public static class o extends g {
        public o() {
            super(Sh.d.f23341e, org.bouncycastle.crypto.util.g.t(), new Ki.c(new C2778e0()));
        }
    }

    public static class p extends g {
        public p() {
            super(Sh.d.f23345g, org.bouncycastle.crypto.util.g.v(), new Ki.c(new C2778e0()));
        }
    }

    public static class q extends g {
        public q() {
            super(Sh.d.f23347h, org.bouncycastle.crypto.util.g.x(), new Ki.c(new C2778e0()));
        }
    }

    public static class r extends g {
        public r() {
            super(new B(), new Ki.c(new C2778e0()));
        }
    }

    public g(InterfaceC2392y interfaceC2392y, InterfaceC2370b interfaceC2370b) {
        this.f23572a = interfaceC2392y;
        this.f23573b = interfaceC2370b;
        this.f23574c = null;
    }

    public final byte[] a(byte[] bArr) throws IOException {
        C13486b c13486b = this.f23574c;
        return c13486b == null ? bArr : new C13510w(c13486b, bArr).s(InterfaceC14520i.f98892a);
    }

    public final String b(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.getClass().getName();
    }

    @Override
    public Object engineGetParameter(String str) {
        return null;
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof RSAPrivateKey) {
            F0 c10 = Sj.l.c((RSAPrivateKey) privateKey);
            this.f23572a.reset();
            this.f23573b.a(true, c10);
        } else {
            throw new InvalidKeyException("Supplied key (" + b(privateKey) + ") is not a RSAPrivateKey instance");
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof RSAPublicKey) {
            F0 d10 = Sj.l.d((RSAPublicKey) publicKey);
            this.f23572a.reset();
            this.f23573b.a(false, d10);
        } else {
            throw new InvalidKeyException("Supplied key (" + b(publicKey) + ") is not a RSAPublicKey instance");
        }
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.f23572a.f()];
        this.f23572a.c(bArr, 0);
        try {
            byte[] a10 = a(bArr);
            return this.f23573b.b(a10, 0, a10.length);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new SignatureException("key too small for signature type");
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f23572a.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] b10;
        byte[] a10;
        byte[] bArr2 = new byte[this.f23572a.f()];
        this.f23572a.c(bArr2, 0);
        try {
            b10 = this.f23573b.b(bArr, 0, bArr.length);
            a10 = a(bArr2);
        } catch (Exception unused) {
        }
        if (b10.length == a10.length) {
            return org.bouncycastle.util.a.I(b10, a10);
        }
        if (b10.length != a10.length - 2) {
            org.bouncycastle.util.a.I(a10, a10);
            return false;
        }
        a10[1] = (byte) (a10[1] - 2);
        byte b11 = (byte) (a10[3] - 2);
        a10[3] = b11;
        int i10 = b11 + 4;
        int i11 = b11 + 6;
        int i12 = 0;
        for (int i13 = 0; i13 < a10.length - i11; i13++) {
            i12 |= b10[i10 + i13] ^ a10[i11 + i13];
        }
        for (int i14 = 0; i14 < i10; i14++) {
            i12 |= b10[i14] ^ a10[i14];
        }
        return i12 == 0;
    }

    public g(C14549x c14549x, InterfaceC2392y interfaceC2392y, InterfaceC2370b interfaceC2370b) {
        this.f23572a = interfaceC2392y;
        this.f23573b = interfaceC2370b;
        this.f23574c = new C13486b(c14549x, A0.f98776c);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f23572a.update(bArr, i10, i11);
    }
}

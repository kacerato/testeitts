package Oj;

import Bi.C2376h;
import Bi.F;
import Bi.G;
import Bi.InterfaceC2372d;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Ci.p;
import Li.C2769a;
import Li.C2796v;
import Li.L;
import Oi.P;
import Oi.Q;
import Oi.u;
import Oi.z;
import Ti.C3092c;
import Xi.C3335c;
import Xi.C3348i0;
import Xi.J;
import Xi.N0;
import Xi.O0;
import Xi.R0;
import Xi.w0;
import android.security.keystore.KeyProperties;
import ck.C4207E;
import dk.C12947c;
import dk.InterfaceC12950f;
import hk.s;
import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi;
import org.bouncycastle.jcajce.provider.util.BadBlockException;
import org.bouncycastle.util.w;

public class f extends BaseCipherSpi {

    public final InterfaceC12950f f20274g;

    public int f20275h;

    public L f20276i;

    public int f20277j;

    public ByteArrayOutputStream f20278k;

    public AlgorithmParameters f20279l;

    public s f20280m;

    public C3335c f20281n;

    public SecureRandom f20282o;

    public boolean f20283p;

    public C3335c f20284q;

    public class a implements F {

        public final boolean f20285a;

        public a(boolean z10) {
            this.f20285a = z10;
        }

        @Override
        public byte[] a(C3335c c3335c) {
            return this.f20285a ? ((O0) c3335c).getEncoded() : ((R0) c3335c).getEncoded();
        }
    }

    public static class b extends f {
        public b() {
            this(org.bouncycastle.crypto.util.g.d(), org.bouncycastle.crypto.util.g.d());
        }

        public b(InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2) {
            super(new L(new p(), new z(interfaceC2392y), new Si.k(interfaceC2392y2)));
        }
    }

    public static class c extends d {
        public c() {
            super(C3092c.m(C2769a.r()), 16);
        }
    }

    public static class d extends f {
        public d(InterfaceC2374f interfaceC2374f, int i10) {
            this(interfaceC2374f, i10, org.bouncycastle.crypto.util.g.d(), org.bouncycastle.crypto.util.g.d());
        }

        public d(InterfaceC2374f interfaceC2374f, int i10, InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2) {
            super(new L(new p(), new z(interfaceC2392y), new Si.k(interfaceC2392y2), new Wi.e(interfaceC2374f)), i10);
        }
    }

    public static class e extends d {
        public e() {
            super(C3092c.m(new C2796v()), 8);
        }
    }

    public static class C0493f extends b {
        public C0493f() {
            super(org.bouncycastle.crypto.util.g.h(), org.bouncycastle.crypto.util.g.h());
        }
    }

    public static class g extends d {
        public g() {
            super(C3092c.m(C2769a.r()), 16, org.bouncycastle.crypto.util.g.h(), org.bouncycastle.crypto.util.g.h());
        }
    }

    public static class h extends d {
        public h() {
            super(C3092c.m(new C2796v()), 8, org.bouncycastle.crypto.util.g.h(), org.bouncycastle.crypto.util.g.h());
        }
    }

    public static class i extends b {
        public i() {
            super(org.bouncycastle.crypto.util.g.j(), org.bouncycastle.crypto.util.g.j());
        }
    }

    public static class j extends d {
        public j() {
            super(C3092c.m(C2769a.r()), 16, org.bouncycastle.crypto.util.g.j(), org.bouncycastle.crypto.util.g.j());
        }
    }

    public static class k extends d {
        public k() {
            super(C3092c.m(new C2796v()), 8, org.bouncycastle.crypto.util.g.j(), org.bouncycastle.crypto.util.g.j());
        }
    }

    public static class l extends b {
        public l() {
            super(org.bouncycastle.crypto.util.g.t(), org.bouncycastle.crypto.util.g.t());
        }
    }

    public static class m extends d {
        public m() {
            super(C3092c.m(C2769a.r()), 16, org.bouncycastle.crypto.util.g.t(), org.bouncycastle.crypto.util.g.t());
        }
    }

    public static class n extends d {
        public n() {
            super(C3092c.m(new C2796v()), 8, org.bouncycastle.crypto.util.g.t(), org.bouncycastle.crypto.util.g.t());
        }
    }

    public f(L l10) {
        this.f20274g = new C12947c();
        this.f20277j = -1;
        this.f20278k = new ByteArrayOutputStream();
        this.f20279l = null;
        this.f20280m = null;
        this.f20283p = false;
        this.f20284q = null;
        this.f20276i = l10;
        this.f20275h = 0;
    }

    @Override
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        byte[] engineDoFinal = engineDoFinal(bArr, i10, i11);
        System.arraycopy(engineDoFinal, 0, bArr2, i12, engineDoFinal.length);
        return engineDoFinal.length;
    }

    @Override
    public int engineGetBlockSize() {
        C2376h d10 = this.f20276i.d();
        if (d10 == null) {
            return 0;
        }
        return d10.b();
    }

    @Override
    public byte[] engineGetIV() {
        s sVar = this.f20280m;
        if (sVar != null) {
            return sVar.e();
        }
        return null;
    }

    @Override
    public int engineGetKeySize(Key key) {
        if (!(key instanceof Ij.e)) {
            throw new IllegalArgumentException("not an XDH key");
        }
        String algorithm = ((Ij.e) key).getAlgorithm();
        if (C4207E.f34888c.equalsIgnoreCase(algorithm)) {
            return 256;
        }
        if (C4207E.f34889d.equalsIgnoreCase(algorithm)) {
            return 448;
        }
        throw new IllegalArgumentException("unknown XDH key algorithm " + algorithm);
    }

    @Override
    public int engineGetOutputSize(int i10) {
        C2376h d10;
        if (this.f20281n == null) {
            throw new IllegalStateException("cipher not initialised");
        }
        int d11 = this.f20276i.f().d();
        int w10 = this.f20284q == null ? ((((J) this.f20281n).d().a().w() + 7) / 8) * 2 : 0;
        int size = this.f20278k.size() + i10;
        if (this.f20276i.d() != null) {
            int i11 = this.f20277j;
            if (i11 == 1 || i11 == 3) {
                d10 = this.f20276i.d();
            } else {
                if (i11 != 2 && i11 != 4) {
                    throw new IllegalStateException("cipher not initialised");
                }
                d10 = this.f20276i.d();
                size = (size - d11) - w10;
            }
            size = d10.c(size);
        }
        int i12 = this.f20277j;
        if (i12 == 1 || i12 == 3) {
            return d11 + w10 + size;
        }
        if (i12 == 2 || i12 == 4) {
            return size;
        }
        throw new IllegalStateException("cipher not initialised");
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        if (this.f20279l == null && this.f20280m != null) {
            try {
                AlgorithmParameters l10 = this.f20274g.l("IES");
                this.f20279l = l10;
                l10.init(this.f20280m);
            } catch (Exception e10) {
                throw new RuntimeException(e10.toString());
            }
        }
        return this.f20279l;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(s.class);
            } catch (Exception e10) {
                throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + e10.toString());
            }
        } else {
            parameterSpec = null;
        }
        this.f20279l = algorithmParameters;
        engineInit(i10, key, parameterSpec, secureRandom);
    }

    @Override
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        boolean z10;
        String p10 = w.p(str);
        if (p10.equals(KeyProperties.DIGEST_NONE)) {
            z10 = false;
        } else {
            if (!p10.equals("DHAES")) {
                throw new IllegalArgumentException("can't support mode " + str);
            }
            z10 = true;
        }
        this.f20283p = z10;
    }

    @Override
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        String p10 = w.p(str);
        if (!p10.equals("NOPADDING") && !p10.equals("PKCS5PADDING") && !p10.equals("PKCS7PADDING")) {
            throw new NoSuchPaddingException("padding not available with IESCipher");
        }
    }

    @Override
    public int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        this.f20278k.write(bArr, i10, i11);
        return 0;
    }

    public f(L l10, int i10) {
        this.f20274g = new C12947c();
        this.f20277j = -1;
        this.f20278k = new ByteArrayOutputStream();
        this.f20279l = null;
        this.f20280m = null;
        this.f20283p = false;
        this.f20284q = null;
        this.f20276i = l10;
        this.f20275h = i10;
    }

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        if (i11 != 0) {
            this.f20278k.write(bArr, i10, i11);
        }
        byte[] byteArray = this.f20278k.toByteArray();
        this.f20278k.reset();
        InterfaceC2379k c3348i0 = new C3348i0(this.f20280m.b(), this.f20280m.c(), this.f20280m.d(), this.f20280m.a());
        byte[] e10 = this.f20280m.e();
        if (e10 != null) {
            c3348i0 = new w0(c3348i0, e10);
        }
        C3335c c3335c = this.f20284q;
        if (c3335c != null) {
            try {
                int i12 = this.f20277j;
                if (i12 != 1 && i12 != 3) {
                    this.f20276i.i(false, this.f20281n, c3335c, c3348i0);
                    return this.f20276i.j(byteArray, 0, byteArray.length);
                }
                this.f20276i.i(true, c3335c, this.f20281n, c3348i0);
                return this.f20276i.j(byteArray, 0, byteArray.length);
            } catch (Exception e11) {
                throw new BadBlockException("unable to process block", e11);
            }
        }
        C3335c c3335c2 = this.f20281n;
        boolean z10 = (c3335c2 instanceof O0) || (c3335c2 instanceof N0);
        int i13 = z10 ? 256 : 448;
        int i14 = this.f20277j;
        if (i14 == 1 || i14 == 3) {
            InterfaceC2372d p10 = z10 ? new P() : new Q();
            p10.b(new G(this.f20282o, i13));
            try {
                this.f20276i.h(this.f20281n, c3348i0, new u(p10, new a(z10)));
                return this.f20276i.j(byteArray, 0, byteArray.length);
            } catch (Exception e12) {
                throw new BadBlockException("unable to process block", e12);
            }
        }
        if (i14 != 2 && i14 != 4) {
            throw new IllegalStateException("cipher not initialised");
        }
        try {
            this.f20276i.g(c3335c2, c3348i0, new Yi.c(z10));
            return this.f20276i.j(byteArray, 0, byteArray.length);
        } catch (InvalidCipherTextException e13) {
            throw new BadBlockException("unable to process block", e13);
        }
    }

    @Override
    public void engineInit(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw new IllegalArgumentException("cannot handle supplied parameter spec: " + e10.getMessage());
        }
    }

    @Override
    public byte[] engineUpdate(byte[] bArr, int i10, int i11) {
        this.f20278k.write(bArr, i10, i11);
        return null;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException, InvalidKeyException {
        s sVar;
        C3335c b10;
        this.f20284q = null;
        if (algorithmParameterSpec == null && this.f20275h == 0) {
            sVar = org.bouncycastle.jcajce.provider.asymmetric.util.k.a(this.f20276i.d(), null);
        } else {
            if (!(algorithmParameterSpec instanceof s)) {
                throw new InvalidAlgorithmParameterException("must be passed IES parameters");
            }
            sVar = (s) algorithmParameterSpec;
        }
        this.f20280m = sVar;
        byte[] e10 = this.f20280m.e();
        int i11 = this.f20275h;
        if (i11 != 0 && (e10 == null || e10.length != i11)) {
            throw new InvalidAlgorithmParameterException("NONCE in IES Parameters needs to be " + this.f20275h + " bytes long");
        }
        if (i10 == 1 || i10 == 3) {
            if (!(key instanceof PublicKey)) {
                throw new InvalidKeyException("must be passed recipient's public XDH key for encryption");
            }
            b10 = Oj.e.b((PublicKey) key);
        } else {
            if (i10 != 2 && i10 != 4) {
                throw new InvalidKeyException("must be passed XDH key");
            }
            if (!(key instanceof PrivateKey)) {
                throw new InvalidKeyException("must be passed recipient's private XDH key for decryption");
            }
            b10 = Oj.e.a((PrivateKey) key);
        }
        this.f20281n = b10;
        this.f20282o = secureRandom;
        this.f20277j = i10;
        this.f20278k.reset();
    }
}

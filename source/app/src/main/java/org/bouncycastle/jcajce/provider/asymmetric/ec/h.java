package org.bouncycastle.jcajce.provider.asymmetric.ec;

import Bi.C2376h;
import Bi.F;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Li.C2769a;
import Li.C2796v;
import Li.L;
import Oi.C2940p;
import Oi.u;
import Oi.z;
import Ti.C3092c;
import Xi.C3335c;
import Xi.C3348i0;
import Xi.G;
import Xi.I;
import Xi.J;
import Xi.M;
import Xi.w0;
import android.security.keystore.KeyProperties;
import dk.C12947c;
import dk.InterfaceC12950f;
import fk.InterfaceC13236b;
import fk.InterfaceC13247m;
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

public class h extends BaseCipherSpi {

    public final InterfaceC12950f f101207g;

    public int f101208h;

    public L f101209i;

    public int f101210j;

    public ByteArrayOutputStream f101211k;

    public AlgorithmParameters f101212l;

    public s f101213m;

    public C3335c f101214n;

    public SecureRandom f101215o;

    public boolean f101216p;

    public C3335c f101217q;

    public class a implements F {

        public final boolean f101218a;

        public a(boolean z10) {
            this.f101218a = z10;
        }

        @Override
        public byte[] a(C3335c c3335c) {
            return ((M) c3335c).e().l(this.f101218a);
        }
    }

    public static class b extends h {
        public b() {
            this(org.bouncycastle.crypto.util.g.d(), org.bouncycastle.crypto.util.g.d());
        }

        public b(InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2) {
            super(new L(new Ci.e(), new z(interfaceC2392y), new Si.k(interfaceC2392y2)));
        }
    }

    public static class c extends d {
        public c() {
            super(C3092c.m(C2769a.r()), 16);
        }
    }

    public static class d extends h {
        public d(InterfaceC2374f interfaceC2374f, int i10) {
            this(interfaceC2374f, i10, org.bouncycastle.crypto.util.g.d(), org.bouncycastle.crypto.util.g.d());
        }

        public d(InterfaceC2374f interfaceC2374f, int i10, InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2) {
            super(new L(new Ci.e(), new z(interfaceC2392y), new Si.k(interfaceC2392y2), new Wi.e(interfaceC2374f)), i10);
        }
    }

    public static class e extends d {
        public e() {
            super(C3092c.m(new C2796v()), 8);
        }
    }

    public static class f extends b {
        public f() {
            super(org.bouncycastle.crypto.util.g.h(), org.bouncycastle.crypto.util.g.h());
        }
    }

    public static class g extends d {
        public g() {
            super(C3092c.m(C2769a.r()), 16, org.bouncycastle.crypto.util.g.h(), org.bouncycastle.crypto.util.g.h());
        }
    }

    public static class C1918h extends d {
        public C1918h() {
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

    public h(L l10) {
        this.f101207g = new C12947c();
        this.f101210j = -1;
        this.f101211k = new ByteArrayOutputStream();
        this.f101212l = null;
        this.f101213m = null;
        this.f101216p = false;
        this.f101217q = null;
        this.f101209i = l10;
        this.f101208h = 0;
    }

    @Override
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        byte[] engineDoFinal = engineDoFinal(bArr, i10, i11);
        System.arraycopy(engineDoFinal, 0, bArr2, i12, engineDoFinal.length);
        return engineDoFinal.length;
    }

    @Override
    public int engineGetBlockSize() {
        C2376h d10 = this.f101209i.d();
        if (d10 == null) {
            return 0;
        }
        return d10.b();
    }

    @Override
    public byte[] engineGetIV() {
        s sVar = this.f101213m;
        if (sVar != null) {
            return sVar.e();
        }
        return null;
    }

    @Override
    public int engineGetKeySize(Key key) {
        if (key instanceof InterfaceC13236b) {
            return ((InterfaceC13236b) key).getParameters().a().w();
        }
        throw new IllegalArgumentException("not an EC key");
    }

    @Override
    public int engineGetOutputSize(int i10) {
        C2376h d10;
        if (this.f101214n == null) {
            throw new IllegalStateException("cipher not initialised");
        }
        int d11 = this.f101209i.f().d();
        int w10 = this.f101217q == null ? (((((J) this.f101214n).d().a().w() + 7) / 8) * 2) + 1 : 0;
        int size = this.f101211k.size() + i10;
        if (this.f101209i.d() == null) {
            int i11 = this.f101210j;
            if (i11 == 2 || i11 == 4) {
                size = (size - d11) - w10;
            }
        } else {
            int i12 = this.f101210j;
            if (i12 == 1 || i12 == 3) {
                d10 = this.f101209i.d();
            } else {
                if (i12 != 2 && i12 != 4) {
                    throw new IllegalStateException("cipher not initialised");
                }
                d10 = this.f101209i.d();
                size = (size - d11) - w10;
            }
            size = d10.c(size);
        }
        int i13 = this.f101210j;
        if (i13 == 1 || i13 == 3) {
            return d11 + w10 + size;
        }
        if (i13 == 2 || i13 == 4) {
            return size;
        }
        throw new IllegalStateException("cipher not initialised");
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        if (this.f101212l == null && this.f101213m != null) {
            try {
                AlgorithmParameters l10 = this.f101207g.l("IES");
                this.f101212l = l10;
                l10.init(this.f101213m);
            } catch (Exception e10) {
                throw new RuntimeException(e10.toString());
            }
        }
        return this.f101212l;
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
        this.f101212l = algorithmParameters;
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
        this.f101216p = z10;
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
        this.f101211k.write(bArr, i10, i11);
        return 0;
    }

    public h(L l10, int i10) {
        this.f101207g = new C12947c();
        this.f101210j = -1;
        this.f101211k = new ByteArrayOutputStream();
        this.f101212l = null;
        this.f101213m = null;
        this.f101216p = false;
        this.f101217q = null;
        this.f101209i = l10;
        this.f101208h = i10;
    }

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        if (i11 != 0) {
            this.f101211k.write(bArr, i10, i11);
        }
        byte[] byteArray = this.f101211k.toByteArray();
        this.f101211k.reset();
        InterfaceC2379k c3348i0 = new C3348i0(this.f101213m.b(), this.f101213m.c(), this.f101213m.d(), this.f101213m.a());
        byte[] e10 = this.f101213m.e();
        if (e10 != null) {
            c3348i0 = new w0(c3348i0, e10);
        }
        G d10 = ((J) this.f101214n).d();
        C3335c c3335c = this.f101217q;
        if (c3335c != null) {
            try {
                int i12 = this.f101210j;
                if (i12 != 1 && i12 != 3) {
                    this.f101209i.i(false, this.f101214n, c3335c, c3348i0);
                    return this.f101209i.j(byteArray, 0, byteArray.length);
                }
                this.f101209i.i(true, c3335c, this.f101214n, c3348i0);
                return this.f101209i.j(byteArray, 0, byteArray.length);
            } catch (Exception e11) {
                throw new BadBlockException("unable to process block", e11);
            }
        }
        int i13 = this.f101210j;
        if (i13 == 1 || i13 == 3) {
            C2940p c2940p = new C2940p();
            c2940p.b(new I(d10, this.f101215o));
            try {
                this.f101209i.h(this.f101214n, c3348i0, new u(c2940p, new a(this.f101213m.f())));
                return this.f101209i.j(byteArray, 0, byteArray.length);
            } catch (Exception e12) {
                throw new BadBlockException("unable to process block", e12);
            }
        }
        if (i13 != 2 && i13 != 4) {
            throw new IllegalStateException("cipher not initialised");
        }
        try {
            this.f101209i.g(this.f101214n, c3348i0, new Yi.b(d10));
            return this.f101209i.j(byteArray, 0, byteArray.length);
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
        this.f101211k.write(bArr, i10, i11);
        return null;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException, InvalidKeyException {
        s sVar;
        C3335c b10;
        PrivateKey privateKey;
        this.f101217q = null;
        if (algorithmParameterSpec == null && this.f101208h == 0) {
            sVar = org.bouncycastle.jcajce.provider.asymmetric.util.k.a(this.f101209i.d(), null);
        } else {
            if (!(algorithmParameterSpec instanceof s)) {
                throw new InvalidAlgorithmParameterException("must be passed IES parameters");
            }
            sVar = (s) algorithmParameterSpec;
        }
        this.f101213m = sVar;
        byte[] e10 = this.f101213m.e();
        int i11 = this.f101208h;
        if (i11 != 0 && (e10 == null || e10.length != i11)) {
            throw new InvalidAlgorithmParameterException("NONCE in IES Parameters needs to be " + this.f101208h + " bytes long");
        }
        if (i10 == 1 || i10 == 3) {
            if (!(key instanceof PublicKey)) {
                if (!(key instanceof InterfaceC13247m)) {
                    throw new InvalidKeyException("must be passed recipient's public EC key for encryption");
                }
                InterfaceC13247m interfaceC13247m = (InterfaceC13247m) key;
                this.f101214n = org.bouncycastle.jcajce.provider.asymmetric.ec.d.b(interfaceC13247m.ee());
                this.f101217q = org.bouncycastle.jcajce.provider.asymmetric.ec.d.a(interfaceC13247m.getPrivate());
                this.f101215o = secureRandom;
                this.f101210j = i10;
                this.f101211k.reset();
            }
            b10 = org.bouncycastle.jcajce.provider.asymmetric.ec.d.b((PublicKey) key);
        } else {
            if (i10 != 2 && i10 != 4) {
                throw new InvalidKeyException("must be passed EC key");
            }
            if (key instanceof PrivateKey) {
                privateKey = (PrivateKey) key;
            } else {
                if (!(key instanceof InterfaceC13247m)) {
                    throw new InvalidKeyException("must be passed recipient's private EC key for decryption");
                }
                InterfaceC13247m interfaceC13247m2 = (InterfaceC13247m) key;
                this.f101217q = org.bouncycastle.jcajce.provider.asymmetric.ec.d.b(interfaceC13247m2.ee());
                privateKey = interfaceC13247m2.getPrivate();
            }
            b10 = org.bouncycastle.jcajce.provider.asymmetric.ec.d.a(privateKey);
        }
        this.f101214n = b10;
        this.f101215o = secureRandom;
        this.f101210j = i10;
        this.f101211k.reset();
    }
}

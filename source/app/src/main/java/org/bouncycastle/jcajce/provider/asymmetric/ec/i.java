package org.bouncycastle.jcajce.provider.asymmetric.ec;

import Bi.C;
import Bi.C2376h;
import Bi.F;
import Bi.I;
import Bi.InterfaceC2392y;
import Li.L;
import Oi.C2940p;
import Oi.u;
import Oi.z;
import Xi.C3335c;
import Xi.C3358n0;
import Xi.C3360o0;
import Xi.G;
import Xi.J;
import Xi.M;
import ck.n;
import dk.C12947c;
import dk.InterfaceC12950f;
import fk.InterfaceC13236b;
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
import jk.AbstractC13875e;
import ki.q;
import org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi;

public class i extends BaseCipherSpi {

    public static final q f101220w = new q();

    public final Ci.f f101222h;

    public final z f101223i;

    public final I f101224j;

    public final int f101225k;

    public final int f101226l;

    public int f101227m;

    public L f101228n;

    public C3335c f101233s;

    public SecureRandom f101234t;

    public final InterfaceC12950f f101221g = new C12947c();

    public int f101229o = -1;

    public ByteArrayOutputStream f101230p = new ByteArrayOutputStream();

    public AlgorithmParameters f101231q = null;

    public n f101232r = null;

    public boolean f101235u = false;

    public C3335c f101236v = null;

    public class a implements F {

        public final boolean f101237a;

        public a(boolean z10) {
            this.f101237a = z10;
        }

        @Override
        public byte[] a(C3335c c3335c) {
            return ((M) c3335c).e().l(this.f101237a);
        }
    }

    public static class b extends i {
        public b(InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2, int i10, int i11) {
            super(new Ci.f(), new z(interfaceC2392y), new Si.k(interfaceC2392y2), i10, i11);
        }
    }

    public static class c extends b {
        public c() {
            super(org.bouncycastle.crypto.util.g.h(), org.bouncycastle.crypto.util.g.h(), 32, 16);
        }
    }

    public i(Ci.f fVar, z zVar, I i10, int i11, int i12) {
        this.f101222h = fVar;
        this.f101223i = zVar;
        this.f101224j = i10;
        this.f101225k = i11;
        this.f101226l = i12;
    }

    @Override
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        byte[] engineDoFinal = engineDoFinal(bArr, i10, i11);
        System.arraycopy(engineDoFinal, 0, bArr2, i12, engineDoFinal.length);
        return engineDoFinal.length;
    }

    @Override
    public int engineGetBlockSize() {
        return 0;
    }

    @Override
    public byte[] engineGetIV() {
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
        if (this.f101233s == null) {
            throw new IllegalStateException("cipher not initialised");
        }
        int d11 = this.f101228n.f().d();
        int w10 = this.f101236v == null ? ((((J) this.f101233s).d().a().w() + 7) / 8) * 2 : 0;
        int size = this.f101230p.size() + i10;
        if (this.f101228n.d() != null) {
            int i11 = this.f101229o;
            if (i11 == 1 || i11 == 3) {
                d10 = this.f101228n.d();
            } else {
                if (i11 != 2 && i11 != 4) {
                    throw new IllegalStateException("cipher not initialised");
                }
                d10 = this.f101228n.d();
                size = (size - d11) - w10;
            }
            size = d10.c(size);
        }
        int i12 = this.f101229o;
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
        if (this.f101231q == null && this.f101232r != null) {
            try {
                AlgorithmParameters l10 = this.f101221g.l("IES");
                this.f101231q = l10;
                l10.init(this.f101232r);
            } catch (Exception e10) {
                throw new RuntimeException(e10.toString());
            }
        }
        return this.f101231q;
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
        this.f101231q = algorithmParameters;
        engineInit(i10, key, parameterSpec, secureRandom);
    }

    @Override
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        throw new NoSuchAlgorithmException("can't support mode " + str);
    }

    @Override
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        throw new NoSuchPaddingException("padding not available with IESCipher");
    }

    @Override
    public int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        this.f101230p.write(bArr, i10, i11);
        return 0;
    }

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        if (i11 != 0) {
            this.f101230p.write(bArr, i10, i11);
        }
        this.f101230p.toByteArray();
        this.f101230p.reset();
        G d10 = ((J) this.f101233s).d();
        int i12 = this.f101229o;
        if (i12 == 1 || i12 == 3) {
            C2940p c2940p = new C2940p();
            c2940p.b(new Xi.I(d10, this.f101234t));
            C a10 = new u(c2940p, new a(this.f101232r.b())).a();
            this.f101222h.a(a10.b().a());
            q qVar = f101220w;
            byte[] c10 = qVar.c(this.f101222h.b(this.f101233s), qVar.a(d10.a()));
            int i13 = this.f101225k + i11;
            byte[] bArr2 = new byte[i13];
            this.f101223i.c(new C3358n0(c10, this.f101232r.a()));
            this.f101223i.a(bArr2, 0, i13);
            byte[] bArr3 = new byte[this.f101226l + i11];
            for (int i14 = 0; i14 != i11; i14++) {
                bArr3[i14] = (byte) (bArr[i10 + i14] ^ bArr2[i14]);
            }
            C3360o0 c3360o0 = new C3360o0(bArr2, i11, i13 - i11);
            this.f101224j.a(c3360o0);
            this.f101224j.update(bArr3, 0, i11);
            byte[] bArr4 = new byte[this.f101224j.d()];
            this.f101224j.c(bArr4, 0);
            org.bouncycastle.util.a.n(c3360o0.b());
            org.bouncycastle.util.a.n(bArr2);
            System.arraycopy(bArr4, 0, bArr3, i11, this.f101226l);
            return org.bouncycastle.util.a.B(a10.a(), bArr3);
        }
        if (i12 != 2 && i12 != 4) {
            throw new IllegalStateException("cipher not initialised");
        }
        Xi.L l10 = (Xi.L) this.f101233s;
        AbstractC13875e a11 = l10.d().a();
        int w10 = (a11.w() + 7) / 8;
        if (bArr[i10] == 4) {
            w10 *= 2;
        }
        int i15 = w10 + 1;
        int i16 = i11 - (this.f101226l + i15);
        int i17 = i15 + i10;
        jk.i l11 = a11.l(org.bouncycastle.util.a.X(bArr, i10, i17));
        this.f101222h.a(this.f101233s);
        q qVar2 = f101220w;
        byte[] c11 = qVar2.c(this.f101222h.b(new M(l11, l10.d())), qVar2.a(d10.a()));
        int i18 = this.f101225k + i16;
        byte[] bArr5 = new byte[i18];
        this.f101223i.c(new C3358n0(c11, this.f101232r.a()));
        this.f101223i.a(bArr5, 0, i18);
        byte[] bArr6 = new byte[i16];
        for (int i19 = 0; i19 != i16; i19++) {
            bArr6[i19] = (byte) (bArr[i17 + i19] ^ bArr5[i19]);
        }
        C3360o0 c3360o02 = new C3360o0(bArr5, i16, i18 - i16);
        this.f101224j.a(c3360o02);
        this.f101224j.update(bArr, i17, i16);
        byte[] bArr7 = new byte[this.f101224j.d()];
        this.f101224j.c(bArr7, 0);
        org.bouncycastle.util.a.n(c3360o02.b());
        org.bouncycastle.util.a.n(bArr5);
        int i20 = this.f101226l;
        if (org.bouncycastle.util.a.H(i20, bArr7, 0, bArr, i10 + (i11 - i20))) {
            return bArr6;
        }
        throw new BadPaddingException("mac field");
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
        this.f101230p.write(bArr, i10, i11);
        return null;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException, InvalidKeyException {
        C3335c b10;
        this.f101236v = null;
        this.f101232r = (n) algorithmParameterSpec;
        if (i10 == 1 || i10 == 3) {
            if (!(key instanceof PublicKey)) {
                throw new InvalidKeyException("must be passed recipient's public EC key for encryption");
            }
            b10 = d.b((PublicKey) key);
        } else {
            if (i10 != 2 && i10 != 4) {
                throw new InvalidKeyException("must be passed EC key");
            }
            if (!(key instanceof PrivateKey)) {
                throw new InvalidKeyException("must be passed recipient's private EC key for decryption");
            }
            b10 = d.a((PrivateKey) key);
        }
        this.f101233s = b10;
        this.f101234t = secureRandom;
        this.f101229o = i10;
        this.f101230p.reset();
    }
}

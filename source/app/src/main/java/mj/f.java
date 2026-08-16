package Mj;

import Bi.C2376h;
import Bi.F;
import Bi.InterfaceC2379k;
import Li.C2769a;
import Li.C2796v;
import Li.L;
import Oi.C2934j;
import Oi.u;
import Oi.z;
import Si.k;
import Ti.C3092c;
import Xi.C3335c;
import Xi.C3348i0;
import Xi.C3355m;
import Xi.C3357n;
import Xi.C3363q;
import Xi.C3366s;
import Xi.w0;
import android.security.keystore.KeyProperties;
import dk.C12947c;
import dk.InterfaceC12950f;
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
import javax.crypto.interfaces.DHKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi;
import org.bouncycastle.jcajce.provider.util.BadBlockException;
import org.bouncycastle.util.w;

public class f extends BaseCipherSpi {

    public final InterfaceC12950f f15334g;

    public final int f15335h;

    public L f15336i;

    public int f15337j;

    public ByteArrayOutputStream f15338k;

    public AlgorithmParameters f15339l;

    public s f15340m;

    public C3335c f15341n;

    public SecureRandom f15342o;

    public boolean f15343p;

    public C3335c f15344q;

    public class a implements F {
        public a() {
        }

        @Override
        public byte[] a(C3335c c3335c) {
            int bitLength = (((C3357n) c3335c).d().f().bitLength() + 7) / 8;
            byte[] bArr = new byte[bitLength];
            byte[] c10 = org.bouncycastle.util.b.c(((C3366s) c3335c).e());
            if (c10.length > bitLength) {
                throw new IllegalArgumentException("Senders's public key longer than expected.");
            }
            System.arraycopy(c10, 0, bArr, bitLength - c10.length, c10.length);
            return bArr;
        }
    }

    public static class b extends f {
        public b() {
            super(new L(new Ci.b(), new z(org.bouncycastle.crypto.util.g.d()), new k(org.bouncycastle.crypto.util.g.d())));
        }
    }

    public static class c extends f {
        public c() {
            super(new L(new Ci.b(), new z(org.bouncycastle.crypto.util.g.d()), new k(org.bouncycastle.crypto.util.g.d()), new Wi.e(C3092c.m(C2769a.r()))), 16);
        }
    }

    public static class d extends f {
        public d() {
            super(new L(new Ci.b(), new z(org.bouncycastle.crypto.util.g.d()), new k(org.bouncycastle.crypto.util.g.d()), new Wi.e(C3092c.m(new C2796v()))), 8);
        }
    }

    public f(L l10) {
        this.f15334g = new C12947c();
        this.f15337j = -1;
        this.f15338k = new ByteArrayOutputStream();
        this.f15339l = null;
        this.f15340m = null;
        this.f15343p = false;
        this.f15344q = null;
        this.f15336i = l10;
        this.f15335h = 0;
    }

    @Override
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        byte[] engineDoFinal = engineDoFinal(bArr, i10, i11);
        System.arraycopy(engineDoFinal, 0, bArr2, i12, engineDoFinal.length);
        return engineDoFinal.length;
    }

    @Override
    public int engineGetBlockSize() {
        C2376h d10 = this.f15336i.d();
        if (d10 == null) {
            return 0;
        }
        return d10.b();
    }

    @Override
    public byte[] engineGetIV() {
        s sVar = this.f15340m;
        if (sVar != null) {
            return sVar.e();
        }
        return null;
    }

    @Override
    public int engineGetKeySize(Key key) {
        if (key instanceof DHKey) {
            return ((DHKey) key).getParams().getP().bitLength();
        }
        throw new IllegalArgumentException("not a DH key");
    }

    @Override
    public int engineGetOutputSize(int i10) {
        int size;
        C2376h d10;
        if (this.f15341n == null) {
            throw new IllegalStateException("cipher not initialised");
        }
        int d11 = this.f15336i.f().d();
        int bitLength = this.f15344q == null ? (((((C3357n) this.f15341n).d().f().bitLength() + 7) * 2) / 8) + 1 : 0;
        if (this.f15336i.d() != null) {
            int i11 = this.f15337j;
            if (i11 == 1 || i11 == 3) {
                d10 = this.f15336i.d();
            } else {
                if (i11 != 2 && i11 != 4) {
                    throw new IllegalStateException("cipher not initialised");
                }
                d10 = this.f15336i.d();
                i10 = (i10 - d11) - bitLength;
            }
            i10 = d10.c(i10);
        }
        int i12 = this.f15337j;
        if (i12 == 1 || i12 == 3) {
            size = this.f15338k.size() + d11 + bitLength;
        } else {
            if (i12 != 2 && i12 != 4) {
                throw new IllegalStateException("IESCipher not initialised");
            }
            size = (this.f15338k.size() - d11) - bitLength;
        }
        return size + i10;
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        if (this.f15339l == null && this.f15340m != null) {
            try {
                AlgorithmParameters l10 = this.f15334g.l("IES");
                this.f15339l = l10;
                l10.init(this.f15340m);
            } catch (Exception e10) {
                throw new RuntimeException(e10.toString());
            }
        }
        return this.f15339l;
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
        this.f15339l = algorithmParameters;
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
        this.f15343p = z10;
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
        this.f15338k.write(bArr, i10, i11);
        return 0;
    }

    public f(L l10, int i10) {
        this.f15334g = new C12947c();
        this.f15337j = -1;
        this.f15338k = new ByteArrayOutputStream();
        this.f15339l = null;
        this.f15340m = null;
        this.f15343p = false;
        this.f15344q = null;
        this.f15336i = l10;
        this.f15335h = i10;
    }

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        if (i11 != 0) {
            this.f15338k.write(bArr, i10, i11);
        }
        byte[] byteArray = this.f15338k.toByteArray();
        this.f15338k.reset();
        InterfaceC2379k c3348i0 = new C3348i0(this.f15340m.b(), this.f15340m.c(), this.f15340m.d(), this.f15340m.a());
        byte[] e10 = this.f15340m.e();
        if (e10 != null) {
            c3348i0 = new w0(c3348i0, e10);
        }
        C3363q d10 = ((C3357n) this.f15341n).d();
        C3335c c3335c = this.f15344q;
        if (c3335c != null) {
            try {
                int i12 = this.f15337j;
                if (i12 != 1 && i12 != 3) {
                    this.f15336i.i(false, this.f15341n, c3335c, c3348i0);
                    return this.f15336i.j(byteArray, 0, byteArray.length);
                }
                this.f15336i.i(true, c3335c, this.f15341n, c3348i0);
                return this.f15336i.j(byteArray, 0, byteArray.length);
            } catch (Exception e11) {
                throw new BadBlockException("unable to process block", e11);
            }
        }
        int i13 = this.f15337j;
        if (i13 == 1 || i13 == 3) {
            C2934j c2934j = new C2934j();
            c2934j.b(new C3355m(this.f15342o, d10));
            try {
                this.f15336i.h(this.f15341n, c3348i0, new u(c2934j, new a()));
                return this.f15336i.j(byteArray, 0, byteArray.length);
            } catch (Exception e12) {
                throw new BadBlockException("unable to process block", e12);
            }
        }
        if (i13 != 2 && i13 != 4) {
            throw new IllegalStateException("IESCipher not initialised");
        }
        try {
            L l10 = this.f15336i;
            C3335c c3335c2 = this.f15341n;
            l10.g(c3335c2, c3348i0, new Yi.a(((C3357n) c3335c2).d()));
            return this.f15336i.j(byteArray, 0, byteArray.length);
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
        this.f15338k.write(bArr, i10, i11);
        return null;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException, InvalidKeyException {
        s sVar;
        C3335c b10;
        PrivateKey privateKey;
        if (algorithmParameterSpec == null && this.f15335h == 0) {
            sVar = org.bouncycastle.jcajce.provider.asymmetric.util.k.a(this.f15336i.d(), null);
        } else {
            if (!(algorithmParameterSpec instanceof s)) {
                throw new InvalidAlgorithmParameterException("must be passed IES parameters");
            }
            sVar = (s) algorithmParameterSpec;
        }
        this.f15340m = sVar;
        byte[] e10 = this.f15340m.e();
        int i11 = this.f15335h;
        if (i11 != 0 && (e10 == null || e10.length != i11)) {
            throw new InvalidAlgorithmParameterException("NONCE in IES Parameters needs to be " + this.f15335h + " bytes long");
        }
        if (i10 == 1 || i10 == 3) {
            if (!(key instanceof DHPublicKey)) {
                if (!(key instanceof InterfaceC13247m)) {
                    throw new InvalidKeyException("must be passed recipient's public DH key for encryption");
                }
                InterfaceC13247m interfaceC13247m = (InterfaceC13247m) key;
                this.f15341n = org.bouncycastle.jcajce.provider.asymmetric.util.e.b(interfaceC13247m.ee());
                this.f15344q = org.bouncycastle.jcajce.provider.asymmetric.util.e.a(interfaceC13247m.getPrivate());
                this.f15342o = secureRandom;
                this.f15337j = i10;
                this.f15338k.reset();
            }
            b10 = org.bouncycastle.jcajce.provider.asymmetric.util.e.b((PublicKey) key);
        } else {
            if (i10 != 2 && i10 != 4) {
                throw new InvalidKeyException("must be passed EC key");
            }
            if (key instanceof DHPrivateKey) {
                privateKey = (PrivateKey) key;
            } else {
                if (!(key instanceof InterfaceC13247m)) {
                    throw new InvalidKeyException("must be passed recipient's private DH key for decryption");
                }
                InterfaceC13247m interfaceC13247m2 = (InterfaceC13247m) key;
                this.f15344q = org.bouncycastle.jcajce.provider.asymmetric.util.e.b(interfaceC13247m2.ee());
                privateKey = interfaceC13247m2.getPrivate();
            }
            b10 = org.bouncycastle.jcajce.provider.asymmetric.util.e.a(privateKey);
        }
        this.f15341n = b10;
        this.f15342o = secureRandom;
        this.f15337j = i10;
        this.f15338k.reset();
    }
}

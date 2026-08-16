package Sj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.r;
import Li.C2778e0;
import Xh.t;
import Xi.F0;
import Xi.x0;
import android.security.keystore.KeyProperties;
import bk.C3898d;
import cj.AbstractC4202a;
import ck.C4205C;
import dk.C12947c;
import dk.InterfaceC12950f;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi;
import org.bouncycastle.jcajce.provider.util.BadBlockException;
import org.bouncycastle.util.w;

public class e extends BaseCipherSpi {

    public final InterfaceC12950f f23556g;

    public InterfaceC2370b f23557h;

    public AlgorithmParameterSpec f23558i;

    public AlgorithmParameters f23559j;

    public boolean f23560k;

    public boolean f23561l;

    public BaseCipherSpi.a f23562m;

    public C4205C f23563n;

    public InterfaceC2379k f23564o;

    public static class a extends e {
        public a() {
            super(new Ki.a(new C2778e0()));
        }
    }

    public static class b extends e {
        public b() {
            super(new C2778e0());
        }
    }

    public static class c extends e {
        public c() {
            super(OAEPParameterSpec.DEFAULT);
        }
    }

    public static class d extends e {
        public d() {
            super(new Sj.f(new C2778e0()));
        }
    }

    public static class C0562e extends e {
        public C0562e() {
            super(false, true, new Sj.f(new C2778e0()));
        }
    }

    public static class f extends e {
        public f() {
            super(true, false, new Sj.f(new C2778e0()));
        }
    }

    public e(InterfaceC2370b interfaceC2370b) {
        this.f23556g = new C12947c();
        this.f23560k = false;
        this.f23561l = false;
        this.f23562m = new BaseCipherSpi.a();
        this.f23563n = null;
        this.f23564o = null;
        this.f23557h = interfaceC2370b;
    }

    private byte[] c() throws BadPaddingException {
        try {
            if (this.f23563n != null) {
                x0 x0Var = (x0) this.f23564o;
                return AbstractC4202a.d(this.f23562m.d(), 0, this.f23562m.size(), (F0) x0Var.a(), this.f23563n.a(), x0Var.b());
            }
            try {
                try {
                    byte[] b10 = this.f23557h.b(this.f23562m.d(), 0, this.f23562m.size());
                    if (b10 != null) {
                        return b10;
                    }
                    throw new BadBlockException("unable to decrypt block", null);
                } catch (ArrayIndexOutOfBoundsException e10) {
                    throw new BadBlockException("unable to decrypt block", e10);
                }
            } catch (InvalidCipherTextException e11) {
                throw new BadBlockException("unable to decrypt block", e11);
            }
        } finally {
            this.f23562m.c();
        }
    }

    private void d(OAEPParameterSpec oAEPParameterSpec) throws NoSuchPaddingException {
        MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) oAEPParameterSpec.getMGFParameters();
        InterfaceC2392y a10 = C3898d.a(mGF1ParameterSpec.getDigestAlgorithm());
        if (a10 != null) {
            this.f23557h = new Ki.b(new C2778e0(), a10, ((PSource.PSpecified) oAEPParameterSpec.getPSource()).getValue());
            this.f23558i = oAEPParameterSpec;
        } else {
            throw new NoSuchPaddingException("no match on OAEP constructor for digest algorithm: " + mGF1ParameterSpec.getDigestAlgorithm());
        }
    }

    public final int b() {
        if (this.f23563n != null) {
            return AbstractC4202a.e((F0) ((x0) this.f23564o).a());
        }
        InterfaceC2370b interfaceC2370b = this.f23557h;
        boolean z10 = interfaceC2370b instanceof C2778e0;
        int d10 = interfaceC2370b.d();
        return z10 ? d10 + 1 : d10;
    }

    @Override
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IllegalBlockSizeException, BadPaddingException, ShortBufferException {
        if (i12 > bArr2.length - engineGetOutputSize(bArr == null ? 0 : i11)) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        byte[] engineDoFinal = engineDoFinal(bArr, i10, i11);
        System.arraycopy(engineDoFinal, 0, bArr2, i12, engineDoFinal.length);
        return engineDoFinal.length;
    }

    @Override
    public int engineGetBlockSize() {
        try {
            return this.f23557h.d();
        } catch (NullPointerException unused) {
            throw new IllegalStateException("RSA Cipher not initialised");
        }
    }

    @Override
    public int engineGetKeySize(Key key) {
        RSAKey rSAKey;
        if (key instanceof RSAPrivateKey) {
            rSAKey = (RSAPrivateKey) key;
        } else {
            if (!(key instanceof RSAPublicKey)) {
                throw new IllegalArgumentException("not an RSA key!");
            }
            rSAKey = (RSAPublicKey) key;
        }
        return rSAKey.getModulus().bitLength();
    }

    @Override
    public int engineGetOutputSize(int i10) {
        if (this.f23563n != null) {
            return 48;
        }
        try {
            return this.f23557h.c();
        } catch (NullPointerException unused) {
            throw new IllegalStateException("RSA Cipher not initialised");
        }
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        if (this.f23559j == null && this.f23558i != null) {
            try {
                AlgorithmParameters l10 = this.f23556g.l("OAEP");
                this.f23559j = l10;
                l10.init(this.f23558i);
            } catch (Exception e10) {
                throw new RuntimeException(e10.toString());
            }
        }
        return this.f23559j;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(OAEPParameterSpec.class);
            } catch (InvalidParameterSpecException e10) {
                throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + e10.toString(), e10);
            }
        } else {
            parameterSpec = null;
        }
        this.f23559j = algorithmParameters;
        engineInit(i10, key, parameterSpec, secureRandom);
    }

    @Override
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        String p10 = w.p(str);
        if (p10.equals(KeyProperties.DIGEST_NONE) || p10.equals(KeyProperties.BLOCK_MODE_ECB)) {
            return;
        }
        if (p10.equals("1")) {
            this.f23561l = true;
            this.f23560k = false;
        } else if (p10.equals("2")) {
            this.f23561l = false;
            this.f23560k = true;
        } else {
            throw new NoSuchAlgorithmException("can't support mode " + str);
        }
    }

    @Override
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        OAEPParameterSpec oAEPParameterSpec;
        InterfaceC2370b aVar;
        String p10 = w.p(str);
        if (p10.equals("NOPADDING")) {
            aVar = new C2778e0();
        } else if (p10.equals("PKCS1PADDING")) {
            aVar = new Sj.f(new C2778e0());
        } else {
            if (!p10.equals("ISO9796-1PADDING")) {
                if (p10.equals("OAEPWITHMD5ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec(KeyProperties.DIGEST_MD5, "MGF1", new MGF1ParameterSpec(KeyProperties.DIGEST_MD5), PSource.PSpecified.DEFAULT);
                } else if (p10.equals("OAEPPADDING") || p10.equals("OAEPWITHSHA1ANDMGF1PADDING") || p10.equals("OAEPWITHSHA-1ANDMGF1PADDING")) {
                    oAEPParameterSpec = OAEPParameterSpec.DEFAULT;
                } else if (p10.equals("OAEPWITHSHA224ANDMGF1PADDING") || p10.equals("OAEPWITHSHA-224ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA-224", "MGF1", new MGF1ParameterSpec("SHA-224"), PSource.PSpecified.DEFAULT);
                } else if (p10.equals("OAEPWITHSHA256ANDMGF1PADDING") || p10.equals("OAEPWITHSHA-256ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, PSource.PSpecified.DEFAULT);
                } else if (p10.equals("OAEPWITHSHA384ANDMGF1PADDING") || p10.equals("OAEPWITHSHA-384ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA-384", "MGF1", MGF1ParameterSpec.SHA384, PSource.PSpecified.DEFAULT);
                } else if (p10.equals("OAEPWITHSHA512ANDMGF1PADDING") || p10.equals("OAEPWITHSHA-512ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, PSource.PSpecified.DEFAULT);
                } else if (p10.equals("OAEPWITHSHA3-224ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA3-224", "MGF1", new MGF1ParameterSpec("SHA3-224"), PSource.PSpecified.DEFAULT);
                } else if (p10.equals("OAEPWITHSHA3-256ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA3-256", "MGF1", new MGF1ParameterSpec("SHA3-256"), PSource.PSpecified.DEFAULT);
                } else if (p10.equals("OAEPWITHSHA3-384ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA3-384", "MGF1", new MGF1ParameterSpec("SHA3-384"), PSource.PSpecified.DEFAULT);
                } else {
                    if (!p10.equals("OAEPWITHSHA3-512ANDMGF1PADDING")) {
                        throw new NoSuchPaddingException(str + " unavailable with RSA.");
                    }
                    oAEPParameterSpec = new OAEPParameterSpec("SHA3-512", "MGF1", new MGF1ParameterSpec("SHA3-512"), PSource.PSpecified.DEFAULT);
                }
                d(oAEPParameterSpec);
                return;
            }
            aVar = new Ki.a(new C2778e0());
        }
        this.f23557h = aVar;
    }

    @Override
    public int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        engineUpdate(bArr, i10, i11);
        return 0;
    }

    public e(OAEPParameterSpec oAEPParameterSpec) {
        this.f23556g = new C12947c();
        this.f23560k = false;
        this.f23561l = false;
        this.f23562m = new BaseCipherSpi.a();
        this.f23563n = null;
        this.f23564o = null;
        try {
            d(oAEPParameterSpec);
        } catch (NoSuchPaddingException e10) {
            throw new IllegalArgumentException(e10.getMessage());
        }
    }

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        if (bArr != null) {
            engineUpdate(bArr, i10, i11);
        }
        return c();
    }

    @Override
    public void engineInit(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw new InvalidKeyException("Eeeek! " + e10.toString(), e10);
        }
    }

    @Override
    public byte[] engineUpdate(byte[] bArr, int i10, int i11) {
        if (i11 > b() - this.f23562m.size()) {
            throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
        }
        this.f23562m.write(bArr, i10, i11);
        return null;
    }

    public e(boolean z10, boolean z11, InterfaceC2370b interfaceC2370b) {
        this.f23556g = new C12947c();
        this.f23560k = false;
        this.f23561l = false;
        this.f23562m = new BaseCipherSpi.a();
        this.f23563n = null;
        this.f23564o = null;
        this.f23560k = z10;
        this.f23561l = z11;
        this.f23557h = interfaceC2370b;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        F0 c10;
        this.f23563n = null;
        if (algorithmParameterSpec != null && !(algorithmParameterSpec instanceof OAEPParameterSpec) && !(algorithmParameterSpec instanceof C4205C)) {
            throw new InvalidAlgorithmParameterException("unknown parameter type: " + algorithmParameterSpec.getClass().getName());
        }
        if (key instanceof RSAPublicKey) {
            if (this.f23561l && i10 == 1) {
                throw new InvalidKeyException("mode 1 requires RSAPrivateKey");
            }
            c10 = l.d((RSAPublicKey) key);
        } else {
            if (!(key instanceof RSAPrivateKey)) {
                throw new InvalidKeyException("unknown key type passed to RSA");
            }
            if (this.f23560k && i10 == 1) {
                throw new InvalidKeyException("mode 2 requires RSAPublicKey");
            }
            c10 = l.c((RSAPrivateKey) key);
        }
        this.f23564o = c10;
        if (algorithmParameterSpec instanceof OAEPParameterSpec) {
            OAEPParameterSpec oAEPParameterSpec = (OAEPParameterSpec) algorithmParameterSpec;
            this.f23558i = algorithmParameterSpec;
            if (!oAEPParameterSpec.getMGFAlgorithm().equalsIgnoreCase("MGF1") && !oAEPParameterSpec.getMGFAlgorithm().equals(t.f29037O0.J())) {
                throw new InvalidAlgorithmParameterException("unknown mask generation function specified");
            }
            if (!(oAEPParameterSpec.getMGFParameters() instanceof MGF1ParameterSpec)) {
                throw new InvalidAlgorithmParameterException("unkown MGF parameters");
            }
            InterfaceC2392y a10 = C3898d.a(oAEPParameterSpec.getDigestAlgorithm());
            if (a10 == null) {
                throw new InvalidAlgorithmParameterException("no match on digest algorithm: " + oAEPParameterSpec.getDigestAlgorithm());
            }
            MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) oAEPParameterSpec.getMGFParameters();
            InterfaceC2392y a11 = C3898d.a(mGF1ParameterSpec.getDigestAlgorithm());
            if (a11 == null) {
                throw new InvalidAlgorithmParameterException("no match on MGF digest algorithm: " + mGF1ParameterSpec.getDigestAlgorithm());
            }
            this.f23557h = new Ki.b(new C2778e0(), a10, a11, ((PSource.PSpecified) oAEPParameterSpec.getPSource()).getValue());
        } else if (algorithmParameterSpec instanceof C4205C) {
            InterfaceC2379k interfaceC2379k = this.f23564o;
            if (!(interfaceC2379k instanceof F0) || !((F0) interfaceC2379k).c()) {
                throw new InvalidKeyException("RSA private key required for TLS decryption");
            }
            this.f23563n = (C4205C) algorithmParameterSpec;
        }
        InterfaceC2379k interfaceC2379k2 = this.f23564o;
        this.f23564o = secureRandom != null ? new x0(interfaceC2379k2, secureRandom) : new x0(interfaceC2379k2, r.h());
        this.f23562m.reset();
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        throw new InvalidParameterException("unknown opmode " + i10 + " passed to RSA");
                    }
                }
            }
            this.f23557h.a(false, this.f23564o);
            return;
        }
        this.f23557h.a(true, this.f23564o);
    }
}

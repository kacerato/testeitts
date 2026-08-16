package Pj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Li.C2800z;
import Xh.t;
import Xi.x0;
import android.security.keystore.KeyProperties;
import bk.C3898d;
import fk.InterfaceC13240f;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.DHKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.jcajce.provider.asymmetric.util.BaseCipherSpi;
import org.bouncycastle.jcajce.provider.util.BadBlockException;
import org.bouncycastle.util.w;

public class e extends BaseCipherSpi {

    public InterfaceC2370b f21548g;

    public AlgorithmParameterSpec f21549h;

    public AlgorithmParameters f21550i;

    public BaseCipherSpi.a f21551j = new BaseCipherSpi.a();

    public static class a extends e {
        public a() {
            super(new C2800z());
        }
    }

    public static class b extends e {
        public b() {
            super(new Ki.c(new C2800z()));
        }
    }

    public e(InterfaceC2370b interfaceC2370b) {
        this.f21548g = interfaceC2370b;
    }

    public final byte[] b() throws BadPaddingException {
        try {
            try {
                return this.f21548g.b(this.f21551j.d(), 0, this.f21551j.size());
            } catch (ArrayIndexOutOfBoundsException e10) {
                throw new BadBlockException("unable to decrypt block", e10);
            } catch (InvalidCipherTextException e11) {
                throw new BadBlockException("unable to decrypt block", e11);
            }
        } finally {
            this.f21551j.c();
        }
    }

    public final void c(OAEPParameterSpec oAEPParameterSpec) throws NoSuchPaddingException {
        MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) oAEPParameterSpec.getMGFParameters();
        InterfaceC2392y a10 = C3898d.a(mGF1ParameterSpec.getDigestAlgorithm());
        if (a10 != null) {
            this.f21548g = new Ki.b(new C2800z(), a10, ((PSource.PSpecified) oAEPParameterSpec.getPSource()).getValue());
            this.f21549h = oAEPParameterSpec;
        } else {
            throw new NoSuchPaddingException("no match on OAEP constructor for digest algorithm: " + mGF1ParameterSpec.getDigestAlgorithm());
        }
    }

    @Override
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IllegalBlockSizeException, BadPaddingException, ShortBufferException {
        if (engineGetOutputSize(i11) + i12 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        if (bArr != null) {
            this.f21551j.write(bArr, i10, i11);
        }
        if (this.f21548g instanceof C2800z) {
            if (this.f21551j.size() > this.f21548g.d() + 1) {
                throw new ArrayIndexOutOfBoundsException("too much data for ElGamal block");
            }
        } else if (this.f21551j.size() > this.f21548g.d()) {
            throw new ArrayIndexOutOfBoundsException("too much data for ElGamal block");
        }
        byte[] b10 = b();
        for (int i13 = 0; i13 != b10.length; i13++) {
            bArr2[i12 + i13] = b10[i13];
        }
        return b10.length;
    }

    @Override
    public int engineGetBlockSize() {
        return this.f21548g.d();
    }

    @Override
    public int engineGetKeySize(Key key) {
        BigInteger p10;
        if (key instanceof InterfaceC13240f) {
            p10 = ((InterfaceC13240f) key).getParameters().b();
        } else {
            if (!(key instanceof DHKey)) {
                throw new IllegalArgumentException("not an ElGamal key!");
            }
            p10 = ((DHKey) key).getParams().getP();
        }
        return p10.bitLength();
    }

    @Override
    public int engineGetOutputSize(int i10) {
        return this.f21548g.c();
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        if (this.f21550i == null && this.f21549h != null) {
            try {
                AlgorithmParameters a10 = a("OAEP");
                this.f21550i = a10;
                a10.init(this.f21549h);
            } catch (Exception e10) {
                throw new RuntimeException(e10.toString());
            }
        }
        return this.f21550i;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("can't handle parameters in ElGamal");
    }

    @Override
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        String p10 = w.p(str);
        if (p10.equals(KeyProperties.DIGEST_NONE) || p10.equals(KeyProperties.BLOCK_MODE_ECB)) {
            return;
        }
        throw new NoSuchAlgorithmException("can't support mode " + str);
    }

    @Override
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        OAEPParameterSpec oAEPParameterSpec;
        InterfaceC2370b aVar;
        String p10 = w.p(str);
        if (p10.equals("NOPADDING")) {
            aVar = new C2800z();
        } else if (p10.equals("PKCS1PADDING")) {
            aVar = new Ki.c(new C2800z());
        } else {
            if (!p10.equals("ISO9796-1PADDING")) {
                if (!p10.equals("OAEPPADDING")) {
                    if (p10.equals("OAEPWITHMD5ANDMGF1PADDING")) {
                        oAEPParameterSpec = new OAEPParameterSpec(KeyProperties.DIGEST_MD5, "MGF1", new MGF1ParameterSpec(KeyProperties.DIGEST_MD5), PSource.PSpecified.DEFAULT);
                    } else if (!p10.equals("OAEPWITHSHA1ANDMGF1PADDING")) {
                        if (p10.equals("OAEPWITHSHA224ANDMGF1PADDING")) {
                            oAEPParameterSpec = new OAEPParameterSpec("SHA-224", "MGF1", new MGF1ParameterSpec("SHA-224"), PSource.PSpecified.DEFAULT);
                        } else if (p10.equals("OAEPWITHSHA256ANDMGF1PADDING")) {
                            oAEPParameterSpec = new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, PSource.PSpecified.DEFAULT);
                        } else if (p10.equals("OAEPWITHSHA384ANDMGF1PADDING")) {
                            oAEPParameterSpec = new OAEPParameterSpec("SHA-384", "MGF1", MGF1ParameterSpec.SHA384, PSource.PSpecified.DEFAULT);
                        } else if (p10.equals("OAEPWITHSHA512ANDMGF1PADDING")) {
                            oAEPParameterSpec = new OAEPParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, PSource.PSpecified.DEFAULT);
                        } else if (p10.equals("OAEPWITHSHA3-224ANDMGF1PADDING")) {
                            oAEPParameterSpec = new OAEPParameterSpec("SHA3-224", "MGF1", new MGF1ParameterSpec("SHA3-224"), PSource.PSpecified.DEFAULT);
                        } else if (p10.equals("OAEPWITHSHA3-256ANDMGF1PADDING")) {
                            oAEPParameterSpec = new OAEPParameterSpec("SHA3-256", "MGF1", new MGF1ParameterSpec("SHA3-256"), PSource.PSpecified.DEFAULT);
                        } else if (p10.equals("OAEPWITHSHA3-384ANDMGF1PADDING")) {
                            oAEPParameterSpec = new OAEPParameterSpec("SHA3-384", "MGF1", new MGF1ParameterSpec("SHA3-384"), PSource.PSpecified.DEFAULT);
                        } else {
                            if (!p10.equals("OAEPWITHSHA3-512ANDMGF1PADDING")) {
                                throw new NoSuchPaddingException(str + " unavailable with ElGamal.");
                            }
                            oAEPParameterSpec = new OAEPParameterSpec("SHA3-512", "MGF1", new MGF1ParameterSpec("SHA3-512"), PSource.PSpecified.DEFAULT);
                        }
                    }
                    c(oAEPParameterSpec);
                    return;
                }
                oAEPParameterSpec = OAEPParameterSpec.DEFAULT;
                c(oAEPParameterSpec);
                return;
            }
            aVar = new Ki.a(new C2800z());
        }
        this.f21548g = aVar;
    }

    @Override
    public int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        this.f21551j.write(bArr, i10, i11);
        return 0;
    }

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        if (bArr != null) {
            this.f21551j.write(bArr, i10, i11);
        }
        if (this.f21548g instanceof C2800z) {
            if (this.f21551j.size() > this.f21548g.d() + 1) {
                throw new ArrayIndexOutOfBoundsException("too much data for ElGamal block");
            }
        } else if (this.f21551j.size() > this.f21548g.d()) {
            throw new ArrayIndexOutOfBoundsException("too much data for ElGamal block");
        }
        return b();
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
        this.f21551j.write(bArr, i10, i11);
        return null;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        InterfaceC2379k a10;
        InterfaceC2370b interfaceC2370b;
        if (key instanceof DHPublicKey) {
            a10 = f.b((PublicKey) key);
        } else {
            if (!(key instanceof DHPrivateKey)) {
                throw new InvalidKeyException("unknown key type passed to ElGamal");
            }
            a10 = f.a((PrivateKey) key);
        }
        if (algorithmParameterSpec instanceof OAEPParameterSpec) {
            OAEPParameterSpec oAEPParameterSpec = (OAEPParameterSpec) algorithmParameterSpec;
            this.f21549h = algorithmParameterSpec;
            if (!oAEPParameterSpec.getMGFAlgorithm().equalsIgnoreCase("MGF1") && !oAEPParameterSpec.getMGFAlgorithm().equals(t.f29037O0.J())) {
                throw new InvalidAlgorithmParameterException("unknown mask generation function specified");
            }
            if (!(oAEPParameterSpec.getMGFParameters() instanceof MGF1ParameterSpec)) {
                throw new InvalidAlgorithmParameterException("unkown MGF parameters");
            }
            InterfaceC2392y a11 = C3898d.a(oAEPParameterSpec.getDigestAlgorithm());
            if (a11 == null) {
                throw new InvalidAlgorithmParameterException("no match on digest algorithm: " + oAEPParameterSpec.getDigestAlgorithm());
            }
            MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) oAEPParameterSpec.getMGFParameters();
            InterfaceC2392y a12 = C3898d.a(mGF1ParameterSpec.getDigestAlgorithm());
            if (a12 == null) {
                throw new InvalidAlgorithmParameterException("no match on MGF digest algorithm: " + mGF1ParameterSpec.getDigestAlgorithm());
            }
            this.f21548g = new Ki.b(new C2800z(), a11, a12, ((PSource.PSpecified) oAEPParameterSpec.getPSource()).getValue());
        } else if (algorithmParameterSpec != null) {
            throw new InvalidAlgorithmParameterException("unknown parameter type.");
        }
        if (secureRandom != null) {
            a10 = new x0(a10, secureRandom);
        }
        boolean z10 = true;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        throw new InvalidParameterException("unknown opmode " + i10 + " passed to ElGamal");
                    }
                }
            }
            interfaceC2370b = this.f21548g;
            z10 = false;
            interfaceC2370b.a(z10, a10);
        }
        interfaceC2370b = this.f21548g;
        interfaceC2370b.a(z10, a10);
    }
}

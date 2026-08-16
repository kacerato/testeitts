package org.bouncycastle.jcajce.provider.symmetric.util;

import Bi.InterfaceC2379k;
import Bi.Y;
import Bi.r;
import Hj.l;
import Hj.m;
import Xi.C3360o0;
import Xi.w0;
import ak.C3661a;
import ak.C3670j;
import android.security.keystore.KeyProperties;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.jcajce.provider.symmetric.util.d;

public class c extends BaseWrapCipher implements d {

    public Class[] f101478n;

    public Y f101479o;

    public int f101480p;

    public int f101481q;

    public w0 f101482r;

    public int f101483s;

    public PBEParameterSpec f101484t;

    public String f101485u;

    public c(Y y10, int i10) {
        this(y10, i10, -1, -1);
    }

    @Override
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException {
        if (i12 + i11 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        if (i11 != 0) {
            this.f101479o.f(bArr, i10, i11, bArr2, i12);
        }
        this.f101479o.reset();
        return i11;
    }

    @Override
    public int engineGetBlockSize() {
        return 0;
    }

    @Override
    public byte[] engineGetIV() {
        w0 w0Var = this.f101482r;
        if (w0Var != null) {
            return w0Var.a();
        }
        return null;
    }

    @Override
    public int engineGetKeySize(Key key) {
        return key.getEncoded().length * 8;
    }

    @Override
    public int engineGetOutputSize(int i10) {
        return i10;
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        if (this.f101446g == null) {
            if (this.f101484t != null) {
                try {
                    AlgorithmParameters a10 = a(this.f101485u);
                    a10.init(this.f101484t);
                    return a10;
                } catch (Exception unused) {
                    return null;
                }
            }
            if (this.f101482r != null) {
                String b10 = this.f101479o.b();
                if (b10.indexOf(47) >= 0) {
                    b10 = b10.substring(0, b10.indexOf(47));
                }
                if (b10.startsWith("ChaCha7539")) {
                    b10 = "ChaCha7539";
                } else if (b10.startsWith("Grain")) {
                    b10 = "Grainv1";
                } else if (b10.startsWith("HC")) {
                    int indexOf = b10.indexOf(45);
                    b10 = b10.substring(0, indexOf) + b10.substring(indexOf + 1);
                }
                try {
                    AlgorithmParameters a11 = a(b10);
                    this.f101446g = a11;
                    a11.init(new IvParameterSpec(this.f101482r.a()));
                } catch (Exception e10) {
                    throw new RuntimeException(e10.toString());
                }
            }
        }
        return this.f101446g;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec algorithmParameterSpec;
        if (algorithmParameters != null) {
            algorithmParameterSpec = C3670j.a(algorithmParameters, this.f101478n);
            if (algorithmParameterSpec == null) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        } else {
            algorithmParameterSpec = null;
        }
        engineInit(i10, key, algorithmParameterSpec, secureRandom);
        this.f101446g = algorithmParameters;
    }

    @Override
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        if (str.equalsIgnoreCase(KeyProperties.BLOCK_MODE_ECB) || str.equals(KeyProperties.DIGEST_NONE)) {
            return;
        }
        throw new NoSuchAlgorithmException("can't support mode " + str);
    }

    @Override
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        if (str.equalsIgnoreCase(KeyProperties.ENCRYPTION_PADDING_NONE)) {
            return;
        }
        throw new NoSuchPaddingException("Padding " + str + " unknown.");
    }

    @Override
    public int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException {
        if (i12 + i11 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        try {
            this.f101479o.f(bArr, i10, i11, bArr2, i12);
            return i11;
        } catch (DataLengthException e10) {
            throw new IllegalStateException(e10.getMessage());
        }
    }

    public c(Y y10, int i10, int i11) {
        this(y10, i10, i11, -1);
    }

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            this.f101479o.reset();
            return new byte[0];
        }
        byte[] engineUpdate = engineUpdate(bArr, i10, i11);
        this.f101479o.reset();
        return engineUpdate;
    }

    @Override
    public void engineInit(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw new InvalidKeyException(e10.getMessage());
        }
    }

    @Override
    public byte[] engineUpdate(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        this.f101479o.f(bArr, i10, i11, bArr2, 0);
        return bArr2;
    }

    public c(Y y10, int i10, int i11, int i12) {
        this.f101478n = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.f101484t = null;
        this.f101485u = null;
        this.f101479o = y10;
        this.f101483s = i10;
        this.f101480p = i11;
        this.f101481q = i12;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        InterfaceC2379k interfaceC2379k;
        InterfaceC2379k c3360o0;
        this.f101484t = null;
        this.f101485u = null;
        this.f101446g = null;
        if (!(key instanceof SecretKey)) {
            throw new InvalidKeyException("Key for algorithm " + key.getAlgorithm() + " not suitable for symmetric enryption.");
        }
        if (key instanceof l) {
            l lVar = (l) key;
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            this.f101484t = pBEParameterSpec;
            if ((lVar instanceof m) && pBEParameterSpec == null) {
                m mVar = (m) lVar;
                this.f101484t = new PBEParameterSpec(mVar.getSalt(), mVar.getIterationCount());
            }
            interfaceC2379k = d.a.h(lVar.getEncoded(), 2, this.f101481q, this.f101480p, this.f101483s * 8, this.f101484t, this.f101479o.b());
        } else {
            if (key instanceof C3661a) {
                C3661a c3661a = (C3661a) key;
                this.f101485u = c3661a.g() != null ? c3661a.g().J() : c3661a.getAlgorithm();
                if (c3661a.h() != null) {
                    c3360o0 = c3661a.h();
                    this.f101484t = new PBEParameterSpec(c3661a.getSalt(), c3661a.getIterationCount());
                } else {
                    if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                        throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
                    }
                    InterfaceC2379k f10 = d.a.f(c3661a, algorithmParameterSpec, this.f101479o.b());
                    this.f101484t = (PBEParameterSpec) algorithmParameterSpec;
                    c3360o0 = f10;
                }
                if (c3661a.c() != 0) {
                    this.f101482r = (w0) c3360o0;
                }
            } else if (algorithmParameterSpec == null) {
                if (this.f101481q > 0) {
                    throw new InvalidKeyException("Algorithm requires a PBE key");
                }
                c3360o0 = new C3360o0(key.getEncoded());
            } else {
                if (!(algorithmParameterSpec instanceof IvParameterSpec)) {
                    throw new InvalidAlgorithmParameterException("unknown parameter type.");
                }
                w0 w0Var = new w0(new C3360o0(key.getEncoded()), ((IvParameterSpec) algorithmParameterSpec).getIV());
                this.f101482r = w0Var;
                interfaceC2379k = w0Var;
            }
            interfaceC2379k = c3360o0;
        }
        if (this.f101483s != 0 && !(interfaceC2379k instanceof w0)) {
            if (secureRandom == null) {
                secureRandom = r.h();
            }
            if (i10 != 1 && i10 != 3) {
                throw new InvalidAlgorithmParameterException("no IV set when one expected");
            }
            byte[] bArr = new byte[this.f101483s];
            secureRandom.nextBytes(bArr);
            w0 w0Var2 = new w0(interfaceC2379k, bArr);
            this.f101482r = w0Var2;
            interfaceC2379k = w0Var2;
        }
        try {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            throw new InvalidParameterException("unknown opmode " + i10 + " passed");
                        }
                    }
                }
                this.f101479o.a(false, interfaceC2379k);
                return;
            }
            this.f101479o.a(true, interfaceC2379k);
        } catch (Exception e10) {
            throw new InvalidKeyException(e10.getMessage());
        }
    }
}

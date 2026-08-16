package org.bouncycastle.jcajce.provider.symmetric.util;

import Bi.I;
import Bi.InterfaceC2379k;
import Hj.l;
import Si.k;
import Xi.B0;
import Xi.C3331a;
import Xi.C3360o0;
import Xi.K0;
import Xi.w0;
import ak.C3661a;
import ak.C3668h;
import ck.C4203A;
import ck.C4208a;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import java.util.Map;
import javax.crypto.MacSpi;
import javax.crypto.SecretKey;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import org.bouncycastle.jcajce.provider.symmetric.util.d;

public class b extends MacSpi implements d {

    public I f101474b;

    public int f101475c;

    public int f101476d;

    public int f101477e;

    public b(I i10) {
        this.f101475c = 2;
        this.f101476d = 1;
        this.f101477e = 160;
        this.f101474b = i10;
    }

    public static Hashtable a(Map map) {
        Hashtable hashtable = new Hashtable();
        for (Object obj : map.o()) {
            hashtable.put(obj, map.get(obj));
        }
        return hashtable;
    }

    @Override
    public byte[] engineDoFinal() {
        byte[] bArr = new byte[engineGetMacLength()];
        this.f101474b.c(bArr, 0);
        return bArr;
    }

    @Override
    public int engineGetMacLength() {
        return this.f101474b.d();
    }

    @Override
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        int i10;
        InterfaceC2379k d10;
        if (key == null) {
            throw new InvalidKeyException("key is null");
        }
        if (key instanceof l) {
            try {
                SecretKey secretKey = (SecretKey) key;
                try {
                    PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
                    if ((secretKey instanceof PBEKey) && pBEParameterSpec == null) {
                        PBEKey pBEKey = (PBEKey) secretKey;
                        pBEParameterSpec = new PBEParameterSpec(pBEKey.getSalt(), pBEKey.getIterationCount());
                    }
                    int i11 = 256;
                    if (this.f101474b.b().startsWith("GOST")) {
                        i10 = 6;
                    } else {
                        I i12 = this.f101474b;
                        if (!(i12 instanceof k) || i12.b().startsWith("SHA-1")) {
                            i10 = 1;
                        } else if (this.f101474b.b().startsWith("SHA-224")) {
                            i10 = 7;
                            i11 = 224;
                        } else if (this.f101474b.b().startsWith("SHA-256")) {
                            i10 = 4;
                        } else if (this.f101474b.b().startsWith("SHA-384")) {
                            i10 = 8;
                            i11 = 384;
                        } else if (this.f101474b.b().startsWith("SHA-512")) {
                            i10 = 9;
                            i11 = 512;
                        } else {
                            if (!this.f101474b.b().startsWith("RIPEMD160")) {
                                throw new InvalidAlgorithmParameterException("no PKCS12 mapping for HMAC: " + this.f101474b.b());
                            }
                            i10 = 2;
                        }
                        i11 = 160;
                    }
                    d10 = d.a.d(secretKey, 2, i10, i11, pBEParameterSpec);
                } catch (Exception unused) {
                    throw new InvalidAlgorithmParameterException("PKCS12 requires a PBEParameterSpec");
                }
            } catch (Exception unused2) {
                throw new InvalidKeyException("PKCS12 requires a SecretKey/PBEKey");
            }
        } else if (key instanceof C3661a) {
            C3661a c3661a = (C3661a) key;
            if (c3661a.h() != null) {
                d10 = c3661a.h();
            } else {
                if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                    throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
                }
                d10 = d.a.c(c3661a, algorithmParameterSpec);
            }
        } else {
            if (algorithmParameterSpec instanceof PBEParameterSpec) {
                throw new InvalidAlgorithmParameterException("inappropriate parameter type: " + algorithmParameterSpec.getClass().getName());
            }
            d10 = new C3360o0(key.getEncoded());
        }
        C3360o0 c3360o0 = d10 instanceof w0 ? (C3360o0) ((w0) d10).b() : (C3360o0) d10;
        if (algorithmParameterSpec instanceof C4208a) {
            C4208a c4208a = (C4208a) algorithmParameterSpec;
            d10 = new C3331a(c3360o0, c4208a.b(), c4208a.c(), c4208a.a());
        } else if (algorithmParameterSpec instanceof IvParameterSpec) {
            d10 = new w0(c3360o0, ((IvParameterSpec) algorithmParameterSpec).getIV());
        } else if (algorithmParameterSpec instanceof RC2ParameterSpec) {
            RC2ParameterSpec rC2ParameterSpec = (RC2ParameterSpec) algorithmParameterSpec;
            d10 = new w0(new B0(c3360o0.b(), rC2ParameterSpec.getEffectiveKeyBits()), rC2ParameterSpec.getIV());
        } else if (algorithmParameterSpec instanceof C4203A) {
            d10 = new K0.b(a(((C4203A) algorithmParameterSpec).e())).c(c3360o0.b()).a();
        } else if (algorithmParameterSpec == null) {
            d10 = new C3360o0(key.getEncoded());
        } else if (C3668h.k(algorithmParameterSpec)) {
            d10 = C3668h.c(c3360o0, algorithmParameterSpec);
        } else if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
            throw new InvalidAlgorithmParameterException("unknown parameter type: " + algorithmParameterSpec.getClass().getName());
        }
        try {
            this.f101474b.a(d10);
        } catch (Exception e10) {
            throw new InvalidAlgorithmParameterException("cannot initialize MAC: " + e10.getMessage());
        }
    }

    @Override
    public void engineReset() {
        this.f101474b.reset();
    }

    @Override
    public void engineUpdate(byte b10) {
        this.f101474b.update(b10);
    }

    public b(I i10, int i11, int i12, int i13) {
        this.f101474b = i10;
        this.f101475c = i11;
        this.f101476d = i12;
        this.f101477e = i13;
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) {
        this.f101474b.update(bArr, i10, i11);
    }
}

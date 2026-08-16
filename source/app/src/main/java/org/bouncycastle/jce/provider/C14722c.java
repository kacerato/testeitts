package org.bouncycastle.jce.provider;

import Bi.C2376h;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Li.C2795u;
import Li.C2796v;
import Ti.C3092c;
import Ti.C3096g;
import Xi.B0;
import Xi.C0;
import Xi.C3360o0;
import Xi.w0;
import ak.C3661a;
import android.security.keystore.KeyProperties;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.jce.provider.InterfaceC14724e;

public class C14722c implements InterfaceC14724e {

    public Class[] f101740h;

    public C2376h f101741i;

    public w0 f101742j;

    public int f101743k;

    public int f101744l;

    public int f101745m;

    public int f101746n;

    public int f101747o;

    public AlgorithmParameters f101748p;

    public static class a extends C14722c {
        public a() {
            super(new C3092c(new C2795u()), 0, 0, 64, 64);
        }
    }

    public static class b extends C14722c {
        public b() {
            super(new C3092c(new C2795u()), 0, 1, 64, 64);
        }
    }

    public static class C1923c extends C14722c {
        public C1923c() {
            super(new C3092c(new C2796v()), 2, 1, 128, 64);
        }
    }

    public static class d extends C14722c {
        public d() {
            super(new C3092c(new C2796v()), 2, 1, 192, 64);
        }
    }

    public static class e extends C14722c {
        public e() {
            super(new C3092c(new C2796v()), 3, 1, 192, 64);
        }
    }

    public static class f extends C14722c {
        public f() {
            super(new C3092c(new Li.w0()), 3, 1, 256, 128);
        }
    }

    public C14722c(InterfaceC2374f interfaceC2374f) {
        this.f101740h = new Class[]{IvParameterSpec.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class};
        this.f101743k = 2;
        this.f101744l = 1;
        this.f101747o = 0;
        this.f101748p = null;
        this.f101741i = new Wi.e(interfaceC2374f);
    }

    public int a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IllegalBlockSizeException, BadPaddingException {
        int h10 = i11 != 0 ? this.f101741i.h(bArr, i10, i11, bArr2, i12) : 0;
        try {
            return h10 + this.f101741i.a(bArr2, i12 + h10);
        } catch (DataLengthException e10) {
            throw new IllegalBlockSizeException(e10.getMessage());
        } catch (InvalidCipherTextException e11) {
            throw new BadPaddingException(e11.getMessage());
        }
    }

    public byte[] b(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2 = new byte[f(i11)];
        int h10 = i11 != 0 ? this.f101741i.h(bArr, i10, i11, bArr2, 0) : 0;
        try {
            int a10 = h10 + this.f101741i.a(bArr2, h10);
            byte[] bArr3 = new byte[a10];
            System.arraycopy(bArr2, 0, bArr3, 0, a10);
            return bArr3;
        } catch (DataLengthException e10) {
            throw new IllegalBlockSizeException(e10.getMessage());
        } catch (InvalidCipherTextException e11) {
            throw new BadPaddingException(e11.getMessage());
        }
    }

    public int c() {
        return this.f101741i.b();
    }

    public byte[] d() {
        w0 w0Var = this.f101742j;
        if (w0Var != null) {
            return w0Var.a();
        }
        return null;
    }

    public int e(Key key) {
        return key.getEncoded().length;
    }

    public int f(int i10) {
        return this.f101741i.c(i10);
    }

    public AlgorithmParameters g() {
        if (this.f101748p == null && this.f101742j != null) {
            String b10 = this.f101741i.d().b();
            if (b10.indexOf(47) >= 0) {
                b10 = b10.substring(0, b10.indexOf(47));
            }
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(b10, C14720a.f101701e);
                this.f101748p = algorithmParameters;
                algorithmParameters.init(this.f101742j.a());
            } catch (Exception e10) {
                throw new RuntimeException(e10.toString());
            }
        }
        return this.f101748p;
    }

    public void h(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec algorithmParameterSpec = null;
        if (algorithmParameters != null) {
            int i11 = 0;
            while (true) {
                Class[] clsArr = this.f101740h;
                if (i11 == clsArr.length) {
                    break;
                }
                try {
                    algorithmParameterSpec = algorithmParameters.getParameterSpec(clsArr[i11]);
                    break;
                } catch (Exception unused) {
                    i11++;
                }
            }
            if (algorithmParameterSpec == null) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        }
        this.f101748p = algorithmParameters;
        j(i10, key, algorithmParameterSpec, secureRandom);
    }

    public void i(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            j(i10, key, null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw new IllegalArgumentException(e10.getMessage());
        }
    }

    public void j(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        w0 w0Var;
        InterfaceC2379k interfaceC2379k;
        InterfaceC2379k interfaceC2379k2;
        InterfaceC2379k c3360o0;
        if (key instanceof C3661a) {
            InterfaceC2379k c10 = InterfaceC14724e.a.c((C3661a) key, algorithmParameterSpec, this.f101743k, this.f101744l, this.f101741i.d().b(), this.f101745m, this.f101746n);
            interfaceC2379k2 = c10;
            if (this.f101746n != 0) {
                this.f101742j = (w0) c10;
                interfaceC2379k2 = c10;
            }
        } else {
            if (algorithmParameterSpec == null) {
                c3360o0 = new C3360o0(key.getEncoded());
            } else {
                if (algorithmParameterSpec instanceof IvParameterSpec) {
                    if (this.f101747o != 0) {
                        w0 w0Var2 = new w0(new C3360o0(key.getEncoded()), ((IvParameterSpec) algorithmParameterSpec).getIV());
                        this.f101742j = w0Var2;
                        interfaceC2379k = w0Var2;
                    } else {
                        c3360o0 = new C3360o0(key.getEncoded());
                    }
                } else if (algorithmParameterSpec instanceof RC2ParameterSpec) {
                    RC2ParameterSpec rC2ParameterSpec = (RC2ParameterSpec) algorithmParameterSpec;
                    InterfaceC2379k b02 = new B0(key.getEncoded(), rC2ParameterSpec.getEffectiveKeyBits());
                    interfaceC2379k = b02;
                    if (rC2ParameterSpec.getIV() != null) {
                        interfaceC2379k = b02;
                        if (this.f101747o != 0) {
                            w0Var = new w0(b02, rC2ParameterSpec.getIV());
                            this.f101742j = w0Var;
                            interfaceC2379k2 = w0Var;
                        }
                    }
                } else {
                    if (!(algorithmParameterSpec instanceof RC5ParameterSpec)) {
                        throw new InvalidAlgorithmParameterException("unknown parameter type.");
                    }
                    RC5ParameterSpec rC5ParameterSpec = (RC5ParameterSpec) algorithmParameterSpec;
                    InterfaceC2379k c02 = new C0(key.getEncoded(), rC5ParameterSpec.getRounds());
                    if (rC5ParameterSpec.getWordSize() != 32) {
                        throw new IllegalArgumentException("can only accept RC5 word size 32 (at the moment...)");
                    }
                    interfaceC2379k = c02;
                    if (rC5ParameterSpec.getIV() != null) {
                        interfaceC2379k = c02;
                        if (this.f101747o != 0) {
                            w0Var = new w0(c02, rC5ParameterSpec.getIV());
                            this.f101742j = w0Var;
                            interfaceC2379k2 = w0Var;
                        }
                    }
                }
                interfaceC2379k2 = interfaceC2379k;
            }
            interfaceC2379k2 = c3360o0;
        }
        InterfaceC2379k interfaceC2379k3 = interfaceC2379k2;
        if (this.f101747o != 0) {
            boolean z10 = interfaceC2379k2 instanceof w0;
            interfaceC2379k3 = interfaceC2379k2;
            if (!z10) {
                if (secureRandom == null) {
                    secureRandom = Bi.r.h();
                }
                if (i10 != 1 && i10 != 3) {
                    throw new InvalidAlgorithmParameterException("no IV set when one expected");
                }
                byte[] bArr = new byte[this.f101747o];
                secureRandom.nextBytes(bArr);
                w0 w0Var3 = new w0(interfaceC2379k2, bArr);
                this.f101742j = w0Var3;
                interfaceC2379k3 = w0Var3;
            }
        }
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        throw new IllegalArgumentException("unknown opmode: " + i10);
                    }
                }
            }
            this.f101741i.f(false, interfaceC2379k3);
            return;
        }
        this.f101741i.f(true, interfaceC2379k3);
    }

    public void k(String str) {
        Wi.e eVar;
        Wi.e eVar2;
        String p10 = org.bouncycastle.util.w.p(str);
        if (p10.equals(KeyProperties.BLOCK_MODE_ECB)) {
            this.f101747o = 0;
            eVar = new Wi.e(this.f101741i.d());
        } else if (p10.equals(KeyProperties.BLOCK_MODE_CBC)) {
            this.f101747o = this.f101741i.d().c();
            eVar = new Wi.e(new C3092c(this.f101741i.d()));
        } else if (p10.startsWith("OFB")) {
            this.f101747o = this.f101741i.d().c();
            if (p10.length() != 3) {
                eVar2 = new Wi.e(new Ti.C(this.f101741i.d(), Integer.parseInt(p10.substring(3))));
                this.f101741i = eVar2;
                return;
            }
            eVar = new Wi.e(new Ti.C(this.f101741i.d(), this.f101741i.b() * 8));
        } else {
            if (!p10.startsWith("CFB")) {
                throw new IllegalArgumentException("can't support mode " + str);
            }
            this.f101747o = this.f101741i.d().c();
            if (p10.length() != 3) {
                eVar2 = new Wi.e(new C3096g(this.f101741i.d(), Integer.parseInt(p10.substring(3))));
                this.f101741i = eVar2;
                return;
            }
            eVar = new Wi.e(new C3096g(this.f101741i.d(), this.f101741i.b() * 8));
        }
        this.f101741i = eVar;
    }

    public void l(String str) throws NoSuchPaddingException {
        C2376h eVar;
        String p10 = org.bouncycastle.util.w.p(str);
        if (p10.equals("NOPADDING")) {
            eVar = new C2376h(this.f101741i.d());
        } else if (p10.equals("PKCS5PADDING") || p10.equals("PKCS7PADDING") || p10.equals("ISO10126PADDING")) {
            eVar = new Wi.e(this.f101741i.d());
        } else {
            if (!p10.equals("WITHCTS")) {
                throw new NoSuchPaddingException("Padding " + str + " unknown.");
            }
            eVar = new Ti.j(this.f101741i.d());
        }
        this.f101741i = eVar;
    }

    public Key m(byte[] bArr, String str, int i10) throws InvalidKeyException {
        try {
            byte[] b10 = b(bArr, 0, bArr.length);
            if (i10 == 3) {
                return new SecretKeySpec(b10, str);
            }
            try {
                KeyFactory keyFactory = KeyFactory.getInstance(str, C14720a.f101701e);
                if (i10 == 1) {
                    return keyFactory.generatePublic(new X509EncodedKeySpec(b10));
                }
                if (i10 == 2) {
                    return keyFactory.generatePrivate(new PKCS8EncodedKeySpec(b10));
                }
                throw new InvalidKeyException("Unknown key type " + i10);
            } catch (NoSuchAlgorithmException e10) {
                throw new InvalidKeyException("Unknown key type " + e10.getMessage());
            } catch (NoSuchProviderException e11) {
                throw new InvalidKeyException("Unknown key type " + e11.getMessage());
            } catch (InvalidKeySpecException e12) {
                throw new InvalidKeyException("Unknown key type " + e12.getMessage());
            }
        } catch (BadPaddingException e13) {
            throw new InvalidKeyException(e13.getMessage());
        } catch (IllegalBlockSizeException e14) {
            throw new InvalidKeyException(e14.getMessage());
        }
    }

    public int n(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        return this.f101741i.h(bArr, i10, i11, bArr2, i12);
    }

    public byte[] o(byte[] bArr, int i10, int i11) {
        int e10 = this.f101741i.e(i11);
        if (e10 <= 0) {
            this.f101741i.h(bArr, i10, i11, null, 0);
            return null;
        }
        byte[] bArr2 = new byte[e10];
        this.f101741i.h(bArr, i10, i11, bArr2, 0);
        return bArr2;
    }

    public byte[] p(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        byte[] encoded = key.getEncoded();
        if (encoded == null) {
            throw new InvalidKeyException("Cannot wrap key, null encoding.");
        }
        try {
            return b(encoded, 0, encoded.length);
        } catch (BadPaddingException e10) {
            throw new IllegalBlockSizeException(e10.getMessage());
        }
    }

    public C14722c(InterfaceC2374f interfaceC2374f, int i10, int i11, int i12, int i13) {
        this.f101740h = new Class[]{IvParameterSpec.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class};
        this.f101743k = 2;
        this.f101744l = 1;
        this.f101747o = 0;
        this.f101748p = null;
        this.f101741i = new Wi.e(interfaceC2374f);
        this.f101743k = i10;
        this.f101744l = i11;
        this.f101745m = i12;
        this.f101746n = i13;
    }
}

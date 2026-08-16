package Zj;

import Bi.InterfaceC2379k;
import Li.C2772b0;
import Li.C2795u;
import Oi.C2930f;
import Ti.C3092c;
import Xi.C3351k;
import Xi.C3360o0;
import Xi.w0;
import ak.AbstractC3662b;
import ak.C3661a;
import ak.C3664d;
import ak.C3665e;
import bk.AbstractC3895a;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.d;

public final class C3499i {

    public static class a extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[8];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("DES");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DES parameter generation.");
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public b() {
            super(new C3092c(new C2795u()), 64);
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public c() {
            super(new Si.c(new C2795u()));
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public d() {
            super(new Si.e(new C2795u()));
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.c(new C2795u(), 64));
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public f() {
            super(new Si.c(new C2795u(), 64, new Wi.c()));
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public g() {
            super(new Si.l(new C2795u()));
        }
    }

    public static class h extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public h() {
            super(new Si.l(new C2795u(), new Wi.c()));
        }
    }

    public static class C0835i extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public C0835i() {
            super(new Si.d(new C2795u()));
        }
    }

    public static class j extends C3665e {

        public boolean f31420d;

        public int f31421e;

        public int f31422f;

        public int f31423g;

        public int f31424h;

        public j(String str, C14549x c14549x, boolean z10, int i10, int i11, int i12, int i13) {
            super(str, c14549x);
            this.f31420d = z10;
            this.f31421e = i10;
            this.f31422f = i11;
            this.f31423g = i12;
            this.f31424h = i13;
        }

        @Override
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (!(keySpec instanceof PBEKeySpec)) {
                throw new InvalidKeySpecException("Invalid KeySpec");
            }
            PBEKeySpec pBEKeySpec = (PBEKeySpec) keySpec;
            if (pBEKeySpec.getSalt() != null) {
                InterfaceC2379k g10 = this.f31420d ? d.a.g(pBEKeySpec, this.f31421e, this.f31422f, this.f31423g, this.f31424h) : d.a.e(pBEKeySpec, this.f31421e, this.f31422f, this.f31423g);
                C3351k.f((g10 instanceof w0 ? (C3360o0) ((w0) g10).b() : (C3360o0) g10).b());
                return new C3661a(this.f32326b, this.f32327c, this.f31421e, this.f31422f, this.f31423g, this.f31424h, pBEKeySpec, g10);
            }
            int i10 = this.f31421e;
            if (i10 == 0 || i10 == 4) {
                return new Hj.g(pBEKeySpec.getPassword(), this.f31421e == 0 ? Bi.M.ASCII : Bi.M.UTF8);
            }
            return new C3661a(this.f32326b, this.f32327c, i10, this.f31422f, this.f31423g, this.f31424h, pBEKeySpec, null);
        }
    }

    public static class k extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public k() {
            super(new C2795u());
        }
    }

    public static class l extends C3665e {
        public l() {
            super("DES", null);
        }

        @Override
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            return keySpec instanceof DESKeySpec ? new SecretKeySpec(((DESKeySpec) keySpec).getKey(), "DES") : super.engineGenerateSecret(keySpec);
        }

        @Override
        public KeySpec engineGetKeySpec(SecretKey secretKey, Class cls) throws InvalidKeySpecException {
            if (cls == null) {
                throw new InvalidKeySpecException("keySpec parameter is null");
            }
            if (secretKey == null) {
                throw new InvalidKeySpecException("key parameter is null");
            }
            if (SecretKeySpec.class.isAssignableFrom(cls)) {
                return new SecretKeySpec(secretKey.getEncoded(), this.f32326b);
            }
            if (!DESKeySpec.class.isAssignableFrom(cls)) {
                throw new InvalidKeySpecException("Invalid KeySpec");
            }
            try {
                return new DESKeySpec(secretKey.getEncoded());
            } catch (Exception e10) {
                throw new InvalidKeySpecException(e10.toString());
            }
        }
    }

    public static class m extends C3664d {
        public m() {
            super("DES", 64, new C2930f());
        }

        @Override
        public SecretKey engineGenerateKey() {
            if (this.f32325e) {
                this.f32324d.b(new Bi.G(Bi.r.h(), this.f32323c));
                this.f32325e = false;
            }
            return new SecretKeySpec(this.f32324d.a(), this.f32321a);
        }

        @Override
        public void engineInit(int i10, SecureRandom secureRandom) {
            super.engineInit(i10, secureRandom);
        }
    }

    public static class n extends AbstractC3895a {

        public static final String f31425a = C3499i.class.getName();

        public static final String f31426b = "org.bouncycastle.jcajce.provider.symmetric";

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31425a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.DES", sb2.toString());
            C14549x c14549x = Bj.b.f1907e;
            aVar.g("Cipher", c14549x, str + "$CBC");
            b(aVar, c14549x, "DES");
            aVar.d("Cipher.DESRFC3211WRAP", str + "$RFC3211");
            aVar.d("KeyGenerator.DES", str + "$KeyGenerator");
            aVar.d("SecretKeyFactory.DES", str + "$KeyFactory");
            aVar.d("Mac.DESCMAC", str + "$CMAC");
            aVar.d("Mac.DESMAC", str + "$CBCMAC");
            aVar.d("Alg.Alias.Mac.DES", "DESMAC");
            aVar.d("Mac.DESMAC/CFB8", str + "$DESCFB8");
            aVar.d("Alg.Alias.Mac.DES/CFB8", "DESMAC/CFB8");
            aVar.d("Mac.DESMAC64", str + "$DES64");
            aVar.d("Alg.Alias.Mac.DES64", "DESMAC64");
            aVar.d("Mac.DESMAC64WITHISO7816-4PADDING", str + "$DES64with7816d4");
            aVar.d("Alg.Alias.Mac.DES64WITHISO7816-4PADDING", "DESMAC64WITHISO7816-4PADDING");
            aVar.d("Alg.Alias.Mac.DESISO9797ALG1MACWITHISO7816-4PADDING", "DESMAC64WITHISO7816-4PADDING");
            aVar.d("Alg.Alias.Mac.DESISO9797ALG1WITHISO7816-4PADDING", "DESMAC64WITHISO7816-4PADDING");
            aVar.d("Mac.DESWITHISO9797", str + "$DES9797Alg3");
            aVar.d("Alg.Alias.Mac.DESISO9797MAC", "DESWITHISO9797");
            aVar.d("Mac.ISO9797ALG3MAC", str + "$DES9797Alg3");
            aVar.d("Alg.Alias.Mac.ISO9797ALG3", "ISO9797ALG3MAC");
            aVar.d("Mac.ISO9797ALG3WITHISO7816-4PADDING", str + "$DES9797Alg3with7816d4");
            aVar.d("Alg.Alias.Mac.ISO9797ALG3MACWITHISO7816-4PADDING", "ISO9797ALG3WITHISO7816-4PADDING");
            aVar.d("AlgorithmParameters.DES", "org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters");
            aVar.g("Alg.Alias.AlgorithmParameters", c14549x, "DES");
            aVar.d("AlgorithmParameterGenerator.DES", str + "$AlgParamGen");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x), "DES");
            aVar.d("Cipher.PBEWITHMD2ANDDES", str + "$PBEWithMD2");
            aVar.d("Cipher.PBEWITHMD5ANDDES", str + "$PBEWithMD5");
            aVar.d("Cipher.PBEWITHSHA1ANDDES", str + "$PBEWithSHA1");
            C14549x c14549x2 = Xh.t.f29081a1;
            aVar.g("Alg.Alias.Cipher", c14549x2, "PBEWITHMD2ANDDES");
            C14549x c14549x3 = Xh.t.f29091d1;
            aVar.g("Alg.Alias.Cipher", c14549x3, "PBEWITHMD5ANDDES");
            C14549x c14549x4 = Xh.t.f29099f1;
            aVar.g("Alg.Alias.Cipher", c14549x4, "PBEWITHSHA1ANDDES");
            aVar.d("Alg.Alias.Cipher.PBEWITHMD2ANDDES-CBC", "PBEWITHMD2ANDDES");
            aVar.d("Alg.Alias.Cipher.PBEWITHMD5ANDDES-CBC", "PBEWITHMD5ANDDES");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1ANDDES-CBC", "PBEWITHSHA1ANDDES");
            aVar.d("SecretKeyFactory.PBEWITHMD2ANDDES", str + "$PBEWithMD2KeyFactory");
            aVar.d("SecretKeyFactory.PBEWITHMD5ANDDES", str + "$PBEWithMD5KeyFactory");
            aVar.d("SecretKeyFactory.PBEWITHSHA1ANDDES", str + "$PBEWithSHA1KeyFactory");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDDES-CBC", "PBEWITHMD2ANDDES");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDDES-CBC", "PBEWITHMD5ANDDES");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDDES-CBC", "PBEWITHSHA1ANDDES");
            aVar.d("Alg.Alias.SecretKeyFactory." + ((Object) c14549x2), "PBEWITHMD2ANDDES");
            aVar.d("Alg.Alias.SecretKeyFactory." + ((Object) c14549x3), "PBEWITHMD5ANDDES");
            aVar.d("Alg.Alias.SecretKeyFactory." + ((Object) c14549x4), "PBEWITHSHA1ANDDES");
        }

        public final void b(Tj.a aVar, C14549x c14549x, String str) {
            aVar.d("Alg.Alias.KeyGenerator." + c14549x.J(), str);
            aVar.d("Alg.Alias.KeyFactory." + c14549x.J(), str);
        }
    }

    public static class o extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public o() {
            super(new C3092c(new C2795u()), 0, 5, 64, 8);
        }
    }

    public static class p extends j {
        public p() {
            super("PBEwithMD2andDES", Xh.t.f29081a1, true, 0, 5, 64, 64);
        }
    }

    public static class q extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public q() {
            super(new C3092c(new C2795u()), 0, 0, 64, 8);
        }
    }

    public static class r extends j {
        public r() {
            super("PBEwithMD5andDES", Xh.t.f29091d1, true, 0, 0, 64, 64);
        }
    }

    public static class s extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public s() {
            super(new C3092c(new C2795u()), 0, 1, 64, 8);
        }
    }

    public static class t extends j {
        public t() {
            super("PBEwithSHA1andDES", Xh.t.f29099f1, true, 0, 1, 64, 64);
        }
    }

    public static class u extends BaseWrapCipher {
        public u() {
            super(new C2772b0(new C2795u()), 8);
        }
    }
}

package Zj;

import Li.C2772b0;
import Li.C2796v;
import Li.C2797w;
import Oi.C2931g;
import Ti.C3092c;
import Zj.C3499i;
import ak.AbstractC3662b;
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
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher;

public final class C3500j {

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
            super(new C3092c(new C2796v()), 64);
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public c() {
            super(new Si.c(new C2796v()));
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public d() {
            super(new Si.e(new C2796v()));
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.c(new C2796v(), 64));
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public f() {
            super(new Si.c(new C2796v(), 64, new Wi.c()));
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public g() {
            super(new Si.d(new C2796v()));
        }
    }

    public static class h extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public h() {
            super(new C2796v());
        }
    }

    public static class i extends C3665e {
        public i() {
            super("DESede", null);
        }

        @Override
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            return keySpec instanceof DESedeKeySpec ? new SecretKeySpec(((DESedeKeySpec) keySpec).getKey(), "DESede") : super.engineGenerateSecret(keySpec);
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
            if (!DESedeKeySpec.class.isAssignableFrom(cls)) {
                throw new InvalidKeySpecException("Invalid KeySpec");
            }
            byte[] encoded = secretKey.getEncoded();
            try {
                if (encoded.length != 16) {
                    return new DESedeKeySpec(encoded);
                }
                byte[] bArr = new byte[24];
                System.arraycopy(encoded, 0, bArr, 0, 16);
                System.arraycopy(encoded, 0, bArr, 16, 8);
                return new DESedeKeySpec(bArr);
            } catch (Exception e10) {
                throw new InvalidKeySpecException(e10.toString());
            }
        }
    }

    public static class C0836j extends C3664d {
        public C0836j() {
            super("DESede3", 192, new C2931g());
        }
    }

    public static class k extends C3664d {

        public boolean f31427f;

        public k() {
            super("DESede", 192, new C2931g());
            this.f31427f = false;
        }

        @Override
        public SecretKey engineGenerateKey() {
            if (this.f32325e) {
                this.f32324d.b(new Bi.G(Bi.r.h(), this.f32323c));
                this.f32325e = false;
            }
            if (this.f31427f) {
                return new SecretKeySpec(this.f32324d.a(), this.f32321a);
            }
            byte[] a10 = this.f32324d.a();
            System.arraycopy(a10, 0, a10, 16, 8);
            return new SecretKeySpec(a10, this.f32321a);
        }

        @Override
        public void engineInit(int i10, SecureRandom secureRandom) {
            super.engineInit(i10, secureRandom);
            this.f31427f = true;
        }
    }

    public static class l extends AbstractC3895a {

        public static final String f31428a = C3500j.class.getName();

        public static final String f31429b = "org.bouncycastle.jcajce.provider.symmetric";

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31428a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.DESEDE", sb2.toString());
            C14549x c14549x = Xh.t.f29123n1;
            aVar.g("Cipher", c14549x, str + "$CBC");
            aVar.d("Cipher.DESEDEWRAP", str + "$Wrap");
            aVar.g("Cipher", Xh.t.f29020I2, str + "$Wrap");
            aVar.d("Cipher.DESEDERFC3211WRAP", str + "$RFC3211");
            aVar.d("Alg.Alias.Cipher.DESEDERFC3217WRAP", "DESEDEWRAP");
            aVar.d("Alg.Alias.Cipher.TDEA", "DESEDE");
            aVar.d("Alg.Alias.Cipher.TDEAWRAP", "DESEDEWRAP");
            aVar.d("Alg.Alias.KeyGenerator.TDEA", "DESEDE");
            aVar.d("Alg.Alias.AlgorithmParameters.TDEA", "DESEDE");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator.TDEA", "DESEDE");
            aVar.d("Alg.Alias.SecretKeyFactory.TDEA", "DESEDE");
            if (aVar.f("MessageDigest", "SHA-1")) {
                aVar.d("Cipher.PBEWITHSHAAND3-KEYTRIPLEDES-CBC", str + "$PBEWithSHAAndDES3Key");
                aVar.d("Cipher.PBEWITHSHAAND2-KEYTRIPLEDES-CBC", str + "$PBEWithSHAAndDES2Key");
                aVar.g("Alg.Alias.Cipher", Xh.t.f29106g4, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
                aVar.g("Alg.Alias.Cipher", Xh.t.f29110h4, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC");
                aVar.d("Alg.Alias.Cipher.PBEWITHSHA1ANDDESEDE", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
                aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND3-KEYTRIPLEDES-CBC", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
                aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND2-KEYTRIPLEDES-CBC", "PBEWITHSHAAND2-KEYTRIPLEDES-CBC");
                aVar.d("Alg.Alias.Cipher.PBEWITHSHAAND3-KEYDESEDE-CBC", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
                aVar.d("Alg.Alias.Cipher.PBEWITHSHAAND2-KEYDESEDE-CBC", "PBEWITHSHAAND2-KEYTRIPLEDES-CBC");
                aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND3-KEYDESEDE-CBC", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
                aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND2-KEYDESEDE-CBC", "PBEWITHSHAAND2-KEYTRIPLEDES-CBC");
                aVar.d("Alg.Alias.Cipher.PBEWITHSHA1ANDDESEDE-CBC", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
            }
            aVar.d("KeyGenerator.DESEDE", str + "$KeyGenerator");
            aVar.d("KeyGenerator." + ((Object) c14549x), str + "$KeyGenerator3");
            aVar.d("KeyGenerator.DESEDEWRAP", str + "$KeyGenerator");
            aVar.d("SecretKeyFactory.DESEDE", str + "$KeyFactory");
            aVar.g("SecretKeyFactory", Bj.b.f1910h, str + "$KeyFactory");
            aVar.d("Mac.DESEDECMAC", str + "$CMAC");
            aVar.d("Mac.DESEDEMAC", str + "$CBCMAC");
            aVar.d("Alg.Alias.Mac.DESEDE", "DESEDEMAC");
            aVar.d("Mac.DESEDEMAC/CFB8", str + "$DESedeCFB8");
            aVar.d("Alg.Alias.Mac.DESEDE/CFB8", "DESEDEMAC/CFB8");
            aVar.d("Mac.DESEDEMAC64", str + "$DESede64");
            aVar.d("Alg.Alias.Mac.DESEDE64", "DESEDEMAC64");
            aVar.d("Mac.DESEDEMAC64WITHISO7816-4PADDING", str + "$DESede64with7816d4");
            aVar.d("Alg.Alias.Mac.DESEDE64WITHISO7816-4PADDING", "DESEDEMAC64WITHISO7816-4PADDING");
            aVar.d("Alg.Alias.Mac.DESEDEISO9797ALG1MACWITHISO7816-4PADDING", "DESEDEMAC64WITHISO7816-4PADDING");
            aVar.d("Alg.Alias.Mac.DESEDEISO9797ALG1WITHISO7816-4PADDING", "DESEDEMAC64WITHISO7816-4PADDING");
            aVar.d("AlgorithmParameters.DESEDE", "org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters");
            aVar.d("Alg.Alias.AlgorithmParameters." + ((Object) c14549x), "DESEDE");
            aVar.d("AlgorithmParameterGenerator.DESEDE", str + "$AlgParamGen");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x), "DESEDE");
            aVar.d("SecretKeyFactory.PBEWITHSHAAND3-KEYTRIPLEDES-CBC", str + "$PBEWithSHAAndDES3KeyFactory");
            aVar.d("SecretKeyFactory.PBEWITHSHAAND2-KEYTRIPLEDES-CBC", str + "$PBEWithSHAAndDES2KeyFactory");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDDESEDE", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES-CBC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES-CBC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES3KEY-CBC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES2KEY-CBC", "PKCS12PBE");
            aVar.d("Alg.Alias.SecretKeyFactory.PBE", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
            aVar.d("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.3", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
            aVar.d("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.4", "PBEWITHSHAAND2-KEYTRIPLEDES-CBC");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWithSHAAnd3KeyTripleDES", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
            aVar.d("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.3", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.4", "PKCS12PBE");
            aVar.d("Alg.Alias.Cipher.PBEWithSHAAnd3KeyTripleDES", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
        }
    }

    public static class m extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public m() {
            super(new C3092c(new C2796v()), 2, 1, 128, 8);
        }
    }

    public static class n extends C3499i.j {
        public n() {
            super("PBEwithSHAandDES2Key-CBC", Xh.t.f29110h4, true, 2, 1, 128, 64);
        }
    }

    public static class o extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public o() {
            super(new C3092c(new C2796v()), 2, 1, 192, 8);
        }
    }

    public static class p extends C3499i.j {
        public p() {
            super("PBEwithSHAandDES3Key-CBC", Xh.t.f29106g4, true, 2, 1, 192, 64);
        }
    }

    public static class q extends BaseWrapCipher {
        public q() {
            super(new C2772b0(new C2796v()), 8);
        }
    }

    public static class r extends BaseWrapCipher {
        public r() {
            super(new C2797w());
        }
    }
}

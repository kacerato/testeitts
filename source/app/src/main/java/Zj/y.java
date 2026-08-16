package Zj;

import Bi.C2378j;
import Li.W;
import Ti.C3092c;
import ak.AbstractC3662b;
import ak.AbstractC3663c;
import ak.C3664d;
import bk.AbstractC3895a;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher;

public final class y {

    public static class a extends AbstractC3662b {

        public RC2ParameterSpec f31460d = null;

        @Override
        public AlgorithmParameters engineGenerateParameters() {
            if (this.f31460d != null) {
                try {
                    AlgorithmParameters a10 = a("RC2");
                    a10.init(this.f31460d);
                    return a10;
                } catch (Exception e10) {
                    throw new RuntimeException(e10.getMessage());
                }
            }
            byte[] bArr = new byte[8];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a11 = a("RC2");
                a11.init(new IvParameterSpec(bArr));
                return a11;
            } catch (Exception e11) {
                throw new RuntimeException(e11.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            if (!(algorithmParameterSpec instanceof RC2ParameterSpec)) {
                throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for RC2 parameter generation.");
            }
            this.f31460d = (RC2ParameterSpec) algorithmParameterSpec;
        }
    }

    public static class b extends AbstractC3663c {

        public static final short[] f31461c = {189, 86, 234, 242, 162, 241, 172, 42, 176, 147, 209, 156, 27, 51, 253, 208, 48, 4, 182, 220, 125, 223, 50, 75, 247, 203, 69, 155, 49, 187, 33, 90, 65, 159, 225, 217, 74, 77, 158, 218, 160, 104, 44, 195, 39, 95, 128, 54, 62, 238, 251, 149, 26, 254, 206, 168, 52, 169, 19, 240, 166, 63, 216, 12, 120, 36, 175, 35, 82, 193, 103, 23, 245, 102, 144, 231, 232, 7, 184, 96, 72, 230, 30, 83, 243, 146, 164, 114, 140, 8, 21, 110, 134, 0, 132, 250, 244, 127, 138, 66, 25, 246, 219, 205, 20, 141, 80, 18, 186, 60, 6, 78, 236, 179, 53, 17, 161, 136, 142, 43, 148, 153, 183, 113, 116, 211, 228, 191, 58, 222, 150, 14, 188, 10, 237, 119, 252, 55, 107, 3, 121, 137, 98, 198, 215, 192, 210, 124, 106, 139, 34, 163, 91, 5, 93, 2, 117, 213, 97, 227, 24, 143, 85, 81, 173, 31, 11, 94, 133, 229, 194, 87, 99, 202, 61, 108, 180, 197, 204, 112, 178, 145, 89, 13, 71, 32, 200, 79, 88, 224, 1, 226, 22, 56, 196, 111, 59, 15, 101, 70, 190, 126, 45, 123, 130, 249, 64, 181, 29, 115, 248, 235, 38, 199, 135, 151, 37, 84, 177, 40, 170, 152, 157, 165, 100, 109, 122, 212, 16, 129, 68, 239, 73, 214, 174, 46, 221, 118, 92, 47, 167, 28, 201, 9, 105, 154, 131, 207, 41, 57, 185, 233, 76, 255, 67, 171};

        public static final short[] f31462d = {93, 190, 155, 139, 17, 153, 110, 77, 89, 243, 133, 166, 63, 183, 131, 197, 228, 115, 107, 58, 104, 90, 192, 71, 160, 100, 52, 12, 241, 208, 82, 165, 185, 30, 150, 67, 65, 216, 212, 44, 219, 248, 7, 119, 42, 202, 235, 239, 16, 28, 22, 13, 56, 114, 47, 137, 193, 249, 128, 196, 109, 174, 48, 61, 206, 32, 99, 254, 230, 26, 199, 184, 80, 232, 36, 23, 252, 37, 111, 187, 106, 163, 68, 83, 217, 162, 1, 171, 188, 182, 31, 152, 238, 154, 167, 45, 79, 158, 142, 172, 224, 198, 73, 70, 41, 244, 148, 138, 175, 225, 91, 195, 179, 123, 87, 209, 124, 156, 237, 135, 64, 140, 226, 203, 147, 20, 201, 97, 46, 229, 204, 246, 94, 168, 92, 214, 117, 141, 98, 149, 88, 105, 118, 161, 74, 181, 85, 9, 120, 51, 130, 215, 221, 121, 245, 27, 11, 222, 38, 33, 40, 116, 4, 151, 86, 223, 60, 240, 55, 57, 220, 255, 6, 164, 234, 66, 8, 218, 180, 113, 176, 207, 18, 122, 78, 250, 108, 29, 132, 0, 200, 127, 145, 69, 170, 43, 194, 177, 143, 213, 186, 242, 173, 25, 178, 103, 54, 247, 15, 10, 146, 125, 227, 157, 233, 144, 62, 35, 39, 102, 19, 236, 129, 21, 189, 34, 191, 159, 126, 169, 81, 75, 76, 251, 2, 211, 112, 134, 49, 231, 59, 5, 3, 84, 96, 72, 101, 24, 210, 205, 95, 50, 136, 14, 53, 253};

        public byte[] f31463a;

        public int f31464b = 58;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            int i10;
            if ((cls == RC2ParameterSpec.class || cls == AlgorithmParameterSpec.class) && (i10 = this.f31464b) != -1) {
                return i10 < 256 ? new RC2ParameterSpec(f31462d[this.f31464b], this.f31463a) : new RC2ParameterSpec(this.f31464b, this.f31463a);
            }
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31463a);
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to RC2 parameters object.");
        }

        @Override
        public byte[] engineGetEncoded() {
            return org.bouncycastle.util.a.p(this.f31463a);
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                this.f31463a = ((IvParameterSpec) algorithmParameterSpec).getIV();
                return;
            }
            if (!(algorithmParameterSpec instanceof RC2ParameterSpec)) {
                throw new InvalidParameterSpecException("IvParameterSpec or RC2ParameterSpec required to initialise a RC2 parameters algorithm parameters object");
            }
            RC2ParameterSpec rC2ParameterSpec = (RC2ParameterSpec) algorithmParameterSpec;
            int effectiveKeyBits = rC2ParameterSpec.getEffectiveKeyBits();
            if (effectiveKeyBits != -1) {
                int i10 = effectiveKeyBits;
                if (effectiveKeyBits < 256) {
                    i10 = f31461c[effectiveKeyBits];
                }
                this.f31464b = i10;
            }
            this.f31463a = rC2ParameterSpec.getIV();
        }

        @Override
        public String engineToString() {
            return "RC2 Parameters";
        }

        @Override
        public byte[] engineGetEncoded(String str) throws IOException {
            if (a(str)) {
                int i10 = this.f31464b;
                return i10 == -1 ? new Xh.w(engineGetEncoded()).getEncoded() : new Xh.w(i10, engineGetEncoded()).getEncoded();
            }
            if (str.equals("RAW")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override
        public void engineInit(byte[] bArr) throws IOException {
            this.f31463a = org.bouncycastle.util.a.p(bArr);
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!a(str)) {
                if (!str.equals("RAW")) {
                    throw new IOException("Unknown parameters format in IV parameters object");
                }
                engineInit(bArr);
            } else {
                Xh.w v10 = Xh.w.v(oh.B.B(bArr));
                if (v10.x() != null) {
                    this.f31464b = v10.x().intValue();
                }
                this.f31463a = v10.u();
            }
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public c() {
            super(new C3092c(new Li.V()), 64);
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public d() {
            super(new Si.c(new Li.V()));
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.d(new Li.V()));
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public f() {
            super(new Li.V());
        }
    }

    public static class g extends C3664d {
        public g() {
            super("RC2", 128, new C2378j());
        }
    }

    public static class h extends AbstractC3895a {

        public static final String f31465a = y.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31465a;
            sb2.append(str);
            sb2.append("$AlgParamGen");
            aVar.d("AlgorithmParameterGenerator.RC2", sb2.toString());
            aVar.d("AlgorithmParameterGenerator.1.2.840.113549.3.2", str + "$AlgParamGen");
            aVar.d("KeyGenerator.RC2", str + "$KeyGenerator");
            aVar.d("KeyGenerator.1.2.840.113549.3.2", str + "$KeyGenerator");
            aVar.d("AlgorithmParameters.RC2", str + "$AlgParams");
            aVar.d("AlgorithmParameters.1.2.840.113549.3.2", str + "$AlgParams");
            aVar.d("Cipher.RC2", str + "$ECB");
            aVar.d("Cipher.RC2WRAP", str + "$Wrap");
            aVar.g("Alg.Alias.Cipher", Xh.t.f29024J2, "RC2WRAP");
            aVar.g("Cipher", Xh.t.f29126o1, str + "$CBC");
            aVar.d("Mac.RC2MAC", str + "$CBCMAC");
            aVar.d("Alg.Alias.Mac.RC2", "RC2MAC");
            aVar.d("Mac.RC2MAC/CFB8", str + "$CFB8MAC");
            aVar.d("Alg.Alias.Mac.RC2/CFB8", "RC2MAC/CFB8");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDRC2-CBC", "PBEWITHMD2ANDRC2");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC", "PBEWITHMD5ANDRC2");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC", "PBEWITHSHA1ANDRC2");
            C14549x c14549x = Xh.t.f29087c1;
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x, "PBEWITHMD2ANDRC2");
            C14549x c14549x2 = Xh.t.f29095e1;
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x2, "PBEWITHMD5ANDRC2");
            C14549x c14549x3 = Xh.t.f29103g1;
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x3, "PBEWITHSHA1ANDRC2");
            aVar.d("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5", "PBEWITHSHAAND128BITRC2-CBC");
            aVar.d("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6", "PBEWITHSHAAND40BITRC2-CBC");
            aVar.d("SecretKeyFactory.PBEWITHMD2ANDRC2", str + "$PBEWithMD2KeyFactory");
            aVar.d("SecretKeyFactory.PBEWITHMD5ANDRC2", str + "$PBEWithMD5KeyFactory");
            aVar.d("SecretKeyFactory.PBEWITHSHA1ANDRC2", str + "$PBEWithSHA1KeyFactory");
            aVar.d("SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC", str + "$PBEWithSHAAnd128BitKeyFactory");
            aVar.d("SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC", str + "$PBEWithSHAAnd40BitKeyFactory");
            aVar.g("Alg.Alias.Cipher", c14549x, "PBEWITHMD2ANDRC2");
            aVar.g("Alg.Alias.Cipher", c14549x2, "PBEWITHMD5ANDRC2");
            aVar.g("Alg.Alias.Cipher", c14549x3, "PBEWITHSHA1ANDRC2");
            aVar.d("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES", "PKCS12PBE");
            aVar.g("Alg.Alias.Cipher", Xh.t.f29111i4, "PBEWITHSHAAND128BITRC2-CBC");
            aVar.g("Alg.Alias.Cipher", Xh.t.f29115j4, "PBEWITHSHAAND40BITRC2-CBC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC", "PBEWITHSHAAND128BITRC2-CBC");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC", "PBEWITHSHAAND40BITRC2-CBC");
            aVar.d("Cipher.PBEWITHSHA1ANDRC2", str + "$PBEWithSHA1AndRC2");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHAANDRC2-CBC", "PBEWITHSHA1ANDRC2");
            aVar.d("Alg.Alias.Cipher.PBEWITHSHA1ANDRC2-CBC", "PBEWITHSHA1ANDRC2");
            aVar.d("Cipher.PBEWITHSHAAND128BITRC2-CBC", str + "$PBEWithSHAAnd128BitRC2");
            aVar.d("Cipher.PBEWITHSHAAND40BITRC2-CBC", str + "$PBEWithSHAAnd40BitRC2");
            aVar.d("Cipher.PBEWITHMD5ANDRC2", str + "$PBEWithMD5AndRC2");
            aVar.d("Alg.Alias.Cipher.PBEWITHMD5ANDRC2-CBC", "PBEWITHMD5ANDRC2");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC", "PKCS12PBE");
        }
    }

    public static class i extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public i() {
            super("PBEwithMD2andRC2", Xh.t.f29087c1, true, 0, 5, 64, 64);
        }
    }

    public static class j extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public j() {
            super(new C3092c(new Li.V()), 0, 0, 64, 8);
        }
    }

    public static class k extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public k() {
            super("PBEwithMD5andRC2", Xh.t.f29095e1, true, 0, 0, 64, 64);
        }
    }

    public static class l extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public l() {
            super(new C3092c(new Li.V()), 0, 1, 64, 8);
        }
    }

    public static class m extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public m() {
            super("PBEwithSHA1andRC2", Xh.t.f29103g1, true, 0, 1, 64, 64);
        }
    }

    public static class n extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public n() {
            super("PBEwithSHAand128BitRC2-CBC", Xh.t.f29111i4, true, 2, 1, 128, 64);
        }
    }

    public static class o extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public o() {
            super(new C3092c(new Li.V()), 2, 1, 128, 8);
        }
    }

    public static class p extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public p() {
            super("PBEwithSHAand40BitRC2-CBC", Xh.t.f29115j4, true, 2, 1, 40, 64);
        }
    }

    public static class q extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public q() {
            super(new C3092c(new Li.V()), 2, 1, 40, 8);
        }
    }

    public static class r extends BaseWrapCipher {
        public r() {
            super(new W());
        }
    }
}

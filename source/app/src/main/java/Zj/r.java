package Zj;

import Bi.C2378j;
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
import oh.C14549x;
import yj.C16197b;
import yj.InterfaceC16198c;

public final class r {

    public static class a extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[8];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("IDEA");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for IDEA parameter generation.");
        }
    }

    public static class b extends AbstractC3663c {

        public byte[] f31446a;

        @Override
        public AlgorithmParameterSpec b(Class cls) throws InvalidParameterSpecException {
            if (cls == IvParameterSpec.class || cls == AlgorithmParameterSpec.class) {
                return new IvParameterSpec(this.f31446a);
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to IV parameters object.");
        }

        @Override
        public byte[] engineGetEncoded() throws IOException {
            return engineGetEncoded("ASN.1");
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof IvParameterSpec)) {
                throw new InvalidParameterSpecException("IvParameterSpec required to initialise a IV parameters algorithm parameters object");
            }
            this.f31446a = ((IvParameterSpec) algorithmParameterSpec).getIV();
        }

        @Override
        public String engineToString() {
            return "IDEA Parameters";
        }

        @Override
        public byte[] engineGetEncoded(String str) throws IOException {
            if (a(str)) {
                return new C16197b(engineGetEncoded("RAW")).getEncoded();
            }
            if (!str.equals("RAW")) {
                return null;
            }
            byte[] bArr = this.f31446a;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }

        @Override
        public void engineInit(byte[] bArr) throws IOException {
            byte[] bArr2 = new byte[bArr.length];
            this.f31446a = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        }

        @Override
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (str.equals("RAW")) {
                engineInit(bArr);
            } else {
                if (!str.equals("ASN.1")) {
                    throw new IOException("Unknown parameters format in IV parameters object");
                }
                engineInit(C16197b.v(bArr).u());
            }
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public c() {
            super(C3092c.m(new Li.K()), 64);
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public d() {
            super(new Si.d(new Li.K()));
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public e() {
            super(new Li.K());
        }
    }

    public static class f extends C3664d {
        public f() {
            super("IDEA", 128, new C2378j());
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public g() {
            super(new Si.c(new Li.K()));
        }
    }

    public static class h extends AbstractC3895a {

        public static final String f31447a = r.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31447a;
            sb2.append(str);
            sb2.append("$AlgParamGen");
            aVar.d("AlgorithmParameterGenerator.IDEA", sb2.toString());
            aVar.d("AlgorithmParameterGenerator.1.3.6.1.4.1.188.7.1.1.2", str + "$AlgParamGen");
            aVar.d("AlgorithmParameters.IDEA", str + "$AlgParams");
            aVar.d("AlgorithmParameters.1.3.6.1.4.1.188.7.1.1.2", str + "$AlgParams");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA-CBC", "PKCS12PBE");
            aVar.d("Cipher.IDEA", str + "$ECB");
            C14549x c14549x = InterfaceC16198c.f130396w;
            aVar.g("Cipher", c14549x, str + "$CBC");
            aVar.d("Cipher.PBEWITHSHAANDIDEA-CBC", str + "$PBEWithSHAAndIDEA");
            aVar.d("KeyGenerator.IDEA", str + "$KeyGen");
            aVar.g("KeyGenerator", c14549x, str + "$KeyGen");
            aVar.d("SecretKeyFactory.PBEWITHSHAANDIDEA-CBC", str + "$PBEWithSHAAndIDEAKeyGen");
            aVar.d("Mac.IDEAMAC", str + "$Mac");
            aVar.d("Alg.Alias.Mac.IDEA", "IDEAMAC");
            aVar.d("Mac.IDEAMAC/CFB8", str + "$CFB8Mac");
            aVar.d("Alg.Alias.Mac.IDEA/CFB8", "IDEAMAC/CFB8");
        }
    }

    public static class i extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public i() {
            super(C3092c.m(new Li.K()));
        }
    }

    public static class j extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public j() {
            super("PBEwithSHAandIDEA-CBC", null, true, 2, 1, 128, 64);
        }
    }
}

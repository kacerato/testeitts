package Zj;

import Bi.C2378j;
import Li.Y;
import Li.Z;
import Ti.C3092c;
import ak.AbstractC3662b;
import ak.C3664d;
import ak.C3669i;
import bk.AbstractC3895a;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;

public final class z {

    public static class a extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[8];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("RC5");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for RC5 parameter generation.");
        }
    }

    public static class b extends C3669i {
        @Override
        public String engineToString() {
            return "RC5 IV";
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public c() {
            super(new C3092c(new Y()), 64);
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public d() {
            super(new Si.d(new Y()));
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public e() {
            super(new Y());
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public f() {
            super(new Z());
        }
    }

    public static class g extends C3664d {
        public g() {
            super("RC5", 128, new C2378j());
        }
    }

    public static class h extends C3664d {
        public h() {
            super("RC5-64", 256, new C2378j());
        }
    }

    public static class i extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public i() {
            super(new Si.c(new Y()));
        }
    }

    public static class j extends AbstractC3895a {

        public static final String f31466a = z.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31466a;
            sb2.append(str);
            sb2.append("$ECB32");
            aVar.d("Cipher.RC5", sb2.toString());
            aVar.d("Alg.Alias.Cipher.RC5-32", "RC5");
            aVar.d("Cipher.RC5-64", str + "$ECB64");
            aVar.d("KeyGenerator.RC5", str + "$KeyGen32");
            aVar.d("Alg.Alias.KeyGenerator.RC5-32", "RC5");
            aVar.d("KeyGenerator.RC5-64", str + "$KeyGen64");
            aVar.d("AlgorithmParameters.RC5", str + "$AlgParams");
            aVar.d("AlgorithmParameters.RC5-64", str + "$AlgParams");
            aVar.d("Mac.RC5MAC", str + "$Mac32");
            aVar.d("Alg.Alias.Mac.RC5", "RC5MAC");
            aVar.d("Mac.RC5MAC/CFB8", str + "$CFB8Mac32");
            aVar.d("Alg.Alias.Mac.RC5/CFB8", "RC5MAC/CFB8");
        }
    }
}

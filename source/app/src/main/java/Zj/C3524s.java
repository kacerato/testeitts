package Zj;

import Bi.C2378j;
import Bi.InterfaceC2374f;
import ak.AbstractC3662b;
import ak.C3664d;
import ak.C3669i;
import ak.InterfaceC3666f;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;

public final class C3524s {

    public static class a extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("Noekeon");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for Noekeon parameter generation.");
        }
    }

    public static class b extends C3669i {
        @Override
        public String engineToString() {
            return "Noekeon IV";
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new Li.Q();
            }
        }

        public c() {
            super(new a());
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public d() {
            super(new Si.i(new Ti.r(new Li.Q())));
        }
    }

    public static class e extends C3664d {
        public e() {
            super("Noekeon", 128, new C2378j());
        }
    }

    public static class f extends L {

        public static final String f31448a = C3524s.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31448a;
            sb2.append(str);
            sb2.append("$AlgParams");
            aVar.d("AlgorithmParameters.NOEKEON", sb2.toString());
            aVar.d("AlgorithmParameterGenerator.NOEKEON", str + "$AlgParamGen");
            aVar.d("Cipher.NOEKEON", str + "$ECB");
            aVar.d("KeyGenerator.NOEKEON", str + "$KeyGen");
            c(aVar, "NOEKEON", str + "$GMAC", str + "$KeyGen");
            d(aVar, "NOEKEON", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public g() {
            super(new Si.q(new Li.Q()));
        }
    }

    public static class h extends C3664d {
        public h() {
            super("Poly1305-Noekeon", 256, new Oi.K());
        }
    }
}

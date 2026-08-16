package Zj;

import Bi.C2378j;
import Bi.InterfaceC2374f;
import Li.C2772b0;
import Li.C2788m;
import Li.C2790o;
import Ti.C3092c;
import ak.AbstractC3662b;
import ak.C3664d;
import ak.C3665e;
import ak.C3669i;
import ak.InterfaceC3666f;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseWrapCipher;

public final class C3497g {

    public static class a extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("Camellia");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for Camellia parameter generation.");
        }
    }

    public static class b extends C3669i {
        @Override
        public String engineToString() {
            return "Camellia IV";
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public c() {
            super(new C3092c(new C2788m()), 128);
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new C2788m();
            }
        }

        public d() {
            super(new a());
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.i(new Ti.r(new C2788m())));
        }
    }

    public static class f extends C3665e {
        public f() {
            super("Camellia", null);
        }
    }

    public static class C0833g extends j {
        public C0833g() {
            super(128);
        }
    }

    public static class h extends j {
        public h() {
            super(192);
        }
    }

    public static class i extends j {
        public i() {
            super(256);
        }
    }

    public static class j extends C3664d {
        public j() {
            this(256);
        }

        public j(int i10) {
            super("Camellia", i10, new C2378j());
        }
    }

    public static class k extends L {

        public static final String f31418a = C3497g.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31418a;
            sb2.append(str);
            sb2.append("$AlgParams");
            aVar.d("AlgorithmParameters.CAMELLIA", sb2.toString());
            C14549x c14549x = Aj.a.f827a;
            aVar.g("Alg.Alias.AlgorithmParameters", c14549x, "CAMELLIA");
            C14549x c14549x2 = Aj.a.f828b;
            aVar.g("Alg.Alias.AlgorithmParameters", c14549x2, "CAMELLIA");
            C14549x c14549x3 = Aj.a.f829c;
            aVar.g("Alg.Alias.AlgorithmParameters", c14549x3, "CAMELLIA");
            aVar.d("AlgorithmParameterGenerator.CAMELLIA", str + "$AlgParamGen");
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x, "CAMELLIA");
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x2, "CAMELLIA");
            aVar.g("Alg.Alias.AlgorithmParameterGenerator", c14549x3, "CAMELLIA");
            aVar.d("Cipher.CAMELLIA", str + "$ECB");
            aVar.g("Cipher", c14549x, str + "$CBC");
            aVar.g("Cipher", c14549x2, str + "$CBC");
            aVar.g("Cipher", c14549x3, str + "$CBC");
            aVar.d("Cipher.CAMELLIARFC3211WRAP", str + "$RFC3211Wrap");
            aVar.d("Cipher.CAMELLIAWRAP", str + "$Wrap");
            C14549x c14549x4 = Aj.a.f830d;
            aVar.g("Alg.Alias.Cipher", c14549x4, "CAMELLIAWRAP");
            C14549x c14549x5 = Aj.a.f831e;
            aVar.g("Alg.Alias.Cipher", c14549x5, "CAMELLIAWRAP");
            C14549x c14549x6 = Aj.a.f832f;
            aVar.g("Alg.Alias.Cipher", c14549x6, "CAMELLIAWRAP");
            aVar.d("SecretKeyFactory.CAMELLIA", str + "$KeyFactory");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x, "CAMELLIA");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x2, "CAMELLIA");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x3, "CAMELLIA");
            aVar.d("KeyGenerator.CAMELLIA", str + "$KeyGen");
            aVar.g("KeyGenerator", c14549x4, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x5, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x6, str + "$KeyGen256");
            aVar.g("KeyGenerator", c14549x, str + "$KeyGen128");
            aVar.g("KeyGenerator", c14549x2, str + "$KeyGen192");
            aVar.g("KeyGenerator", c14549x3, str + "$KeyGen256");
            c(aVar, "CAMELLIA", str + "$GMAC", str + "$KeyGen");
            d(aVar, "CAMELLIA", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    public static class l extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public l() {
            super(new Si.q(new C2788m()));
        }
    }

    public static class m extends C3664d {
        public m() {
            super("Poly1305-Camellia", 256, new Oi.K());
        }
    }

    public static class n extends BaseWrapCipher {
        public n() {
            super(new C2772b0(new C2788m()), 16);
        }
    }

    public static class o extends BaseWrapCipher {
        public o() {
            super(new C2790o());
        }
    }
}

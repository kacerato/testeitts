package Zj;

import Bi.C2378j;
import Bi.InterfaceC2374f;
import Li.j0;
import Li.k0;
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
import wj.InterfaceC16012a;

public final class D {

    public static class a extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("SEED");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for SEED parameter generation.");
        }
    }

    public static class b extends C3669i {
        @Override
        public String engineToString() {
            return "SEED IV";
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public c() {
            super(new C3092c(new j0()), 128);
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public d() {
            super(new Si.e(new j0()));
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new j0();
            }
        }

        public e() {
            super(new a());
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public f() {
            super(new Si.i(new Ti.r(new j0())));
        }
    }

    public static class g extends C3665e {
        public g() {
            super("SEED", null);
        }
    }

    public static class h extends C3664d {
        public h() {
            super("SEED", 128, new C2378j());
        }
    }

    public static class i extends L {

        public static final String f31382a = D.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31382a;
            sb2.append(str);
            sb2.append("$AlgParams");
            aVar.d("AlgorithmParameters.SEED", sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.AlgorithmParameters.");
            C14549x c14549x = InterfaceC16012a.f127584a;
            sb3.append((Object) c14549x);
            aVar.d(sb3.toString(), "SEED");
            aVar.d("AlgorithmParameterGenerator.SEED", str + "$AlgParamGen");
            aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x), "SEED");
            aVar.d("Cipher.SEED", str + "$ECB");
            aVar.g("Cipher", c14549x, str + "$CBC");
            aVar.d("Cipher.SEEDWRAP", str + "$Wrap");
            C14549x c14549x2 = InterfaceC16012a.f127587d;
            aVar.g("Alg.Alias.Cipher", c14549x2, "SEEDWRAP");
            aVar.d("Alg.Alias.Cipher.SEEDKW", "SEEDWRAP");
            aVar.d("KeyGenerator.SEED", str + "$KeyGen");
            aVar.g("KeyGenerator", c14549x, str + "$KeyGen");
            aVar.g("KeyGenerator", c14549x2, str + "$KeyGen");
            aVar.d("SecretKeyFactory.SEED", str + "$KeyFactory");
            aVar.g("Alg.Alias.SecretKeyFactory", c14549x, "SEED");
            b(aVar, "SEED", str + "$CMAC", str + "$KeyGen");
            c(aVar, "SEED", str + "$GMAC", str + "$KeyGen");
            d(aVar, "SEED", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    public static class j extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public j() {
            super(new Si.q(new j0()));
        }
    }

    public static class k extends C3664d {
        public k() {
            super("Poly1305-SEED", 256, new Oi.K());
        }
    }

    public static class l extends BaseWrapCipher {
        public l() {
            super(new k0());
        }
    }
}

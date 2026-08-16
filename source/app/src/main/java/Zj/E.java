package Zj;

import Bi.C2378j;
import Bi.InterfaceC2374f;
import Li.m0;
import ak.AbstractC3662b;
import ak.C3664d;
import ak.C3669i;
import ak.InterfaceC3666f;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;

public final class E {

    public static class a extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("SM4");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for SM4 parameter generation.");
        }
    }

    public static class b extends C3669i {
        @Override
        public String engineToString() {
            return "SM4 IV";
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public c() {
            super(new Si.e(new m0()));
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new m0();
            }
        }

        public d() {
            super(new a());
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.i(new Ti.r(new m0())));
        }
    }

    public static class f extends C3664d {
        public f() {
            super("SM4", 128, new C2378j());
        }
    }

    public static class g extends L {

        public static final String f31383a = E.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31383a;
            sb2.append(str);
            sb2.append("$AlgParams");
            aVar.d("AlgorithmParameters.SM4", sb2.toString());
            aVar.d("AlgorithmParameterGenerator.SM4", str + "$AlgParamGen");
            aVar.d("Cipher.SM4", str + "$ECB");
            aVar.d("KeyGenerator.SM4", str + "$KeyGen");
            b(aVar, "SM4", str + "$CMAC", str + "$KeyGen");
            c(aVar, "SM4", str + "$GMAC", str + "$KeyGen");
            d(aVar, "SM4", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    public static class h extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public h() {
            super(new Si.q(new m0()));
        }
    }

    public static class i extends C3664d {
        public i() {
            super("Poly1305-SM4", 256, new Oi.K());
        }
    }
}

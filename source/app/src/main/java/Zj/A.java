package Zj;

import Bi.C2376h;
import Bi.C2378j;
import Bi.InterfaceC2374f;
import Li.C2770a0;
import Ti.C3092c;
import Ti.C3096g;
import ak.AbstractC3662b;
import ak.C3664d;
import ak.C3669i;
import ak.InterfaceC3666f;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;

public final class A {

    public static class a extends AbstractC3662b {
        @Override
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.f32319b == null) {
                this.f32319b = Bi.r.h();
            }
            this.f32319b.nextBytes(bArr);
            try {
                AlgorithmParameters a10 = a("RC6");
                a10.init(new IvParameterSpec(bArr));
                return a10;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }

        @Override
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for RC6 parameter generation.");
        }
    }

    public static class b extends C3669i {
        @Override
        public String engineToString() {
            return "RC6 IV";
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public c() {
            super(new C3092c(new C2770a0()), 128);
        }
    }

    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public d() {
            super(new C2376h(new C3096g(new C2770a0(), 128)), 128);
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new C2770a0();
            }
        }

        public e() {
            super(new a());
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public f() {
            super(new Si.i(new Ti.r(new C2770a0())));
        }
    }

    public static class g extends C3664d {
        public g() {
            super("RC6", 256, new C2378j());
        }
    }

    public static class h extends L {

        public static final String f31378a = A.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31378a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.RC6", sb2.toString());
            aVar.d("KeyGenerator.RC6", str + "$KeyGen");
            aVar.d("AlgorithmParameters.RC6", str + "$AlgParams");
            c(aVar, "RC6", str + "$GMAC", str + "$KeyGen");
            d(aVar, "RC6", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    public static class i extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public i() {
            super(new C2376h(new Ti.C(new C2770a0(), 128)), 128);
        }
    }

    public static class j extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public j() {
            super(new Si.q(new C2770a0()));
        }
    }

    public static class k extends C3664d {
        public k() {
            super("Poly1305-RC6", 256, new Oi.K());
        }
    }
}

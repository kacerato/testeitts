package Zj;

import Bi.C2378j;
import Bi.InterfaceC2374f;
import Li.w0;
import Ti.C3092c;
import ak.C3664d;
import ak.C3669i;
import ak.InterfaceC3666f;

public final class P {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "Twofish IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new w0();
            }
        }

        public b() {
            super(new a());
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public c() {
            super(new Si.i(new Ti.r(new w0())));
        }
    }

    public static class d extends C3664d {
        public d() {
            super("Twofish", 256, new C2378j());
        }
    }

    public static class e extends L {

        public static final String f31394a = P.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31394a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.Twofish", sb2.toString());
            aVar.d("KeyGenerator.Twofish", str + "$KeyGen");
            aVar.d("AlgorithmParameters.Twofish", str + "$AlgParams");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH", "PKCS12PBE");
            aVar.d("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH-CBC", "PKCS12PBE");
            aVar.d("Cipher.PBEWITHSHAANDTWOFISH-CBC", str + "$PBEWithSHA");
            aVar.d("SecretKeyFactory.PBEWITHSHAANDTWOFISH-CBC", str + "$PBEWithSHAKeyFactory");
            c(aVar, "Twofish", str + "$GMAC", str + "$KeyGen");
            d(aVar, "Twofish", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.a {
        public f() {
            super(new C3092c(new w0()), 2, 1, 256, 16);
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public g() {
            super("PBEwithSHAandTwofish-CBC", null, true, 2, 1, 256, 128);
        }
    }

    public static class h extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public h() {
            super(new Si.q(new w0()));
        }
    }

    public static class i extends C3664d {
        public i() {
            super("Poly1305-Twofish", 256, new Oi.K());
        }
    }
}

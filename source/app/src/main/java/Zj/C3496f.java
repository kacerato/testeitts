package Zj;

import Bi.C2378j;
import Bi.InterfaceC2374f;
import Li.C2787l;
import ak.C3664d;
import ak.C3669i;
import ak.InterfaceC3666f;

public final class C3496f {

    public static class a extends C3669i {
        @Override
        public String engineToString() {
            return "CAST6 IV";
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.a {

        public class a implements InterfaceC3666f {
            @Override
            public InterfaceC2374f get() {
                return new C2787l();
            }
        }

        public b() {
            super(new a());
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public c() {
            super(new Si.i(new Ti.r(new C2787l())));
        }
    }

    public static class d extends C3664d {
        public d() {
            super("CAST6", 256, new C2378j());
        }
    }

    public static class e extends L {

        public static final String f31417a = C3496f.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31417a;
            sb2.append(str);
            sb2.append("$ECB");
            aVar.d("Cipher.CAST6", sb2.toString());
            aVar.d("KeyGenerator.CAST6", str + "$KeyGen");
            aVar.d("AlgorithmParameters.CAST6", str + "$AlgParams");
            c(aVar, "CAST6", str + "$GMAC", str + "$KeyGen");
            d(aVar, "CAST6", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    public static class C0832f extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public C0832f() {
            super(new Si.q(new C2787l()));
        }
    }

    public static class g extends C3664d {
        public g() {
            super("Poly1305-CAST6", 256, new Oi.K());
        }
    }
}

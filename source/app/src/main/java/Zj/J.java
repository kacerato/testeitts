package Zj;

import Bi.C2378j;
import ak.C3664d;
import bk.AbstractC3895a;

public final class J {

    public static class a extends C3664d {
        public a() {
            super("SipHash128", 128, new C2378j());
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.r());
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public c() {
            super(new Si.r(4, 8));
        }
    }

    public static class d extends AbstractC3895a {

        public static final String f31388a = J.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31388a;
            sb2.append(str);
            sb2.append("$Mac24");
            aVar.d("Mac.SIPHASH128-2-4", sb2.toString());
            aVar.d("Alg.Alias.Mac.SIPHASH128", "SIPHASH128-2-4");
            aVar.d("Mac.SIPHASH128-4-8", str + "$Mac48");
            aVar.d("KeyGenerator.SIPHASH128", str + "$KeyGen");
            aVar.d("Alg.Alias.KeyGenerator.SIPHASH128-2-4", "SIPHASH128");
            aVar.d("Alg.Alias.KeyGenerator.SIPHASH128-4-8", "SIPHASH128");
        }
    }
}

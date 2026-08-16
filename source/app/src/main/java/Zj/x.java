package Zj;

import ak.C3664d;
import bk.AbstractC3895a;

public class x {

    public static class a extends C3664d {
        public a() {
            super("Poly1305", 256, new Oi.K());
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.q());
        }
    }

    public static class c extends AbstractC3895a {

        public static final String f31459a = x.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31459a;
            sb2.append(str);
            sb2.append("$Mac");
            aVar.d("Mac.POLY1305", sb2.toString());
            aVar.d("KeyGenerator.POLY1305", str + "$KeyGen");
        }
    }
}

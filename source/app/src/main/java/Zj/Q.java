package Zj;

import Bi.C2378j;
import Li.y0;
import ak.C3664d;
import bk.AbstractC3895a;

public final class Q {

    public static class a extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public a() {
            super(new y0(), 16);
        }
    }

    public static class b extends C3664d {
        public b() {
            super("VMPC", 128, new C2378j());
        }
    }

    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public c() {
            super(new Si.u());
        }
    }

    public static class d extends AbstractC3895a {

        public static final String f31395a = Q.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31395a;
            sb2.append(str);
            sb2.append("$Base");
            aVar.d("Cipher.VMPC", sb2.toString());
            aVar.d("KeyGenerator.VMPC", str + "$KeyGen");
            aVar.d("Mac.VMPCMAC", str + "$Mac");
            aVar.d("Alg.Alias.Mac.VMPC", "VMPCMAC");
            aVar.d("Alg.Alias.Mac.VMPC-MAC", "VMPCMAC");
        }
    }
}

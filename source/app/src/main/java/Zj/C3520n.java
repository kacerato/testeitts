package Zj;

import Bi.C2378j;
import ak.C3664d;
import bk.AbstractC3895a;

public final class C3520n {

    public static class a extends org.bouncycastle.jcajce.provider.symmetric.util.c {
        public a() {
            super(new Li.G(), 12);
        }
    }

    public static class b extends C3664d {
        public b() {
            super("Grain128", 128, new C2378j());
        }
    }

    public static class c extends AbstractC3895a {

        public static final String f31442a = C3520n.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31442a;
            sb2.append(str);
            sb2.append("$Base");
            aVar.d("Cipher.Grain128", sb2.toString());
            aVar.d("KeyGenerator.Grain128", str + "$KeyGen");
        }
    }
}

package Uj;

import Bi.C2378j;
import Ii.H;
import ak.C3664d;
import bi.InterfaceC3890b;

public class o {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new H());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new H((H) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new H()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACRIPEMD256", 256, new C2378j());
        }
    }

    public static class d extends f {

        public static final String f26216a = o.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26216a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.RIPEMD256", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC3890b.f33238d), "RIPEMD256");
            b(aVar, "RIPEMD256", str + "$HashMac", str + "$KeyGenerator");
        }
    }
}

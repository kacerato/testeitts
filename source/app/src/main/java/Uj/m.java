package Uj;

import Bi.C2378j;
import Ii.F;
import ak.C3664d;
import bi.InterfaceC3890b;

public class m {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new F());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new F((F) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new F()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACRIPEMD128", 128, new C2378j());
        }
    }

    public static class d extends f {

        public static final String f26214a = m.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26214a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.RIPEMD128", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC3890b.f33237c), "RIPEMD128");
            b(aVar, "RIPEMD128", str + "$HashMac", str + "$KeyGenerator");
        }
    }
}

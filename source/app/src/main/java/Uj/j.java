package Uj;

import Bi.C2378j;
import Ii.C2665x;
import ak.C3664d;

public class j {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new C2665x());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new C2665x((C2665x) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new C2665x()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACMD2", 128, new C2378j());
        }
    }

    public static class d extends f {

        public static final String f26211a = j.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26211a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.MD2", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest." + ((Object) Xh.t.f29135s1), "MD2");
            b(aVar, "MD2", str + "$HashMac", str + "$KeyGenerator");
        }
    }
}

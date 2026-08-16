package Uj;

import Bi.C2378j;
import Ii.C2666y;
import ak.C3664d;

public class k {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new C2666y());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new C2666y((C2666y) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new C2666y()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACMD4", 128, new C2378j());
        }
    }

    public static class d extends f {

        public static final String f26212a = k.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26212a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.MD4", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest." + ((Object) Xh.t.f29138t1), "MD4");
            b(aVar, "MD4", str + "$HashMac", str + "$KeyGenerator");
        }
    }
}

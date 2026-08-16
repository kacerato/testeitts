package Uj;

import Bi.C2378j;
import Ii.M;
import ak.C3664d;

public class u {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new M());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new M((M) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new M()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACSHA384", 384, new C2378j());
        }
    }

    public static class d extends f {

        public static final String f26222a = u.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26222a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.SHA-384", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest.SHA384", "SHA-384");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) Sh.d.f23339d), "SHA-384");
            aVar.d("Mac.OLDHMACSHA384", str + "$OldSHA384");
            aVar.d("Mac.PBEWITHHMACSHA384", str + "$HashMac");
            b(aVar, "SHA384", str + "$HashMac", str + "$KeyGenerator");
            c(aVar, "SHA384", Xh.t.f29000A1);
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.p(new M()));
        }
    }
}

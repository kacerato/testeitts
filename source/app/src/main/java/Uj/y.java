package Uj;

import Bi.C2378j;
import Ii.X;
import ak.C3664d;
import sj.InterfaceC15314a;

public class y {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new X());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new X((X) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new X()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACTIGER", 192, new C2378j());
        }
    }

    public static class d extends Uj.f {

        public static final String f26226a = y.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26226a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.TIGER", sb2.toString());
            aVar.d("MessageDigest.Tiger", str + "$Digest");
            b(aVar, "TIGER", str + "$HashMac", str + "$KeyGenerator");
            c(aVar, "TIGER", InterfaceC15314a.f109658p);
            aVar.d("SecretKeyFactory.PBEWITHHMACTIGER", str + "$PBEWithMacKeyFactory");
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.k(new X()), 2, 3, 192);
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public f() {
            super("PBEwithHmacTiger", null, false, 2, 3, 192, 0);
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public g() {
            super(new Si.k(new X()));
        }
    }
}

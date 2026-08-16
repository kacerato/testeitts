package Uj;

import Bi.C2378j;
import Ii.L;
import ak.C3664d;
import oh.C14549x;

public class s {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(L.x());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = L.z(this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(L.x()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACSHA256", 256, new C2378j());
        }
    }

    public static class d extends f {

        public static final String f26220a = s.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26220a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.SHA-256", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest.SHA256", "SHA-256");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.MessageDigest.");
            C14549x c14549x = Sh.d.f23337c;
            sb3.append((Object) c14549x);
            aVar.d(sb3.toString(), "SHA-256");
            aVar.d("SecretKeyFactory.PBEWITHHMACSHA256", str + "$PBEWithMacKeyFactory");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHHMACSHA-256", "PBEWITHHMACSHA256");
            aVar.d("Alg.Alias.SecretKeyFactory." + ((Object) c14549x), "PBEWITHHMACSHA256");
            aVar.d("Mac.PBEWITHHMACSHA256", str + "$HashMac");
            b(aVar, "SHA256", str + "$HashMac", str + "$KeyGenerator");
            c(aVar, "SHA256", Xh.t.f29152z1);
            c(aVar, "SHA256", c14549x);
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public e() {
            super("PBEwithHmacSHA256", null, false, 2, 4, 256, 0);
        }
    }
}

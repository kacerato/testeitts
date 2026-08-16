package Uj;

import Bi.C2378j;
import Ii.J;
import ak.C3664d;
import oh.C14549x;
import sj.InterfaceC15314a;

public class q {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new J());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new J((J) this.f26202b);
            return aVar;
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public b() {
            super(new Si.k(new J()));
        }
    }

    public static class c extends C3664d {
        public c() {
            super("HMACSHA1", 160, new C2378j());
        }
    }

    public static class d extends Uj.f {

        public static final String f26218a = q.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26218a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.SHA-1", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest.SHA1", "SHA-1");
            aVar.d("Alg.Alias.MessageDigest.SHA", "SHA-1");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.MessageDigest.");
            C14549x c14549x = Bj.b.f1911i;
            sb3.append((Object) c14549x);
            aVar.d(sb3.toString(), "SHA-1");
            b(aVar, "SHA1", str + "$HashMac", str + "$KeyGenerator");
            c(aVar, "SHA1", Xh.t.f29144w1);
            c(aVar, "SHA1", InterfaceC15314a.f109657o);
            aVar.d("Mac.PBEWITHHMACSHA", str + "$SHA1Mac");
            aVar.d("Mac.PBEWITHHMACSHA1", str + "$SHA1Mac");
            aVar.d("Alg.Alias.SecretKeyFactory.PBEWITHHMACSHA", "PBEWITHHMACSHA1");
            aVar.d("Alg.Alias.SecretKeyFactory." + ((Object) c14549x), "PBEWITHHMACSHA1");
            aVar.d("Alg.Alias.Mac." + ((Object) c14549x), "PBEWITHHMACSHA");
            aVar.d("SecretKeyFactory.PBEWITHHMACSHA1", str + "$PBEWithMacKeyFactory");
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.e {
        public e() {
            super("PBEwithHmacSHA", null, false, 2, 1, 160, 0);
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public f() {
            super(new Si.k(new J()));
        }
    }
}

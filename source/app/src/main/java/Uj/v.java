package Uj;

import Bi.C2378j;
import Ii.O;
import Ii.P;
import ak.C3664d;
import nl.C14464h;

public class v {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new O());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new O((O) this.f26202b);
            return aVar;
        }
    }

    public static class b extends d {
        public b() {
            super(224);
        }
    }

    public static class c extends d {
        public c() {
            super(256);
        }
    }

    public static class d extends Uj.a implements Cloneable {
        public d(int i10) {
            super(new P(i10));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            d dVar = (d) super.clone();
            dVar.f26202b = new P((P) this.f26202b);
            return dVar;
        }
    }

    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e() {
            super(new Si.k(new O()));
        }
    }

    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public f() {
            super(new Si.k(new P(224)));
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public g() {
            super(new Si.k(new P(256)));
        }
    }

    public static class h extends C3664d {
        public h() {
            super("HMACSHA512", 512, new C2378j());
        }
    }

    public static class i extends C3664d {
        public i() {
            super("HMACSHA512/224", 224, new C2378j());
        }
    }

    public static class j extends C3664d {
        public j() {
            super("HMACSHA512/256", 256, new C2378j());
        }
    }

    public static class k extends Uj.f {

        public static final String f26223a = v.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26223a;
            sb2.append(str);
            sb2.append("$Digest");
            aVar.d("MessageDigest.SHA-512", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest.SHA512", "SHA-512");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) Sh.d.f23341e), "SHA-512");
            aVar.d("MessageDigest.SHA-512/224", str + "$DigestT224");
            aVar.d("Alg.Alias.MessageDigest.SHA512/224", "SHA-512/224");
            aVar.d("Alg.Alias.MessageDigest.SHA512224", "SHA-512/224");
            aVar.d("Alg.Alias.MessageDigest.SHA-512(224)", "SHA-512/224");
            aVar.d("Alg.Alias.MessageDigest.SHA512(224)", "SHA-512/224");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) Sh.d.f23345g), "SHA-512/224");
            aVar.d("MessageDigest.SHA-512/256", str + "$DigestT256");
            aVar.d("Alg.Alias.MessageDigest.SHA512/256", C14464h.f98323d);
            aVar.d("Alg.Alias.MessageDigest.SHA512256", C14464h.f98323d);
            aVar.d("Alg.Alias.MessageDigest.SHA-512(256)", C14464h.f98323d);
            aVar.d("Alg.Alias.MessageDigest.SHA512(256)", C14464h.f98323d);
            aVar.d("Alg.Alias.MessageDigest." + ((Object) Sh.d.f23347h), C14464h.f98323d);
            aVar.d("Mac.OLDHMACSHA512", str + "$OldSHA512");
            aVar.d("Mac.PBEWITHHMACSHA512", str + "$HashMac");
            b(aVar, "SHA512", str + "$HashMac", str + "$KeyGenerator");
            c(aVar, "SHA512", Xh.t.f29003B1);
            b(aVar, "SHA512/224", str + "$HashMacT224", str + "$KeyGeneratorT224");
            b(aVar, "SHA512/256", str + "$HashMacT256", str + "$KeyGeneratorT256");
        }
    }

    public static class l extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public l() {
            super(new Si.p(new O()));
        }
    }
}

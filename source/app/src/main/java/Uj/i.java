package Uj;

import Bi.C2378j;
import Ii.C2663v;
import ak.C3664d;

public class i {

    public static class a extends f {
        public a() {
            super(224);
        }
    }

    public static class b extends f {
        public b() {
            super(256);
        }
    }

    public static class c extends f {
        public c() {
            super(288);
        }
    }

    public static class d extends f {
        public d() {
            super(384);
        }
    }

    public static class e extends f {
        public e() {
            super(512);
        }
    }

    public static class f extends Uj.a implements Cloneable {
        public f(int i10) {
            super(new C2663v(i10));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            Uj.a aVar = (Uj.a) super.clone();
            aVar.f26202b = new C2663v((C2663v) this.f26202b);
            return aVar;
        }
    }

    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public g() {
            super(new Si.k(new C2663v(224)));
        }
    }

    public static class h extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public h() {
            super(new Si.k(new C2663v(256)));
        }
    }

    public static class C0723i extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public C0723i() {
            super(new Si.k(new C2663v(288)));
        }
    }

    public static class j extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public j() {
            super(new Si.k(new C2663v(384)));
        }
    }

    public static class k extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public k() {
            super(new Si.k(new C2663v(512)));
        }
    }

    public static class l extends C3664d {
        public l() {
            super("HMACKECCAK224", 224, new C2378j());
        }
    }

    public static class m extends C3664d {
        public m() {
            super("HMACKECCAK256", 256, new C2378j());
        }
    }

    public static class n extends C3664d {
        public n() {
            super("HMACKECCAK288", 288, new C2378j());
        }
    }

    public static class o extends C3664d {
        public o() {
            super("HMACKECCAK384", 384, new C2378j());
        }
    }

    public static class p extends C3664d {
        public p() {
            super("HMACKECCAK512", 512, new C2378j());
        }
    }

    public static class q extends Uj.f {

        public static final String f26210a = i.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26210a;
            sb2.append(str);
            sb2.append("$Digest224");
            aVar.d("MessageDigest.KECCAK-224", sb2.toString());
            aVar.d("MessageDigest.KECCAK-288", str + "$Digest288");
            aVar.d("MessageDigest.KECCAK-256", str + "$Digest256");
            aVar.d("MessageDigest.KECCAK-384", str + "$Digest384");
            aVar.d("MessageDigest.KECCAK-512", str + "$Digest512");
            b(aVar, "KECCAK224", str + "$HashMac224", str + "$KeyGenerator224");
            b(aVar, "KECCAK256", str + "$HashMac256", str + "$KeyGenerator256");
            b(aVar, "KECCAK288", str + "$HashMac288", str + "$KeyGenerator288");
            b(aVar, "KECCAK384", str + "$HashMac384", str + "$KeyGenerator384");
            b(aVar, "KECCAK512", str + "$HashMac512", str + "$KeyGenerator512");
        }
    }
}

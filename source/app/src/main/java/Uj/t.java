package Uj;

import Bi.C2378j;
import Ii.C;
import Ii.N;
import Ii.Q;
import Ii.Y;
import ak.C3664d;

public class t {

    public static class A extends Uj.f {

        public static final String f26221a = t.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26221a;
            sb2.append(str);
            sb2.append("$Digest224");
            aVar.d("MessageDigest.SHA3-224", sb2.toString());
            aVar.d("MessageDigest.SHA3-256", str + "$Digest256");
            aVar.d("MessageDigest.SHA3-384", str + "$Digest384");
            aVar.d("MessageDigest.SHA3-512", str + "$Digest512");
            aVar.g("MessageDigest", Sh.d.f23349i, str + "$Digest224");
            aVar.g("MessageDigest", Sh.d.f23351j, str + "$Digest256");
            aVar.g("MessageDigest", Sh.d.f23353k, str + "$Digest384");
            aVar.g("MessageDigest", Sh.d.f23355l, str + "$Digest512");
            aVar.d("MessageDigest.SHAKE256-512", str + "$DigestShake256_512");
            aVar.d("MessageDigest.SHAKE128-256", str + "$DigestShake128_256");
            aVar.g("MessageDigest", Sh.d.f23359n, str + "$DigestShake256_512");
            aVar.g("MessageDigest", Sh.d.f23357m, str + "$DigestShake128_256");
            aVar.d("Alg.Alias.MessageDigest.SHAKE256", "SHAKE256-512");
            aVar.d("Alg.Alias.MessageDigest.SHAKE128", "SHAKE128-256");
            b(aVar, "SHA3-224", str + "$HashMac224", str + "$KeyGenerator224");
            c(aVar, "SHA3-224", Sh.d.f23361o);
            b(aVar, "SHA3-256", str + "$HashMac256", str + "$KeyGenerator256");
            c(aVar, "SHA3-256", Sh.d.f23363p);
            b(aVar, "SHA3-384", str + "$HashMac384", str + "$KeyGenerator384");
            c(aVar, "SHA3-384", Sh.d.f23365q);
            b(aVar, "SHA3-512", str + "$HashMac512", str + "$KeyGenerator512");
            c(aVar, "SHA3-512", Sh.d.f23366r);
            d(aVar, "128", str + "$KMac128", str + "$KeyGenerator256");
            d(aVar, "256", str + "$KMac256", str + "$KeyGenerator512");
            aVar.d("MessageDigest.TUPLEHASH256-512", str + "$DigestTupleHash256_512");
            aVar.d("MessageDigest.TUPLEHASH128-256", str + "$DigestTupleHash128_256");
            aVar.d("Alg.Alias.MessageDigest.TUPLEHASH256", "TUPLEHASH256-512");
            aVar.d("Alg.Alias.MessageDigest.TUPLEHASH128", "TUPLEHASH128-256");
            aVar.d("MessageDigest.PARALLELHASH256-512", str + "$DigestParallelHash256_512");
            aVar.d("MessageDigest.PARALLELHASH128-256", str + "$DigestParallelHash128_256");
            aVar.d("Alg.Alias.MessageDigest.PARALLELHASH256", "PARALLELHASH256-512");
            aVar.d("Alg.Alias.MessageDigest.PARALLELHASH128", "PARALLELHASH128-256");
        }
    }

    public static class C3126a extends h {
        public C3126a() {
            super(224);
        }
    }

    public static class b extends h {
        public b() {
            super(256);
        }
    }

    public static class c extends h {
        public c() {
            super(384);
        }
    }

    public static class d extends h {
        public d() {
            super(512);
        }
    }

    public static class e extends g {
        public e() {
            super(128, 256);
        }
    }

    public static class f extends g {
        public f() {
            super(256, 512);
        }
    }

    public static class g extends a implements Cloneable {
        public g(int i10, int i11) {
            super(new C(i10, null, 128, i11));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new C((C) this.f26202b);
            return aVar;
        }
    }

    public static class h extends a implements Cloneable {
        public h(int i10) {
            super(new N(i10));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new N((N) this.f26202b);
            return aVar;
        }
    }

    public static class i extends a implements Cloneable {
        public i(int i10, int i11) {
            super(new Q(i10));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new Q((Q) this.f26202b);
            return aVar;
        }
    }

    public static class j extends i {
        public j() {
            super(128, 256);
        }
    }

    public static class k extends i {
        public k() {
            super(256, 512);
        }
    }

    public static class l extends n {
        public l() {
            super(128, 256);
        }
    }

    public static class m extends n {
        public m() {
            super(256, 512);
        }
    }

    public static class n extends a implements Cloneable {
        public n(int i10, int i11) {
            super(new Y(i10, null, i11));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new Y((Y) this.f26202b);
            return aVar;
        }
    }

    public static class o extends s {
        public o() {
            super(224);
        }
    }

    public static class p extends s {
        public p() {
            super(256);
        }
    }

    public static class q extends s {
        public q() {
            super(384);
        }
    }

    public static class r extends s {
        public r() {
            super(512);
        }
    }

    public static class s extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public s(int i10) {
            super(new Si.k(new N(i10)));
        }
    }

    public static class C0724t extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public C0724t() {
            super(new Si.n(128, new byte[0]));
        }
    }

    public static class u extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public u() {
            super(new Si.n(256, new byte[0]));
        }
    }

    public static class v extends z {
        public v() {
            super(224);
        }
    }

    public static class w extends z {
        public w() {
            super(256);
        }
    }

    public static class x extends z {
        public x() {
            super(384);
        }
    }

    public static class y extends z {
        public y() {
            super(512);
        }
    }

    public static class z extends C3664d {
        public z(int i10) {
            super("HMACSHA3-" + i10, i10, new C2378j());
        }
    }
}

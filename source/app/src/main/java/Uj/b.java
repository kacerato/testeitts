package Uj;

import Ii.C2645c;
import yj.InterfaceC16198c;

public class b {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new C2645c(160));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new C2645c((C2645c) this.f26202b);
            return aVar;
        }
    }

    public static class C0719b extends Uj.a implements Cloneable {
        public C0719b() {
            super(new C2645c(256));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            C0719b c0719b = (C0719b) super.clone();
            c0719b.f26202b = new C2645c((C2645c) this.f26202b);
            return c0719b;
        }
    }

    public static class c extends Uj.a implements Cloneable {
        public c() {
            super(new C2645c(384));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            c cVar = (c) super.clone();
            cVar.f26202b = new C2645c((C2645c) this.f26202b);
            return cVar;
        }
    }

    public static class d extends Uj.a implements Cloneable {
        public d() {
            super(new C2645c(512));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            d dVar = (d) super.clone();
            dVar.f26202b = new C2645c((C2645c) this.f26202b);
            return dVar;
        }
    }

    public static class e extends f {

        public static final String f26204a = b.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26204a;
            sb2.append(str);
            sb2.append("$Blake2b512");
            aVar.d("MessageDigest.BLAKE2B-512", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC16198c.f130346H), "BLAKE2B-512");
            aVar.d("MessageDigest.BLAKE2B-384", str + "$Blake2b384");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC16198c.f130345G), "BLAKE2B-384");
            aVar.d("MessageDigest.BLAKE2B-256", str + "$Blake2b256");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC16198c.f130344F), "BLAKE2B-256");
            aVar.d("MessageDigest.BLAKE2B-160", str + "$Blake2b160");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC16198c.f130343E), "BLAKE2B-160");
        }
    }
}

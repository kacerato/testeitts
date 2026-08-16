package Uj;

import Ii.C2647e;
import yj.InterfaceC16198c;

public class c {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new C2647e(128));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new C2647e((C2647e) this.f26202b);
            return aVar;
        }
    }

    public static class b extends Uj.a implements Cloneable {
        public b() {
            super(new C2647e(160));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            b bVar = (b) super.clone();
            bVar.f26202b = new C2647e((C2647e) this.f26202b);
            return bVar;
        }
    }

    public static class C0720c extends Uj.a implements Cloneable {
        public C0720c() {
            super(new C2647e(224));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            C0720c c0720c = (C0720c) super.clone();
            c0720c.f26202b = new C2647e((C2647e) this.f26202b);
            return c0720c;
        }
    }

    public static class d extends Uj.a implements Cloneable {
        public d() {
            super(new C2647e(256));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            d dVar = (d) super.clone();
            dVar.f26202b = new C2647e((C2647e) this.f26202b);
            return dVar;
        }
    }

    public static class e extends f {

        public static final String f26205a = c.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26205a;
            sb2.append(str);
            sb2.append("$Blake2s256");
            aVar.d("MessageDigest.BLAKE2S-256", sb2.toString());
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC16198c.f130350L), "BLAKE2S-256");
            aVar.d("MessageDigest.BLAKE2S-224", str + "$Blake2s224");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC16198c.f130349K), "BLAKE2S-224");
            aVar.d("MessageDigest.BLAKE2S-160", str + "$Blake2s160");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC16198c.f130348J), "BLAKE2S-160");
            aVar.d("MessageDigest.BLAKE2S-128", str + "$Blake2s128");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC16198c.f130347I), "BLAKE2S-128");
        }
    }
}

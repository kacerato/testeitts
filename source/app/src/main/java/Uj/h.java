package Uj;

import Ii.C2659q;

public class h {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new C2659q());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new C2659q((C2659q) this.f26202b);
            return aVar;
        }
    }

    public static class b extends Uj.a implements Cloneable {
        public b() {
            super(new Ii.r());
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            b bVar = (b) super.clone();
            bVar.f26202b = new Ii.r((Ii.r) this.f26202b);
            return bVar;
        }
    }

    public static class c extends f {

        public static final String f26209a = h.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26209a;
            sb2.append(str);
            sb2.append("$Digest256");
            aVar.d("MessageDigest.HARAKA-256", sb2.toString());
            aVar.d("MessageDigest.HARAKA-512", str + "$Digest512");
        }
    }
}

package Uj;

import Ii.C2650h;
import yj.InterfaceC16198c;

public class d {

    public static class a extends Uj.a implements Cloneable {
        public a() {
            super(new C2650h(256));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new C2650h((C2650h) this.f26202b);
            return aVar;
        }
    }

    public static class b extends f {

        public static final String f26206a = d.class.getName();

        @Override
        public void a(Tj.a aVar) {
            aVar.d("MessageDigest.BLAKE3-256", f26206a + "$Blake3_256");
            aVar.d("Alg.Alias.MessageDigest." + ((Object) InterfaceC16198c.f130352N), "BLAKE3-256");
        }
    }
}

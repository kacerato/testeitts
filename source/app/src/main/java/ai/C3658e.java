package ai;

import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class C3658e {

    public C14518h f32238a = new C14518h();

    public void a(C14549x c14549x) {
        this.f32238a.a(new G0(c14549x));
    }

    public void b(C14549x c14549x, int i10) {
        C14518h c14518h = new C14518h(2);
        c14518h.a(c14549x);
        c14518h.a(new C14539s(i10));
        this.f32238a.a(new G0(c14518h));
    }

    public void c(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        C14518h c14518h = new C14518h(2);
        c14518h.a(c14549x);
        c14518h.a(interfaceC14516g);
        this.f32238a.a(new G0(c14518h));
    }

    public C14518h d() {
        return this.f32238a;
    }
}

package yd;

import com.mokiat.data.front.error.WFCorruptException;
import com.mokiat.data.front.error.WFException;
import java.io.BufferedReader;
import java.io.IOException;

public class C16175g {

    public static final String f130187d = "newmtl";

    public static final String f130188e = "Ka";

    public static final String f130189f = "Kd";

    public static final String f130190g = "Ks";

    public static final String f130191h = "Tf";

    public static final String f130192i = "d";

    public static final String f130193j = "Ns";

    public static final String f130194k = "map_Ka";

    public static final String f130195l = "map_Kd";

    public static final String f130196m = "map_Ks";

    public static final String f130197n = "map_Ns";

    public static final String f130198o = "map_d";

    public final InterfaceC16170b f130199a;

    public final C16181m f130200b = new C16181m();

    public final C16174f f130201c = new C16174f();

    public C16175g(InterfaceC16170b interfaceC16170b) {
        this.f130199a = interfaceC16170b;
    }

    public final String a(C16181m c16181m) {
        return c16181m.f(c16181m.d());
    }

    public final void b(C16181m c16181m) throws WFException {
        this.f130201c.e(c16181m);
        if (this.f130201c.d()) {
            this.f130199a.i(this.f130201c.c(), this.f130201c.b(), this.f130201c.a());
        }
    }

    public final void c(C16181m c16181m) throws WFException {
        if (c16181m.e() == 0) {
            throw new WFCorruptException("Missing ambient texture filename.");
        }
        this.f130199a.k(a(c16181m));
    }

    public final void d(C16181m c16181m) throws WFException {
        this.f130199a.a(c16181m.a());
    }

    public final void e(C16181m c16181m) throws WFException {
        this.f130201c.e(c16181m);
        if (this.f130201c.d()) {
            this.f130199a.d(this.f130201c.c(), this.f130201c.b(), this.f130201c.a());
        }
    }

    public final void f(C16181m c16181m) throws WFException {
        if (c16181m.e() == 0) {
            throw new WFCorruptException("Missing diffuse texture filename.");
        }
        this.f130199a.m(a(c16181m));
    }

    public final void g(C16181m c16181m) throws WFException {
        if (c16181m.e() == 0) {
            throw new WFCorruptException("Missing dissolve factor.");
        }
        this.f130199a.g(c16181m.b(c16181m.d()));
    }

    public final void h(C16181m c16181m) throws WFException {
        if (c16181m.e() == 0) {
            throw new WFCorruptException("Missing dissolve texture filename.");
        }
        this.f130199a.h(a(c16181m));
    }

    public final void i(C16181m c16181m) throws WFException {
        if (c16181m.e() == 0) {
            throw new WFCorruptException("Missing material name.");
        }
        this.f130199a.b(c16181m.f(0));
    }

    public final void j(C16181m c16181m) throws WFException {
        this.f130201c.e(c16181m);
        if (this.f130201c.d()) {
            this.f130199a.l(this.f130201c.c(), this.f130201c.b(), this.f130201c.a());
        }
    }

    public final void k(C16181m c16181m) throws WFException {
        if (c16181m.e() == 0) {
            throw new WFCorruptException("Missing specular exponent amount.");
        }
        this.f130199a.j(c16181m.b(c16181m.d()));
    }

    public final void l(C16181m c16181m) throws WFException {
        if (c16181m.e() == 0) {
            throw new WFCorruptException("Missing specular exponent texture filename.");
        }
        this.f130199a.f(a(c16181m));
    }

    public final void m(C16181m c16181m) throws WFException {
        if (c16181m.e() == 0) {
            throw new WFCorruptException("Missing specular texture filename.");
        }
        this.f130199a.c(a(c16181m));
    }

    public final void n(C16181m c16181m) throws WFException {
        this.f130201c.e(c16181m);
        if (this.f130201c.d()) {
            this.f130199a.e(this.f130201c.c(), this.f130201c.b(), this.f130201c.a());
        }
    }

    public void o(BufferedReader bufferedReader) throws WFException, IOException {
        while (this.f130200b.j(bufferedReader)) {
            if (!this.f130200b.i()) {
                if (this.f130200b.h()) {
                    d(this.f130200b);
                } else if (this.f130200b.g(f130187d)) {
                    i(this.f130200b);
                } else if (this.f130200b.g(f130188e)) {
                    b(this.f130200b);
                } else if (this.f130200b.g(f130189f)) {
                    e(this.f130200b);
                } else if (this.f130200b.g(f130190g)) {
                    j(this.f130200b);
                } else if (this.f130200b.g(f130191h)) {
                    n(this.f130200b);
                } else if (this.f130200b.g("d")) {
                    g(this.f130200b);
                } else if (this.f130200b.g(f130193j)) {
                    k(this.f130200b);
                } else if (this.f130200b.g(f130194k)) {
                    c(this.f130200b);
                } else if (this.f130200b.g(f130195l)) {
                    f(this.f130200b);
                } else if (this.f130200b.g(f130196m)) {
                    m(this.f130200b);
                } else if (this.f130200b.g(f130197n)) {
                    l(this.f130200b);
                } else if (this.f130200b.g(f130198o)) {
                    h(this.f130200b);
                }
            }
        }
    }
}

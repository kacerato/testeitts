package yd;

import com.mokiat.data.front.error.WFCorruptException;
import com.mokiat.data.front.error.WFException;
import java.io.BufferedReader;
import java.io.IOException;

public class C16179k {

    public static final String f130218d = "v";

    public static final String f130219e = "vt";

    public static final String f130220f = "vn";

    public static final String f130221g = "o";

    public static final String f130222h = "f";

    public static final String f130223i = "usemtl";

    public static final String f130224j = "mtllib";

    public final InterfaceC16172d f130225a;

    public final C16181m f130226b = new C16181m();

    public final C16178j f130227c = new C16178j();

    public C16179k(InterfaceC16172d interfaceC16172d) {
        this.f130225a = interfaceC16172d;
    }

    public final void a(C16181m c16181m) throws WFException {
        this.f130225a.a(c16181m.a());
    }

    public final void b(C16181m c16181m) throws WFException {
        this.f130225a.e();
        for (int i10 = 0; i10 < c16181m.e(); i10++) {
            this.f130227c.d(c16181m.f(i10));
            this.f130225a.d(this.f130227c.c(), this.f130227c.b(), this.f130227c.a());
        }
        this.f130225a.h();
    }

    public final void c(C16181m c16181m) throws WFException {
        for (int i10 = 0; i10 < c16181m.e(); i10++) {
            this.f130225a.c(c16181m.f(i10));
        }
    }

    public final void d(C16181m c16181m) throws WFException {
        if (c16181m.e() <= 0) {
            this.f130225a.f(null);
        } else {
            this.f130225a.f(c16181m.f(0).trim());
        }
    }

    public final void e(C16181m c16181m) throws WFException {
        if (c16181m.e() < 3) {
            throw new WFCorruptException("Insufficient normal data.");
        }
        this.f130225a.g(c16181m.b(0), c16181m.b(1), c16181m.b(2));
    }

    public final void f(C16181m c16181m) throws WFException {
        if (c16181m.e() == 0) {
            throw new WFCorruptException("Missing object name.");
        }
        this.f130225a.i(c16181m.f(0).trim());
    }

    public final void g(C16181m c16181m) throws WFException {
        if (c16181m.e() == 0) {
            throw new WFCorruptException("Insufficient texture coordinate data.");
        }
        this.f130225a.b(c16181m.b(0), c16181m.b(1), c16181m.b(2));
    }

    public final void h(C16181m c16181m) throws WFException {
        if (c16181m.e() < 3) {
            throw new WFCorruptException("Insufficient vertex data.");
        }
        this.f130225a.j(c16181m.b(0), c16181m.b(1), c16181m.b(2), c16181m.b(3));
    }

    public void i(BufferedReader bufferedReader) throws WFException, IOException {
        while (this.f130226b.j(bufferedReader)) {
            if (!this.f130226b.i()) {
                if (this.f130226b.h()) {
                    a(this.f130226b);
                } else if (this.f130226b.g("v")) {
                    h(this.f130226b);
                } else if (this.f130226b.g(f130219e)) {
                    g(this.f130226b);
                } else if (this.f130226b.g(f130220f)) {
                    e(this.f130226b);
                } else if (this.f130226b.g(f130221g)) {
                    f(this.f130226b);
                } else if (this.f130226b.g("f")) {
                    b(this.f130226b);
                } else if (this.f130226b.g(f130224j)) {
                    c(this.f130226b);
                } else if (this.f130226b.g(f130223i)) {
                    d(this.f130226b);
                }
            }
        }
    }
}

package yd;

import com.mokiat.data.front.error.WFCorruptException;
import wd.InterfaceC15990c;

public class C16174f {

    public static final String f130182d = "spectral";

    public static final String f130183e = "xyz";

    public InterfaceC15990c f130184a;

    public InterfaceC15990c f130185b;

    public InterfaceC15990c f130186c;

    public InterfaceC15990c a() {
        return this.f130186c;
    }

    public InterfaceC15990c b() {
        return this.f130185b;
    }

    public InterfaceC15990c c() {
        return this.f130184a;
    }

    public boolean d() {
        return (this.f130184a == null || this.f130185b == null || this.f130186c == null) ? false : true;
    }

    public void e(C16181m c16181m) throws WFCorruptException {
        if (c16181m.e() == 0) {
            throw new WFCorruptException("Insufficient color data.");
        }
        if (f130182d.equals(c16181m.f(0)) || f130183e.equals(c16181m.f(0))) {
            return;
        }
        this.f130184a = c16181m.b(0);
        if (c16181m.e() < 3) {
            this.f130185b = c16181m.b(0);
            this.f130186c = c16181m.b(0);
        } else {
            this.f130185b = c16181m.b(1);
            this.f130186c = c16181m.b(2);
        }
    }
}

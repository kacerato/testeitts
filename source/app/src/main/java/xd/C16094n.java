package xd;

import com.mokiat.data.front.error.WFCorruptException;
import com.mokiat.data.front.error.WFException;
import java.io.BufferedReader;
import java.io.IOException;
import wd.C15993f;
import wd.InterfaceC15990c;
import wd.InterfaceC15991d;
import xd.C16096p;
import yd.C16177i;
import yd.C16180l;
import yd.InterfaceC16172d;

public class C16094n implements InterfaceC16172d {

    public C16091k f128124a;

    public C16093m f128125b;

    public C16090j f128126c;

    public C16089i f128127d;

    @Override
    public void a(String str) throws WFException {
    }

    @Override
    public void b(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        C16096p c16096p = new C16096p(interfaceC15990c.get());
        if (interfaceC15990c2 != null) {
            c16096p.f128130b = interfaceC15990c2.get();
            c16096p.f128132d = C16096p.a.TYPE_2D;
        }
        if (interfaceC15990c3 != null) {
            c16096p.f128131c = interfaceC15990c3.get();
            c16096p.f128132d = C16096p.a.TYPE_3D;
        }
        this.f128124a.g().add(c16096p);
    }

    @Override
    public void c(String str) throws WFException {
        this.f128124a.a().add(str);
    }

    @Override
    public void d(InterfaceC15991d interfaceC15991d, InterfaceC15991d interfaceC15991d2, InterfaceC15991d interfaceC15991d3) throws WFException {
        C16088h c16088h = new C16088h();
        c16088h.f128108a = o(interfaceC15991d);
        c16088h.f128110c = n(interfaceC15991d2);
        c16088h.f128109b = m(interfaceC15991d3);
        this.f128127d.a().add(c16088h);
    }

    @Override
    public void e() throws WFException {
        k();
        this.f128127d = new C16089i();
        this.f128126c.a().add(this.f128127d);
    }

    @Override
    public void f(String str) throws WFException {
        l();
        C16090j c16090j = new C16090j();
        this.f128126c = c16090j;
        c16090j.c(str);
        this.f128125b.a().add(this.f128126c);
    }

    @Override
    public void g(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        this.f128124a.c().add(new C16092l(interfaceC15990c.get(), interfaceC15990c2.get(), interfaceC15990c3.get()));
    }

    @Override
    public void h() throws WFException {
        if (this.f128127d.a().size() < 3) {
            throw new WFCorruptException("Face does not have at least three vertices.");
        }
    }

    @Override
    public void i(String str) throws WFException {
        this.f128126c = null;
        this.f128125b = new C16093m(str);
        this.f128124a.e().add(this.f128125b);
    }

    @Override
    public void j(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3, InterfaceC15990c interfaceC15990c4) throws WFException {
        this.f128124a.i().add(new C16097q(interfaceC15990c.get(), interfaceC15990c2.get(), interfaceC15990c3.get()));
    }

    public final void k() {
        if (this.f128126c != null) {
            return;
        }
        l();
        this.f128126c = new C16090j();
        this.f128125b.a().add(this.f128126c);
    }

    public final void l() {
        if (this.f128125b != null) {
            return;
        }
        this.f128125b = new C16093m("Default");
        this.f128124a.e().add(this.f128125b);
    }

    public final int m(InterfaceC15991d interfaceC15991d) {
        if (interfaceC15991d == null) {
            return -1;
        }
        return interfaceC15991d.get() > 0 ? interfaceC15991d.get() - 1 : this.f128124a.c().size() + interfaceC15991d.get();
    }

    public final int n(InterfaceC15991d interfaceC15991d) {
        if (interfaceC15991d == null) {
            return -1;
        }
        return interfaceC15991d.get() > 0 ? interfaceC15991d.get() - 1 : this.f128124a.g().size() + interfaceC15991d.get();
    }

    public final int o(InterfaceC15991d interfaceC15991d) {
        if (interfaceC15991d == null) {
            return -1;
        }
        return interfaceC15991d.get() > 0 ? interfaceC15991d.get() - 1 : this.f128124a.i().size() + interfaceC15991d.get();
    }

    public C16091k p(BufferedReader bufferedReader, C15993f c15993f) throws WFException, IOException {
        this.f128127d = null;
        this.f128126c = null;
        this.f128125b = null;
        this.f128124a = new C16091k();
        C16180l c16180l = new C16180l();
        if (c15993f == null) {
            c16180l.a(bufferedReader, this);
        } else {
            c16180l.a(bufferedReader, new C16177i(this, c15993f));
        }
        return this.f128124a;
    }
}

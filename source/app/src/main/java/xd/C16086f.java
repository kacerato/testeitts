package xd;

import com.mokiat.data.front.error.WFCorruptException;
import com.mokiat.data.front.error.WFException;
import java.io.BufferedReader;
import java.io.IOException;
import wd.C15992e;
import wd.InterfaceC15990c;
import yd.C16173e;
import yd.C16176h;
import yd.InterfaceC16170b;

public class C16086f implements InterfaceC16170b {

    public C16084d f128104a;

    public C16085e f128105b;

    @Override
    public void a(String str) throws WFException {
    }

    @Override
    public void b(String str) throws WFException {
        this.f128105b = new C16085e(str);
        this.f128104a.b().add(this.f128105b);
    }

    @Override
    public void c(String str) throws WFException {
        n();
        this.f128105b.t(str);
    }

    @Override
    public void d(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        n();
        this.f128105b.c().f128088a = interfaceC15990c.get();
        this.f128105b.c().f128089b = interfaceC15990c2.get();
        this.f128105b.c().f128090c = interfaceC15990c3.get();
    }

    @Override
    public void e(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        n();
        this.f128105b.l().f128088a = interfaceC15990c.get();
        this.f128105b.l().f128089b = interfaceC15990c2.get();
        this.f128105b.l().f128090c = interfaceC15990c3.get();
    }

    @Override
    public void f(String str) throws WFException {
        n();
        this.f128105b.s(str);
    }

    @Override
    public void g(InterfaceC15990c interfaceC15990c) throws WFException {
        n();
        this.f128105b.o(interfaceC15990c.get());
    }

    @Override
    public void h(String str) throws WFException {
        n();
        this.f128105b.p(str);
    }

    @Override
    public void i(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        n();
        this.f128105b.a().f128088a = interfaceC15990c.get();
        this.f128105b.a().f128089b = interfaceC15990c2.get();
        this.f128105b.a().f128090c = interfaceC15990c3.get();
    }

    @Override
    public void j(InterfaceC15990c interfaceC15990c) throws WFException {
        n();
        this.f128105b.r(interfaceC15990c.get());
    }

    @Override
    public void k(String str) throws WFException {
        n();
        this.f128105b.m(str);
    }

    @Override
    public void l(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        n();
        this.f128105b.h().f128088a = interfaceC15990c.get();
        this.f128105b.h().f128089b = interfaceC15990c2.get();
        this.f128105b.h().f128090c = interfaceC15990c3.get();
    }

    @Override
    public void m(String str) throws WFException {
        n();
        this.f128105b.n(str);
    }

    public final void n() throws WFCorruptException {
        if (this.f128105b == null) {
            throw new WFCorruptException("Material name has not been defined.");
        }
    }

    public C16084d o(BufferedReader bufferedReader, C15992e c15992e) throws WFException, IOException {
        this.f128105b = null;
        this.f128104a = new C16084d();
        C16176h c16176h = new C16176h();
        if (c15992e == null) {
            c16176h.a(bufferedReader, this);
        } else {
            c16176h.a(bufferedReader, new C16173e(this, c15992e));
        }
        return this.f128104a;
    }
}

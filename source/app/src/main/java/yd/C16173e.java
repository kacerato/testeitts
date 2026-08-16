package yd;

import com.mokiat.data.front.error.WFException;
import com.mokiat.data.front.error.WFSizeException;
import wd.C15992e;
import wd.InterfaceC15990c;

public class C16173e implements InterfaceC16170b {

    public final InterfaceC16170b f130178a;

    public final C15992e f130179b;

    public int f130180c = 0;

    public int f130181d = 0;

    public C16173e(InterfaceC16170b interfaceC16170b, C15992e c15992e) {
        this.f130178a = interfaceC16170b;
        this.f130179b = c15992e;
    }

    @Override
    public void a(String str) throws WFException {
        int i10 = this.f130180c + 1;
        this.f130180c = i10;
        if (i10 > this.f130179b.f127443a) {
            throw new WFSizeException("Too many comments.");
        }
        this.f130178a.a(str);
    }

    @Override
    public void b(String str) throws WFException {
        int i10 = this.f130181d + 1;
        this.f130181d = i10;
        if (i10 > this.f130179b.f127444b) {
            throw new WFSizeException("Too many materials.");
        }
        this.f130178a.b(str);
    }

    @Override
    public void c(String str) throws WFException {
        this.f130178a.c(str);
    }

    @Override
    public void d(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        this.f130178a.d(interfaceC15990c, interfaceC15990c2, interfaceC15990c3);
    }

    @Override
    public void e(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        this.f130178a.e(interfaceC15990c, interfaceC15990c2, interfaceC15990c3);
    }

    @Override
    public void f(String str) throws WFException {
        this.f130178a.f(str);
    }

    @Override
    public void g(InterfaceC15990c interfaceC15990c) throws WFException {
        this.f130178a.g(interfaceC15990c);
    }

    @Override
    public void h(String str) throws WFException {
        this.f130178a.h(str);
    }

    @Override
    public void i(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        this.f130178a.i(interfaceC15990c, interfaceC15990c2, interfaceC15990c3);
    }

    @Override
    public void j(InterfaceC15990c interfaceC15990c) throws WFException {
        this.f130178a.j(interfaceC15990c);
    }

    @Override
    public void k(String str) throws WFException {
        this.f130178a.k(str);
    }

    @Override
    public void l(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        this.f130178a.l(interfaceC15990c, interfaceC15990c2, interfaceC15990c3);
    }

    @Override
    public void m(String str) throws WFException {
        this.f130178a.m(str);
    }
}

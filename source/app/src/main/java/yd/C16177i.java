package yd;

import com.mokiat.data.front.error.WFException;
import com.mokiat.data.front.error.WFSizeException;
import wd.C15993f;
import wd.InterfaceC15990c;
import wd.InterfaceC15991d;

public class C16177i implements InterfaceC16172d {

    public final InterfaceC16172d f130202a;

    public final C15993f f130203b;

    public int f130204c = 0;

    public int f130205d = 0;

    public int f130206e = 0;

    public int f130207f = 0;

    public int f130208g = 0;

    public int f130209h = 0;

    public int f130210i = 0;

    public int f130211j = 0;

    public int f130212k = 0;

    public C16177i(InterfaceC16172d interfaceC16172d, C15993f c15993f) {
        this.f130202a = interfaceC16172d;
        this.f130203b = c15993f;
    }

    @Override
    public void a(String str) throws WFException {
        int i10 = this.f130204c + 1;
        this.f130204c = i10;
        if (i10 > this.f130203b.f127446a) {
            throw new WFSizeException("Too many comments.");
        }
        this.f130202a.a(str);
    }

    @Override
    public void b(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        int i10 = this.f130206e + 1;
        this.f130206e = i10;
        if (i10 > this.f130203b.f127448c) {
            throw new WFSizeException("Too many texture coordinates.");
        }
        this.f130202a.b(interfaceC15990c, interfaceC15990c2, interfaceC15990c3);
    }

    @Override
    public void c(String str) throws WFException {
        int i10 = this.f130211j + 1;
        this.f130211j = i10;
        if (i10 > this.f130203b.f127453h) {
            throw new WFSizeException("Too many material libraries.");
        }
        this.f130202a.c(str);
    }

    @Override
    public void d(InterfaceC15991d interfaceC15991d, InterfaceC15991d interfaceC15991d2, InterfaceC15991d interfaceC15991d3) throws WFException {
        int i10 = this.f130210i + 1;
        this.f130210i = i10;
        if (i10 > this.f130203b.f127452g) {
            throw new WFSizeException("Too many data references.");
        }
        this.f130202a.d(interfaceC15991d, interfaceC15991d2, interfaceC15991d3);
    }

    @Override
    public void e() throws WFException {
        int i10 = this.f130209h + 1;
        this.f130209h = i10;
        if (i10 > this.f130203b.f127451f) {
            throw new WFSizeException("Too many faces.");
        }
        this.f130202a.e();
    }

    @Override
    public void f(String str) throws WFException {
        int i10 = this.f130212k + 1;
        this.f130212k = i10;
        if (i10 > this.f130203b.f127454i) {
            throw new WFSizeException("Too many material references.");
        }
        this.f130202a.f(str);
    }

    @Override
    public void g(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3) throws WFException {
        int i10 = this.f130207f + 1;
        this.f130207f = i10;
        if (i10 > this.f130203b.f127449d) {
            throw new WFSizeException("Too many normals.");
        }
        this.f130202a.g(interfaceC15990c, interfaceC15990c2, interfaceC15990c3);
    }

    @Override
    public void h() throws WFException {
        this.f130202a.h();
    }

    @Override
    public void i(String str) throws WFException {
        int i10 = this.f130208g + 1;
        this.f130208g = i10;
        if (i10 > this.f130203b.f127450e) {
            throw new WFSizeException("Too many objects.");
        }
        this.f130202a.i(str);
    }

    @Override
    public void j(InterfaceC15990c interfaceC15990c, InterfaceC15990c interfaceC15990c2, InterfaceC15990c interfaceC15990c3, InterfaceC15990c interfaceC15990c4) throws WFException {
        int i10 = this.f130205d + 1;
        this.f130205d = i10;
        if (i10 > this.f130203b.f127447b) {
            throw new WFSizeException("Too many vertices.");
        }
        this.f130202a.j(interfaceC15990c, interfaceC15990c2, interfaceC15990c3, interfaceC15990c4);
    }
}

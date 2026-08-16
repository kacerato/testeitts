package Dj;

import Ek.B;
import Ek.C2491b;
import Ek.C2502m;
import Ek.E;
import Ek.F;
import Ek.G;
import Ek.L;
import Ek.q;
import Ek.v;
import Fk.C2551x;
import Fk.O;
import Fk.q0;
import Fk.w0;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import yk.C16201c;
import yk.C16205g;

public class h {

    public static final C16201c f5244d = Lk.a.f14403M.f();

    public final Ek.n f5245a;

    public q f5246b;

    public C2502m f5247c;

    public h(Ek.n nVar) {
        this.f5245a = nVar;
    }

    public static h d(Ek.n nVar) {
        return new h(nVar);
    }

    public static h e(O o10) {
        return new h(o10);
    }

    public static void j(OutputStream outputStream, byte[] bArr) {
        try {
            outputStream.write(bArr);
            outputStream.flush();
            outputStream.close();
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public g a(Gj.d dVar) {
        L f10 = f();
        j(dVar.getOutputStream(), C16205g.a(f10, f5244d));
        return new g(E.u().b(i.a(dVar.f().u())).e(f10).d(G.A()).c(Gj.a.a(dVar.e(), dVar.getSignature())).a());
    }

    public g b(Gj.d dVar, C2551x c2551x) {
        L f10 = f();
        j(dVar.getOutputStream(), C16205g.a(f10, f5244d));
        return new g(E.u().b(i.a(dVar.f().u())).e(f10).d(G.v(c2551x)).c(Gj.a.a(dVar.e(), dVar.getSignature())).a());
    }

    public g c(Gj.d dVar, List<j> list) {
        L f10 = f();
        j(dVar.getOutputStream(), C16205g.a(f10, f5244d));
        ArrayList arrayList = new ArrayList();
        Iterator<j> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(C2491b.C(it.next().e()));
        }
        return new g(E.u().b(i.a(dVar.f().u())).e(f10).d(G.u(new B(arrayList))).c(Gj.a.a(dVar.e(), dVar.getSignature())).a());
    }

    public final L f() {
        return L.u().c(new F(this.f5246b, this.f5247c)).b(this.f5245a).a();
    }

    public h g(Ek.p pVar) {
        this.f5246b = q.u().m(new w0(3)).l(pVar).j();
        return this;
    }

    public h h(C2502m c2502m) {
        this.f5247c = c2502m;
        return this;
    }

    public h i(byte[] bArr) {
        this.f5246b = q.u().m(new w0(3)).l(Ek.p.C(new v(bArr))).b();
        return this;
    }

    public h(O o10) {
        this(Ek.n.u().k(o10).f(q0.y()).a());
    }
}

package Nm;

import Om.a;
import Vm.d;
import Zm.g;
import an.d;

public class f implements d.c, g.c, d.InterfaceC0863d {

    public class a implements Zm.f {
        public a() {
        }

        @Override
        public Ym.a a(Zm.e eVar) {
            return new Om.b(eVar);
        }
    }

    public class b implements an.c {
        public b() {
        }

        @Override
        public Ym.a a(an.b bVar) {
            return new Om.d(bVar);
        }
    }

    public static Mm.a d() {
        return new f();
    }

    @Override
    public void a(d.b bVar) {
        bVar.e(new b());
    }

    @Override
    public void b(g.b bVar) {
        bVar.j(new a());
    }

    @Override
    public void c(d.b bVar) {
        bVar.g(new a.b());
    }
}

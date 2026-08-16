package Om;

import Um.v;
import an.e;
import java.util.Set;

public class d extends c {

    public final e f20556a;

    public final an.b f20557b;

    public d(an.b bVar) {
        this.f20556a = bVar.b();
        this.f20557b = bVar;
    }

    private void g(v vVar) {
        v e10 = vVar.e();
        while (e10 != null) {
            v g10 = e10.g();
            if ((e10 instanceof Nm.c) && g10 == null) {
                h((Nm.c) e10);
            } else {
                this.f20557b.a(e10);
            }
            e10 = g10;
        }
    }

    @Override
    public Set E() {
        return super.E();
    }

    @Override
    public void a(v vVar) {
        super.a(vVar);
    }

    @Override
    public void b(Nm.a aVar) {
        g(aVar);
        if (aVar.g() != null) {
            this.f20556a.g("\n");
        }
    }

    @Override
    public void c(Nm.b bVar) {
        g(bVar);
    }

    @Override
    public void d(Nm.c cVar) {
        g(cVar);
        this.f20556a.f('|');
        this.f20556a.e();
    }

    @Override
    public void e(Nm.d dVar) {
        g(dVar);
    }

    @Override
    public void f(Nm.e eVar) {
        this.f20556a.d();
        g(eVar);
        this.f20556a.d();
    }

    public final void h(Nm.c cVar) {
        g(cVar);
    }
}

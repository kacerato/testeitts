package Om;

import Nm.e;
import Um.v;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public abstract class c implements Ym.a {
    @Override
    public Set<Class<? extends v>> E() {
        return new HashSet(Arrays.asList(Nm.a.class, Nm.d.class, Nm.b.class, e.class, Nm.c.class));
    }

    @Override
    public void a(v vVar) {
        if (vVar instanceof Nm.a) {
            b((Nm.a) vVar);
            return;
        }
        if (vVar instanceof Nm.d) {
            e((Nm.d) vVar);
            return;
        }
        if (vVar instanceof Nm.b) {
            c((Nm.b) vVar);
        } else if (vVar instanceof e) {
            f((e) vVar);
        } else if (vVar instanceof Nm.c) {
            d((Nm.c) vVar);
        }
    }

    public abstract void b(Nm.a aVar);

    public abstract void c(Nm.b bVar);

    public abstract void d(Nm.c cVar);

    public abstract void e(Nm.d dVar);

    public abstract void f(e eVar);
}

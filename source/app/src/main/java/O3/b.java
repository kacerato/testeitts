package o3;

import T2.C3049g;
import T2.InterfaceC3050h;
import T2.k;
import T2.m;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;

public class b implements m {
    public static Object c(String str, C3049g c3049g, InterfaceC3050h interfaceC3050h) {
        try {
            c.b(str);
            return c3049g.k().a(interfaceC3050h);
        } finally {
            c.a();
        }
    }

    @Override
    public List<C3049g<?>> a(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (final C3049g<?> c3049g : componentRegistrar.getComponents()) {
            final String l10 = c3049g.l();
            if (l10 != null) {
                c3049g = c3049g.E(new k() {
                    @Override
                    public final Object a(InterfaceC3050h interfaceC3050h) {
                        Object c10;
                        c10 = b.c(String.this, c3049g, interfaceC3050h);
                        return c10;
                    }
                });
            }
            arrayList.add(c3049g);
        }
        return arrayList;
    }
}

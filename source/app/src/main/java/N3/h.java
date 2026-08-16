package n3;

import T2.C3049g;
import T2.InterfaceC3050h;
import T2.k;
import T2.v;
import android.content.Context;

public class h {

    public interface a<T> {
        String a(T t10);
    }

    public static C3049g<?> b(String str, String str2) {
        return C3049g.p(f.a(str, str2), f.class);
    }

    public static C3049g<?> c(final String str, final a<Context> aVar) {
        return C3049g.r(f.class).b(v.m(Context.class)).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                f d10;
                d10 = h.d(String.this, aVar, interfaceC3050h);
                return d10;
            }
        }).d();
    }

    public static f d(String str, a aVar, InterfaceC3050h interfaceC3050h) {
        return f.a(str, aVar.a((Context) interfaceC3050h.a(Context.class)));
    }
}

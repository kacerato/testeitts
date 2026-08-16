package mg;

import eg.V0;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1963#2,14:135\n*S KotlinDebug\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n*L\n38#1:135,14\n*E\n"})
public final class D {

    @NotNull
    public static final D f97015a;

    public static final boolean f97016b = false;

    @Lf.g
    @NotNull
    public static final V0 f97017c;

    static {
        D d10 = new D();
        f97015a = d10;
        W.f(E.f97018a, true);
        f97017c = d10.a();
    }

    public final V0 a() {
        Object next;
        V0 f10;
        try {
            List I32 = Xf.K.I3(Xf.x.j(ServiceLoader.load(C.class, C.class.getClassLoader()).iterator()));
            Iterator<E> it = I32.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int a10 = ((C) next).a();
                    do {
                        Object next2 = it.next();
                        int a11 = ((C) next2).a();
                        if (a10 < a11) {
                            next = next2;
                            a10 = a11;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            C c10 = (C) next;
            if (c10 != null && (f10 = E.f(c10, I32)) != null) {
                return f10;
            }
            return E.b(null, null, 3, null);
        } catch (Throwable th2) {
            return E.b(th2, null, 2, null);
        }
    }
}

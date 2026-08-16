package jg;

import android.security.keystore.KeyProperties;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,428:1\n1#2:429\n*E\n"})
public final class W {

    @NotNull
    public static final mg.T f93274a = new mg.T(KeyProperties.DIGEST_NONE);

    @NotNull
    public static final mg.T f93275b = new mg.T("PENDING");

    @NotNull
    public static final <T> E<T> a(T t10) {
        if (t10 == null) {
            t10 = (T) kg.s.f95204a;
        }
        return new V(t10);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> d(@NotNull U<? extends T> u10, @NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return (((i10 < 0 || i10 >= 2) && i10 != -2) || iVar != gg.i.DROP_OLDEST) ? K.e(u10, jVar, i10, iVar) : u10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [T, java.lang.Object] */
    public static final <T> T e(@NotNull E<T> e10, @NotNull Mf.l<? super T, ? extends T> lVar) {
        ?? r02;
        do {
            r02 = (Object) e10.getValue();
        } while (!e10.compareAndSet(r02, lVar.invoke(r02)));
        return r02;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void f(@NotNull E<T> e10, @NotNull Mf.l<? super T, ? extends T> lVar) {
        A0.a aVar;
        do {
            aVar = (Object) e10.getValue();
        } while (!e10.compareAndSet(aVar, lVar.invoke(aVar)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T g(@NotNull E<T> e10, @NotNull Mf.l<? super T, ? extends T> lVar) {
        A0.a aVar;
        T invoke;
        do {
            aVar = (Object) e10.getValue();
            invoke = lVar.invoke(aVar);
        } while (!e10.compareAndSet(aVar, invoke));
        return invoke;
    }
}

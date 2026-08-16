package mg;

import eg.InterfaceC13101N;
import java.util.Collection;
import java.util.ServiceLoader;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nCoroutineExceptionHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandlerImpl.kt\nkotlinx/coroutines/internal/CoroutineExceptionHandlerImplKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"})
public final class C14248i {

    @NotNull
    public static final Collection<InterfaceC13101N> f97073a = Xf.K.I3(Xf.x.j(ServiceLoader.load(InterfaceC13101N.class, InterfaceC13101N.class.getClassLoader()).iterator()));

    public static final void a(@NotNull InterfaceC13101N interfaceC13101N) {
        if (!f97073a.contains(interfaceC13101N)) {
            throw new IllegalStateException("Exception handler was not found via a ServiceLoader");
        }
    }

    @NotNull
    public static final Collection<InterfaceC13101N> b() {
        return f97073a;
    }

    public static final void c(@NotNull Throwable th2) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th2);
    }
}

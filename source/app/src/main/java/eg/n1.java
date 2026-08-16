package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/ThreadLocalEventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n1#2:544\n*E\n"})
public final class n1 {

    @NotNull
    public static final n1 f85746a = new n1();

    @NotNull
    public static final ThreadLocal<AbstractC13136q0> f85747b = mg.c0.b(new mg.T("ThreadLocalEventLoop"));

    @Nullable
    public final AbstractC13136q0 a() {
        return f85747b.get();
    }

    @NotNull
    public final AbstractC13136q0 b() {
        ThreadLocal<AbstractC13136q0> threadLocal = f85747b;
        AbstractC13136q0 abstractC13136q0 = threadLocal.get();
        if (abstractC13136q0 != null) {
            return abstractC13136q0;
        }
        AbstractC13136q0 a10 = C13141t0.a();
        threadLocal.set(a10);
        return a10;
    }

    public final void c() {
        f85747b.set(null);
    }

    public final void d(@NotNull AbstractC13136q0 abstractC13136q0) {
        f85747b.set(abstractC13136q0);
    }
}

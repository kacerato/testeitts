package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,314:1\n1#2:315\n107#3,13:316\n*S KotlinDebug\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n269#1:316,13\n*E\n"})
public final class w1<T> extends mg.O<T> {

    @NotNull
    public final ThreadLocal<nf.Z<yf.j, Object>> f85801f;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public w1(@NotNull yf.j jVar, @NotNull yf.f<? super T> fVar) {
        super(jVar.get(r0) == null ? jVar.plus(r0) : jVar, fVar);
        x1 x1Var = x1.f85803b;
        this.f85801f = new ThreadLocal<>();
        if (fVar.getContext().get(yf.g.f130247J8) instanceof AbstractC13100M) {
            return;
        }
        Object c10 = mg.Z.c(jVar, null);
        mg.Z.a(jVar, c10);
        D1(jVar, c10);
    }

    public final boolean C1() {
        boolean z10 = this.threadLocalIsSet && this.f85801f.get() == null;
        this.f85801f.remove();
        return !z10;
    }

    public final void D1(@NotNull yf.j jVar, @Nullable Object obj) {
        this.threadLocalIsSet = true;
        this.f85801f.set(nf.v0.a(jVar, obj));
    }

    @Override
    public void x1(@Nullable Object obj) {
        if (this.threadLocalIsSet) {
            nf.Z<yf.j, Object> z10 = this.f85801f.get();
            if (z10 != null) {
                mg.Z.a(z10.a(), z10.b());
            }
            this.f85801f.remove();
        }
        Object a10 = C13096I.a(obj, this.f97032e);
        yf.f<T> fVar = this.f97032e;
        yf.j context = fVar.getContext();
        Object c10 = mg.Z.c(context, null);
        w1<?> g10 = c10 != mg.Z.f97043a ? C13099L.g(fVar, context, c10) : null;
        try {
            this.f97032e.resumeWith(a10);
            nf.P0 p02 = nf.P0.f98194a;
        } finally {
            if (g10 == null || g10.C1()) {
                mg.Z.a(context, c10);
            }
        }
    }
}

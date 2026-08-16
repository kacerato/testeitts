package eg;

import org.jetbrains.annotations.NotNull;

public final class f1 {

    @kotlin.jvm.internal.t0({"SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n*L\n1#1,18:1\n*E\n"})
    public static final class a implements Runnable {

        public final Mf.a<nf.P0> f85723b;

        public a(Mf.a<nf.P0> aVar) {
            this.f85723b = aVar;
        }

        @Override
        public final void run() {
            this.f85723b.invoke();
        }
    }

    @NotNull
    public static final Runnable a(@NotNull Mf.a<nf.P0> aVar) {
        return new a(aVar);
    }
}

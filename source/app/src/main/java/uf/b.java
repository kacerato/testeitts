package uf;

import Ef.f;
import Lf.j;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@j(name = "ThreadsKt")
@t0({"SMAP\nThread.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Thread.kt\nkotlin/concurrent/ThreadsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"})
public final class b {

    public static final class a extends Thread {

        public final Mf.a<P0> f120537b;

        public a(Mf.a<P0> aVar) {
            this.f120537b = aVar;
        }

        @Override
        public void run() {
            this.f120537b.invoke();
        }
    }

    @f
    public static final <T> T a(ThreadLocal<T> threadLocal, Mf.a<? extends T> aVar) {
        M.p(threadLocal, "<this>");
        M.p(aVar, "default");
        T t10 = threadLocal.get();
        if (t10 != null) {
            return t10;
        }
        T invoke = aVar.invoke();
        threadLocal.set(invoke);
        return invoke;
    }

    @NotNull
    public static final Thread b(boolean z10, boolean z11, @Nullable ClassLoader classLoader, @Nullable String str, int i10, @NotNull Mf.a<P0> block) {
        M.p(block, "block");
        a aVar = new a(block);
        if (z11) {
            aVar.setDaemon(true);
        }
        if (i10 > 0) {
            aVar.setPriority(i10);
        }
        if (str != null) {
            aVar.setName(str);
        }
        if (classLoader != null) {
            aVar.setContextClassLoader(classLoader);
        }
        if (z10) {
            aVar.start();
        }
        return aVar;
    }

    public static Thread c(boolean z10, boolean z11, ClassLoader classLoader, String str, int i10, Mf.a aVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        boolean z12 = z10;
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        boolean z13 = z11;
        ClassLoader classLoader2 = (i11 & 4) != 0 ? null : classLoader;
        String str2 = (i11 & 8) != 0 ? null : str;
        if ((i11 & 16) != 0) {
            i10 = -1;
        }
        return b(z12, z13, classLoader2, str2, i10, aVar);
    }
}

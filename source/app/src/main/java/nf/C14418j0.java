package nf;

import nf.C14416i0;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Result.kt\nkotlin/ResultKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,342:1\n1#2:343\n*E\n"})
public final class C14418j0 {
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final Object a(@NotNull Throwable exception) {
        kotlin.jvm.internal.M.p(exception, "exception");
        return new C14416i0.b(exception);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R, T> R b(Object obj, Mf.l<? super T, ? extends R> onSuccess, Mf.l<? super Throwable, ? extends R> onFailure) {
        kotlin.jvm.internal.M.p(onSuccess, "onSuccess");
        kotlin.jvm.internal.M.p(onFailure, "onFailure");
        Throwable e10 = C14416i0.e(obj);
        return e10 == null ? onSuccess.invoke(obj) : onFailure.invoke(e10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R, T extends R> R c(Object obj, R r10) {
        return C14416i0.i(obj) ? r10 : obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R, T extends R> R d(Object obj, Mf.l<? super Throwable, ? extends R> onFailure) {
        kotlin.jvm.internal.M.p(onFailure, "onFailure");
        Throwable e10 = C14416i0.e(obj);
        return e10 == null ? obj : onFailure.invoke(e10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <T> T e(Object obj) {
        n(obj);
        return obj;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R, T> Object f(Object obj, Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(transform, "transform");
        if (!C14416i0.j(obj)) {
            return C14416i0.b(obj);
        }
        C14416i0.a aVar = C14416i0.f98201c;
        return C14416i0.b(transform.invoke(obj));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R, T> Object g(Object obj, Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(transform, "transform");
        if (!C14416i0.j(obj)) {
            return C14416i0.b(obj);
        }
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            return C14416i0.b(transform.invoke(obj));
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            return C14416i0.b(a(th2));
        }
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <T> Object h(Object obj, Mf.l<? super Throwable, P0> action) {
        kotlin.jvm.internal.M.p(action, "action");
        Throwable e10 = C14416i0.e(obj);
        if (e10 != null) {
            action.invoke(e10);
        }
        return obj;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <T> Object i(Object obj, Mf.l<? super T, P0> action) {
        kotlin.jvm.internal.M.p(action, "action");
        if (C14416i0.j(obj)) {
            action.invoke(obj);
        }
        return obj;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R, T extends R> Object j(Object obj, Mf.l<? super Throwable, ? extends R> transform) {
        kotlin.jvm.internal.M.p(transform, "transform");
        Throwable e10 = C14416i0.e(obj);
        if (e10 == null) {
            return obj;
        }
        C14416i0.a aVar = C14416i0.f98201c;
        return C14416i0.b(transform.invoke(e10));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R, T extends R> Object k(Object obj, Mf.l<? super Throwable, ? extends R> transform) {
        kotlin.jvm.internal.M.p(transform, "transform");
        Throwable e10 = C14416i0.e(obj);
        if (e10 == null) {
            return obj;
        }
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            return C14416i0.b(transform.invoke(e10));
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            return C14416i0.b(a(th2));
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R> Object l(Mf.a<? extends R> block) {
        kotlin.jvm.internal.M.p(block, "block");
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            return C14416i0.b(block.invoke());
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            return C14416i0.b(a(th2));
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <T, R> Object m(T t10, Mf.l<? super T, ? extends R> block) {
        kotlin.jvm.internal.M.p(block, "block");
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            return C14416i0.b(block.invoke(t10));
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            return C14416i0.b(a(th2));
        }
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final void n(@NotNull Object obj) {
        if (obj instanceof C14416i0.b) {
            throw ((C14416i0.b) obj).f98203b;
        }
    }
}

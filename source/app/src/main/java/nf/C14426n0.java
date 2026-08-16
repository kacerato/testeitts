package nf;

import kotlin.NotImplementedError;

public class C14426n0 {
    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final Void a() {
        throw new NotImplementedError(null, 1, 0 == true ? 1 : 0);
    }

    @Ef.f
    public static final Void b(String reason) {
        kotlin.jvm.internal.M.p(reason, "reason");
        throw new NotImplementedError("An operation is not implemented: " + reason);
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.1")
    public static final <T> T c(T t10, Mf.l<? super T, P0> block) {
        kotlin.jvm.internal.M.p(block, "block");
        block.invoke(t10);
        return t10;
    }

    @Ef.f
    @InterfaceC14394D
    public static final <T> T d(T t10, Mf.l<? super T, P0> block) {
        kotlin.jvm.internal.M.p(block, "block");
        block.invoke(t10);
        return t10;
    }

    @Ef.f
    @InterfaceC14394D
    public static final <T, R> R e(T t10, Mf.l<? super T, ? extends R> block) {
        kotlin.jvm.internal.M.p(block, "block");
        return block.invoke(t10);
    }

    @Ef.f
    public static final void f(int i10, Mf.l<? super Integer, P0> action) {
        kotlin.jvm.internal.M.p(action, "action");
        for (int i11 = 0; i11 < i10; i11++) {
            action.invoke(Integer.valueOf(i11));
        }
    }

    @Ef.f
    @InterfaceC14394D
    public static final <R> R g(Mf.a<? extends R> block) {
        kotlin.jvm.internal.M.p(block, "block");
        return block.invoke();
    }

    @Ef.f
    @InterfaceC14394D
    public static final <T, R> R h(T t10, Mf.l<? super T, ? extends R> block) {
        kotlin.jvm.internal.M.p(block, "block");
        return block.invoke(t10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <T> T i(T t10, Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(predicate, "predicate");
        if (predicate.invoke(t10).booleanValue()) {
            return t10;
        }
        return null;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <T> T j(T t10, Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(predicate, "predicate");
        if (predicate.invoke(t10).booleanValue()) {
            return null;
        }
        return t10;
    }

    @Ef.f
    @InterfaceC14394D
    public static final <T, R> R k(T t10, Mf.l<? super T, ? extends R> block) {
        kotlin.jvm.internal.M.p(block, "block");
        return block.invoke(t10);
    }
}

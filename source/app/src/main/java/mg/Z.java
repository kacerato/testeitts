package mg;

import eg.l1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public final class Z {

    @Lf.g
    @NotNull
    public static final T f97043a = new T("NO_THREAD_ELEMENTS");

    @NotNull
    public static final Mf.p<Object, j.b, Object> f97044b = a.f97047b;

    @NotNull
    public static final Mf.p<l1<?>, j.b, l1<?>> f97045c = b.f97048b;

    @NotNull
    public static final Mf.p<f0, j.b, f0> f97046d = c.f97049b;

    public static final class a extends kotlin.jvm.internal.O implements Mf.p<Object, j.b, Object> {

        public static final a f97047b = new a();

        public a() {
            super(2);
        }

        @Override
        @Nullable
        public final Object invoke(@Nullable Object obj, @NotNull j.b bVar) {
            if (!(bVar instanceof l1)) {
                return obj;
            }
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int intValue = num != null ? num.intValue() : 1;
            return intValue == 0 ? bVar : Integer.valueOf(intValue + 1);
        }
    }

    public static final class b extends kotlin.jvm.internal.O implements Mf.p<l1<?>, j.b, l1<?>> {

        public static final b f97048b = new b();

        public b() {
            super(2);
        }

        @Override
        @Nullable
        public final l1<?> invoke(@Nullable l1<?> l1Var, @NotNull j.b bVar) {
            if (l1Var != null) {
                return l1Var;
            }
            if (bVar instanceof l1) {
                return (l1) bVar;
            }
            return null;
        }
    }

    public static final class c extends kotlin.jvm.internal.O implements Mf.p<f0, j.b, f0> {

        public static final c f97049b = new c();

        public c() {
            super(2);
        }

        @Override
        @NotNull
        public final f0 invoke(@NotNull f0 f0Var, @NotNull j.b bVar) {
            if (bVar instanceof l1) {
                l1<?> l1Var = (l1) bVar;
                f0Var.a(l1Var, l1Var.b0(f0Var.f97063a));
            }
            return f0Var;
        }
    }

    public static final void a(@NotNull yf.j jVar, @Nullable Object obj) {
        if (obj == f97043a) {
            return;
        }
        if (obj instanceof f0) {
            ((f0) obj).b(jVar);
            return;
        }
        Object fold = jVar.fold(null, f97045c);
        kotlin.jvm.internal.M.n(fold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((l1) fold).h(jVar, obj);
    }

    @NotNull
    public static final Object b(@NotNull yf.j jVar) {
        Object fold = jVar.fold(0, f97044b);
        kotlin.jvm.internal.M.m(fold);
        return fold;
    }

    @Nullable
    public static final Object c(@NotNull yf.j jVar, @Nullable Object obj) {
        if (obj == null) {
            obj = b(jVar);
        }
        if (obj == 0) {
            return f97043a;
        }
        if (obj instanceof Integer) {
            return jVar.fold(new f0(jVar, ((Number) obj).intValue()), f97046d);
        }
        kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((l1) obj).b0(jVar);
    }
}

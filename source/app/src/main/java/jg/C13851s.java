package jg;

import kotlin.jvm.internal.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13851s {

    @NotNull
    public static final Mf.l<Object, Object> f93483a = b.f93486b;

    @NotNull
    public static final Mf.p<Object, Object, Boolean> f93484b = a.f93485b;

    public static final class a extends kotlin.jvm.internal.O implements Mf.p<Object, Object, Boolean> {

        public static final a f93485b = new a();

        public a() {
            super(2);
        }

        @Override
        @NotNull
        public final Boolean invoke(@Nullable Object obj, @Nullable Object obj2) {
            return Boolean.valueOf(kotlin.jvm.internal.M.g(obj, obj2));
        }
    }

    public static final class b extends kotlin.jvm.internal.O implements Mf.l<Object, Object> {

        public static final b f93486b = new b();

        public b() {
            super(1);
        }

        @Override
        @Nullable
        public final Object invoke(@Nullable Object obj) {
            return obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> InterfaceC13842i<T> a(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return interfaceC13842i instanceof U ? interfaceC13842i : d(interfaceC13842i, f93483a, f93484b);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> b(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super T, Boolean> pVar) {
        Mf.l<Object, Object> lVar = f93483a;
        kotlin.jvm.internal.M.n(pVar, "null cannot be cast to non-null type kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Boolean>");
        return d(interfaceC13842i, lVar, (Mf.p) w0.q(pVar, 2));
    }

    @NotNull
    public static final <T, K> InterfaceC13842i<T> c(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.l<? super T, ? extends K> lVar) {
        return d(interfaceC13842i, lVar, f93484b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> InterfaceC13842i<T> d(InterfaceC13842i<? extends T> interfaceC13842i, Mf.l<? super T, ? extends Object> lVar, Mf.p<Object, Object, Boolean> pVar) {
        if (interfaceC13842i instanceof C13840g) {
            C13840g c13840g = (C13840g) interfaceC13842i;
            if (c13840g.f93309c == lVar && c13840g.f93310d == pVar) {
                return interfaceC13842i;
            }
        }
        return new C13840g(interfaceC13842i, lVar, pVar);
    }
}

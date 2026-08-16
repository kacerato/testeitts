package Sf;

import Mf.q;
import Wf.n;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public final class a {

    @NotNull
    public static final a f23203a = new a();

    @t0({"SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n*L\n1#1,73:1\n*E\n"})
    public static final class C0559a<T> extends c<T> {

        public final q<n<?>, T, T, P0> f23204b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C0559a(T t10, q<? super n<?>, ? super T, ? super T, P0> qVar) {
            super(t10);
            this.f23204b = qVar;
        }

        @Override
        public void c(n<?> property, T t10, T t11) {
            M.p(property, "property");
            this.f23204b.n(property, t10, t11);
        }
    }

    @t0({"SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$vetoable$1\n*L\n1#1,73:1\n*E\n"})
    public static final class b<T> extends c<T> {

        public final q<n<?>, T, T, Boolean> f23205b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(T t10, q<? super n<?>, ? super T, ? super T, Boolean> qVar) {
            super(t10);
            this.f23205b = qVar;
        }

        @Override
        public boolean d(n<?> property, T t10, T t11) {
            M.p(property, "property");
            return this.f23205b.n(property, t10, t11).booleanValue();
        }
    }

    @NotNull
    public final <T> f<Object, T> a() {
        return new Sf.b();
    }

    @NotNull
    public final <T> f<Object, T> b(T t10, @NotNull q<? super n<?>, ? super T, ? super T, P0> onChange) {
        M.p(onChange, "onChange");
        return new C0559a(t10, onChange);
    }

    @NotNull
    public final <T> f<Object, T> c(T t10, @NotNull q<? super n<?>, ? super T, ? super T, Boolean> onChange) {
        M.p(onChange, "onChange");
        return new b(t10, onChange);
    }
}

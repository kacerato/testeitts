package jg;

import eg.N0;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13837d<T> implements InterfaceC13836c<T> {

    @NotNull
    public final InterfaceC13842i<T> f93299b;

    @t0({"SMAP\nContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Context.kt\nkotlinx/coroutines/flow/CancellableFlowImpl$collect$2\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,285:1\n329#2:286\n*S KotlinDebug\n*F\n+ 1 Context.kt\nkotlinx/coroutines/flow/CancellableFlowImpl$collect$2\n*L\n274#1:286\n*E\n"})
    public static final class a<T> implements InterfaceC13843j {

        public final InterfaceC13843j<T> f93300b;

        @Bf.f(c = "kotlinx.coroutines.flow.CancellableFlowImpl$collect$2", f = "Context.kt", i = {}, l = {275}, m = "emit", n = {}, s = {})
        public static final class C1812a extends Bf.d {

            public Object f93301b;

            public final a<T> f93302c;

            public int f93303d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C1812a(a<? super T> aVar, yf.f<? super C1812a> fVar) {
                super(fVar);
                this.f93302c = aVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93301b = obj;
                this.f93303d |= Integer.MIN_VALUE;
                return this.f93302c.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(InterfaceC13843j<? super T> interfaceC13843j) {
            this.f93300b = interfaceC13843j;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            C1812a c1812a;
            int i10;
            if (fVar instanceof C1812a) {
                c1812a = (C1812a) fVar;
                int i11 = c1812a.f93303d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    c1812a.f93303d = i11 - Integer.MIN_VALUE;
                    Object obj = c1812a.f93301b;
                    Object l10 = Af.d.l();
                    i10 = c1812a.f93303d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        N0.A(c1812a.getContext());
                        InterfaceC13843j<T> interfaceC13843j = this.f93300b;
                        c1812a.f93303d = 1;
                        if (interfaceC13843j.emit(t10, c1812a) == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        C14418j0.n(obj);
                    }
                    return P0.f98194a;
                }
            }
            c1812a = new C1812a(this, fVar);
            Object obj2 = c1812a.f93301b;
            Object l102 = Af.d.l();
            i10 = c1812a.f93303d;
            if (i10 != 0) {
            }
            return P0.f98194a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C13837d(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        this.f93299b = interfaceC13842i;
    }

    @Override
    @Nullable
    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
        Object a10 = this.f93299b.a(new a(interfaceC13843j), fVar);
        return a10 == Af.d.l() ? a10 : P0.f98194a;
    }
}

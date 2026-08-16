package jg;

import kotlin.jvm.internal.m0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13840g<T> implements InterfaceC13842i<T> {

    @NotNull
    public final InterfaceC13842i<T> f93308b;

    @Lf.g
    @NotNull
    public final Mf.l<T, Object> f93309c;

    @Lf.g
    @NotNull
    public final Mf.p<Object, Object, Boolean> f93310d;

    public static final class a<T> implements InterfaceC13843j {

        public final C13840g<T> f93311b;

        public final m0.h<Object> f93312c;

        public final InterfaceC13843j<T> f93313d;

        @Bf.f(c = "kotlinx.coroutines.flow.DistinctFlowImpl$collect$2", f = "Distinct.kt", i = {}, l = {77}, m = "emit", n = {}, s = {})
        public static final class C1813a extends Bf.d {

            public Object f93314b;

            public final a<T> f93315c;

            public int f93316d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C1813a(a<? super T> aVar, yf.f<? super C1813a> fVar) {
                super(fVar);
                this.f93315c = aVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93314b = obj;
                this.f93316d |= Integer.MIN_VALUE;
                return this.f93315c.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(C13840g<T> c13840g, m0.h<Object> hVar, InterfaceC13843j<? super T> interfaceC13843j) {
            this.f93311b = c13840g;
            this.f93312c = hVar;
            this.f93313d = interfaceC13843j;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            C1813a c1813a;
            int i10;
            if (fVar instanceof C1813a) {
                c1813a = (C1813a) fVar;
                int i11 = c1813a.f93316d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    c1813a.f93316d = i11 - Integer.MIN_VALUE;
                    Object obj = c1813a.f93314b;
                    Object l10 = Af.d.l();
                    i10 = c1813a.f93316d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        T t11 = (T) this.f93311b.f93309c.invoke(t10);
                        Object obj2 = this.f93312c.f95754b;
                        if (obj2 != kg.s.f95204a && this.f93311b.f93310d.invoke(obj2, t11).booleanValue()) {
                            return P0.f98194a;
                        }
                        this.f93312c.f95754b = t11;
                        InterfaceC13843j<T> interfaceC13843j = this.f93313d;
                        c1813a.f93316d = 1;
                        if (interfaceC13843j.emit(t10, c1813a) == l10) {
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
            c1813a = new C1813a(this, fVar);
            Object obj3 = c1813a.f93314b;
            Object l102 = Af.d.l();
            i10 = c1813a.f93316d;
            if (i10 != 0) {
            }
            return P0.f98194a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C13840g(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.l<? super T, ? extends Object> lVar, @NotNull Mf.p<Object, Object, Boolean> pVar) {
        this.f93308b = interfaceC13842i;
        this.f93309c = lVar;
        this.f93310d = pVar;
    }

    @Override
    @Nullable
    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
        m0.h hVar = new m0.h();
        hVar.f95754b = (T) kg.s.f95204a;
        Object a10 = this.f93308b.a(new a(this, hVar, interfaceC13843j), fVar);
        return a10 == Af.d.l() ? a10 : P0.f98194a;
    }
}

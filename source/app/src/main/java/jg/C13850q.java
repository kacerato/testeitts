package jg;

import kotlin.jvm.internal.m0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13850q {

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__CountKt", f = "Count.kt", i = {0}, l = {17}, m = oc.c.f98682m, n = {"i"}, s = {"L$0"})
    public static final class a<T> extends Bf.d {

        public Object f93410b;

        public Object f93411c;

        public int f93412d;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93411c = obj;
            this.f93412d |= Integer.MIN_VALUE;
            return C13844k.Z(null, this);
        }
    }

    public static final class b<T> implements InterfaceC13843j {

        public final m0.f f93413b;

        public b(m0.f fVar) {
            this.f93413b = fVar;
        }

        @Override
        @Nullable
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            this.f93413b.f95752b++;
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__CountKt", f = "Count.kt", i = {0}, l = {29}, m = oc.c.f98682m, n = {"i"}, s = {"L$0"})
    public static final class c<T> extends Bf.d {

        public Object f93414b;

        public Object f93415c;

        public int f93416d;

        public c(yf.f<? super c> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f93415c = obj;
            this.f93416d |= Integer.MIN_VALUE;
            return C13844k.Y(null, null, this);
        }
    }

    public static final class d<T> implements InterfaceC13843j {

        public final Mf.p<T, yf.f<? super Boolean>, Object> f93417b;

        public final m0.f f93418c;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__CountKt$count$4", f = "Count.kt", i = {0}, l = {30}, m = "emit", n = {"this"}, s = {"L$0"})
        public static final class a extends Bf.d {

            public Object f93419b;

            public Object f93420c;

            public final d<T> f93421d;

            public int f93422e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(d<? super T> dVar, yf.f<? super a> fVar) {
                super(fVar);
                this.f93421d = dVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93420c = obj;
                this.f93422e |= Integer.MIN_VALUE;
                return this.f93421d.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public d(Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar, m0.f fVar) {
            this.f93417b = pVar;
            this.f93418c = fVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            a aVar;
            Object obj;
            int i10;
            d<T> dVar;
            if (fVar instanceof a) {
                aVar = (a) fVar;
                int i11 = aVar.f93422e;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar.f93422e = i11 - Integer.MIN_VALUE;
                    obj = aVar.f93420c;
                    Object l10 = Af.d.l();
                    i10 = aVar.f93422e;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        Mf.p<T, yf.f<? super Boolean>, Object> pVar = this.f93417b;
                        aVar.f93419b = this;
                        aVar.f93422e = 1;
                        obj = pVar.invoke(t10, aVar);
                        if (obj == l10) {
                            return l10;
                        }
                        dVar = this;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        dVar = (d) aVar.f93419b;
                        C14418j0.n(obj);
                    }
                    if (((Boolean) obj).booleanValue()) {
                        dVar.f93418c.f95752b++;
                    }
                    return P0.f98194a;
                }
            }
            aVar = new a(this, fVar);
            obj = aVar.f93420c;
            Object l102 = Af.d.l();
            i10 = aVar.f93422e;
            if (i10 != 0) {
            }
            if (((Boolean) obj).booleanValue()) {
            }
            return P0.f98194a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object a(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar, @NotNull yf.f<? super Integer> fVar) {
        c cVar;
        int i10;
        m0.f fVar2;
        if (fVar instanceof c) {
            cVar = (c) fVar;
            int i11 = cVar.f93416d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                cVar.f93416d = i11 - Integer.MIN_VALUE;
                Object obj = cVar.f93415c;
                Object l10 = Af.d.l();
                i10 = cVar.f93416d;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.f fVar3 = new m0.f();
                    InterfaceC13843j<? super Object> dVar = new d<>(pVar, fVar3);
                    cVar.f93414b = fVar3;
                    cVar.f93416d = 1;
                    if (interfaceC13842i.a(dVar, cVar) == l10) {
                        return l10;
                    }
                    fVar2 = fVar3;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    fVar2 = (m0.f) cVar.f93414b;
                    C14418j0.n(obj);
                }
                return Bf.b.f(fVar2.f95752b);
            }
        }
        cVar = new c(fVar);
        Object obj2 = cVar.f93415c;
        Object l102 = Af.d.l();
        i10 = cVar.f93416d;
        if (i10 != 0) {
        }
        return Bf.b.f(fVar2.f95752b);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object b(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super Integer> fVar) {
        a aVar;
        int i10;
        m0.f fVar2;
        if (fVar instanceof a) {
            aVar = (a) fVar;
            int i11 = aVar.f93412d;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f93412d = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f93411c;
                Object l10 = Af.d.l();
                i10 = aVar.f93412d;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    m0.f fVar3 = new m0.f();
                    InterfaceC13843j<? super Object> bVar = new b<>(fVar3);
                    aVar.f93410b = fVar3;
                    aVar.f93412d = 1;
                    if (interfaceC13842i.a(bVar, aVar) == l10) {
                        return l10;
                    }
                    fVar2 = fVar3;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    fVar2 = (m0.f) aVar.f93410b;
                    C14418j0.n(obj);
                }
                return Bf.b.f(fVar2.f95752b);
            }
        }
        aVar = new a(fVar);
        Object obj2 = aVar.f93411c;
        Object l102 = Af.d.l();
        i10 = aVar.f93412d;
        if (i10 != 0) {
        }
        return Bf.b.f(fVar2.f95752b);
    }
}

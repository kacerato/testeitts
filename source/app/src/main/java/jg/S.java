package jg;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.m0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class S implements O {

    @Bf.f(c = "kotlinx.coroutines.flow.StartedLazily$command$1", f = "SharingStarted.kt", i = {}, l = {155}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.q implements Mf.p<InterfaceC13843j<? super M>, yf.f<? super P0>, Object> {

        public int f93248b;

        public Object f93249c;

        public final U<Integer> f93250d;

        public static final class C1809a<T> implements InterfaceC13843j {

            public final m0.a f93251b;

            public final InterfaceC13843j<M> f93252c;

            @Bf.f(c = "kotlinx.coroutines.flow.StartedLazily$command$1$1", f = "SharingStarted.kt", i = {}, l = {158}, m = "emit", n = {}, s = {})
            public static final class C1810a extends Bf.d {

                public Object f93253b;

                public final C1809a<T> f93254c;

                public int f93255d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C1810a(C1809a<? super T> c1809a, yf.f<? super C1810a> fVar) {
                    super(fVar);
                    this.f93254c = c1809a;
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f93253b = obj;
                    this.f93255d |= Integer.MIN_VALUE;
                    return this.f93254c.a(0, this);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public C1809a(m0.a aVar, InterfaceC13843j<? super M> interfaceC13843j) {
                this.f93251b = aVar;
                this.f93252c = interfaceC13843j;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object a(int i10, @NotNull yf.f<? super P0> fVar) {
                C1810a c1810a;
                int i11;
                if (fVar instanceof C1810a) {
                    c1810a = (C1810a) fVar;
                    int i12 = c1810a.f93255d;
                    if ((i12 & Integer.MIN_VALUE) != 0) {
                        c1810a.f93255d = i12 - Integer.MIN_VALUE;
                        Object obj = c1810a.f93253b;
                        Object l10 = Af.d.l();
                        i11 = c1810a.f93255d;
                        if (i11 != 0) {
                            C14418j0.n(obj);
                            if (i10 > 0) {
                                m0.a aVar = this.f93251b;
                                if (!aVar.f95747b) {
                                    aVar.f95747b = true;
                                    InterfaceC13843j<M> interfaceC13843j = this.f93252c;
                                    M m10 = M.START;
                                    c1810a.f93255d = 1;
                                    if (interfaceC13843j.emit(m10, c1810a) == l10) {
                                        return l10;
                                    }
                                }
                            }
                            return P0.f98194a;
                        }
                        if (i11 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        C14418j0.n(obj);
                        return P0.f98194a;
                    }
                }
                c1810a = new C1810a(this, fVar);
                Object obj2 = c1810a.f93253b;
                Object l102 = Af.d.l();
                i11 = c1810a.f93255d;
                if (i11 != 0) {
                }
                return P0.f98194a;
            }

            @Override
            public Object emit(Object obj, yf.f fVar) {
                return a(((Number) obj).intValue(), fVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(U<Integer> u10, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f93250d = u10;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            a aVar = new a(this.f93250d, fVar);
            aVar.f93249c = obj;
            return aVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93248b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93249c;
                m0.a aVar = new m0.a();
                U<Integer> u10 = this.f93250d;
                C1809a c1809a = new C1809a(aVar, interfaceC13843j);
                this.f93248b = 1;
                if (u10.a(c1809a, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            throw new KotlinNothingValueException();
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13843j<? super M> interfaceC13843j, @Nullable yf.f<? super P0> fVar) {
            return ((a) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @Override
    @NotNull
    public InterfaceC13842i<M> a(@NotNull U<Integer> u10) {
        return C13844k.J0(new a(u10, null));
    }

    @NotNull
    public String toString() {
        return "SharingStarted.Lazily";
    }
}

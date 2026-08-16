package kg;

import eg.C13123k;
import eg.K0;
import eg.S;
import eg.T;
import eg.U;
import jg.InterfaceC13842i;
import jg.InterfaceC13843j;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import kotlinx.coroutines.flow.internal.ChildCancelledException;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,100:1\n1#2:101\n*E\n"})
public final class i<T, R> extends g<T, R> {

    @NotNull
    public final Mf.q<InterfaceC13843j<? super R>, T, yf.f<? super P0>, Object> f95112f;

    @Bf.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", i = {}, l = {27}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

        public int f95113b;

        public Object f95114c;

        public final i<T, R> f95115d;

        public final InterfaceC13843j<R> f95116e;

        public static final class C1845a<T> implements InterfaceC13843j {

            public final m0.h<K0> f95117b;

            public final S f95118c;

            public final i<T, R> f95119d;

            public final InterfaceC13843j<R> f95120e;

            @Bf.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", i = {}, l = {34}, m = "invokeSuspend", n = {}, s = {})
            public static final class C1846a extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

                public int f95121b;

                public final i<T, R> f95122c;

                public final InterfaceC13843j<R> f95123d;

                public final T f95124e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C1846a(i<T, R> iVar, InterfaceC13843j<? super R> interfaceC13843j, T t10, yf.f<? super C1846a> fVar) {
                    super(2, fVar);
                    this.f95122c = iVar;
                    this.f95123d = interfaceC13843j;
                    this.f95124e = t10;
                }

                @Override
                @NotNull
                public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                    return new C1846a(this.f95122c, this.f95123d, this.f95124e, fVar);
                }

                @Override
                @Nullable
                public final Object invoke(@NotNull S s10, @Nullable yf.f<? super P0> fVar) {
                    return ((C1846a) create(s10, fVar)).invokeSuspend(P0.f98194a);
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object l10 = Af.d.l();
                    int i10 = this.f95121b;
                    if (i10 == 0) {
                        C14418j0.n(obj);
                        Mf.q qVar = this.f95122c.f95112f;
                        InterfaceC13843j<R> interfaceC13843j = this.f95123d;
                        T t10 = this.f95124e;
                        this.f95121b = 1;
                        if (qVar.n(interfaceC13843j, t10, this) == l10) {
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

            @Bf.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1", f = "Merge.kt", i = {0, 0}, l = {30}, m = "emit", n = {"this", "value"}, s = {"L$0", "L$1"})
            public static final class b extends Bf.d {

                public Object f95125b;

                public Object f95126c;

                public Object f95127d;

                public Object f95128e;

                public final C1845a<T> f95129f;

                public int f95130g;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public b(C1845a<? super T> c1845a, yf.f<? super b> fVar) {
                    super(fVar);
                    this.f95129f = c1845a;
                }

                @Override
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.f95128e = obj;
                    this.f95130g |= Integer.MIN_VALUE;
                    return this.f95129f.emit(null, this);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public C1845a(m0.h<K0> hVar, S s10, i<T, R> iVar, InterfaceC13843j<? super R> interfaceC13843j) {
                this.f95117b = hVar;
                this.f95118c = s10;
                this.f95119d = iVar;
                this.f95120e = interfaceC13843j;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                b bVar;
                int i10;
                C1845a<T> c1845a;
                K0 f10;
                if (fVar instanceof b) {
                    bVar = (b) fVar;
                    int i11 = bVar.f95130g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        bVar.f95130g = i11 - Integer.MIN_VALUE;
                        Object obj = bVar.f95128e;
                        Object l10 = Af.d.l();
                        i10 = bVar.f95130g;
                        if (i10 != 0) {
                            C14418j0.n(obj);
                            K0 k02 = this.f95117b.f95754b;
                            if (k02 != null) {
                                k02.a(new ChildCancelledException());
                                bVar.f95125b = this;
                                bVar.f95126c = t10;
                                bVar.f95127d = k02;
                                bVar.f95130g = 1;
                                if (k02.c0(bVar) == l10) {
                                    return l10;
                                }
                            }
                            c1845a = this;
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            t10 = (T) bVar.f95126c;
                            c1845a = (C1845a) bVar.f95125b;
                            C14418j0.n(obj);
                        }
                        m0.h<K0> hVar = c1845a.f95117b;
                        f10 = C13123k.f(c1845a.f95118c, null, U.UNDISPATCHED, new C1846a(c1845a.f95119d, c1845a.f95120e, t10, null), 1, null);
                        hVar.f95754b = (T) f10;
                        return P0.f98194a;
                    }
                }
                bVar = new b(this, fVar);
                Object obj2 = bVar.f95128e;
                Object l102 = Af.d.l();
                i10 = bVar.f95130g;
                if (i10 != 0) {
                }
                m0.h<K0> hVar2 = c1845a.f95117b;
                f10 = C13123k.f(c1845a.f95118c, null, U.UNDISPATCHED, new C1846a(c1845a.f95119d, c1845a.f95120e, t10, null), 1, null);
                hVar2.f95754b = (T) f10;
                return P0.f98194a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(i<T, R> iVar, InterfaceC13843j<? super R> interfaceC13843j, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f95115d = iVar;
            this.f95116e = interfaceC13843j;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            a aVar = new a(this.f95115d, this.f95116e, fVar);
            aVar.f95114c = obj;
            return aVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull S s10, @Nullable yf.f<? super P0> fVar) {
            return ((a) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f95113b;
            if (i10 == 0) {
                C14418j0.n(obj);
                S s10 = (S) this.f95114c;
                m0.h hVar = new m0.h();
                i<T, R> iVar = this.f95115d;
                InterfaceC13842i<S> interfaceC13842i = iVar.f95108e;
                C1845a c1845a = new C1845a(hVar, s10, iVar, this.f95116e);
                this.f95113b = 1;
                if (interfaceC13842i.a(c1845a, this) == l10) {
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

    public i(Mf.q qVar, InterfaceC13842i interfaceC13842i, yf.j jVar, int i10, gg.i iVar, int i11, C14026x c14026x) {
        this(qVar, interfaceC13842i, (i11 & 4) != 0 ? yf.l.f130251b : jVar, (i11 & 8) != 0 ? -2 : i10, (i11 & 16) != 0 ? gg.i.SUSPEND : iVar);
    }

    @Override
    @NotNull
    public AbstractC13982d<R> g(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return new i(this.f95112f, this.f95108e, jVar, i10, iVar);
    }

    @Override
    @Nullable
    public Object q(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
        Object g10 = T.g(new a(this, interfaceC13843j, null), fVar);
        return g10 == Af.d.l() ? g10 : P0.f98194a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(@NotNull Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar, @NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        super(interfaceC13842i, jVar, i10, iVar);
        this.f95112f = qVar;
    }
}

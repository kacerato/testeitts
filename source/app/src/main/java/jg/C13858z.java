package jg;

import android.util.DisplayMetrics;
import eg.C13088A;
import eg.C13119i;
import eg.C13123k;
import eg.InterfaceC13150y;
import eg.K0;
import eg.N0;
import jg.O;
import kg.AbstractC13982d;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"})
public final class C13858z {

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", i = {}, l = {214, 218, 219, 225}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.q implements Mf.p<eg.S, yf.f<? super P0>, Object> {

        public int f93745b;

        public final O f93746c;

        public final InterfaceC13842i<T> f93747d;

        public final D<T> f93748e;

        public final T f93749f;

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        public static final class C1826a extends Bf.q implements Mf.p<Integer, yf.f<? super Boolean>, Object> {

            public int f93750b;

            public int f93751c;

            public C1826a(yf.f<? super C1826a> fVar) {
                super(2, fVar);
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                C1826a c1826a = new C1826a(fVar);
                c1826a.f93751c = ((Number) obj).intValue();
                return c1826a;
            }

            @Override
            public Object invoke(Integer num, yf.f<? super Boolean> fVar) {
                return z(num.intValue(), fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Af.d.l();
                if (this.f93750b != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
                return Bf.b.a(this.f93751c > 0);
            }

            @Nullable
            public final Object z(int i10, @Nullable yf.f<? super Boolean> fVar) {
                return ((C1826a) create(Integer.valueOf(i10), fVar)).invokeSuspend(P0.f98194a);
            }
        }

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", i = {}, l = {227}, m = "invokeSuspend", n = {}, s = {})
        public static final class b extends Bf.q implements Mf.p<M, yf.f<? super P0>, Object> {

            public int f93752b;

            public Object f93753c;

            public final InterfaceC13842i<T> f93754d;

            public final D<T> f93755e;

            public final T f93756f;

            public class C1827a {

                public static final int[] f93757a;

                static {
                    int[] iArr = new int[M.values().length];
                    try {
                        iArr[M.START.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[M.STOP.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[M.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    f93757a = iArr;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public b(InterfaceC13842i<? extends T> interfaceC13842i, D<T> d10, T t10, yf.f<? super b> fVar) {
                super(2, fVar);
                this.f93754d = interfaceC13842i;
                this.f93755e = d10;
                this.f93756f = t10;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                b bVar = new b(this.f93754d, this.f93755e, this.f93756f, fVar);
                bVar.f93753c = obj;
                return bVar;
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93752b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    int i11 = C1827a.f93757a[((M) this.f93753c).ordinal()];
                    if (i11 == 1) {
                        InterfaceC13842i<T> interfaceC13842i = this.f93754d;
                        InterfaceC13843j interfaceC13843j = this.f93755e;
                        this.f93752b = 1;
                        if (interfaceC13842i.a(interfaceC13843j, this) == l10) {
                            return l10;
                        }
                    } else if (i11 == 3) {
                        T t10 = this.f93756f;
                        if (t10 == K.f93237a) {
                            this.f93755e.h();
                        } else {
                            this.f93755e.w(t10);
                        }
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                return P0.f98194a;
            }

            @Override
            @Nullable
            public final Object invoke(@NotNull M m10, @Nullable yf.f<? super P0> fVar) {
                return ((b) create(m10, fVar)).invokeSuspend(P0.f98194a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(O o10, InterfaceC13842i<? extends T> interfaceC13842i, D<T> d10, T t10, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f93746c = o10;
            this.f93747d = interfaceC13842i;
            this.f93748e = d10;
            this.f93749f = t10;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            return new a(this.f93746c, this.f93747d, this.f93748e, this.f93749f, fVar);
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull eg.S s10, @Nullable yf.f<? super P0> fVar) {
            return ((a) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0068 A[RETURN] */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13842i<T> interfaceC13842i;
            InterfaceC13843j interfaceC13843j;
            Object l10 = Af.d.l();
            int i10 = this.f93745b;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        C14418j0.n(obj);
                        interfaceC13842i = this.f93747d;
                        interfaceC13843j = this.f93748e;
                        this.f93745b = 3;
                        if (interfaceC13842i.a(interfaceC13843j, this) == l10) {
                            return l10;
                        }
                        return P0.f98194a;
                    }
                    if (i10 != 3 && i10 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
                C14418j0.n(obj);
                return P0.f98194a;
            }
            C14418j0.n(obj);
            O o10 = this.f93746c;
            O.a aVar = O.f93244a;
            if (o10 == aVar.c()) {
                InterfaceC13842i<T> interfaceC13842i2 = this.f93747d;
                InterfaceC13843j interfaceC13843j2 = this.f93748e;
                this.f93745b = 1;
                if (interfaceC13842i2.a(interfaceC13843j2, this) == l10) {
                    return l10;
                }
            } else if (this.f93746c == aVar.d()) {
                U<Integer> y10 = this.f93748e.y();
                C1826a c1826a = new C1826a(null);
                this.f93745b = 2;
                if (C13844k.u0(y10, c1826a, this) == l10) {
                    return l10;
                }
                interfaceC13842i = this.f93747d;
                interfaceC13843j = this.f93748e;
                this.f93745b = 3;
                if (interfaceC13842i.a(interfaceC13843j, this) == l10) {
                }
            } else {
                InterfaceC13842i g02 = C13844k.g0(this.f93746c.a(this.f93748e.y()));
                b bVar = new b(this.f93747d, this.f93748e, this.f93749f, null);
                this.f93745b = 4;
                if (C13844k.A(g02, bVar, this) == l10) {
                    return l10;
                }
            }
            return P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1", f = "Share.kt", i = {}, l = {DisplayMetrics.DENSITY_340}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends Bf.q implements Mf.p<eg.S, yf.f<? super P0>, Object> {

        public int f93758b;

        public Object f93759c;

        public final InterfaceC13842i<T> f93760d;

        public final InterfaceC13150y<U<T>> f93761e;

        @t0({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"})
        public static final class a<T> implements InterfaceC13843j {

            public final m0.h<E<T>> f93762b;

            public final eg.S f93763c;

            public final InterfaceC13150y<U<T>> f93764d;

            public a(m0.h<E<T>> hVar, eg.S s10, InterfaceC13150y<U<T>> interfaceC13150y) {
                this.f93762b = hVar;
                this.f93763c = s10;
                this.f93764d = interfaceC13150y;
            }

            /* JADX WARN: Type inference failed for: r4v2, types: [T, jg.E, jg.U] */
            @Override
            @Nullable
            public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                P0 p02;
                E<T> e10 = this.f93762b.f95754b;
                if (e10 != null) {
                    e10.setValue(t10);
                    p02 = P0.f98194a;
                } else {
                    p02 = null;
                }
                if (p02 == null) {
                    eg.S s10 = this.f93763c;
                    m0.h<E<T>> hVar = this.f93762b;
                    InterfaceC13150y<U<T>> interfaceC13150y = this.f93764d;
                    ?? r42 = (T) W.a(t10);
                    interfaceC13150y.n(new G(r42, N0.B(s10.getCoroutineContext())));
                    hVar.f95754b = r42;
                }
                return P0.f98194a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(InterfaceC13842i<? extends T> interfaceC13842i, InterfaceC13150y<U<T>> interfaceC13150y, yf.f<? super b> fVar) {
            super(2, fVar);
            this.f93760d = interfaceC13842i;
            this.f93761e = interfaceC13150y;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            b bVar = new b(this.f93760d, this.f93761e, fVar);
            bVar.f93759c = obj;
            return bVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull eg.S s10, @Nullable yf.f<? super P0> fVar) {
            return ((b) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93758b;
            try {
                if (i10 == 0) {
                    C14418j0.n(obj);
                    eg.S s10 = (eg.S) this.f93759c;
                    m0.h hVar = new m0.h();
                    InterfaceC13842i<T> interfaceC13842i = this.f93760d;
                    a aVar = new a(hVar, s10, this.f93761e);
                    this.f93758b = 1;
                    if (interfaceC13842i.a(aVar, this) == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                return P0.f98194a;
            } catch (Throwable th2) {
                this.f93761e.c(th2);
                throw th2;
            }
        }
    }

    @NotNull
    public static final <T> I<T> a(@NotNull D<T> d10) {
        return new F(d10, null);
    }

    @NotNull
    public static final <T> U<T> b(@NotNull E<T> e10) {
        return new G(e10, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        if (r3 == 0) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> N<T> c(InterfaceC13842i<? extends T> interfaceC13842i, int i10) {
        AbstractC13982d abstractC13982d;
        InterfaceC13842i<T> i11;
        int w10 = Vf.u.w(i10, gg.l.f89682z4.a()) - i10;
        if (!(interfaceC13842i instanceof AbstractC13982d) || (i11 = (abstractC13982d = (AbstractC13982d) interfaceC13842i).i()) == null) {
            return new N<>(interfaceC13842i, w10, gg.i.SUSPEND, yf.l.f130251b);
        }
        int i12 = abstractC13982d.f95084c;
        if (i12 != -3 && i12 != -2 && i12 != 0) {
            w10 = i12;
        } else if (abstractC13982d.f95085d != gg.i.SUSPEND) {
            if (i10 == 0) {
                w10 = 1;
            }
            w10 = 0;
        }
        return new N<>(i11, w10, abstractC13982d.f95085d, abstractC13982d.f95083b);
    }

    public static final <T> K0 d(eg.S s10, yf.j jVar, InterfaceC13842i<? extends T> interfaceC13842i, D<T> d10, O o10, T t10) {
        return C13119i.d(s10, jVar, kotlin.jvm.internal.M.g(o10, O.f93244a.c()) ? eg.U.DEFAULT : eg.U.UNDISPATCHED, new a(o10, interfaceC13842i, d10, t10, null));
    }

    public static final <T> void e(eg.S s10, yf.j jVar, InterfaceC13842i<? extends T> interfaceC13842i, InterfaceC13150y<U<T>> interfaceC13150y) {
        C13123k.f(s10, jVar, null, new b(interfaceC13842i, interfaceC13150y, null), 2, null);
    }

    @NotNull
    public static final <T> I<T> f(@NotNull I<? extends T> i10, @NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return new Z(i10, pVar);
    }

    @NotNull
    public static final <T> I<T> g(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull eg.S s10, @NotNull O o10, int i10) {
        N c10 = c(interfaceC13842i, i10);
        D a10 = K.a(i10, c10.f93241b, c10.f93242c);
        return new F(a10, d(s10, c10.f93243d, c10.f93240a, a10, o10, K.f93237a));
    }

    public static I h(InterfaceC13842i interfaceC13842i, eg.S s10, O o10, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return C13844k.G1(interfaceC13842i, s10, o10, i10);
    }

    @Nullable
    public static final <T> Object i(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull eg.S s10, @NotNull yf.f<? super U<? extends T>> fVar) {
        N c10 = c(interfaceC13842i, 1);
        InterfaceC13150y c11 = C13088A.c(null, 1, null);
        e(s10, c10.f93243d, c10.f93240a, c11);
        return c11.Z(fVar);
    }

    @NotNull
    public static final <T> U<T> j(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull eg.S s10, @NotNull O o10, T t10) {
        N c10 = c(interfaceC13842i, 1);
        E a10 = W.a(t10);
        return new G(a10, d(s10, c10.f93243d, c10.f93240a, a10, o10, t10));
    }
}

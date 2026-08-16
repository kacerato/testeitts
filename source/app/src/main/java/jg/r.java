package jg;

import android.view.KeyEvent;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import eg.A0;
import eg.C13108c0;
import gg.InterfaceC13358B;
import gg.InterfaceC13360D;
import gg.p;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import kotlin.time.C14036h;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.flow.internal.ChildCancelledException;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.C14995b;

@t0({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,415:1\n1#2:416\n*E\n"})
public final class r {

    public static final class a<T> extends kotlin.jvm.internal.O implements Mf.l<T, Long> {

        public final long f93423b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(long j10) {
            super(1);
            this.f93423b = j10;
        }

        @Override
        @NotNull
        public final Long invoke(T t10) {
            return Long.valueOf(this.f93423b);
        }
    }

    public static final class b<T> extends kotlin.jvm.internal.O implements Mf.l<T, Long> {

        public final Mf.l<T, C14036h> f93424b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(Mf.l<? super T, C14036h> lVar) {
            super(1);
            this.f93424b = lVar;
        }

        @Override
        @NotNull
        public final Long invoke(T t10) {
            return Long.valueOf(C13108c0.e(this.f93424b.invoke(t10).m0()));
        }
    }

    @t0({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,415:1\n18#2:416\n18#2:418\n1#3:417\n55#4,8:419\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n*L\n218#1:416\n221#1:418\n228#1:419,8\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", i = {0, 0, 0, 0, 1, 1, 1}, l = {221, 426}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "timeoutMillis", "downstream", "values", "lastValue"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2"})
    public static final class c<T> extends Bf.q implements Mf.q<eg.S, InterfaceC13843j<? super T>, yf.f<? super P0>, Object> {

        public Object f93425b;

        public Object f93426c;

        public int f93427d;

        public Object f93428e;

        public Object f93429f;

        public final Mf.l<T, Long> f93430g;

        public final InterfaceC13842i<T> f93431h;

        @t0({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,415:1\n18#2:416\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n*L\n232#1:416\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1", f = "Delay.kt", i = {}, l = {232}, m = "invokeSuspend", n = {}, s = {})
        public static final class a extends Bf.q implements Mf.l<yf.f<? super P0>, Object> {

            public int f93432b;

            public final InterfaceC13843j<T> f93433c;

            public final m0.h<Object> f93434d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(InterfaceC13843j<? super T> interfaceC13843j, m0.h<Object> hVar, yf.f<? super a> fVar) {
                super(1, fVar);
                this.f93433c = interfaceC13843j;
                this.f93434d = hVar;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@NotNull yf.f<?> fVar) {
                return new a(this.f93433c, this.f93434d, fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93432b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13843j<T> interfaceC13843j = this.f93433c;
                    mg.T t10 = kg.s.f95204a;
                    T t11 = this.f93434d.f95754b;
                    if (t11 == t10) {
                        t11 = null;
                    }
                    this.f93432b = 1;
                    if (interfaceC13843j.emit(t11, this) == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                this.f93434d.f95754b = null;
                return P0.f98194a;
            }

            @Override
            @Nullable
            public final Object invoke(@Nullable yf.f<? super P0> fVar) {
                return ((a) create(fVar)).invokeSuspend(P0.f98194a);
            }
        }

        @t0({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,415:1\n514#2,6:416\n530#2,4:422\n534#2:428\n1#3:426\n18#4:427\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n*L\n238#1:416,6\n239#1:422,4\n239#1:428\n242#1:427\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2", f = "Delay.kt", i = {0}, l = {242}, m = "invokeSuspend", n = {"$this$onFailure_u2dWpGqRn0$iv"}, s = {"L$0"})
        public static final class b extends Bf.q implements Mf.p<gg.p<? extends Object>, yf.f<? super P0>, Object> {

            public Object f93435b;

            public int f93436c;

            public Object f93437d;

            public final m0.h<Object> f93438e;

            public final InterfaceC13843j<T> f93439f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public b(m0.h<Object> hVar, InterfaceC13843j<? super T> interfaceC13843j, yf.f<? super b> fVar) {
                super(2, fVar);
                this.f93438e = hVar;
                this.f93439f = interfaceC13843j;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                b bVar = new b(this.f93438e, this.f93439f, fVar);
                bVar.f93437d = obj;
                return bVar;
            }

            @Override
            public Object invoke(gg.p<? extends Object> pVar, yf.f<? super P0> fVar) {
                return z(pVar.o(), fVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                m0.h<Object> hVar;
                m0.h<Object> hVar2;
                Object l10 = Af.d.l();
                int i10 = this.f93436c;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    T t10 = (T) ((gg.p) this.f93437d).o();
                    hVar = this.f93438e;
                    boolean z10 = t10 instanceof p.c;
                    if (!z10) {
                        hVar.f95754b = t10;
                    }
                    InterfaceC13843j<T> interfaceC13843j = this.f93439f;
                    if (z10) {
                        Throwable f10 = gg.p.f(t10);
                        if (f10 != null) {
                            throw f10;
                        }
                        Object obj2 = hVar.f95754b;
                        if (obj2 != null) {
                            if (obj2 == kg.s.f95204a) {
                                obj2 = null;
                            }
                            this.f93437d = t10;
                            this.f93435b = hVar;
                            this.f93436c = 1;
                            if (interfaceC13843j.emit(obj2, this) == l10) {
                                return l10;
                            }
                            hVar2 = hVar;
                        }
                        hVar.f95754b = (T) kg.s.f95206c;
                    }
                    return P0.f98194a;
                }
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                hVar2 = (m0.h) this.f93435b;
                C14418j0.n(obj);
                hVar = hVar2;
                hVar.f95754b = (T) kg.s.f95206c;
                return P0.f98194a;
            }

            @Nullable
            public final Object z(@NotNull Object obj, @Nullable yf.f<? super P0> fVar) {
                return ((b) create(gg.p.b(obj), fVar)).invokeSuspend(P0.f98194a);
            }
        }

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1", f = "Delay.kt", i = {}, l = {210}, m = "invokeSuspend", n = {}, s = {})
        public static final class C1817c extends Bf.q implements Mf.p<InterfaceC13358B<? super Object>, yf.f<? super P0>, Object> {

            public int f93440b;

            public Object f93441c;

            public final InterfaceC13842i<T> f93442d;

            public static final class a<T> implements InterfaceC13843j {

                public final InterfaceC13358B<Object> f93443b;

                @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1", f = "Delay.kt", i = {}, l = {210}, m = "emit", n = {}, s = {})
                public static final class C1818a extends Bf.d {

                    public Object f93444b;

                    public final a<T> f93445c;

                    public int f93446d;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    public C1818a(a<? super T> aVar, yf.f<? super C1818a> fVar) {
                        super(fVar);
                        this.f93445c = aVar;
                    }

                    @Override
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.f93444b = obj;
                        this.f93446d |= Integer.MIN_VALUE;
                        return this.f93445c.emit(null, this);
                    }
                }

                public a(InterfaceC13358B<Object> interfaceC13358B) {
                    this.f93443b = interfaceC13358B;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Override
                @Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                    C1818a c1818a;
                    int i10;
                    if (fVar instanceof C1818a) {
                        c1818a = (C1818a) fVar;
                        int i11 = c1818a.f93446d;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c1818a.f93446d = i11 - Integer.MIN_VALUE;
                            Object obj = c1818a.f93444b;
                            Object l10 = Af.d.l();
                            i10 = c1818a.f93446d;
                            if (i10 != 0) {
                                C14418j0.n(obj);
                                InterfaceC13358B<Object> interfaceC13358B = this.f93443b;
                                if (t10 == null) {
                                    t10 = (T) kg.s.f95204a;
                                }
                                c1818a.f93446d = 1;
                                if (interfaceC13358B.M(t10, c1818a) == l10) {
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
                    c1818a = new C1818a(this, fVar);
                    Object obj2 = c1818a.f93444b;
                    Object l102 = Af.d.l();
                    i10 = c1818a.f93446d;
                    if (i10 != 0) {
                    }
                    return P0.f98194a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C1817c(InterfaceC13842i<? extends T> interfaceC13842i, yf.f<? super C1817c> fVar) {
                super(2, fVar);
                this.f93442d = interfaceC13842i;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                C1817c c1817c = new C1817c(this.f93442d, fVar);
                c1817c.f93441c = obj;
                return c1817c;
            }

            @Nullable
            public final Object invoke2(@NotNull InterfaceC13358B<Object> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
                return ((C1817c) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93440b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13358B interfaceC13358B = (InterfaceC13358B) this.f93441c;
                    InterfaceC13842i<T> interfaceC13842i = this.f93442d;
                    a aVar = new a(interfaceC13358B);
                    this.f93440b = 1;
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
            }

            @Override
            public Object invoke(InterfaceC13358B<? super Object> interfaceC13358B, yf.f<? super P0> fVar) {
                return invoke2((InterfaceC13358B<Object>) interfaceC13358B, fVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(Mf.l<? super T, Long> lVar, InterfaceC13842i<? extends T> interfaceC13842i, yf.f<? super c> fVar) {
            super(3, fVar);
            this.f93430g = lVar;
            this.f93431h = interfaceC13842i;
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00e4 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0066  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00e2 -> B:6:0x001e). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            m0.h hVar;
            InterfaceC13843j interfaceC13843j;
            InterfaceC13360D interfaceC13360D;
            m0.g gVar;
            m0.h hVar2;
            InterfaceC13360D interfaceC13360D2;
            InterfaceC13843j interfaceC13843j2;
            pg.l lVar;
            Object l10 = Af.d.l();
            int i10 = this.f93427d;
            if (i10 == 0) {
                C14418j0.n(obj);
                eg.S s10 = (eg.S) this.f93428e;
                InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) this.f93429f;
                InterfaceC13360D f10 = gg.z.f(s10, null, 0, new C1817c(this.f93431h, null), 3, null);
                hVar = new m0.h();
                interfaceC13843j = interfaceC13843j3;
                interfaceC13360D = f10;
                if (hVar.f95754b == kg.s.f95206c) {
                }
            } else if (i10 == 1) {
                gVar = (m0.g) this.f93426c;
                hVar = (m0.h) this.f93425b;
                interfaceC13360D = (InterfaceC13360D) this.f93429f;
                interfaceC13843j = (InterfaceC13843j) this.f93428e;
                C14418j0.n(obj);
                hVar.f95754b = null;
                m0.g gVar2 = gVar;
                hVar2 = hVar;
                interfaceC13360D2 = interfaceC13360D;
                interfaceC13843j2 = interfaceC13843j;
                lVar = new pg.l(getContext());
                if (hVar2.f95754b != null) {
                }
                lVar.d(interfaceC13360D2.r(), new b(hVar2, interfaceC13843j2, null));
                this.f93428e = interfaceC13843j2;
                this.f93429f = interfaceC13360D2;
                this.f93425b = hVar2;
                this.f93426c = null;
                this.f93427d = 2;
                if (lVar.X(this) == l10) {
                }
                interfaceC13843j = interfaceC13843j2;
                interfaceC13360D = interfaceC13360D2;
                hVar = hVar2;
                if (hVar.f95754b == kg.s.f95206c) {
                }
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                hVar2 = (m0.h) this.f93425b;
                interfaceC13360D2 = (InterfaceC13360D) this.f93429f;
                interfaceC13843j2 = (InterfaceC13843j) this.f93428e;
                C14418j0.n(obj);
                interfaceC13843j = interfaceC13843j2;
                interfaceC13360D = interfaceC13360D2;
                hVar = hVar2;
                if (hVar.f95754b == kg.s.f95206c) {
                    gVar = new m0.g();
                    T t10 = hVar.f95754b;
                    if (t10 != null) {
                        Mf.l<T, Long> lVar2 = this.f93430g;
                        mg.T t11 = kg.s.f95204a;
                        if (t10 == t11) {
                            t10 = null;
                        }
                        long longValue = lVar2.invoke(t10).longValue();
                        gVar.f95753b = longValue;
                        if (longValue < 0) {
                            throw new IllegalArgumentException("Debounce timeout should not be negative");
                        }
                        if (longValue == 0) {
                            T t12 = hVar.f95754b;
                            if (t12 == t11) {
                                t12 = null;
                            }
                            this.f93428e = interfaceC13843j;
                            this.f93429f = interfaceC13360D;
                            this.f93425b = hVar;
                            this.f93426c = gVar;
                            this.f93427d = 1;
                            if (interfaceC13843j.emit(t12, this) == l10) {
                                return l10;
                            }
                            hVar.f95754b = null;
                        }
                    }
                    m0.g gVar22 = gVar;
                    hVar2 = hVar;
                    interfaceC13360D2 = interfaceC13360D;
                    interfaceC13843j2 = interfaceC13843j;
                    lVar = new pg.l(getContext());
                    if (hVar2.f95754b != null) {
                        C14995b.a(lVar, gVar22.f95753b, new a(interfaceC13843j2, hVar2, null));
                    }
                    lVar.d(interfaceC13360D2.r(), new b(hVar2, interfaceC13843j2, null));
                    this.f93428e = interfaceC13843j2;
                    this.f93429f = interfaceC13360D2;
                    this.f93425b = hVar2;
                    this.f93426c = null;
                    this.f93427d = 2;
                    if (lVar.X(this) == l10) {
                        return l10;
                    }
                    interfaceC13843j = interfaceC13843j2;
                    interfaceC13360D = interfaceC13360D2;
                    hVar = hVar2;
                    if (hVar.f95754b == kg.s.f95206c) {
                        return P0.f98194a;
                    }
                }
            }
        }

        @Override
        @Nullable
        public final Object n(@NotNull eg.S s10, @NotNull InterfaceC13843j<? super T> interfaceC13843j, @Nullable yf.f<? super P0> fVar) {
            c cVar = new c(this.f93430g, this.f93431h, fVar);
            cVar.f93428e = s10;
            cVar.f93429f = interfaceC13843j;
            return cVar.invokeSuspend(P0.f98194a);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$fixedPeriodTicker$3", f = "Delay.kt", i = {0, 1, 2}, l = {TypedValues.AttributesType.TYPE_PATH_ROTATE, TypedValues.AttributesType.TYPE_PIVOT_TARGET, 319}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
    public static final class d extends Bf.q implements Mf.p<InterfaceC13358B<? super P0>, yf.f<? super P0>, Object> {

        public int f93447b;

        public Object f93448c;

        public final long f93449d;

        public final long f93450e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(long j10, long j11, yf.f<? super d> fVar) {
            super(2, fVar);
            this.f93449d = j10;
            this.f93450e = j11;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            d dVar = new d(this.f93449d, this.f93450e, fVar);
            dVar.f93448c = obj;
            return dVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<? super P0> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((d) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        /* JADX WARN: Removed duplicated region for block: B:14:0x004f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005c A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x005a -> B:12:0x003f). Please report as a decompilation issue!!! */
        @Override
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = Af.d.l()
                int r1 = r7.f93447b
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L2a
                if (r1 == r4) goto L22
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                goto L22
            L12:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1a:
                java.lang.Object r1 = r7.f93448c
                gg.B r1 = (gg.InterfaceC13358B) r1
                nf.C14418j0.n(r8)
                goto L50
            L22:
                java.lang.Object r1 = r7.f93448c
                gg.B r1 = (gg.InterfaceC13358B) r1
                nf.C14418j0.n(r8)
                goto L3f
            L2a:
                nf.C14418j0.n(r8)
                java.lang.Object r8 = r7.f93448c
                r1 = r8
                gg.B r1 = (gg.InterfaceC13358B) r1
                long r5 = r7.f93449d
                r7.f93448c = r1
                r7.f93447b = r4
                java.lang.Object r8 = eg.C13108c0.b(r5, r7)
                if (r8 != r0) goto L3f
                return r0
            L3f:
                gg.E r8 = r1.getChannel()
                nf.P0 r4 = nf.P0.f98194a
                r7.f93448c = r1
                r7.f93447b = r3
                java.lang.Object r8 = r8.M(r4, r7)
                if (r8 != r0) goto L50
                return r0
            L50:
                long r4 = r7.f93450e
                r7.f93448c = r1
                r7.f93447b = r2
                java.lang.Object r8 = eg.C13108c0.b(r4, r7)
                if (r8 != r0) goto L3f
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: jg.r.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @t0({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,415:1\n55#2,8:416\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n*L\n284#1:416,8\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", f = "Delay.kt", i = {0, 0, 0, 0}, l = {TypedValues.CycleType.TYPE_WAVE_PERIOD}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "ticker"}, s = {"L$0", "L$1", "L$2", "L$3"})
    public static final class e<T> extends Bf.q implements Mf.q<eg.S, InterfaceC13843j<? super T>, yf.f<? super P0>, Object> {

        public Object f93451b;

        public Object f93452c;

        public int f93453d;

        public Object f93454e;

        public Object f93455f;

        public final long f93456g;

        public final InterfaceC13842i<T> f93457h;

        @t0({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,415:1\n514#2,6:416\n530#2,4:422\n534#2:427\n1#3:426\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1\n*L\n287#1:416,6\n288#1:422,4\n288#1:427\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$1", f = "Delay.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        public static final class a extends Bf.q implements Mf.p<gg.p<? extends Object>, yf.f<? super P0>, Object> {

            public int f93458b;

            public Object f93459c;

            public final m0.h<Object> f93460d;

            public final InterfaceC13360D<P0> f93461e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(m0.h<Object> hVar, InterfaceC13360D<P0> interfaceC13360D, yf.f<? super a> fVar) {
                super(2, fVar);
                this.f93460d = hVar;
                this.f93461e = interfaceC13360D;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                a aVar = new a(this.f93460d, this.f93461e, fVar);
                aVar.f93459c = obj;
                return aVar;
            }

            @Override
            public Object invoke(gg.p<? extends Object> pVar, yf.f<? super P0> fVar) {
                return z(pVar.o(), fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Af.d.l();
                if (this.f93458b != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
                T t10 = (T) ((gg.p) this.f93459c).o();
                m0.h<Object> hVar = this.f93460d;
                boolean z10 = t10 instanceof p.c;
                if (!z10) {
                    hVar.f95754b = t10;
                }
                InterfaceC13360D<P0> interfaceC13360D = this.f93461e;
                if (z10) {
                    Throwable f10 = gg.p.f(t10);
                    if (f10 != null) {
                        throw f10;
                    }
                    interfaceC13360D.a(new ChildCancelledException());
                    hVar.f95754b = (T) kg.s.f95206c;
                }
                return P0.f98194a;
            }

            @Nullable
            public final Object z(@NotNull Object obj, @Nullable yf.f<? super P0> fVar) {
                return ((a) create(gg.p.b(obj), fVar)).invokeSuspend(P0.f98194a);
            }
        }

        @t0({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$2\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,415:1\n18#2:416\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$2\n*L\n299#1:416\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$2", f = "Delay.kt", i = {}, l = {299}, m = "invokeSuspend", n = {}, s = {})
        public static final class b extends Bf.q implements Mf.p<P0, yf.f<? super P0>, Object> {

            public int f93462b;

            public final m0.h<Object> f93463c;

            public final InterfaceC13843j<T> f93464d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public b(m0.h<Object> hVar, InterfaceC13843j<? super T> interfaceC13843j, yf.f<? super b> fVar) {
                super(2, fVar);
                this.f93463c = hVar;
                this.f93464d = interfaceC13843j;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                return new b(this.f93463c, this.f93464d, fVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93462b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    m0.h<Object> hVar = this.f93463c;
                    Object obj2 = hVar.f95754b;
                    if (obj2 == null) {
                        return P0.f98194a;
                    }
                    hVar.f95754b = null;
                    InterfaceC13843j<T> interfaceC13843j = this.f93464d;
                    if (obj2 == kg.s.f95204a) {
                        obj2 = null;
                    }
                    this.f93462b = 1;
                    if (interfaceC13843j.emit(obj2, this) == l10) {
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

            @Override
            @Nullable
            public final Object invoke(@NotNull P0 p02, @Nullable yf.f<? super P0> fVar) {
                return ((b) create(p02, fVar)).invokeSuspend(P0.f98194a);
            }
        }

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$values$1", f = "Delay.kt", i = {}, l = {KeyEvent.KEYCODE_PASTE}, m = "invokeSuspend", n = {}, s = {})
        public static final class c extends Bf.q implements Mf.p<InterfaceC13358B<? super Object>, yf.f<? super P0>, Object> {

            public int f93465b;

            public Object f93466c;

            public final InterfaceC13842i<T> f93467d;

            public static final class a<T> implements InterfaceC13843j {

                public final InterfaceC13358B<Object> f93468b;

                @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$values$1$1", f = "Delay.kt", i = {}, l = {KeyEvent.KEYCODE_PASTE}, m = "emit", n = {}, s = {})
                public static final class C1819a extends Bf.d {

                    public Object f93469b;

                    public final a<T> f93470c;

                    public int f93471d;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    public C1819a(a<? super T> aVar, yf.f<? super C1819a> fVar) {
                        super(fVar);
                        this.f93470c = aVar;
                    }

                    @Override
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.f93469b = obj;
                        this.f93471d |= Integer.MIN_VALUE;
                        return this.f93470c.emit(null, this);
                    }
                }

                public a(InterfaceC13358B<Object> interfaceC13358B) {
                    this.f93468b = interfaceC13358B;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Override
                @Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
                    C1819a c1819a;
                    int i10;
                    if (fVar instanceof C1819a) {
                        c1819a = (C1819a) fVar;
                        int i11 = c1819a.f93471d;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            c1819a.f93471d = i11 - Integer.MIN_VALUE;
                            Object obj = c1819a.f93469b;
                            Object l10 = Af.d.l();
                            i10 = c1819a.f93471d;
                            if (i10 != 0) {
                                C14418j0.n(obj);
                                InterfaceC13358B<Object> interfaceC13358B = this.f93468b;
                                if (t10 == null) {
                                    t10 = (T) kg.s.f95204a;
                                }
                                c1819a.f93471d = 1;
                                if (interfaceC13358B.M(t10, c1819a) == l10) {
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
                    c1819a = new C1819a(this, fVar);
                    Object obj2 = c1819a.f93469b;
                    Object l102 = Af.d.l();
                    i10 = c1819a.f93471d;
                    if (i10 != 0) {
                    }
                    return P0.f98194a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public c(InterfaceC13842i<? extends T> interfaceC13842i, yf.f<? super c> fVar) {
                super(2, fVar);
                this.f93467d = interfaceC13842i;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                c cVar = new c(this.f93467d, fVar);
                cVar.f93466c = obj;
                return cVar;
            }

            @Nullable
            public final Object invoke2(@NotNull InterfaceC13358B<Object> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
                return ((c) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object l10 = Af.d.l();
                int i10 = this.f93465b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13358B interfaceC13358B = (InterfaceC13358B) this.f93466c;
                    InterfaceC13842i<T> interfaceC13842i = this.f93467d;
                    a aVar = new a(interfaceC13358B);
                    this.f93465b = 1;
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
            }

            @Override
            public Object invoke(InterfaceC13358B<? super Object> interfaceC13358B, yf.f<? super P0> fVar) {
                return invoke2((InterfaceC13358B<Object>) interfaceC13358B, fVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public e(long j10, InterfaceC13842i<? extends T> interfaceC13842i, yf.f<? super e> fVar) {
            super(3, fVar);
            this.f93456g = j10;
            this.f93457h = interfaceC13842i;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13360D g10;
            InterfaceC13843j interfaceC13843j;
            InterfaceC13360D interfaceC13360D;
            m0.h hVar;
            InterfaceC13360D interfaceC13360D2;
            Object l10 = Af.d.l();
            int i10 = this.f93453d;
            if (i10 == 0) {
                C14418j0.n(obj);
                eg.S s10 = (eg.S) this.f93454e;
                InterfaceC13843j interfaceC13843j2 = (InterfaceC13843j) this.f93455f;
                InterfaceC13360D f10 = gg.z.f(s10, null, -1, new c(this.f93457h, null), 1, null);
                m0.h hVar2 = new m0.h();
                g10 = r.g(s10, this.f93456g, 0L, 2, null);
                interfaceC13843j = interfaceC13843j2;
                interfaceC13360D = f10;
                hVar = hVar2;
                interfaceC13360D2 = g10;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                interfaceC13360D2 = (InterfaceC13360D) this.f93452c;
                hVar = (m0.h) this.f93451b;
                interfaceC13360D = (InterfaceC13360D) this.f93455f;
                interfaceC13843j = (InterfaceC13843j) this.f93454e;
                C14418j0.n(obj);
            }
            while (hVar.f95754b != kg.s.f95206c) {
                pg.l lVar = new pg.l(getContext());
                lVar.d(interfaceC13360D.r(), new a(hVar, interfaceC13360D2, null));
                lVar.d(interfaceC13360D2.I(), new b(hVar, interfaceC13843j, null));
                this.f93454e = interfaceC13843j;
                this.f93455f = interfaceC13360D;
                this.f93451b = hVar;
                this.f93452c = interfaceC13360D2;
                this.f93453d = 1;
                if (lVar.X(this) == l10) {
                    return l10;
                }
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object n(@NotNull eg.S s10, @NotNull InterfaceC13843j<? super T> interfaceC13843j, @Nullable yf.f<? super P0> fVar) {
            e eVar = new e(this.f93456g, this.f93457h, fVar);
            eVar.f93454e = s10;
            eVar.f93455f = interfaceC13843j;
            return eVar.invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n+ 2 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n+ 3 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,415:1\n31#2:416\n32#2:425\n55#3,8:417\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n*L\n401#1:416\n401#1:425\n401#1:417,8\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1", f = "Delay.kt", i = {0, 0}, l = {TypedValues.CycleType.TYPE_WAVE_OFFSET}, m = "invokeSuspend", n = {"downStream", "values"}, s = {"L$0", "L$1"})
    public static final class f<T> extends Bf.q implements Mf.q<eg.S, InterfaceC13843j<? super T>, yf.f<? super P0>, Object> {

        public long f93472b;

        public int f93473c;

        public Object f93474d;

        public Object f93475e;

        public final long f93476f;

        public final InterfaceC13842i<T> f93477g;

        @t0({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,415:1\n514#2,6:416\n548#2,5:422\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1$1$1\n*L\n403#1:416,6\n405#1:422,5\n*E\n"})
        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$1", f = "Delay.kt", i = {0}, l = {404}, m = "invokeSuspend", n = {"$this$onSuccess_u2dWpGqRn0$iv"}, s = {"L$0"})
        public static final class a extends Bf.q implements Mf.p<gg.p<? extends T>, yf.f<? super Boolean>, Object> {

            public int f93478b;

            public Object f93479c;

            public final InterfaceC13843j<T> f93480d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(InterfaceC13843j<? super T> interfaceC13843j, yf.f<? super a> fVar) {
                super(2, fVar);
                this.f93480d = interfaceC13843j;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
                a aVar = new a(this.f93480d, fVar);
                aVar.f93479c = obj;
                return aVar;
            }

            @Override
            public Object invoke(Object obj, yf.f<? super Boolean> fVar) {
                return z(((gg.p) obj).o(), fVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:11:0x0045  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x003c  */
            @Override
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(@NotNull Object obj) {
                Object o10;
                Object obj2;
                Object l10 = Af.d.l();
                int i10 = this.f93478b;
                if (i10 == 0) {
                    C14418j0.n(obj);
                    o10 = ((gg.p) this.f93479c).o();
                    InterfaceC13843j<T> interfaceC13843j = this.f93480d;
                    if (!(o10 instanceof p.c)) {
                        this.f93479c = o10;
                        this.f93478b = 1;
                        if (interfaceC13843j.emit(o10, this) == l10) {
                            return l10;
                        }
                        obj2 = o10;
                    }
                    if (o10 instanceof p.a) {
                        return Bf.b.a(true);
                    }
                    gg.p.f(o10);
                    return Bf.b.a(false);
                }
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj2 = this.f93479c;
                C14418j0.n(obj);
                o10 = obj2;
                if (o10 instanceof p.a) {
                }
            }

            @Nullable
            public final Object z(@NotNull Object obj, @Nullable yf.f<? super Boolean> fVar) {
                return ((a) create(gg.p.b(obj), fVar)).invokeSuspend(P0.f98194a);
            }
        }

        @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2", f = "Delay.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        public static final class b extends Bf.q implements Mf.l<yf.f<?>, Object> {

            public int f93481b;

            public final long f93482c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(long j10, yf.f<? super b> fVar) {
                super(1, fVar);
                this.f93482c = j10;
            }

            @Override
            @NotNull
            public final yf.f<P0> create(@NotNull yf.f<?> fVar) {
                return new b(this.f93482c, fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Af.d.l();
                if (this.f93481b != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
                throw new TimeoutCancellationException("Timed out waiting for " + ((Object) C14036h.h0(this.f93482c)));
            }

            @Override
            @Nullable
            public final Object invoke(@Nullable yf.f<?> fVar) {
                return ((b) create(fVar)).invokeSuspend(P0.f98194a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public f(long j10, InterfaceC13842i<? extends T> interfaceC13842i, yf.f<? super f> fVar) {
            super(3, fVar);
            this.f93476f = j10;
            this.f93477g = interfaceC13842i;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        /* JADX WARN: Removed duplicated region for block: B:11:0x007f  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0076 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0074 -> B:5:0x0077). Please report as a decompilation issue!!! */
        @Override
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = Af.d.l()
                int r1 = r9.f93473c
                r2 = 1
                r3 = 0
                if (r1 == 0) goto L22
                if (r1 != r2) goto L1a
                long r4 = r9.f93472b
                java.lang.Object r1 = r9.f93475e
                gg.D r1 = (gg.InterfaceC13360D) r1
                java.lang.Object r6 = r9.f93474d
                jg.j r6 = (jg.InterfaceC13843j) r6
                nf.C14418j0.n(r10)
                goto L77
            L1a:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L22:
                nf.C14418j0.n(r10)
                java.lang.Object r10 = r9.f93474d
                eg.S r10 = (eg.S) r10
                java.lang.Object r1 = r9.f93475e
                jg.j r1 = (jg.InterfaceC13843j) r1
                long r4 = r9.f93476f
                kotlin.time.h$a r6 = kotlin.time.C14036h.f95864c
                long r6 = r6.W()
                int r4 = kotlin.time.C14036h.m(r4, r6)
                if (r4 <= 0) goto L82
                jg.i<T> r4 = r9.f93477g
                r5 = 0
                r6 = 2
                jg.i r4 = jg.C13844k.q(r4, r5, r3, r6, r3)
                gg.D r10 = jg.C13844k.o1(r4, r10)
                long r4 = r9.f93476f
                r6 = r1
                r1 = r10
            L4b:
                pg.l r10 = new pg.l
                yf.j r7 = r9.getContext()
                r10.<init>(r7)
                pg.g r7 = r1.r()
                jg.r$f$a r8 = new jg.r$f$a
                r8.<init>(r6, r3)
                r10.d(r7, r8)
                jg.r$f$b r7 = new jg.r$f$b
                r7.<init>(r4, r3)
                pg.C14995b.b(r10, r4, r7)
                r9.f93474d = r6
                r9.f93475e = r1
                r9.f93472b = r4
                r9.f93473c = r2
                java.lang.Object r10 = r10.X(r9)
                if (r10 != r0) goto L77
                return r0
            L77:
                java.lang.Boolean r10 = (java.lang.Boolean) r10
                boolean r10 = r10.booleanValue()
                if (r10 != 0) goto L4b
                nf.P0 r10 = nf.P0.f98194a
                return r10
            L82:
                kotlinx.coroutines.TimeoutCancellationException r10 = new kotlinx.coroutines.TimeoutCancellationException
                java.lang.String r0 = "Timed out immediately"
                r10.<init>(r0)
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: jg.r.f.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override
        @Nullable
        public final Object n(@NotNull eg.S s10, @NotNull InterfaceC13843j<? super T> interfaceC13843j, @Nullable yf.f<? super P0> fVar) {
            f fVar2 = new f(this.f93476f, this.f93477g, fVar);
            fVar2.f93474d = s10;
            fVar2.f93475e = interfaceC13843j;
            return fVar2.invokeSuspend(P0.f98194a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> a(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        if (j10 >= 0) {
            return j10 == 0 ? interfaceC13842i : e(interfaceC13842i, new a(j10));
        }
        throw new IllegalArgumentException("Debounce timeout should not be negative");
    }

    @nf.Y
    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> b(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.l<? super T, Long> lVar) {
        return e(interfaceC13842i, lVar);
    }

    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> c(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return C13844k.a0(interfaceC13842i, C13108c0.e(j10));
    }

    @nf.Y
    @NotNull
    @Lf.j(name = "debounceDuration")
    @A0
    public static final <T> InterfaceC13842i<T> d(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.l<? super T, C14036h> lVar) {
        return e(interfaceC13842i, new b(lVar));
    }

    public static final <T> InterfaceC13842i<T> e(InterfaceC13842i<? extends T> interfaceC13842i, Mf.l<? super T, Long> lVar) {
        return kg.n.b(new c(lVar, interfaceC13842i, null));
    }

    @NotNull
    public static final InterfaceC13360D<P0> f(@NotNull eg.S s10, long j10, long j11) {
        if (j10 < 0) {
            throw new IllegalArgumentException(("Expected non-negative delay, but has " + j10 + " ms").toString());
        }
        if (j11 >= 0) {
            return gg.z.f(s10, null, 0, new d(j11, j10, null), 1, null);
        }
        throw new IllegalArgumentException(("Expected non-negative initial delay, but has " + j11 + " ms").toString());
    }

    public static InterfaceC13360D g(eg.S s10, long j10, long j11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j11 = j10;
        }
        return C13844k.y0(s10, j10, j11);
    }

    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> h(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        if (j10 > 0) {
            return kg.n.b(new e(j10, interfaceC13842i, null));
        }
        throw new IllegalArgumentException("Sample period should be positive");
    }

    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> i(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return C13844k.B1(interfaceC13842i, C13108c0.e(j10));
    }

    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> j(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return k(interfaceC13842i, j10);
    }

    public static final <T> InterfaceC13842i<T> k(InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return kg.n.b(new f(j10, interfaceC13842i, null));
    }
}

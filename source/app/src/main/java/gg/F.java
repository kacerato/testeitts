package gg;

import eg.AbstractC13105b;
import eg.B0;
import eg.C13107c;
import eg.C13108c0;
import eg.C13122j0;
import eg.C13143u0;
import eg.InterfaceC13104a1;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nTickerChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TickerChannels.kt\nkotlinx/coroutines/channels/TickerChannelsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"})
public final class F {

    @Bf.f(c = "kotlinx.coroutines.channels.TickerChannelsKt", f = "TickerChannels.kt", i = {0, 0, 1, 1, 2, 2}, l = {106, 108, 109}, m = "fixedDelayTicker", n = {"channel", "delayMillis", "channel", "delayMillis", "channel", "delayMillis"}, s = {"L$0", "J$0", "L$0", "J$0", "L$0", "J$0"})
    public static final class a extends Bf.d {

        public long f89559b;

        public Object f89560c;

        public Object f89561d;

        public int f89562e;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89561d = obj;
            this.f89562e |= Integer.MIN_VALUE;
            return F.c(0L, 0L, null, this);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.TickerChannelsKt", f = "TickerChannels.kt", i = {0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3}, l = {84, 88, 94, 96}, m = "fixedPeriodTicker", n = {"channel", "delayMillis", "deadline", "channel", "deadline", "delayNs", "channel", "deadline", "delayNs", "channel", "deadline", "delayNs"}, s = {"L$0", "J$0", "J$1", "L$0", "J$0", "J$1", "L$0", "J$0", "J$1", "L$0", "J$0", "J$1"})
    public static final class b extends Bf.d {

        public long f89563b;

        public long f89564c;

        public Object f89565d;

        public Object f89566e;

        public int f89567f;

        public b(yf.f<? super b> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89566e = obj;
            this.f89567f |= Integer.MIN_VALUE;
            return F.d(0L, 0L, null, this);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.TickerChannelsKt$ticker$3", f = "TickerChannels.kt", i = {}, l = {72, 73}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends Bf.q implements Mf.p<InterfaceC13358B<? super P0>, yf.f<? super P0>, Object> {

        public int f89568b;

        public Object f89569c;

        public final G f89570d;

        public final long f89571e;

        public final long f89572f;

        public class a {

            public static final int[] f89573a;

            static {
                int[] iArr = new int[G.values().length];
                try {
                    iArr[G.FIXED_PERIOD.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[G.FIXED_DELAY.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f89573a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(G g10, long j10, long j11, yf.f<? super c> fVar) {
            super(2, fVar);
            this.f89570d = g10;
            this.f89571e = j10;
            this.f89572f = j11;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            c cVar = new c(this.f89570d, this.f89571e, this.f89572f, fVar);
            cVar.f89569c = obj;
            return cVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<? super P0> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((c) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f89568b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13358B interfaceC13358B = (InterfaceC13358B) this.f89569c;
                int i11 = a.f89573a[this.f89570d.ordinal()];
                if (i11 == 1) {
                    long j10 = this.f89571e;
                    long j11 = this.f89572f;
                    E channel = interfaceC13358B.getChannel();
                    this.f89568b = 1;
                    if (F.d(j10, j11, channel, this) == l10) {
                        return l10;
                    }
                } else if (i11 == 2) {
                    long j12 = this.f89571e;
                    long j13 = this.f89572f;
                    E channel2 = interfaceC13358B.getChannel();
                    this.f89568b = 2;
                    if (F.c(j12, j13, channel2, this) == l10) {
                        return l10;
                    }
                }
            } else {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            return P0.f98194a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0071 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x007d -> B:12:0x0034). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(long j10, long j11, E<? super P0> e10, yf.f<? super P0> fVar) {
        a aVar;
        Object l10;
        int i10;
        E<? super P0> e11;
        P0 p02;
        if (fVar instanceof a) {
            aVar = (a) fVar;
            int i11 = aVar.f89562e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f89562e = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f89561d;
                l10 = Af.d.l();
                i10 = aVar.f89562e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    aVar.f89560c = e10;
                    aVar.f89559b = j10;
                    aVar.f89562e = 1;
                    if (C13108c0.b(j11, aVar) == l10) {
                        return l10;
                    }
                } else if (i10 == 1) {
                    j10 = aVar.f89559b;
                    e10 = (E) aVar.f89560c;
                    C14418j0.n(obj);
                } else if (i10 == 2) {
                    j10 = aVar.f89559b;
                    e11 = (E) aVar.f89560c;
                    C14418j0.n(obj);
                    aVar.f89560c = e11;
                    aVar.f89559b = j10;
                    aVar.f89562e = 3;
                    if (C13108c0.b(j10, aVar) == l10) {
                        return l10;
                    }
                    e10 = e11;
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    j10 = aVar.f89559b;
                    e11 = (E) aVar.f89560c;
                    C14418j0.n(obj);
                    e10 = e11;
                }
                p02 = P0.f98194a;
                aVar.f89560c = e10;
                aVar.f89559b = j10;
                aVar.f89562e = 2;
                if (e10.M(p02, aVar) == l10) {
                    return l10;
                }
                e11 = e10;
                aVar.f89560c = e11;
                aVar.f89559b = j10;
                aVar.f89562e = 3;
                if (C13108c0.b(j10, aVar) == l10) {
                }
                e10 = e11;
                p02 = P0.f98194a;
                aVar.f89560c = e10;
                aVar.f89559b = j10;
                aVar.f89562e = 2;
                if (e10.M(p02, aVar) == l10) {
                }
            }
        }
        aVar = new a(fVar);
        Object obj2 = aVar.f89561d;
        l10 = Af.d.l();
        i10 = aVar.f89562e;
        if (i10 != 0) {
        }
        p02 = P0.f98194a;
        aVar.f89560c = e10;
        aVar.f89559b = j10;
        aVar.f89562e = 2;
        if (e10.M(p02, aVar) == l10) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00bb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0114 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00fc -> B:15:0x00aa). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0112 -> B:13:0x003d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object d(long j10, long j11, E<? super P0> e10, yf.f<? super P0> fVar) {
        b bVar;
        Object l10;
        int i10;
        E e11;
        long j12;
        long j13;
        long d10;
        long j14;
        long j15;
        E e12;
        char c10;
        long j16;
        long x10;
        char c11;
        long c12;
        char c13;
        P0 p02;
        if (fVar instanceof b) {
            bVar = (b) fVar;
            int i11 = bVar.f89567f;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bVar.f89567f = i11 - Integer.MIN_VALUE;
                Object obj = bVar.f89566e;
                l10 = Af.d.l();
                i10 = bVar.f89567f;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    AbstractC13105b b10 = C13107c.b();
                    long b11 = (b10 != null ? b10.b() : System.nanoTime()) + C13143u0.d(j11);
                    e11 = e10;
                    bVar.f89565d = e11;
                    j12 = j10;
                    bVar.f89563b = j12;
                    bVar.f89564c = b11;
                    bVar.f89567f = 1;
                    if (C13108c0.b(j11, bVar) == l10) {
                        return l10;
                    }
                    j13 = b11;
                } else if (i10 == 1) {
                    j13 = bVar.f89564c;
                    long j17 = bVar.f89563b;
                    E e13 = (E) bVar.f89565d;
                    C14418j0.n(obj);
                    e11 = e13;
                    j12 = j17;
                } else if (i10 == 2) {
                    j15 = bVar.f89564c;
                    j16 = bVar.f89563b;
                    e12 = (E) bVar.f89565d;
                    C14418j0.n(obj);
                    AbstractC13105b b12 = C13107c.b();
                    if (b12 == null) {
                    }
                    x10 = Vf.u.x(j16 - r11, 0L);
                    if (x10 == 0) {
                    }
                    c11 = 3;
                    c12 = C13143u0.c(x10);
                    bVar.f89565d = e12;
                    bVar.f89563b = j16;
                    bVar.f89564c = j15;
                    c13 = 4;
                    bVar.f89567f = 4;
                    if (C13108c0.b(c12, bVar) == l10) {
                    }
                    long j18 = j15;
                    j13 = j16;
                    d10 = j18;
                    e11 = e12;
                    long j19 = j13 + d10;
                    p02 = P0.f98194a;
                    bVar.f89565d = e11;
                    bVar.f89563b = j19;
                    bVar.f89564c = d10;
                    bVar.f89567f = 2;
                    if (e11.M(p02, bVar) == l10) {
                    }
                } else if (i10 == 3) {
                    j15 = bVar.f89564c;
                    j14 = bVar.f89563b;
                    e12 = (E) bVar.f89565d;
                    C14418j0.n(obj);
                    c10 = 3;
                    long j20 = j15;
                    j13 = j14;
                    d10 = j20;
                    e11 = e12;
                    long j192 = j13 + d10;
                    p02 = P0.f98194a;
                    bVar.f89565d = e11;
                    bVar.f89563b = j192;
                    bVar.f89564c = d10;
                    bVar.f89567f = 2;
                    if (e11.M(p02, bVar) == l10) {
                    }
                } else {
                    if (i10 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    j15 = bVar.f89564c;
                    j16 = bVar.f89563b;
                    e12 = (E) bVar.f89565d;
                    C14418j0.n(obj);
                    c13 = 4;
                    c11 = 3;
                    long j182 = j15;
                    j13 = j16;
                    d10 = j182;
                    e11 = e12;
                    long j1922 = j13 + d10;
                    p02 = P0.f98194a;
                    bVar.f89565d = e11;
                    bVar.f89563b = j1922;
                    bVar.f89564c = d10;
                    bVar.f89567f = 2;
                    if (e11.M(p02, bVar) == l10) {
                        return l10;
                    }
                    e12 = e11;
                    j15 = d10;
                    j16 = j1922;
                    AbstractC13105b b122 = C13107c.b();
                    long b13 = b122 == null ? b122.b() : System.nanoTime();
                    x10 = Vf.u.x(j16 - b13, 0L);
                    if (x10 == 0 || j15 == 0) {
                        c11 = 3;
                        c12 = C13143u0.c(x10);
                        bVar.f89565d = e12;
                        bVar.f89563b = j16;
                        bVar.f89564c = j15;
                        c13 = 4;
                        bVar.f89567f = 4;
                        if (C13108c0.b(c12, bVar) == l10) {
                            return l10;
                        }
                        long j1822 = j15;
                        j13 = j16;
                        d10 = j1822;
                        e11 = e12;
                        long j19222 = j13 + d10;
                        p02 = P0.f98194a;
                        bVar.f89565d = e11;
                        bVar.f89563b = j19222;
                        bVar.f89564c = d10;
                        bVar.f89567f = 2;
                        if (e11.M(p02, bVar) == l10) {
                        }
                    } else {
                        long j21 = j15 - ((b13 - j16) % j15);
                        j14 = b13 + j21;
                        long c14 = C13143u0.c(j21);
                        bVar.f89565d = e12;
                        bVar.f89563b = j14;
                        bVar.f89564c = j15;
                        c10 = 3;
                        bVar.f89567f = 3;
                        if (C13108c0.b(c14, bVar) == l10) {
                            return l10;
                        }
                        long j202 = j15;
                        j13 = j14;
                        d10 = j202;
                        e11 = e12;
                        long j192222 = j13 + d10;
                        p02 = P0.f98194a;
                        bVar.f89565d = e11;
                        bVar.f89563b = j192222;
                        bVar.f89564c = d10;
                        bVar.f89567f = 2;
                        if (e11.M(p02, bVar) == l10) {
                        }
                    }
                }
                d10 = C13143u0.d(j12);
                long j1922222 = j13 + d10;
                p02 = P0.f98194a;
                bVar.f89565d = e11;
                bVar.f89563b = j1922222;
                bVar.f89564c = d10;
                bVar.f89567f = 2;
                if (e11.M(p02, bVar) == l10) {
                }
            }
        }
        bVar = new b(fVar);
        Object obj2 = bVar.f89566e;
        l10 = Af.d.l();
        i10 = bVar.f89567f;
        if (i10 != 0) {
        }
        d10 = C13143u0.d(j12);
        long j19222222 = j13 + d10;
        p02 = P0.f98194a;
        bVar.f89565d = e11;
        bVar.f89563b = j19222222;
        bVar.f89564c = d10;
        bVar.f89567f = 2;
        if (e11.M(p02, bVar) == l10) {
        }
    }

    @InterfaceC13104a1
    @NotNull
    public static final InterfaceC13360D<P0> e(long j10, long j11, @NotNull yf.j jVar, @NotNull G g10) {
        if (j10 < 0) {
            throw new IllegalArgumentException(("Expected non-negative delay, but has " + j10 + " ms").toString());
        }
        if (j11 >= 0) {
            return z.c(B0.f85596b, C13122j0.g().plus(jVar), 0, new c(g10, j10, j11, null));
        }
        throw new IllegalArgumentException(("Expected non-negative initial delay, but has " + j11 + " ms").toString());
    }

    public static InterfaceC13360D f(long j10, long j11, yf.j jVar, G g10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j11 = j10;
        }
        if ((i10 & 4) != 0) {
            jVar = yf.l.f130251b;
        }
        if ((i10 & 8) != 0) {
            g10 = G.FIXED_PERIOD;
        }
        return e(j10, j11, jVar, g10);
    }
}

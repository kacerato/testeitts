package gg;

import eg.InterfaceC13133p;
import kotlin.jvm.internal.I;
import mg.T;
import mg.Y;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public final class k {

    @NotNull
    public static final T f89640A;

    public static final int f89641B = 0;

    public static final int f89642C = 1;

    public static final int f89643D = 2;

    public static final int f89644E = 3;

    public static final int f89645F = 60;

    public static final long f89646G = 1152921504606846975L;

    public static final long f89647H = 4611686018427387904L;

    public static final long f89648I = 4611686018427387903L;

    @NotNull
    public static final q<Object> f89649a = new q<>(-1, null, null, 0);

    @Lf.g
    public static final int f89650b;

    public static final int f89651c;

    public static final long f89652d = 0;

    public static final long f89653e = Long.MAX_VALUE;

    @Lf.g
    @NotNull
    public static final T f89654f;

    @NotNull
    public static final T f89655g;

    @NotNull
    public static final T f89656h;

    @NotNull
    public static final T f89657i;

    @NotNull
    public static final T f89658j;

    @NotNull
    public static final T f89659k;

    @NotNull
    public static final T f89660l;

    @NotNull
    public static final T f89661m;

    @NotNull
    public static final T f89662n;

    @NotNull
    public static final T f89663o;

    @NotNull
    public static final T f89664p;

    @NotNull
    public static final T f89665q;

    public static final int f89666r = 0;

    public static final int f89667s = 1;

    public static final int f89668t = 2;

    public static final int f89669u = 3;

    public static final int f89670v = 4;

    public static final int f89671w = 5;

    @NotNull
    public static final T f89672x;

    @NotNull
    public static final T f89673y;

    @NotNull
    public static final T f89674z;

    public class a<E> extends I implements Mf.p<Long, q<E>, q<E>> {

        public static final a f89675b = new a();

        public a() {
            super(2, k.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
        }

        @NotNull
        public final q<E> b(long j10, @NotNull q<E> qVar) {
            return k.x(j10, qVar);
        }

        @Override
        public Object invoke(Long l10, Object obj) {
            return b(l10.longValue(), (q) obj);
        }
    }

    static {
        int e10;
        int e11;
        e10 = Y.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);
        f89650b = e10;
        e11 = Y.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);
        f89651c = e11;
        f89654f = new T("BUFFERED");
        f89655g = new T("SHOULD_BUFFER");
        f89656h = new T("S_RESUMING_BY_RCV");
        f89657i = new T("RESUMING_BY_EB");
        f89658j = new T("POISONED");
        f89659k = new T("DONE_RCV");
        f89660l = new T("INTERRUPTED_SEND");
        f89661m = new T("INTERRUPTED_RCV");
        f89662n = new T("CHANNEL_CLOSED");
        f89663o = new T("SUSPEND");
        f89664p = new T("SUSPEND_NO_WAITER");
        f89665q = new T("FAILED");
        f89672x = new T("NO_RECEIVE_RESULT");
        f89673y = new T("CLOSE_HANDLER_CLOSED");
        f89674z = new T("CLOSE_HANDLER_INVOKED");
        f89640A = new T("NO_CLOSE_CAUSE");
    }

    public static final long A(long j10) {
        return j10 & 4611686018427387903L;
    }

    public static final boolean B(long j10) {
        return (j10 & 4611686018427387904L) != 0;
    }

    public static final int C(long j10) {
        return (int) (j10 >> 60);
    }

    public static final long D(long j10) {
        return j10 & 1152921504606846975L;
    }

    public static final long E(int i10) {
        if (i10 == 0) {
            return 0L;
        }
        if (i10 != Integer.MAX_VALUE) {
            return i10;
        }
        return Long.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean F(InterfaceC13133p<? super T> interfaceC13133p, T t10, Mf.l<? super Throwable, P0> lVar) {
        Object k10 = interfaceC13133p.k(t10, null, lVar);
        if (k10 == null) {
            return false;
        }
        interfaceC13133p.B(k10);
        return true;
    }

    public static boolean G(InterfaceC13133p interfaceC13133p, Object obj, Mf.l lVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        return F(interfaceC13133p, obj, lVar);
    }

    public static final long a(long j10, boolean z10) {
        return v(j10, z10);
    }

    public static final long b(long j10, int i10) {
        return w(j10, i10);
    }

    public static final T d() {
        return f89673y;
    }

    public static final T e() {
        return f89674z;
    }

    public static final T f() {
        return f89659k;
    }

    public static final int g() {
        return f89651c;
    }

    public static final T h() {
        return f89665q;
    }

    public static final T i() {
        return f89661m;
    }

    public static final T j() {
        return f89660l;
    }

    public static final T k() {
        return f89655g;
    }

    public static final T l() {
        return f89640A;
    }

    public static final T m() {
        return f89672x;
    }

    public static final q n() {
        return f89649a;
    }

    public static final T o() {
        return f89658j;
    }

    public static final T p() {
        return f89657i;
    }

    public static final T q() {
        return f89656h;
    }

    public static final T r() {
        return f89663o;
    }

    public static final T s() {
        return f89664p;
    }

    public static final long t(int i10) {
        return E(i10);
    }

    public static final boolean u(InterfaceC13133p interfaceC13133p, Object obj, Mf.l lVar) {
        return F(interfaceC13133p, obj, lVar);
    }

    public static final long v(long j10, boolean z10) {
        return (z10 ? 4611686018427387904L : 0L) + j10;
    }

    public static final long w(long j10, int i10) {
        return (i10 << 60) + j10;
    }

    public static final <E> q<E> x(long j10, q<E> qVar) {
        return new q<>(j10, qVar, qVar.w(), 0);
    }

    @NotNull
    public static final <E> Wf.h<q<E>> y() {
        return a.f89675b;
    }

    @NotNull
    public static final T z() {
        return f89662n;
    }
}

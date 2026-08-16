package uf;

import Ef.f;
import Lf.j;
import Mf.l;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14410f0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@j(name = "TimersKt")
public final class c {

    @t0({"SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n*L\n1#1,149:1\n*E\n"})
    public static final class a extends TimerTask {

        public final l<TimerTask, P0> f120538b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(l<? super TimerTask, P0> lVar) {
            this.f120538b = lVar;
        }

        @Override
        public void run() {
            this.f120538b.invoke(this);
        }
    }

    @f
    public static final Timer a(String str, boolean z10, long j10, long j11, l<? super TimerTask, P0> action) {
        M.p(action, "action");
        Timer k10 = k(str, z10);
        k10.scheduleAtFixedRate(new a(action), j10, j11);
        return k10;
    }

    @f
    public static final Timer b(String str, boolean z10, Date startAt, long j10, l<? super TimerTask, P0> action) {
        M.p(startAt, "startAt");
        M.p(action, "action");
        Timer k10 = k(str, z10);
        k10.scheduleAtFixedRate(new a(action), startAt, j10);
        return k10;
    }

    public static Timer c(String str, boolean z10, long j10, long j11, l action, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            j10 = 0;
        }
        M.p(action, "action");
        Timer k10 = k(str, z10);
        k10.scheduleAtFixedRate(new a(action), j10, j11);
        return k10;
    }

    public static Timer d(String str, boolean z10, Date startAt, long j10, l action, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        M.p(startAt, "startAt");
        M.p(action, "action");
        Timer k10 = k(str, z10);
        k10.scheduleAtFixedRate(new a(action), startAt, j10);
        return k10;
    }

    @f
    public static final TimerTask e(Timer timer, long j10, long j11, l<? super TimerTask, P0> action) {
        M.p(timer, "<this>");
        M.p(action, "action");
        a aVar = new a(action);
        timer.schedule(aVar, j10, j11);
        return aVar;
    }

    @f
    public static final TimerTask f(Timer timer, long j10, l<? super TimerTask, P0> action) {
        M.p(timer, "<this>");
        M.p(action, "action");
        a aVar = new a(action);
        timer.schedule(aVar, j10);
        return aVar;
    }

    @f
    public static final TimerTask g(Timer timer, Date time, long j10, l<? super TimerTask, P0> action) {
        M.p(timer, "<this>");
        M.p(time, "time");
        M.p(action, "action");
        a aVar = new a(action);
        timer.schedule(aVar, time, j10);
        return aVar;
    }

    @f
    public static final TimerTask h(Timer timer, Date time, l<? super TimerTask, P0> action) {
        M.p(timer, "<this>");
        M.p(time, "time");
        M.p(action, "action");
        a aVar = new a(action);
        timer.schedule(aVar, time);
        return aVar;
    }

    @f
    public static final TimerTask i(Timer timer, long j10, long j11, l<? super TimerTask, P0> action) {
        M.p(timer, "<this>");
        M.p(action, "action");
        a aVar = new a(action);
        timer.scheduleAtFixedRate(aVar, j10, j11);
        return aVar;
    }

    @f
    public static final TimerTask j(Timer timer, Date time, long j10, l<? super TimerTask, P0> action) {
        M.p(timer, "<this>");
        M.p(time, "time");
        M.p(action, "action");
        a aVar = new a(action);
        timer.scheduleAtFixedRate(aVar, time, j10);
        return aVar;
    }

    @InterfaceC14410f0
    @NotNull
    public static final Timer k(@Nullable String str, boolean z10) {
        return str == null ? new Timer(z10) : new Timer(str, z10);
    }

    @f
    public static final Timer l(String str, boolean z10, long j10, long j11, l<? super TimerTask, P0> action) {
        M.p(action, "action");
        Timer k10 = k(str, z10);
        k10.schedule(new a(action), j10, j11);
        return k10;
    }

    @f
    public static final Timer m(String str, boolean z10, Date startAt, long j10, l<? super TimerTask, P0> action) {
        M.p(startAt, "startAt");
        M.p(action, "action");
        Timer k10 = k(str, z10);
        k10.schedule(new a(action), startAt, j10);
        return k10;
    }

    public static Timer n(String str, boolean z10, long j10, long j11, l action, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            j10 = 0;
        }
        M.p(action, "action");
        Timer k10 = k(str, z10);
        k10.schedule(new a(action), j10, j11);
        return k10;
    }

    public static Timer o(String str, boolean z10, Date startAt, long j10, l action, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        M.p(startAt, "startAt");
        M.p(action, "action");
        Timer k10 = k(str, z10);
        k10.schedule(new a(action), startAt, j10);
        return k10;
    }

    @f
    public static final TimerTask p(l<? super TimerTask, P0> action) {
        M.p(action, "action");
        return new a(action);
    }
}

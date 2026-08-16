package com.google.common.util.concurrent;

import com.google.common.util.concurrent.C12604c0;
import com.google.common.util.concurrent.C12610f0;
import com.google.common.util.concurrent.p0;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@A
@v2.c
public abstract class AbstractC12609f implements p0 {

    public static final C12604c0.a<p0.a> f67415h = new a();

    public static final C12604c0.a<p0.a> f67416i = new b();

    public static final C12604c0.a<p0.a> f67417j;

    public static final C12604c0.a<p0.a> f67418k;

    public static final C12604c0.a<p0.a> f67419l;

    public static final C12604c0.a<p0.a> f67420m;

    public static final C12604c0.a<p0.a> f67421n;

    public static final C12604c0.a<p0.a> f67422o;

    public final C12610f0 f67423a = new C12610f0();

    public final C12610f0.a f67424b = new h();

    public final C12610f0.a f67425c = new i();

    public final C12610f0.a f67426d = new g();

    public final C12610f0.a f67427e = new j();

    public final C12604c0<p0.a> f67428f = new C12604c0<>();

    public volatile k f67429g = new k(p0.b.NEW);

    public class a implements C12604c0.a<p0.a> {
        @Override
        public void call(p0.a aVar) {
            aVar.c();
        }

        public String toString() {
            return "starting()";
        }
    }

    public class b implements C12604c0.a<p0.a> {
        @Override
        public void call(p0.a aVar) {
            aVar.b();
        }

        public String toString() {
            return "running()";
        }
    }

    public class c implements C12604c0.a<p0.a> {

        public final p0.b f67430a;

        public c(p0.b bVar) {
            this.f67430a = bVar;
        }

        @Override
        public void call(p0.a aVar) {
            aVar.e(this.f67430a);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f67430a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 21);
            sb2.append("terminated({from = ");
            sb2.append(valueOf);
            sb2.append("})");
            return sb2.toString();
        }
    }

    public class d implements C12604c0.a<p0.a> {

        public final p0.b f67431a;

        public d(p0.b bVar) {
            this.f67431a = bVar;
        }

        @Override
        public void call(p0.a aVar) {
            aVar.d(this.f67431a);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f67431a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 19);
            sb2.append("stopping({from = ");
            sb2.append(valueOf);
            sb2.append("})");
            return sb2.toString();
        }
    }

    public class e implements C12604c0.a<p0.a> {

        public final p0.b f67432a;

        public final Throwable f67433b;

        public e(AbstractC12609f abstractC12609f, p0.b bVar, Throwable th2) {
            this.f67432a = bVar;
            this.f67433b = th2;
        }

        @Override
        public void call(p0.a aVar) {
            aVar.a(this.f67432a, this.f67433b);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f67432a);
            String valueOf2 = String.valueOf(this.f67433b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 27 + valueOf2.length());
            sb2.append("failed({from = ");
            sb2.append(valueOf);
            sb2.append(", cause = ");
            sb2.append(valueOf2);
            sb2.append("})");
            return sb2.toString();
        }
    }

    public static class C1022f {

        public static final int[] f67434a;

        static {
            int[] iArr = new int[p0.b.values().length];
            f67434a = iArr;
            try {
                iArr[p0.b.NEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f67434a[p0.b.STARTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f67434a[p0.b.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f67434a[p0.b.STOPPING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f67434a[p0.b.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f67434a[p0.b.FAILED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public final class g extends C12610f0.a {
        public g() {
            super(AbstractC12609f.this.f67423a);
        }

        @Override
        public boolean a() {
            return AbstractC12609f.this.state().compareTo(p0.b.RUNNING) >= 0;
        }
    }

    public final class h extends C12610f0.a {
        public h() {
            super(AbstractC12609f.this.f67423a);
        }

        @Override
        public boolean a() {
            return AbstractC12609f.this.state() == p0.b.NEW;
        }
    }

    public final class i extends C12610f0.a {
        public i() {
            super(AbstractC12609f.this.f67423a);
        }

        @Override
        public boolean a() {
            return AbstractC12609f.this.state().compareTo(p0.b.RUNNING) <= 0;
        }
    }

    public final class j extends C12610f0.a {
        public j() {
            super(AbstractC12609f.this.f67423a);
        }

        @Override
        public boolean a() {
            return AbstractC12609f.this.state().compareTo(p0.b.TERMINATED) >= 0;
        }
    }

    public static final class k {

        public final p0.b f67439a;

        public final boolean f67440b;

        @CheckForNull
        public final Throwable f67441c;

        public k(p0.b bVar) {
            this(bVar, false, null);
        }

        public p0.b a() {
            return (this.f67440b && this.f67439a == p0.b.STARTING) ? p0.b.STOPPING : this.f67439a;
        }

        public Throwable b() {
            p0.b bVar = this.f67439a;
            w2.H.x0(bVar == p0.b.FAILED, "failureCause() is only valid if the service has failed, service is %s", bVar);
            Throwable th2 = this.f67441c;
            Objects.requireNonNull(th2);
            return th2;
        }

        public k(p0.b bVar, boolean z10, @CheckForNull Throwable th2) {
            w2.H.u(!z10 || bVar == p0.b.STARTING, "shutdownWhenStartupFinishes can only be set if state is STARTING. Got %s instead.", bVar);
            w2.H.y((th2 != null) == (bVar == p0.b.FAILED), "A failure cause should be set if and only if the state is failed.  Got %s and %s instead.", bVar, th2);
            this.f67439a = bVar;
            this.f67440b = z10;
            this.f67441c = th2;
        }
    }

    static {
        p0.b bVar = p0.b.STARTING;
        f67417j = w(bVar);
        p0.b bVar2 = p0.b.RUNNING;
        f67418k = w(bVar2);
        f67419l = x(p0.b.NEW);
        f67420m = x(bVar);
        f67421n = x(bVar2);
        f67422o = x(p0.b.STOPPING);
    }

    public static C12604c0.a<p0.a> w(p0.b bVar) {
        return new d(bVar);
    }

    public static C12604c0.a<p0.a> x(p0.b bVar) {
        return new c(bVar);
    }

    @Override
    public final void a(p0.a aVar, Executor executor) {
        this.f67428f.b(aVar, executor);
    }

    @Override
    public final void b(long j10, TimeUnit timeUnit) throws TimeoutException {
        if (this.f67423a.r(this.f67426d, j10, timeUnit)) {
            try {
                j(p0.b.RUNNING);
            } finally {
                this.f67423a.D();
            }
        } else {
            String valueOf = String.valueOf(this);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 50);
            sb2.append("Timed out waiting for ");
            sb2.append(valueOf);
            sb2.append(" to reach the RUNNING state.");
            throw new TimeoutException(sb2.toString());
        }
    }

    @Override
    public final void c(long j10, TimeUnit timeUnit) throws TimeoutException {
        if (this.f67423a.r(this.f67427e, j10, timeUnit)) {
            try {
                j(p0.b.TERMINATED);
                return;
            } finally {
                this.f67423a.D();
            }
        }
        String valueOf = String.valueOf(this);
        String valueOf2 = String.valueOf(state());
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 65 + valueOf2.length());
        sb2.append("Timed out waiting for ");
        sb2.append(valueOf);
        sb2.append(" to reach a terminal state. Current state: ");
        sb2.append(valueOf2);
        throw new TimeoutException(sb2.toString());
    }

    @Override
    public final void d() {
        this.f67423a.q(this.f67426d);
        try {
            j(p0.b.RUNNING);
        } finally {
            this.f67423a.D();
        }
    }

    @Override
    public final Throwable e() {
        return this.f67429g.b();
    }

    @Override
    public final void f() {
        this.f67423a.q(this.f67427e);
        try {
            j(p0.b.TERMINATED);
        } finally {
            this.f67423a.D();
        }
    }

    @Override
    @I2.a
    public final p0 g() {
        if (this.f67423a.i(this.f67424b)) {
            try {
                this.f67429g = new k(p0.b.STARTING);
                q();
                m();
            } finally {
                try {
                    return this;
                } finally {
                }
            }
            return this;
        }
        String valueOf = String.valueOf(this);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 33);
        sb2.append("Service ");
        sb2.append(valueOf);
        sb2.append(" has already been started");
        throw new IllegalStateException(sb2.toString());
    }

    @Override
    @I2.a
    public final p0 h() {
        if (this.f67423a.i(this.f67425c)) {
            try {
                p0.b state = state();
                switch (C1022f.f67434a[state.ordinal()]) {
                    case 1:
                        this.f67429g = new k(p0.b.TERMINATED);
                        s(p0.b.NEW);
                        break;
                    case 2:
                        p0.b bVar = p0.b.STARTING;
                        this.f67429g = new k(bVar, true, null);
                        r(bVar);
                        l();
                        break;
                    case 3:
                        this.f67429g = new k(p0.b.STOPPING);
                        r(p0.b.RUNNING);
                        n();
                        break;
                    case 4:
                    case 5:
                    case 6:
                        String valueOf = String.valueOf(state);
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 45);
                        sb2.append("isStoppable is incorrectly implemented, saw: ");
                        sb2.append(valueOf);
                        throw new AssertionError((Object) sb2.toString());
                }
            } finally {
                try {
                } finally {
                }
            }
        }
        return this;
    }

    @Override
    public final boolean isRunning() {
        return state() == p0.b.RUNNING;
    }

    @J2.a("monitor")
    public final void j(p0.b bVar) {
        p0.b state = state();
        if (state != bVar) {
            if (state == p0.b.FAILED) {
                String valueOf = String.valueOf(this);
                String valueOf2 = String.valueOf(bVar);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 56 + valueOf2.length());
                sb2.append("Expected the service ");
                sb2.append(valueOf);
                sb2.append(" to be ");
                sb2.append(valueOf2);
                sb2.append(", but the service has FAILED");
                throw new IllegalStateException(sb2.toString(), e());
            }
            String valueOf3 = String.valueOf(this);
            String valueOf4 = String.valueOf(bVar);
            String valueOf5 = String.valueOf(state);
            StringBuilder sb3 = new StringBuilder(valueOf3.length() + 38 + valueOf4.length() + valueOf5.length());
            sb3.append("Expected the service ");
            sb3.append(valueOf3);
            sb3.append(" to be ");
            sb3.append(valueOf4);
            sb3.append(", but was ");
            sb3.append(valueOf5);
            throw new IllegalStateException(sb3.toString());
        }
    }

    public final void k() {
        if (this.f67423a.B()) {
            return;
        }
        this.f67428f.c();
    }

    @I2.g
    @InterfaceC15800a
    public void l() {
    }

    @I2.g
    public abstract void m();

    @I2.g
    public abstract void n();

    public final void o(p0.b bVar, Throwable th2) {
        this.f67428f.d(new e(this, bVar, th2));
    }

    public final void p() {
        this.f67428f.d(f67416i);
    }

    public final void q() {
        this.f67428f.d(f67415h);
    }

    public final void r(p0.b bVar) {
        if (bVar == p0.b.STARTING) {
            this.f67428f.d(f67417j);
        } else {
            if (bVar != p0.b.RUNNING) {
                throw new AssertionError();
            }
            this.f67428f.d(f67418k);
        }
    }

    public final void s(p0.b bVar) {
        switch (C1022f.f67434a[bVar.ordinal()]) {
            case 1:
                this.f67428f.d(f67419l);
                return;
            case 2:
                this.f67428f.d(f67420m);
                return;
            case 3:
                this.f67428f.d(f67421n);
                return;
            case 4:
                this.f67428f.d(f67422o);
                return;
            case 5:
            case 6:
                throw new AssertionError();
            default:
                return;
        }
    }

    @Override
    public final p0.b state() {
        return this.f67429g.a();
    }

    public final void t(Throwable th2) {
        w2.H.E(th2);
        this.f67423a.g();
        try {
            p0.b state = state();
            int i10 = C1022f.f67434a[state.ordinal()];
            if (i10 != 1) {
                if (i10 == 2 || i10 == 3 || i10 == 4) {
                    this.f67429g = new k(p0.b.FAILED, false, th2);
                    o(state, th2);
                } else if (i10 != 5) {
                }
                return;
            }
            String valueOf = String.valueOf(state);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 22);
            sb2.append("Failed while in state:");
            sb2.append(valueOf);
            throw new IllegalStateException(sb2.toString(), th2);
        } finally {
            this.f67423a.D();
            k();
        }
    }

    public String toString() {
        String simpleName = getClass().getSimpleName();
        String valueOf = String.valueOf(state());
        StringBuilder sb2 = new StringBuilder(simpleName.length() + 3 + valueOf.length());
        sb2.append(simpleName);
        sb2.append(" [");
        sb2.append(valueOf);
        sb2.append("]");
        return sb2.toString();
    }

    public final void u() {
        this.f67423a.g();
        try {
            if (this.f67429g.f67439a != p0.b.STARTING) {
                String valueOf = String.valueOf(this.f67429g.f67439a);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 43);
                sb2.append("Cannot notifyStarted() when the service is ");
                sb2.append(valueOf);
                IllegalStateException illegalStateException = new IllegalStateException(sb2.toString());
                t(illegalStateException);
                throw illegalStateException;
            }
            if (this.f67429g.f67440b) {
                this.f67429g = new k(p0.b.STOPPING);
                n();
            } else {
                this.f67429g = new k(p0.b.RUNNING);
                p();
            }
            this.f67423a.D();
            k();
        } catch (Throwable th2) {
            this.f67423a.D();
            k();
            throw th2;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0011. Please report as an issue. */
    public final void v() {
        this.f67423a.g();
        try {
            p0.b state = state();
            switch (C1022f.f67434a[state.ordinal()]) {
                case 1:
                case 5:
                case 6:
                    String valueOf = String.valueOf(state);
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 43);
                    sb2.append("Cannot notifyStopped() when the service is ");
                    sb2.append(valueOf);
                    throw new IllegalStateException(sb2.toString());
                case 2:
                case 3:
                case 4:
                    this.f67429g = new k(p0.b.TERMINATED);
                    s(state);
                    return;
                default:
                    return;
            }
        } finally {
            this.f67423a.D();
            k();
        }
    }
}

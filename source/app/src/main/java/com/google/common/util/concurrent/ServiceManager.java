package com.google.common.util.concurrent;

import com.google.common.collect.AbstractC12505c1;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.C12568s1;
import com.google.common.collect.C2;
import com.google.common.collect.M1;
import com.google.common.collect.Ordering;
import com.google.common.collect.Q1;
import com.google.common.collect.T1;
import com.google.common.collect.U1;
import com.google.common.collect.V1;
import com.google.common.collect.e3;
import com.google.common.util.concurrent.C12604c0;
import com.google.common.util.concurrent.C12610f0;
import com.google.common.util.concurrent.p0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import w2.InterfaceC15902t;

@A
@v2.c
public final class ServiceManager implements q0 {

    public static final Logger f67323c = Logger.getLogger(ServiceManager.class.getName());

    public static final C12604c0.a<c> f67324d = new a();

    public static final C12604c0.a<c> f67325e = new b();

    public final f f67326a;

    public final AbstractC12521g1<p0> f67327b;

    public static final class EmptyServiceManagerWarning extends Throwable {
        private EmptyServiceManagerWarning() {
        }

        public EmptyServiceManagerWarning(a aVar) {
            this();
        }
    }

    public class a implements C12604c0.a<c> {
        @Override
        public void call(c cVar) {
            cVar.b();
        }

        public String toString() {
            return "healthy()";
        }
    }

    public class b implements C12604c0.a<c> {
        @Override
        public void call(c cVar) {
            cVar.c();
        }

        public String toString() {
            return "stopped()";
        }
    }

    public static abstract class c {
        public void a(p0 p0Var) {
        }

        public void b() {
        }

        public void c() {
        }
    }

    public static final class d extends AbstractC12609f {
        public d() {
        }

        @Override
        public void m() {
            u();
        }

        @Override
        public void n() {
            v();
        }

        public d(a aVar) {
            this();
        }
    }

    public static final class e extends p0.a {

        public final p0 f67328a;

        public final WeakReference<f> f67329b;

        public e(p0 p0Var, WeakReference<f> weakReference) {
            this.f67328a = p0Var;
            this.f67329b = weakReference;
        }

        @Override
        public void a(p0.b bVar, Throwable th2) {
            f fVar = this.f67329b.get();
            if (fVar != null) {
                if (!(this.f67328a instanceof d)) {
                    Logger logger = ServiceManager.f67323c;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(this.f67328a);
                    String valueOf2 = String.valueOf(bVar);
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 34 + valueOf2.length());
                    sb2.append("Service ");
                    sb2.append(valueOf);
                    sb2.append(" has failed in the ");
                    sb2.append(valueOf2);
                    sb2.append(" state.");
                    logger.log(level, sb2.toString(), th2);
                }
                fVar.n(this.f67328a, bVar, p0.b.FAILED);
            }
        }

        @Override
        public void b() {
            f fVar = this.f67329b.get();
            if (fVar != null) {
                fVar.n(this.f67328a, p0.b.STARTING, p0.b.RUNNING);
            }
        }

        @Override
        public void c() {
            f fVar = this.f67329b.get();
            if (fVar != null) {
                fVar.n(this.f67328a, p0.b.NEW, p0.b.STARTING);
                if (this.f67328a instanceof d) {
                    return;
                }
                ServiceManager.f67323c.log(Level.FINE, "Starting {0}.", this.f67328a);
            }
        }

        @Override
        public void d(p0.b bVar) {
            f fVar = this.f67329b.get();
            if (fVar != null) {
                fVar.n(this.f67328a, bVar, p0.b.STOPPING);
            }
        }

        @Override
        public void e(p0.b bVar) {
            f fVar = this.f67329b.get();
            if (fVar != null) {
                if (!(this.f67328a instanceof d)) {
                    ServiceManager.f67323c.log(Level.FINE, "Service {0} has terminated. Previous state was: {1}", new Object[]{this.f67328a, bVar});
                }
                fVar.n(this.f67328a, bVar, p0.b.TERMINATED);
            }
        }
    }

    public static final class f {

        public final C12610f0 f67330a = new C12610f0();

        @J2.a("monitor")
        public final C2<p0.b, p0> f67331b;

        @J2.a("monitor")
        public final V1<p0.b> f67332c;

        @J2.a("monitor")
        public final Map<p0, w2.O> f67333d;

        @J2.a("monitor")
        public boolean f67334e;

        @J2.a("monitor")
        public boolean f67335f;

        public final int f67336g;

        public final C12610f0.a f67337h;

        public final C12610f0.a f67338i;

        public final C12604c0<c> f67339j;

        public class a implements InterfaceC15902t<Map.Entry<p0, Long>, Long> {
            public a(f fVar) {
            }

            @Override
            public Long apply(Map.Entry<p0, Long> entry) {
                return entry.getValue();
            }
        }

        public class b implements C12604c0.a<c> {

            public final p0 f67340a;

            public b(f fVar, p0 p0Var) {
                this.f67340a = p0Var;
            }

            @Override
            public void call(c cVar) {
                cVar.a(this.f67340a);
            }

            public String toString() {
                String valueOf = String.valueOf(this.f67340a);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 18);
                sb2.append("failed({service=");
                sb2.append(valueOf);
                sb2.append("})");
                return sb2.toString();
            }
        }

        public final class c extends C12610f0.a {
            public c() {
                super(f.this.f67330a);
            }

            @Override
            @J2.a("ServiceManagerState.this.monitor")
            public boolean a() {
                int Ad2 = f.this.f67332c.Ad(p0.b.RUNNING);
                f fVar = f.this;
                return Ad2 == fVar.f67336g || fVar.f67332c.contains(p0.b.STOPPING) || f.this.f67332c.contains(p0.b.TERMINATED) || f.this.f67332c.contains(p0.b.FAILED);
            }
        }

        public final class d extends C12610f0.a {
            public d() {
                super(f.this.f67330a);
            }

            @Override
            @J2.a("ServiceManagerState.this.monitor")
            public boolean a() {
                return f.this.f67332c.Ad(p0.b.TERMINATED) + f.this.f67332c.Ad(p0.b.FAILED) == f.this.f67336g;
            }
        }

        public f(AbstractC12505c1<p0> abstractC12505c1) {
            C2<p0.b, p0> a10 = T1.c(p0.b.class).g().a();
            this.f67331b = a10;
            this.f67332c = a10.j();
            this.f67333d = Q1.b0();
            this.f67337h = new c();
            this.f67338i = new d();
            this.f67339j = new C12604c0<>();
            this.f67336g = abstractC12505c1.size();
            a10.Z(p0.b.NEW, abstractC12505c1);
        }

        public void a(c cVar, Executor executor) {
            this.f67339j.b(cVar, executor);
        }

        public void b() {
            this.f67330a.q(this.f67337h);
            try {
                f();
            } finally {
                this.f67330a.D();
            }
        }

        public void c(long j10, TimeUnit timeUnit) throws TimeoutException {
            this.f67330a.g();
            try {
                if (this.f67330a.N(this.f67337h, j10, timeUnit)) {
                    f();
                    return;
                }
                String valueOf = String.valueOf(U1.n(this.f67331b, w2.J.n(AbstractC12564r1.B(p0.b.NEW, p0.b.STARTING))));
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 93);
                sb2.append("Timeout waiting for the services to become healthy. The following services have not started: ");
                sb2.append(valueOf);
                throw new TimeoutException(sb2.toString());
            } finally {
                this.f67330a.D();
            }
        }

        public void d() {
            this.f67330a.q(this.f67338i);
            this.f67330a.D();
        }

        public void e(long j10, TimeUnit timeUnit) throws TimeoutException {
            this.f67330a.g();
            try {
                if (this.f67330a.N(this.f67338i, j10, timeUnit)) {
                    return;
                }
                String valueOf = String.valueOf(U1.n(this.f67331b, w2.J.q(w2.J.n(EnumSet.of(p0.b.TERMINATED, p0.b.FAILED)))));
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 83);
                sb2.append("Timeout waiting for the services to stop. The following services have not stopped: ");
                sb2.append(valueOf);
                throw new TimeoutException(sb2.toString());
            } finally {
                this.f67330a.D();
            }
        }

        @J2.a("monitor")
        public void f() {
            V1<p0.b> v12 = this.f67332c;
            p0.b bVar = p0.b.RUNNING;
            if (v12.Ad(bVar) == this.f67336g) {
                return;
            }
            String valueOf = String.valueOf(U1.n(this.f67331b, w2.J.q(w2.J.m(bVar))));
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 79);
            sb2.append("Expected to be healthy after starting. The following services are not running: ");
            sb2.append(valueOf);
            throw new IllegalStateException(sb2.toString());
        }

        public void g() {
            w2.H.h0(!this.f67330a.B(), "It is incorrect to execute listeners with the monitor held.");
            this.f67339j.c();
        }

        public void h(p0 p0Var) {
            this.f67339j.d(new b(this, p0Var));
        }

        public void i() {
            this.f67339j.d(ServiceManager.f67324d);
        }

        public void j() {
            this.f67339j.d(ServiceManager.f67325e);
        }

        public void k() {
            this.f67330a.g();
            try {
                if (!this.f67335f) {
                    this.f67334e = true;
                    return;
                }
                ArrayList q10 = M1.q();
                e3<p0> it = l().values().iterator();
                while (it.hasNext()) {
                    p0 next = it.next();
                    if (next.state() != p0.b.NEW) {
                        q10.add(next);
                    }
                }
                String valueOf = String.valueOf(q10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 89);
                sb2.append("Services started transitioning asynchronously before the ServiceManager was constructed: ");
                sb2.append(valueOf);
                throw new IllegalArgumentException(sb2.toString());
            } finally {
                this.f67330a.D();
            }
        }

        public C12568s1<p0.b, p0> l() {
            C12568s1.a P10 = C12568s1.P();
            this.f67330a.g();
            try {
                for (Map.Entry<p0.b, p0> entry : this.f67331b.v()) {
                    if (!(entry.getValue() instanceof d)) {
                        P10.g(entry);
                    }
                }
                this.f67330a.D();
                return P10.a();
            } catch (Throwable th2) {
                this.f67330a.D();
                throw th2;
            }
        }

        public AbstractC12529i1<p0, Long> m() {
            this.f67330a.g();
            try {
                ArrayList u10 = M1.u(this.f67333d.size());
                for (Map.Entry<p0, w2.O> entry : this.f67333d.entrySet()) {
                    p0 key = entry.getKey();
                    w2.O value = entry.getValue();
                    if (!value.i() && !(key instanceof d)) {
                        u10.add(Q1.O(key, Long.valueOf(value.g(TimeUnit.MILLISECONDS))));
                    }
                }
                this.f67330a.D();
                Collections.sort(u10, Ordering.A().E(new a(this)));
                return AbstractC12529i1.m(u10);
            } catch (Throwable th2) {
                this.f67330a.D();
                throw th2;
            }
        }

        public void n(p0 p0Var, p0.b bVar, p0.b bVar2) {
            w2.H.E(p0Var);
            w2.H.d(bVar != bVar2);
            this.f67330a.g();
            try {
                this.f67335f = true;
                if (!this.f67334e) {
                    this.f67330a.D();
                    g();
                    return;
                }
                w2.H.B0(this.f67331b.remove(bVar, p0Var), "Service %s not at the expected location in the state map %s", p0Var, bVar);
                w2.H.B0(this.f67331b.put(bVar2, p0Var), "Service %s in the state map unexpectedly at %s", p0Var, bVar2);
                w2.O o10 = this.f67333d.get(p0Var);
                if (o10 == null) {
                    o10 = w2.O.c();
                    this.f67333d.put(p0Var, o10);
                }
                p0.b bVar3 = p0.b.RUNNING;
                if (bVar2.compareTo(bVar3) >= 0 && o10.i()) {
                    o10.l();
                    if (!(p0Var instanceof d)) {
                        ServiceManager.f67323c.log(Level.FINE, "Started {0} in {1}.", new Object[]{p0Var, o10});
                    }
                }
                p0.b bVar4 = p0.b.FAILED;
                if (bVar2 == bVar4) {
                    h(p0Var);
                }
                if (this.f67332c.Ad(bVar3) == this.f67336g) {
                    i();
                } else if (this.f67332c.Ad(p0.b.TERMINATED) + this.f67332c.Ad(bVar4) == this.f67336g) {
                    j();
                }
                this.f67330a.D();
                g();
            } catch (Throwable th2) {
                this.f67330a.D();
                g();
                throw th2;
            }
        }

        public void o(p0 p0Var) {
            this.f67330a.g();
            try {
                if (this.f67333d.get(p0Var) == null) {
                    this.f67333d.put(p0Var, w2.O.c());
                }
            } finally {
                this.f67330a.D();
            }
        }
    }

    public ServiceManager(Iterable<? extends p0> iterable) {
        AbstractC12521g1<p0> p10 = AbstractC12521g1.p(iterable);
        if (p10.isEmpty()) {
            a aVar = null;
            f67323c.log(Level.WARNING, "ServiceManager configured with no services.  Is your application configured properly?", (Throwable) new EmptyServiceManagerWarning(aVar));
            p10 = AbstractC12521g1.y(new d(aVar));
        }
        f fVar = new f(p10);
        this.f67326a = fVar;
        this.f67327b = p10;
        WeakReference weakReference = new WeakReference(fVar);
        e3<p0> it = p10.iterator();
        while (it.hasNext()) {
            p0 next = it.next();
            next.a(new e(next, weakReference), C12612g0.c());
            w2.H.u(next.state() == p0.b.NEW, "Can only manage NEW services, %s", next);
        }
        this.f67326a.k();
    }

    public void e(c cVar, Executor executor) {
        this.f67326a.a(cVar, executor);
    }

    public void f() {
        this.f67326a.b();
    }

    public void g(long j10, TimeUnit timeUnit) throws TimeoutException {
        this.f67326a.c(j10, timeUnit);
    }

    public void h() {
        this.f67326a.d();
    }

    public void i(long j10, TimeUnit timeUnit) throws TimeoutException {
        this.f67326a.e(j10, timeUnit);
    }

    public boolean j() {
        e3<p0> it = this.f67327b.iterator();
        while (it.hasNext()) {
            if (!it.next().isRunning()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public C12568s1<p0.b, p0> a() {
        return this.f67326a.l();
    }

    @I2.a
    public ServiceManager l() {
        e3<p0> it = this.f67327b.iterator();
        while (it.hasNext()) {
            w2.H.x0(it.next().state() == p0.b.NEW, "Not all services are NEW, cannot start %s", this);
        }
        e3<p0> it2 = this.f67327b.iterator();
        while (it2.hasNext()) {
            p0 next = it2.next();
            try {
                this.f67326a.o(next);
                next.g();
            } catch (IllegalStateException e10) {
                Logger logger = f67323c;
                Level level = Level.WARNING;
                String valueOf = String.valueOf(next);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 24);
                sb2.append("Unable to start Service ");
                sb2.append(valueOf);
                logger.log(level, sb2.toString(), (Throwable) e10);
            }
        }
        return this;
    }

    public AbstractC12529i1<p0, Long> m() {
        return this.f67326a.m();
    }

    @I2.a
    public ServiceManager n() {
        e3<p0> it = this.f67327b.iterator();
        while (it.hasNext()) {
            it.next().h();
        }
        return this;
    }

    public String toString() {
        return w2.z.b(ServiceManager.class).f("services", com.google.common.collect.C.d(this.f67327b, w2.J.q(w2.J.o(d.class)))).toString();
    }
}

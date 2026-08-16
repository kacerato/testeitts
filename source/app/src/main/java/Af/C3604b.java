package af;

import Be.J;
import Se.p;
import Se.r;
import Se.s;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class C3604b {

    @Ce.f
    public static final J f31999a = Ye.a.J(new h());

    @Ce.f
    public static final J f32000b = Ye.a.G(new CallableC0857b());

    @Ce.f
    public static final J f32001c = Ye.a.H(new c());

    @Ce.f
    public static final J f32002d = s.l();

    @Ce.f
    public static final J f32003e = Ye.a.I(new f());

    public static final class a {

        public static final J f32004a = new Se.b();
    }

    public static final class CallableC0857b implements Callable<J> {
        @Override
        public J call() throws Exception {
            return a.f32004a;
        }
    }

    public static final class c implements Callable<J> {
        @Override
        public J call() throws Exception {
            return d.f32005a;
        }
    }

    public static final class d {

        public static final J f32005a = new Se.g();
    }

    public static final class e {

        public static final J f32006a = new Se.h();
    }

    public static final class f implements Callable<J> {
        @Override
        public J call() throws Exception {
            return e.f32006a;
        }
    }

    public static final class g {

        public static final J f32007a = new r();
    }

    public static final class h implements Callable<J> {
        @Override
        public J call() throws Exception {
            return g.f32007a;
        }
    }

    public C3604b() {
        throw new IllegalStateException("No instances!");
    }

    @Ce.f
    public static J a() {
        return Ye.a.X(f32000b);
    }

    @Ce.f
    public static J b(@Ce.f Executor executor) {
        return new Se.d(executor, false);
    }

    @Ce.e
    @Ce.f
    public static J c(@Ce.f Executor executor, boolean z10) {
        return new Se.d(executor, z10);
    }

    @Ce.f
    public static J d() {
        return Ye.a.Z(f32001c);
    }

    @Ce.f
    public static J e() {
        return Ye.a.a0(f32003e);
    }

    public static void f() {
        a().i();
        d().i();
        e().i();
        g().i();
        i().i();
        p.b();
    }

    @Ce.f
    public static J g() {
        return Ye.a.c0(f31999a);
    }

    public static void h() {
        a().j();
        d().j();
        e().j();
        g().j();
        i().j();
        p.c();
    }

    @Ce.f
    public static J i() {
        return f32002d;
    }
}

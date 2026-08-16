package fc;

import java.util.concurrent.atomic.AtomicBoolean;
import p6.g;
import t3.C15377a;
import yb.C16165b;

public class C13204a {

    public static final C13207d f86155a = new C13207d();

    public static final AtomicBoolean f86156b = new AtomicBoolean(true);

    public static long f86157c = 0;

    public static final C13205b f86158d = new C13205b();

    public static void a(C13205b quadImage) {
        K8.a.G();
        if (C15377a.f109719g.booleanValue() || f86156b.get()) {
            f86155a.a(quadImage);
            return;
        }
        if (K8.a.r()) {
            if (f86157c != K8.a.f10989t) {
                throw new IllegalStateException("FSQ was locked but not unlock previous frame");
            }
            throw new IllegalStateException("Current frame data already binded");
        }
        throw new IllegalStateException("Current frame data already binded: illegal thread:" + Thread.currentThread().getName());
    }

    public static void b() {
        f86156b.set(true);
    }

    public static void c() {
        f86155a.h();
    }

    public static void d() {
        if (N7.c.D() != null && N7.c.D().S()) {
            f86155a.e();
            return;
        }
        g L12 = p6.d.E1() ? p6.d.L1("FSQ Preparation") : null;
        f86157c = K8.a.f10989t;
        f86156b.set(false);
        C13205b c13205b = f86158d;
        c13205b.j(-999999);
        c13205b.l(C16165b.f130163i);
        C13207d c13207d = f86155a;
        c13207d.a(c13205b);
        c13207d.j();
        p6.d.J1(L12);
    }

    public static void e() {
        if (N7.c.D() == null || !N7.c.D().S()) {
            f86155a.k();
            f86156b.set(true);
        } else {
            f86155a.e();
            f86156b.set(true);
        }
    }

    public static void f() {
        if (!f86156b.get()) {
            throw new RuntimeException("Not unlock this frame");
        }
    }

    public static void g(int width, int height) {
        f86155a.o(width, height);
    }
}

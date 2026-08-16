package v3;

import N7.c;
import ob.b;

public class k {

    public j f121184a;

    public int f121185b;

    public c.g f121187d;

    public ob.b f121189f;

    public b.a f121190g;

    public boolean f121186c = false;

    public final Object f121188e = new Object();

    public class a implements b.a {

        public float f121191a = 0.0f;

        public class RunnableC2051a implements Runnable {
            public RunnableC2051a() {
            }

            @Override
            public void run() {
                j d10 = k.this.d();
                if (d10 != null) {
                    d10.a(N7.c.o(), k.this);
                }
            }
        }

        public a() {
        }

        @Override
        public boolean run() {
            synchronized (k.this.f121188e) {
                try {
                    if (k.this.f121190g == null) {
                        return false;
                    }
                    if (this != k.this.f121190g) {
                        return false;
                    }
                    if (k.this.f121186c) {
                        return true;
                    }
                    float e10 = this.f121191a + K8.d.e();
                    this.f121191a = e10;
                    if (e10 >= k.this.c() / 1000.0f) {
                        this.f121191a = 0.0f;
                        N7.c.j0(new RunnableC2051a());
                    }
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public k(j repeatListener, int delay) {
        this.f121184a = repeatListener;
        this.f121185b = delay;
    }

    public int c() {
        return this.f121185b;
    }

    public j d() {
        return this.f121184a;
    }

    public void e() {
        if (this.f121189f == null) {
            a aVar = new a();
            this.f121190g = aVar;
            ob.b bVar = new ob.b(aVar);
            this.f121189f = bVar;
            K8.a.J(bVar);
        }
    }

    public void f(int delay) {
        this.f121185b = delay;
    }

    public void finalize() throws Throwable {
        i();
        super.finalize();
    }

    public void g(j repeatListener) {
        this.f121184a = repeatListener;
    }

    public void h() {
        synchronized (this.f121188e) {
            this.f121186c = false;
            e();
        }
    }

    public void i() {
        synchronized (this.f121188e) {
            this.f121189f = null;
            this.f121190g = null;
            this.f121186c = true;
        }
    }

    public k(j repeatListener, int delay, c.g allowedPage) {
        this.f121184a = repeatListener;
        this.f121185b = delay;
        this.f121187d = allowedPage;
    }
}

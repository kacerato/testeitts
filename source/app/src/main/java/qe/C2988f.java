package Qe;

import java.util.concurrent.TimeUnit;

public final class C2988f<T> extends Be.K<T> {

    public final Be.Q<? extends T> f22223b;

    public final long f22224c;

    public final TimeUnit f22225d;

    public final Be.J f22226e;

    public final boolean f22227f;

    public final class a implements Be.N<T> {

        public final Ge.h f22228b;

        public final Be.N<? super T> f22229c;

        public final class RunnableC0537a implements Runnable {

            public final Throwable f22231b;

            public RunnableC0537a(Throwable th2) {
                this.f22231b = th2;
            }

            @Override
            public void run() {
                a.this.f22229c.onError(this.f22231b);
            }
        }

        public final class b implements Runnable {

            public final T f22233b;

            public b(T t10) {
                this.f22233b = t10;
            }

            @Override
            public void run() {
                a.this.f22229c.b(this.f22233b);
            }
        }

        public a(Ge.h hVar, Be.N<? super T> n10) {
            this.f22228b = hVar;
            this.f22229c = n10;
        }

        @Override
        public void b(T t10) {
            Ge.h hVar = this.f22228b;
            Be.J j10 = C2988f.this.f22226e;
            b bVar = new b(t10);
            C2988f c2988f = C2988f.this;
            hVar.a(j10.g(bVar, c2988f.f22224c, c2988f.f22225d));
        }

        @Override
        public void e(De.c cVar) {
            this.f22228b.a(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            Ge.h hVar = this.f22228b;
            Be.J j10 = C2988f.this.f22226e;
            RunnableC0537a runnableC0537a = new RunnableC0537a(th2);
            C2988f c2988f = C2988f.this;
            hVar.a(j10.g(runnableC0537a, c2988f.f22227f ? c2988f.f22224c : 0L, c2988f.f22225d));
        }
    }

    public C2988f(Be.Q<? extends T> q10, long j10, TimeUnit timeUnit, Be.J j11, boolean z10) {
        this.f22223b = q10;
        this.f22224c = j10;
        this.f22225d = timeUnit;
        this.f22226e = j11;
        this.f22227f = z10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        Ge.h hVar = new Ge.h();
        n10.e(hVar);
        this.f22223b.a(new a(hVar, n10));
    }
}

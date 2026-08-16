package Oe;

import Be.J;

public final class E0<T> extends AbstractC2859a<T, T> {

    public final Be.J f18790c;

    public final boolean f18791d;

    public final int f18792e;

    public static final class a<T> extends Je.b<T> implements Be.I<T>, Runnable {

        public static final long f18793n = 6576896619930983584L;

        public final Be.I<? super T> f18794c;

        public final J.c f18795d;

        public final boolean f18796e;

        public final int f18797f;

        public Ie.o<T> f18798g;

        public De.c f18799h;

        public Throwable f18800i;

        public volatile boolean f18801j;

        public volatile boolean f18802k;

        public int f18803l;

        public boolean f18804m;

        public a(Be.I<? super T> i10, J.c cVar, boolean z10, int i11) {
            this.f18794c = i10;
            this.f18795d = cVar;
            this.f18796e = z10;
            this.f18797f = i11;
        }

        @Override
        public void a() {
            if (this.f18801j) {
                return;
            }
            this.f18801j = true;
            j();
        }

        public boolean c(boolean z10, boolean z11, Be.I<? super T> i10) {
            if (this.f18802k) {
                this.f18798g.clear();
                return true;
            }
            if (!z10) {
                return false;
            }
            Throwable th2 = this.f18800i;
            if (this.f18796e) {
                if (!z11) {
                    return false;
                }
                this.f18802k = true;
                if (th2 != null) {
                    i10.onError(th2);
                } else {
                    i10.a();
                }
                this.f18795d.dispose();
                return true;
            }
            if (th2 != null) {
                this.f18802k = true;
                this.f18798g.clear();
                i10.onError(th2);
                this.f18795d.dispose();
                return true;
            }
            if (!z11) {
                return false;
            }
            this.f18802k = true;
            i10.a();
            this.f18795d.dispose();
            return true;
        }

        @Override
        public void clear() {
            this.f18798g.clear();
        }

        @Override
        public boolean d() {
            return this.f18802k;
        }

        @Override
        public void dispose() {
            if (this.f18802k) {
                return;
            }
            this.f18802k = true;
            this.f18799h.dispose();
            this.f18795d.dispose();
            if (getAndIncrement() == 0) {
                this.f18798g.clear();
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18799h, cVar)) {
                this.f18799h = cVar;
                if (cVar instanceof Ie.j) {
                    Ie.j jVar = (Ie.j) cVar;
                    int m10 = jVar.m(7);
                    if (m10 == 1) {
                        this.f18803l = m10;
                        this.f18798g = jVar;
                        this.f18801j = true;
                        this.f18794c.e(this);
                        j();
                        return;
                    }
                    if (m10 == 2) {
                        this.f18803l = m10;
                        this.f18798g = jVar;
                        this.f18794c.e(this);
                        return;
                    }
                }
                this.f18798g = new Re.c(this.f18797f);
                this.f18794c.e(this);
            }
        }

        public void f() {
            int i10 = 1;
            while (!this.f18802k) {
                boolean z10 = this.f18801j;
                Throwable th2 = this.f18800i;
                if (!this.f18796e && z10 && th2 != null) {
                    this.f18802k = true;
                    this.f18794c.onError(this.f18800i);
                    this.f18795d.dispose();
                    return;
                }
                this.f18794c.h(null);
                if (z10) {
                    this.f18802k = true;
                    Throwable th3 = this.f18800i;
                    if (th3 != null) {
                        this.f18794c.onError(th3);
                    } else {
                        this.f18794c.a();
                    }
                    this.f18795d.dispose();
                    return;
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
            }
        }

        @Override
        public void h(T t10) {
            if (this.f18801j) {
                return;
            }
            if (this.f18803l != 2) {
                this.f18798g.offer(t10);
            }
            j();
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
        
            r3 = addAndGet(-r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
        
            if (r3 != 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x002e, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void i() {
            Ie.o<T> oVar = this.f18798g;
            Be.I<? super T> i10 = this.f18794c;
            int i11 = 1;
            while (!c(this.f18801j, oVar.isEmpty(), i10)) {
                while (true) {
                    boolean z10 = this.f18801j;
                    try {
                        T poll = oVar.poll();
                        boolean z11 = poll == null;
                        if (c(z10, z11, i10)) {
                            return;
                        }
                        if (z11) {
                            break;
                        } else {
                            i10.h(poll);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f18802k = true;
                        this.f18799h.dispose();
                        oVar.clear();
                        i10.onError(th2);
                        this.f18795d.dispose();
                        return;
                    }
                }
            }
        }

        @Override
        public boolean isEmpty() {
            return this.f18798g.isEmpty();
        }

        public void j() {
            if (getAndIncrement() == 0) {
                this.f18795d.b(this);
            }
        }

        @Override
        public int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            this.f18804m = true;
            return 2;
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f18801j) {
                Ye.a.Y(th2);
                return;
            }
            this.f18800i = th2;
            this.f18801j = true;
            j();
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            return this.f18798g.poll();
        }

        @Override
        public void run() {
            if (this.f18804m) {
                f();
            } else {
                i();
            }
        }
    }

    public E0(Be.G<T> g10, Be.J j10, boolean z10, int i10) {
        super(g10);
        this.f18790c = j10;
        this.f18791d = z10;
        this.f18792e = i10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        Be.J j10 = this.f18790c;
        if (j10 instanceof Se.s) {
            this.f19344b.c(i10);
        } else {
            this.f19344b.c(new a(i10, j10.c(), this.f18791d, this.f18792e));
        }
    }
}

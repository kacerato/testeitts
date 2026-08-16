package Oe;

import java.util.Iterator;

public final class C2878g0<T> extends Be.B<T> {

    public final Iterable<? extends T> f19482b;

    public static final class a<T> extends Je.c<T> {

        public final Be.I<? super T> f19483b;

        public final Iterator<? extends T> f19484c;

        public volatile boolean f19485d;

        public boolean f19486e;

        public boolean f19487f;

        public boolean f19488g;

        public a(Be.I<? super T> i10, Iterator<? extends T> it) {
            this.f19483b = i10;
            this.f19484c = it;
        }

        public void c() {
            while (!d()) {
                try {
                    this.f19483b.h(He.b.g(this.f19484c.next(), "The iterator returned a null value"));
                    if (d()) {
                        return;
                    }
                    try {
                        if (!this.f19484c.hasNext()) {
                            if (d()) {
                                return;
                            }
                            this.f19483b.a();
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f19483b.onError(th2);
                        return;
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    this.f19483b.onError(th3);
                    return;
                }
            }
        }

        @Override
        public void clear() {
            this.f19487f = true;
        }

        @Override
        public boolean d() {
            return this.f19485d;
        }

        @Override
        public void dispose() {
            this.f19485d = true;
        }

        @Override
        public boolean isEmpty() {
            return this.f19487f;
        }

        @Override
        public int m(int i10) {
            if ((i10 & 1) == 0) {
                return 0;
            }
            this.f19486e = true;
            return 1;
        }

        @Override
        @Ce.g
        public T poll() {
            if (this.f19487f) {
                return null;
            }
            if (!this.f19488g) {
                this.f19488g = true;
            } else if (!this.f19484c.hasNext()) {
                this.f19487f = true;
                return null;
            }
            return (T) He.b.g(this.f19484c.next(), "The iterator returned a null value");
        }
    }

    public C2878g0(Iterable<? extends T> iterable) {
        this.f19482b = iterable;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        try {
            Iterator<? extends T> it = this.f19482b.iterator();
            try {
                if (!it.hasNext()) {
                    Ge.e.c(i10);
                    return;
                }
                a aVar = new a(i10, it);
                i10.e(aVar);
                if (aVar.f19486e) {
                    return;
                }
                aVar.c();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ge.e.h(th2, i10);
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ge.e.h(th3, i10);
        }
    }
}

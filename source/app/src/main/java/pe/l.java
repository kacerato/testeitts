package Pe;

import Be.InterfaceC2367q;
import Fe.q;
import io.reactivex.exceptions.CompositeException;

public final class l<T> extends Xe.b<T> {

    public final Xe.b<T> f21380a;

    public final Fe.g<? super T> f21381b;

    public final Fe.g<? super T> f21382c;

    public final Fe.g<? super Throwable> f21383d;

    public final Fe.a f21384e;

    public final Fe.a f21385f;

    public final Fe.g<? super hn.d> f21386g;

    public final q f21387h;

    public final Fe.a f21388i;

    public static final class a<T> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super T> f21389b;

        public final l<T> f21390c;

        public hn.d f21391d;

        public boolean f21392e;

        public a(hn.c<? super T> cVar, l<T> lVar) {
            this.f21389b = cVar;
            this.f21390c = lVar;
        }

        @Override
        public void a() {
            if (this.f21392e) {
                return;
            }
            this.f21392e = true;
            try {
                this.f21390c.f21384e.run();
                this.f21389b.a();
                try {
                    this.f21390c.f21385f.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f21389b.onError(th3);
            }
        }

        @Override
        public void cancel() {
            try {
                this.f21390c.f21388i.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
            this.f21391d.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f21392e) {
                return;
            }
            try {
                this.f21390c.f21381b.accept(t10);
                this.f21389b.h(t10);
                try {
                    this.f21390c.f21382c.accept(t10);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                onError(th3);
            }
        }

        @Override
        public void i(long j10) {
            try {
                this.f21390c.f21387h.a(j10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
            this.f21391d.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21391d, dVar)) {
                this.f21391d = dVar;
                try {
                    this.f21390c.f21386g.accept(dVar);
                    this.f21389b.j(this);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    dVar.cancel();
                    this.f21389b.j(Ue.g.INSTANCE);
                    onError(th2);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21392e) {
                Ye.a.Y(th2);
                return;
            }
            this.f21392e = true;
            try {
                this.f21390c.f21383d.accept(th2);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f21389b.onError(th2);
            try {
                this.f21390c.f21385f.run();
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                Ye.a.Y(th4);
            }
        }
    }

    public l(Xe.b<T> bVar, Fe.g<? super T> gVar, Fe.g<? super T> gVar2, Fe.g<? super Throwable> gVar3, Fe.a aVar, Fe.a aVar2, Fe.g<? super hn.d> gVar4, q qVar, Fe.a aVar3) {
        this.f21380a = bVar;
        this.f21381b = (Fe.g) He.b.g(gVar, "onNext is null");
        this.f21382c = (Fe.g) He.b.g(gVar2, "onAfterNext is null");
        this.f21383d = (Fe.g) He.b.g(gVar3, "onError is null");
        this.f21384e = (Fe.a) He.b.g(aVar, "onComplete is null");
        this.f21385f = (Fe.a) He.b.g(aVar2, "onAfterTerminated is null");
        this.f21386g = (Fe.g) He.b.g(gVar4, "onSubscribe is null");
        this.f21387h = (q) He.b.g(qVar, "onRequest is null");
        this.f21388i = (Fe.a) He.b.g(aVar3, "onCancel is null");
    }

    @Override
    public int F() {
        return this.f21380a.F();
    }

    @Override
    public void Q(hn.c<? super T>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            hn.c<? super T>[] cVarArr2 = new hn.c[length];
            for (int i10 = 0; i10 < length; i10++) {
                cVarArr2[i10] = new a(cVarArr[i10], this);
            }
            this.f21380a.Q(cVarArr2);
        }
    }
}

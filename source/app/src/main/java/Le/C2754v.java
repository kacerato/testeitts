package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.CompositeException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class C2754v<T> extends AbstractC2362l<T> {

    public final hn.b<? extends T>[] f13259c;

    public final boolean f13260d;

    public static final class a<T> extends Ue.i implements InterfaceC2367q<T> {

        public static final long f13261r = -8158322871608889516L;

        public final hn.c<? super T> f13262k;

        public final hn.b<? extends T>[] f13263l;

        public final boolean f13264m;

        public final AtomicInteger f13265n;

        public int f13266o;

        public List<Throwable> f13267p;

        public long f13268q;

        public a(hn.b<? extends T>[] bVarArr, boolean z10, hn.c<? super T> cVar) {
            super(false);
            this.f13262k = cVar;
            this.f13263l = bVarArr;
            this.f13264m = z10;
            this.f13265n = new AtomicInteger();
        }

        @Override
        public void a() {
            if (this.f13265n.getAndIncrement() == 0) {
                hn.b<? extends T>[] bVarArr = this.f13263l;
                int length = bVarArr.length;
                int i10 = this.f13266o;
                while (i10 != length) {
                    hn.b<? extends T> bVar = bVarArr[i10];
                    if (bVar == null) {
                        NullPointerException nullPointerException = new NullPointerException("A Publisher entry is null");
                        if (!this.f13264m) {
                            this.f13262k.onError(nullPointerException);
                            return;
                        }
                        List list = this.f13267p;
                        if (list == null) {
                            list = new ArrayList((length - i10) + 1);
                            this.f13267p = list;
                        }
                        list.add(nullPointerException);
                        i10++;
                    } else {
                        long j10 = this.f13268q;
                        if (j10 != 0) {
                            this.f13268q = 0L;
                            k(j10);
                        }
                        bVar.l(this);
                        i10++;
                        this.f13266o = i10;
                        if (this.f13265n.decrementAndGet() == 0) {
                            return;
                        }
                    }
                }
                List<Throwable> list2 = this.f13267p;
                if (list2 == null) {
                    this.f13262k.a();
                } else if (list2.size() == 1) {
                    this.f13262k.onError(list2.get(0));
                } else {
                    this.f13262k.onError(new CompositeException(list2));
                }
            }
        }

        @Override
        public void h(T t10) {
            this.f13268q++;
            this.f13262k.h(t10);
        }

        @Override
        public void j(hn.d dVar) {
            l(dVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f13264m) {
                this.f13262k.onError(th2);
                return;
            }
            List list = this.f13267p;
            if (list == null) {
                list = new ArrayList((this.f13263l.length - this.f13266o) + 1);
                this.f13267p = list;
            }
            list.add(th2);
            a();
        }
    }

    public C2754v(hn.b<? extends T>[] bVarArr, boolean z10) {
        this.f13259c = bVarArr;
        this.f13260d = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar = new a(this.f13259c, this.f13260d, cVar);
        cVar.j(aVar);
        aVar.a();
    }
}

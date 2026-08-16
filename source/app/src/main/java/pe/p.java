package Pe;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class p<T> extends AbstractC2362l<T> {

    public final Xe.b<List<T>> f21438c;

    public final Comparator<? super T> f21439d;

    public static final class a<T> extends AtomicReference<hn.d> implements InterfaceC2367q<List<T>> {

        public static final long f21440d = 6751017204873808094L;

        public final b<T> f21441b;

        public final int f21442c;

        public a(b<T> bVar, int i10) {
            this.f21441b = bVar;
            this.f21442c = i10;
        }

        @Override
        public void a() {
        }

        public void b() {
            Ue.j.a(this);
        }

        @Override
        public void h(List<T> list) {
            this.f21441b.d(list, this.f21442c);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, Long.MAX_VALUE);
        }

        @Override
        public void onError(Throwable th2) {
            this.f21441b.c(th2);
        }
    }

    public static final class b<T> extends AtomicInteger implements hn.d {

        public static final long f21443k = 3481980673745556697L;

        public final hn.c<? super T> f21444b;

        public final a<T>[] f21445c;

        public final List<T>[] f21446d;

        public final int[] f21447e;

        public final Comparator<? super T> f21448f;

        public volatile boolean f21450h;

        public final AtomicLong f21449g = new AtomicLong();

        public final AtomicInteger f21451i = new AtomicInteger();

        public final AtomicReference<Throwable> f21452j = new AtomicReference<>();

        public b(hn.c<? super T> cVar, int i10, Comparator<? super T> comparator) {
            this.f21444b = cVar;
            this.f21448f = comparator;
            a<T>[] aVarArr = new a[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                aVarArr[i11] = new a<>(this, i11);
            }
            this.f21445c = aVarArr;
            this.f21446d = new List[i10];
            this.f21447e = new int[i10];
            this.f21451i.lazySet(i10);
        }

        public void a() {
            for (a<T> aVar : this.f21445c) {
                aVar.b();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:50:0x009e, code lost:
        
            if (r11 != r7) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a2, code lost:
        
            if (r16.f21450h == false) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00a9, code lost:
        
            r10 = r16.f21452j.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00b2, code lost:
        
            if (r10 == null) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00be, code lost:
        
            if (r14 >= r4) goto L75;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00c8, code lost:
        
            if (r0[r14] == r3[r14].size()) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00cd, code lost:
        
            r14 = r14 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00d0, code lost:
        
            java.util.Arrays.fill(r3, (java.lang.Object) null);
            r2.a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00d7, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00b4, code lost:
        
            a();
            java.util.Arrays.fill(r3, (java.lang.Object) null);
            r2.onError(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00bd, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00a4, code lost:
        
            java.util.Arrays.fill(r3, (java.lang.Object) null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00a8, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x00da, code lost:
        
            if (r11 == 0) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x00e3, code lost:
        
            if (r7 == Long.MAX_VALUE) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x00e5, code lost:
        
            r16.f21449g.addAndGet(-r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x00eb, code lost:
        
            r5 = get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x00ef, code lost:
        
            if (r5 != r6) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x00f1, code lost:
        
            r5 = addAndGet(-r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x00f6, code lost:
        
            if (r5 != 0) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x00f8, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void b() {
            int i10;
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super T> cVar = this.f21444b;
            List<T>[] listArr = this.f21446d;
            int[] iArr = this.f21447e;
            int length = iArr.length;
            int i11 = 1;
            while (true) {
                long j10 = this.f21449g.get();
                long j11 = 0;
                while (true) {
                    int i12 = 0;
                    if (j11 == j10) {
                        break;
                    }
                    if (this.f21450h) {
                        Arrays.fill(listArr, (Object) null);
                        return;
                    }
                    Throwable th2 = this.f21452j.get();
                    if (th2 != null) {
                        a();
                        Arrays.fill(listArr, (Object) null);
                        cVar.onError(th2);
                        return;
                    }
                    int i13 = -1;
                    T t10 = null;
                    while (i12 < length) {
                        List<T> list = listArr[i12];
                        int i14 = iArr[i12];
                        if (list.size() != i14) {
                            if (t10 == null) {
                                t10 = list.get(i14);
                            } else {
                                T t11 = list.get(i14);
                                try {
                                    if (this.f21448f.compare(t10, t11) > 0) {
                                        t10 = t11;
                                    }
                                } catch (Throwable th3) {
                                    io.reactivex.exceptions.a.b(th3);
                                    a();
                                    Arrays.fill(listArr, (Object) null);
                                    if (!androidx.lifecycle.c.a(this.f21452j, null, th3)) {
                                        Ye.a.Y(th3);
                                    }
                                    cVar.onError(this.f21452j.get());
                                    return;
                                }
                            }
                            i13 = i12;
                        }
                        i12++;
                    }
                    if (t10 == null) {
                        Arrays.fill(listArr, (Object) null);
                        cVar.a();
                        return;
                    } else {
                        cVar.h(t10);
                        iArr[i13] = iArr[i13] + 1;
                        j11++;
                    }
                }
                i11 = i10;
            }
        }

        public void c(Throwable th2) {
            if (androidx.lifecycle.c.a(this.f21452j, null, th2)) {
                b();
            } else if (th2 != this.f21452j.get()) {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void cancel() {
            if (this.f21450h) {
                return;
            }
            this.f21450h = true;
            a();
            if (getAndIncrement() == 0) {
                Arrays.fill(this.f21446d, (Object) null);
            }
        }

        public void d(List<T> list, int i10) {
            this.f21446d[i10] = list;
            if (this.f21451i.decrementAndGet() == 0) {
                b();
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f21449g, j10);
                if (this.f21451i.get() == 0) {
                    b();
                }
            }
        }
    }

    public p(Xe.b<List<T>> bVar, Comparator<? super T> comparator) {
        this.f21438c = bVar;
        this.f21439d = comparator;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        b bVar = new b(cVar, this.f21438c.F(), this.f21439d);
        cVar.j(bVar);
        this.f21438c.Q(bVar.f21445c);
    }
}

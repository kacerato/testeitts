package We;

import Be.A;
import Fe.r;
import We.a;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.x;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public abstract class a<T, U extends a<T, U>> implements De.c {

    public long f27720e;

    public Thread f27721f;

    public boolean f27722g;

    public int f27723h;

    public int f27724i;

    public CharSequence f27725j;

    public boolean f27726k;

    public final List<T> f27718c = new x();

    public final List<Throwable> f27719d = new x();

    public final CountDownLatch f27717b = new CountDownLatch(1);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class b implements Runnable {
        private static final b[] $VALUES;
        public static final b SLEEP_1000MS;
        public static final b SLEEP_100MS;
        public static final b SLEEP_10MS;
        public static final b SLEEP_1MS;
        public static final b SPIN;
        public static final b YIELD;

        public enum C0773a extends b {
            public C0773a(String str, int i10) {
                super(str, i10);
            }

            @Override
            public void run() {
            }
        }

        public enum C0774b extends b {
            public C0774b(String str, int i10) {
                super(str, i10);
            }

            @Override
            public void run() {
                Thread.yield();
            }
        }

        public enum c extends b {
            public c(String str, int i10) {
                super(str, i10);
            }

            @Override
            public void run() {
                b.a(1);
            }
        }

        public enum d extends b {
            public d(String str, int i10) {
                super(str, i10);
            }

            @Override
            public void run() {
                b.a(10);
            }
        }

        public enum e extends b {
            public e(String str, int i10) {
                super(str, i10);
            }

            @Override
            public void run() {
                b.a(100);
            }
        }

        public enum f extends b {
            public f(String str, int i10) {
                super(str, i10);
            }

            @Override
            public void run() {
                b.a(1000);
            }
        }

        static {
            C0773a c0773a = new C0773a("SPIN", 0);
            SPIN = c0773a;
            C0774b c0774b = new C0774b("YIELD", 1);
            YIELD = c0774b;
            c cVar = new c("SLEEP_1MS", 2);
            SLEEP_1MS = cVar;
            d dVar = new d("SLEEP_10MS", 3);
            SLEEP_10MS = dVar;
            e eVar = new e("SLEEP_100MS", 4);
            SLEEP_100MS = eVar;
            f fVar = new f("SLEEP_1000MS", 5);
            SLEEP_1000MS = fVar;
            $VALUES = new b[]{c0773a, c0774b, cVar, dVar, eVar, fVar};
        }

        public b(String str, int i10) {
        }

        public static void a(int i10) {
            try {
                Thread.sleep(i10);
            } catch (InterruptedException e10) {
                throw new RuntimeException(e10);
            }
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }

        @Override
        public abstract void run();
    }

    public static String f0(Object obj) {
        if (obj == null) {
            return "null";
        }
        return obj + " (class: " + obj.getClass().getSimpleName() + ")";
    }

    public abstract U A();

    public final U B() {
        if (this.f27717b.getCount() != 0) {
            throw a0("Subscriber still running!");
        }
        long j10 = this.f27720e;
        if (j10 > 1) {
            throw a0("Terminated with multiple completions: " + j10);
        }
        int size = this.f27719d.size();
        if (size > 1) {
            throw a0("Terminated with multiple errors: " + size);
        }
        if (j10 == 0 || size == 0) {
            return this;
        }
        throw a0("Terminated with multiple completions and errors: " + j10);
    }

    public final U C() {
        if (this.f27726k) {
            return this;
        }
        throw a0("No timeout?!");
    }

    public final U D(r<T> rVar) {
        F(0, rVar);
        if (this.f27718c.size() <= 1) {
            return this;
        }
        throw a0("Value present but other values as well");
    }

    public final U E(T t10) {
        if (this.f27718c.size() != 1) {
            throw a0("expected: " + f0(t10) + " but was: " + ((Object) this.f27718c));
        }
        T t11 = this.f27718c.get(0);
        if (He.b.c(t10, t11)) {
            return this;
        }
        throw a0("expected: " + f0(t10) + " but was: " + f0(t11));
    }

    public final U F(int i10, r<T> rVar) {
        if (this.f27718c.size() == 0) {
            throw a0("No values");
        }
        if (i10 >= this.f27718c.size()) {
            throw a0("Invalid index: " + i10);
        }
        try {
            if (rVar.test(this.f27718c.get(i10))) {
                return this;
            }
            throw a0("Value not present");
        } catch (Exception e10) {
            throw ExceptionHelper.f(e10);
        }
    }

    public final U G(int i10, T t10) {
        int size = this.f27718c.size();
        if (size == 0) {
            throw a0("No values");
        }
        if (i10 >= size) {
            throw a0("Invalid index: " + i10);
        }
        T t11 = this.f27718c.get(i10);
        if (He.b.c(t10, t11)) {
            return this;
        }
        throw a0("expected: " + f0(t10) + " but was: " + f0(t11));
    }

    public final U H(int i10) {
        int size = this.f27718c.size();
        if (size == i10) {
            return this;
        }
        throw a0("Value counts differ; expected: " + i10 + " but was: " + size);
    }

    public final U I(Iterable<? extends T> iterable) {
        boolean hasNext;
        boolean hasNext2;
        Iterator<T> it = this.f27718c.iterator();
        Iterator<? extends T> it2 = iterable.iterator();
        int i10 = 0;
        while (true) {
            hasNext = it2.hasNext();
            hasNext2 = it.hasNext();
            if (!hasNext2 || !hasNext) {
                break;
            }
            T next = it2.next();
            T next2 = it.next();
            if (!He.b.c(next, next2)) {
                throw a0("Values at position " + i10 + " differ; expected: " + f0(next) + " but was: " + f0(next2));
            }
            i10++;
        }
        if (hasNext2) {
            throw a0("More values received than expected (" + i10 + ")");
        }
        if (!hasNext) {
            return this;
        }
        throw a0("Fewer values received than expected (" + i10 + ")");
    }

    public final U J(Iterable<? extends T> iterable) {
        return (U) A().I(iterable).s().w();
    }

    public final U K(Collection<? extends T> collection) {
        if (collection.isEmpty()) {
            v();
            return this;
        }
        for (T t10 : this.f27718c) {
            if (!collection.contains(t10)) {
                throw a0("Value not in the expected collection: " + f0(t10));
            }
        }
        return this;
    }

    public final U L(Collection<? extends T> collection) {
        return (U) A().K(collection).s().w();
    }

    public final U M(T... tArr) {
        int size = this.f27718c.size();
        if (size != tArr.length) {
            throw a0("Value count differs; expected: " + tArr.length + " " + Arrays.toString(tArr) + " but was: " + size + " " + ((Object) this.f27718c));
        }
        for (int i10 = 0; i10 < size; i10++) {
            T t10 = this.f27718c.get(i10);
            T t11 = tArr[i10];
            if (!He.b.c(t11, t10)) {
                throw a0("Values at position " + i10 + " differ; expected: " + f0(t11) + " but was: " + f0(t10));
            }
        }
        return this;
    }

    public final U N(T... tArr) {
        return (U) A().M(tArr).s().w();
    }

    public final U O() throws InterruptedException {
        if (this.f27717b.getCount() == 0) {
            return this;
        }
        this.f27717b.await();
        return this;
    }

    public final boolean P(long j10, TimeUnit timeUnit) throws InterruptedException {
        boolean z10 = this.f27717b.getCount() == 0 || this.f27717b.await(j10, timeUnit);
        this.f27726k = !z10;
        return z10;
    }

    public final U Q(int i10) {
        return S(i10, b.SLEEP_10MS, 5000L);
    }

    public final U R(int i10, Runnable runnable) {
        return S(i10, runnable, 5000L);
    }

    public final U S(int i10, Runnable runnable, long j10) {
        long currentTimeMillis = System.currentTimeMillis();
        while (true) {
            if (j10 > 0 && System.currentTimeMillis() - currentTimeMillis >= j10) {
                this.f27726k = true;
                break;
            }
            if (this.f27717b.getCount() == 0 || this.f27718c.size() >= i10) {
                break;
            }
            runnable.run();
        }
        return this;
    }

    public final U T(long j10, TimeUnit timeUnit) {
        try {
            if (!this.f27717b.await(j10, timeUnit)) {
                this.f27726k = true;
                dispose();
            }
            return this;
        } catch (InterruptedException e10) {
            dispose();
            throw ExceptionHelper.f(e10);
        }
    }

    public final boolean U() {
        try {
            O();
            return true;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    public final boolean V(long j10, TimeUnit timeUnit) {
        try {
            return P(j10, timeUnit);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    public final U W() {
        this.f27726k = false;
        return this;
    }

    public final long X() {
        return this.f27720e;
    }

    public final int Y() {
        return this.f27719d.size();
    }

    public final List<Throwable> Z() {
        return this.f27719d;
    }

    public final AssertionError a0(String str) {
        StringBuilder sb2 = new StringBuilder(str.length() + 64);
        sb2.append(str);
        sb2.append(" (");
        sb2.append("latch = ");
        sb2.append(this.f27717b.getCount());
        sb2.append(", ");
        sb2.append("values = ");
        sb2.append(this.f27718c.size());
        sb2.append(", ");
        sb2.append("errors = ");
        sb2.append(this.f27719d.size());
        sb2.append(", ");
        sb2.append("completions = ");
        sb2.append(this.f27720e);
        if (this.f27726k) {
            sb2.append(", timeout!");
        }
        if (d()) {
            sb2.append(", disposed!");
        }
        CharSequence charSequence = this.f27725j;
        if (charSequence != null) {
            sb2.append(", tag = ");
            sb2.append(charSequence);
        }
        sb2.append(')');
        AssertionError assertionError = new AssertionError((Object) sb2.toString());
        if (!this.f27719d.isEmpty()) {
            if (this.f27719d.size() == 1) {
                assertionError.initCause(this.f27719d.get(0));
            } else {
                assertionError.initCause(new CompositeException(this.f27719d));
            }
        }
        return assertionError;
    }

    public final List<List<Object>> b0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(h0());
        arrayList.add(Z());
        ArrayList arrayList2 = new ArrayList();
        for (long j10 = 0; j10 < this.f27720e; j10++) {
            arrayList2.add(A.a());
        }
        arrayList.add(arrayList2);
        return arrayList;
    }

    public final U c() {
        long j10 = this.f27720e;
        if (j10 == 0) {
            throw a0("Not completed");
        }
        if (j10 <= 1) {
            return this;
        }
        throw a0("Multiple completions: " + j10);
    }

    public final boolean c0() {
        return this.f27717b.getCount() == 0;
    }

    public final boolean d0() {
        return this.f27726k;
    }

    public final Thread e0() {
        return this.f27721f;
    }

    public final U f() {
        return (U) A().v().s().w();
    }

    public final U g(r<Throwable> rVar) {
        int size = this.f27719d.size();
        if (size == 0) {
            throw a0("No errors");
        }
        Iterator<Throwable> it = this.f27719d.iterator();
        while (it.hasNext()) {
            try {
                if (rVar.test(it.next())) {
                    if (size == 1) {
                        return this;
                    }
                    throw a0("Error present but other errors as well");
                }
            } catch (Exception e10) {
                throw ExceptionHelper.f(e10);
            }
        }
        throw a0("Error not present");
    }

    public final int g0() {
        return this.f27718c.size();
    }

    public final List<T> h0() {
        return this.f27718c;
    }

    public final U i0(CharSequence charSequence) {
        this.f27725j = charSequence;
        return this;
    }

    public final U k(Class<? extends Throwable> cls) {
        return g(He.a.l(cls));
    }

    public final U l(Throwable th2) {
        return g(He.a.i(th2));
    }

    public final U m(String str) {
        int size = this.f27719d.size();
        if (size == 0) {
            throw a0("No errors");
        }
        if (size != 1) {
            throw a0("Multiple errors");
        }
        String message = this.f27719d.get(0).getMessage();
        if (He.b.c(str, message)) {
            return this;
        }
        throw a0("Error message differs; exptected: " + str + " but was: " + message);
    }

    public final U n(r<Throwable> rVar, T... tArr) {
        return (U) A().M(tArr).g(rVar).w();
    }

    public final U o(Class<? extends Throwable> cls, T... tArr) {
        return (U) A().M(tArr).k(cls).w();
    }

    public final U p(Class<? extends Throwable> cls, String str, T... tArr) {
        return (U) A().M(tArr).k(cls).m(str).w();
    }

    public final U q(r<? super T> rVar) {
        int size = this.f27718c.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                if (rVar.test(this.f27718c.get(i10))) {
                    throw a0("Value at position " + i10 + " matches predicate " + rVar.toString() + ", which was not expected.");
                }
            } catch (Exception e10) {
                throw ExceptionHelper.f(e10);
            }
        }
        return this;
    }

    public final U r(T t10) {
        int size = this.f27718c.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (He.b.c(this.f27718c.get(i10), t10)) {
                throw a0("Value at position " + i10 + " is equal to " + f0(t10) + "; Expected them to be different");
            }
        }
        return this;
    }

    public final U s() {
        if (this.f27719d.size() == 0) {
            return this;
        }
        throw a0("Error(s) present: " + ((Object) this.f27719d));
    }

    public final U t() {
        if (this.f27726k) {
            throw a0("Timeout?!");
        }
        return this;
    }

    public final U v() {
        return H(0);
    }

    public final U w() {
        long j10 = this.f27720e;
        if (j10 == 1) {
            throw a0("Completed!");
        }
        if (j10 <= 1) {
            return this;
        }
        throw a0("Multiple completions: " + j10);
    }

    public abstract U x();

    public final U y() {
        if (this.f27717b.getCount() != 0) {
            return this;
        }
        throw a0("Subscriber terminated!");
    }

    public final U z(T... tArr) {
        return (U) A().M(tArr).s().c();
    }
}

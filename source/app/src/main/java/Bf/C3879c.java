package bf;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class C3879c extends AbstractC2353c implements InterfaceC2356f {

    public static final a[] f33107e = new a[0];

    public static final a[] f33108f = new a[0];

    public Throwable f33111d;

    public final AtomicBoolean f33110c = new AtomicBoolean();

    public final AtomicReference<a[]> f33109b = new AtomicReference<>(f33107e);

    public static final class a extends AtomicReference<C3879c> implements De.c {

        public static final long f33112c = -7650903191002190468L;

        public final InterfaceC2356f f33113b;

        public a(InterfaceC2356f interfaceC2356f, C3879c c3879c) {
            this.f33113b = interfaceC2356f;
            lazySet(c3879c);
        }

        @Override
        public boolean d() {
            return get() == null;
        }

        @Override
        public void dispose() {
            C3879c andSet = getAndSet(null);
            if (andSet != null) {
                andSet.q1(this);
            }
        }
    }

    @Ce.f
    @Ce.d
    public static C3879c k1() {
        return new C3879c();
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        a aVar = new a(interfaceC2356f, this);
        interfaceC2356f.e(aVar);
        if (j1(aVar)) {
            if (aVar.d()) {
                q1(aVar);
            }
        } else {
            Throwable th2 = this.f33111d;
            if (th2 != null) {
                interfaceC2356f.onError(th2);
            } else {
                interfaceC2356f.a();
            }
        }
    }

    @Override
    public void a() {
        if (this.f33110c.compareAndSet(false, true)) {
            for (a aVar : this.f33109b.getAndSet(f33108f)) {
                aVar.f33113b.a();
            }
        }
    }

    @Override
    public void e(De.c cVar) {
        if (this.f33109b.get() == f33108f) {
            cVar.dispose();
        }
    }

    public boolean j1(a aVar) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f33109b.get();
            if (aVarArr == f33108f) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f33109b, aVarArr, aVarArr2));
        return true;
    }

    @Ce.g
    public Throwable l1() {
        if (this.f33109b.get() == f33108f) {
            return this.f33111d;
        }
        return null;
    }

    public boolean m1() {
        return this.f33109b.get() == f33108f && this.f33111d == null;
    }

    public boolean n1() {
        return this.f33109b.get().length != 0;
    }

    public boolean o1() {
        return this.f33109b.get() == f33108f && this.f33111d != null;
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f33110c.compareAndSet(false, true)) {
            Ye.a.Y(th2);
            return;
        }
        this.f33111d = th2;
        for (a aVar : this.f33109b.getAndSet(f33108f)) {
            aVar.f33113b.onError(th2);
        }
    }

    public int p1() {
        return this.f33109b.get().length;
    }

    public void q1(a aVar) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f33109b.get();
            int length = aVarArr.length;
            if (length == 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (aVarArr[i10] == aVar) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 < 0) {
                return;
            }
            if (length == 1) {
                aVarArr2 = f33107e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f33109b, aVarArr, aVarArr2));
    }
}

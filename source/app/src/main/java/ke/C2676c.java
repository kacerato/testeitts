package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class C2676c extends AbstractC2353c implements InterfaceC2356f {

    public static final a[] f11238f = new a[0];

    public static final a[] f11239g = new a[0];

    public final InterfaceC2359i f11240b;

    public final AtomicReference<a[]> f11241c = new AtomicReference<>(f11238f);

    public final AtomicBoolean f11242d = new AtomicBoolean();

    public Throwable f11243e;

    public final class a extends AtomicBoolean implements De.c {

        public static final long f11244d = 8943152917179642732L;

        public final InterfaceC2356f f11245b;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11245b = interfaceC2356f;
        }

        @Override
        public boolean d() {
            return get();
        }

        @Override
        public void dispose() {
            if (compareAndSet(false, true)) {
                C2676c.this.k1(this);
            }
        }
    }

    public C2676c(InterfaceC2359i interfaceC2359i) {
        this.f11240b = interfaceC2359i;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        a aVar = new a(interfaceC2356f);
        interfaceC2356f.e(aVar);
        if (j1(aVar)) {
            if (aVar.d()) {
                k1(aVar);
            }
            if (this.f11242d.compareAndSet(false, true)) {
                this.f11240b.b(this);
                return;
            }
            return;
        }
        Throwable th2 = this.f11243e;
        if (th2 != null) {
            interfaceC2356f.onError(th2);
        } else {
            interfaceC2356f.a();
        }
    }

    @Override
    public void a() {
        for (a aVar : this.f11241c.getAndSet(f11239g)) {
            if (!aVar.get()) {
                aVar.f11245b.a();
            }
        }
    }

    @Override
    public void e(De.c cVar) {
    }

    public boolean j1(a aVar) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f11241c.get();
            if (aVarArr == f11239g) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f11241c, aVarArr, aVarArr2));
        return true;
    }

    public void k1(a aVar) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f11241c.get();
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
                aVarArr2 = f11238f;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f11241c, aVarArr, aVarArr2));
    }

    @Override
    public void onError(Throwable th2) {
        this.f11243e = th2;
        for (a aVar : this.f11241c.getAndSet(f11239g)) {
            if (!aVar.get()) {
                aVar.f11245b.onError(th2);
            }
        }
    }
}

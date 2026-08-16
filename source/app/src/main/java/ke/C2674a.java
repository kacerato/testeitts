package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicBoolean;

public final class C2674a extends AbstractC2353c {

    public final InterfaceC2359i[] f11225b;

    public final Iterable<? extends InterfaceC2359i> f11226c;

    public static final class C0371a implements InterfaceC2356f {

        public final AtomicBoolean f11227b;

        public final De.b f11228c;

        public final InterfaceC2356f f11229d;

        public De.c f11230e;

        public C0371a(AtomicBoolean atomicBoolean, De.b bVar, InterfaceC2356f interfaceC2356f) {
            this.f11227b = atomicBoolean;
            this.f11228c = bVar;
            this.f11229d = interfaceC2356f;
        }

        @Override
        public void a() {
            if (this.f11227b.compareAndSet(false, true)) {
                this.f11228c.b(this.f11230e);
                this.f11228c.dispose();
                this.f11229d.a();
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f11230e = cVar;
            this.f11228c.a(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f11227b.compareAndSet(false, true)) {
                Ye.a.Y(th2);
                return;
            }
            this.f11228c.b(this.f11230e);
            this.f11228c.dispose();
            this.f11229d.onError(th2);
        }
    }

    public C2674a(InterfaceC2359i[] interfaceC2359iArr, Iterable<? extends InterfaceC2359i> iterable) {
        this.f11225b = interfaceC2359iArr;
        this.f11226c = iterable;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        int length;
        InterfaceC2359i[] interfaceC2359iArr = this.f11225b;
        if (interfaceC2359iArr == null) {
            interfaceC2359iArr = new InterfaceC2359i[8];
            try {
                length = 0;
                for (InterfaceC2359i interfaceC2359i : this.f11226c) {
                    if (interfaceC2359i == null) {
                        Ge.e.e(new NullPointerException("One of the sources is null"), interfaceC2356f);
                        return;
                    }
                    if (length == interfaceC2359iArr.length) {
                        InterfaceC2359i[] interfaceC2359iArr2 = new InterfaceC2359i[(length >> 2) + length];
                        System.arraycopy(interfaceC2359iArr, 0, interfaceC2359iArr2, 0, length);
                        interfaceC2359iArr = interfaceC2359iArr2;
                    }
                    int i10 = length + 1;
                    interfaceC2359iArr[length] = interfaceC2359i;
                    length = i10;
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ge.e.e(th2, interfaceC2356f);
                return;
            }
        } else {
            length = interfaceC2359iArr.length;
        }
        De.b bVar = new De.b();
        interfaceC2356f.e(bVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i11 = 0; i11 < length; i11++) {
            InterfaceC2359i interfaceC2359i2 = interfaceC2359iArr[i11];
            if (bVar.d()) {
                return;
            }
            if (interfaceC2359i2 == null) {
                Throwable nullPointerException = new NullPointerException("One of the sources is null");
                if (!atomicBoolean.compareAndSet(false, true)) {
                    Ye.a.Y(nullPointerException);
                    return;
                } else {
                    bVar.dispose();
                    interfaceC2356f.onError(nullPointerException);
                    return;
                }
            }
            interfaceC2359i2.b(new C0371a(atomicBoolean, bVar, interfaceC2356f));
        }
        if (length == 0) {
            interfaceC2356f.a();
        }
    }
}

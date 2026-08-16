package T2;

import a3.InterfaceC3578a;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;

public class D<T> implements a3.b<T>, InterfaceC3578a<T> {

    public static final InterfaceC3578a.InterfaceC0839a<Object> f23958c = new InterfaceC3578a.InterfaceC0839a() {
        @Override
        public final void a(a3.b bVar) {
            D.f(bVar);
        }
    };

    public static final a3.b<Object> f23959d = new a3.b() {
        @Override
        public final Object get() {
            Object g10;
            g10 = D.g();
            return g10;
        }
    };

    @GuardedBy("this")
    public InterfaceC3578a.InterfaceC0839a<T> f23960a;

    public volatile a3.b<T> f23961b;

    public D(InterfaceC3578a.InterfaceC0839a<T> interfaceC0839a, a3.b<T> bVar) {
        this.f23960a = interfaceC0839a;
        this.f23961b = bVar;
    }

    public static <T> D<T> e() {
        return new D<>(f23958c, f23959d);
    }

    public static void f(a3.b bVar) {
    }

    public static Object g() {
        return null;
    }

    public static void h(InterfaceC3578a.InterfaceC0839a interfaceC0839a, InterfaceC3578a.InterfaceC0839a interfaceC0839a2, a3.b bVar) {
        interfaceC0839a.a(bVar);
        interfaceC0839a2.a(bVar);
    }

    public static <T> D<T> i(a3.b<T> bVar) {
        return new D<>(null, bVar);
    }

    @Override
    public void a(@NonNull final InterfaceC3578a.InterfaceC0839a<T> interfaceC0839a) {
        a3.b<T> bVar;
        a3.b<T> bVar2;
        a3.b<T> bVar3 = this.f23961b;
        a3.b<Object> bVar4 = f23959d;
        if (bVar3 != bVar4) {
            interfaceC0839a.a(bVar3);
            return;
        }
        synchronized (this) {
            bVar = this.f23961b;
            if (bVar != bVar4) {
                bVar2 = bVar;
            } else {
                final InterfaceC3578a.InterfaceC0839a<T> interfaceC0839a2 = this.f23960a;
                this.f23960a = new InterfaceC3578a.InterfaceC0839a() {
                    @Override
                    public final void a(a3.b bVar5) {
                        D.h(InterfaceC3578a.InterfaceC0839a.this, interfaceC0839a, bVar5);
                    }
                };
                bVar2 = null;
            }
        }
        if (bVar2 != null) {
            interfaceC0839a.a(bVar);
        }
    }

    @Override
    public T get() {
        return this.f23961b.get();
    }

    public void j(a3.b<T> bVar) {
        InterfaceC3578a.InterfaceC0839a<T> interfaceC0839a;
        if (this.f23961b != f23959d) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (this) {
            interfaceC0839a = this.f23960a;
            this.f23960a = null;
            this.f23961b = bVar;
        }
        interfaceC0839a.a(bVar);
    }
}

package mg;

import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class C14264z<E> {

    @NotNull
    public static final AtomicReferenceFieldUpdater f97111a = AtomicReferenceFieldUpdater.newUpdater(C14264z.class, Object.class, "_cur");

    @Lf.x
    @Nullable
    private volatile Object _cur;

    public C14264z(boolean z10) {
        this._cur = new C14239A(8, z10);
    }

    public final boolean a(@NotNull E e10) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97111a;
        while (true) {
            C14239A c14239a = (C14239A) atomicReferenceFieldUpdater.get(this);
            int a10 = c14239a.a(e10);
            if (a10 == 0) {
                return true;
            }
            if (a10 == 1) {
                androidx.concurrent.futures.a.a(f97111a, this, c14239a, c14239a.m());
            } else if (a10 == 2) {
                return false;
            }
        }
    }

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97111a;
        while (true) {
            C14239A c14239a = (C14239A) atomicReferenceFieldUpdater.get(this);
            if (c14239a.d()) {
                return;
            } else {
                androidx.concurrent.futures.a.a(f97111a, this, c14239a, c14239a.m());
            }
        }
    }

    public final int c() {
        return ((C14239A) f97111a.get(this)).f();
    }

    public final boolean d() {
        return ((C14239A) f97111a.get(this)).g();
    }

    public final boolean e() {
        return ((C14239A) f97111a.get(this)).h();
    }

    public final void f(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    @NotNull
    public final <R> List<R> g(@NotNull Mf.l<? super E, ? extends R> lVar) {
        return ((C14239A) f97111a.get(this)).k(lVar);
    }

    @Nullable
    public final E h() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97111a;
        while (true) {
            C14239A c14239a = (C14239A) atomicReferenceFieldUpdater.get(this);
            E e10 = (E) c14239a.n();
            if (e10 != C14239A.f97006t) {
                return e10;
            }
            androidx.concurrent.futures.a.a(f97111a, this, c14239a, c14239a.m());
        }
    }
}

package T2;

import a3.InterfaceC3578a;
import com.google.firebase.components.DependencyException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class H implements InterfaceC3050h {

    public final Set<F<?>> f23964a;

    public final Set<F<?>> f23965b;

    public final Set<F<?>> f23966c;

    public final Set<F<?>> f23967d;

    public final Set<F<?>> f23968e;

    public final Set<Class<?>> f23969f;

    public final InterfaceC3050h f23970g;

    public static class a implements X2.c {

        public final Set<Class<?>> f23971a;

        public final X2.c f23972b;

        public a(Set<Class<?>> set, X2.c cVar) {
            this.f23971a = set;
            this.f23972b = cVar;
        }

        @Override
        public void c(X2.a<?> aVar) {
            if (!this.f23971a.contains(aVar.b())) {
                throw new DependencyException(String.format("Attempting to publish an undeclared event %s.", aVar));
            }
            this.f23972b.c(aVar);
        }
    }

    public H(C3049g<?> c3049g, InterfaceC3050h interfaceC3050h) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (v vVar : c3049g.j()) {
            if (vVar.f()) {
                if (vVar.h()) {
                    hashSet4.add(vVar.d());
                } else {
                    hashSet.add(vVar.d());
                }
            } else if (vVar.e()) {
                hashSet3.add(vVar.d());
            } else if (vVar.h()) {
                hashSet5.add(vVar.d());
            } else {
                hashSet2.add(vVar.d());
            }
        }
        if (!c3049g.n().isEmpty()) {
            hashSet.add(F.b(X2.c.class));
        }
        this.f23964a = Collections.unmodifiableSet(hashSet);
        this.f23965b = Collections.unmodifiableSet(hashSet2);
        this.f23966c = Collections.unmodifiableSet(hashSet3);
        this.f23967d = Collections.unmodifiableSet(hashSet4);
        this.f23968e = Collections.unmodifiableSet(hashSet5);
        this.f23969f = c3049g.n();
        this.f23970g = interfaceC3050h;
    }

    @Override
    public <T> T a(Class<T> cls) {
        if (!this.f23964a.contains(F.b(cls))) {
            throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        T t10 = (T) this.f23970g.a(cls);
        return !cls.equals(X2.c.class) ? t10 : (T) new a(this.f23969f, (X2.c) t10);
    }

    @Override
    public <T> a3.b<Set<T>> c(Class<T> cls) {
        return i(F.b(cls));
    }

    @Override
    public <T> InterfaceC3578a<T> e(F<T> f10) {
        if (this.f23966c.contains(f10)) {
            return this.f23970g.e(f10);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Deferred<%s>.", f10));
    }

    @Override
    public <T> a3.b<T> f(Class<T> cls) {
        return h(F.b(cls));
    }

    @Override
    public <T> Set<T> g(F<T> f10) {
        if (this.f23967d.contains(f10)) {
            return this.f23970g.g(f10);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", f10));
    }

    @Override
    public <T> a3.b<T> h(F<T> f10) {
        if (this.f23965b.contains(f10)) {
            return this.f23970g.h(f10);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", f10));
    }

    @Override
    public <T> a3.b<Set<T>> i(F<T> f10) {
        if (this.f23968e.contains(f10)) {
            return this.f23970g.i(f10);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", f10));
    }

    @Override
    public <T> T j(F<T> f10) {
        if (this.f23964a.contains(f10)) {
            return (T) this.f23970g.j(f10);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", f10));
    }

    @Override
    public <T> InterfaceC3578a<T> k(Class<T> cls) {
        return e(F.b(cls));
    }
}

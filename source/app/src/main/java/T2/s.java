package T2;

import T2.s;
import a3.InterfaceC3578a;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.InvalidRegistrarException;
import com.google.firebase.components.MissingDependencyException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

public class s implements InterfaceC3050h, V2.a {

    public static final a3.b<Set<Object>> f24011i = new a3.b() {
        @Override
        public final Object get() {
            return Collections.emptySet();
        }
    };

    public final Map<C3049g<?>, a3.b<?>> f24012a;

    public final Map<F<?>, a3.b<?>> f24013b;

    public final Map<F<?>, z<?>> f24014c;

    public final List<a3.b<ComponentRegistrar>> f24015d;

    public Set<String> f24016e;

    public final x f24017f;

    public final AtomicReference<Boolean> f24018g;

    public final m f24019h;

    public static final class b {

        public final Executor f24020a;

        public final List<a3.b<ComponentRegistrar>> f24021b = new ArrayList();

        public final List<C3049g<?>> f24022c = new ArrayList();

        public m f24023d = m.f24003a;

        public b(Executor executor) {
            this.f24020a = executor;
        }

        public static ComponentRegistrar f(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        @I2.a
        public b b(C3049g<?> c3049g) {
            this.f24022c.add(c3049g);
            return this;
        }

        @I2.a
        public b c(final ComponentRegistrar componentRegistrar) {
            this.f24021b.add(new a3.b() {
                @Override
                public final Object get() {
                    ComponentRegistrar f10;
                    f10 = s.b.f(ComponentRegistrar.this);
                    return f10;
                }
            });
            return this;
        }

        @I2.a
        public b d(Collection<a3.b<ComponentRegistrar>> collection) {
            this.f24021b.addAll(collection);
            return this;
        }

        public s e() {
            return new s(this.f24020a, this.f24021b, this.f24022c, this.f24023d);
        }

        @I2.a
        public b g(m mVar) {
            this.f24023d = mVar;
            return this;
        }
    }

    public static Iterable<a3.b<ComponentRegistrar>> E(Iterable<ComponentRegistrar> iterable) {
        ArrayList arrayList = new ArrayList();
        for (final ComponentRegistrar componentRegistrar : iterable) {
            arrayList.add(new a3.b() {
                @Override
                public final Object get() {
                    ComponentRegistrar z10;
                    z10 = s.z(ComponentRegistrar.this);
                    return z10;
                }
            });
        }
        return arrayList;
    }

    public static b p(Executor executor) {
        return new b(executor);
    }

    public static <T> List<T> v(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static ComponentRegistrar z(ComponentRegistrar componentRegistrar) {
        return componentRegistrar;
    }

    public final void A() {
        Boolean bool = this.f24018g.get();
        if (bool != null) {
            r(this.f24012a, bool.booleanValue());
        }
    }

    public final void B() {
        for (C3049g<?> c3049g : this.f24012a.o()) {
            for (v vVar : c3049g.j()) {
                if (vVar.h() && !this.f24014c.containsKey(vVar.d())) {
                    this.f24014c.put(vVar.d(), z.b(Collections.emptySet()));
                } else if (this.f24013b.containsKey(vVar.d())) {
                    continue;
                } else {
                    if (vVar.g()) {
                        throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", c3049g, vVar.d()));
                    }
                    if (!vVar.h()) {
                        this.f24013b.put(vVar.d(), D.e());
                    }
                }
            }
        }
    }

    public final List<Runnable> C(List<C3049g<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (C3049g<?> c3049g : list) {
            if (c3049g.v()) {
                final a3.b<?> bVar = this.f24012a.get(c3049g);
                for (F<? super Object> f10 : c3049g.m()) {
                    if (this.f24013b.containsKey(f10)) {
                        final D d10 = (D) this.f24013b.get(f10);
                        arrayList.add(new Runnable() {
                            @Override
                            public final void run() {
                                D.this.j(bVar);
                            }
                        });
                    } else {
                        this.f24013b.put(f10, bVar);
                    }
                }
            }
        }
        return arrayList;
    }

    public final List<Runnable> D() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<C3049g<?>, a3.b<?>> entry : this.f24012a.entrySet()) {
            C3049g<?> key = entry.getKey();
            if (!key.v()) {
                a3.b<?> value = entry.getValue();
                for (F<? super Object> f10 : key.m()) {
                    if (!hashMap.containsKey(f10)) {
                        hashMap.put(f10, new HashSet());
                    }
                    ((Set) hashMap.get(f10)).add(value);
                }
            }
        }
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            if (this.f24014c.containsKey(entry2.getKey())) {
                final z<?> zVar = this.f24014c.get(entry2.getKey());
                for (final a3.b bVar : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() {
                        @Override
                        public final void run() {
                            z.this.a(bVar);
                        }
                    });
                }
            } else {
                this.f24014c.put((F) entry2.getKey(), z.b((Collection) entry2.getValue()));
            }
        }
        return arrayList;
    }

    @Override
    public void b() {
        synchronized (this) {
            try {
                if (this.f24015d.isEmpty()) {
                    return;
                }
                q(new ArrayList());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public <T> InterfaceC3578a<T> e(F<T> f10) {
        a3.b<T> h10 = h(f10);
        return h10 == null ? D.e() : h10 instanceof D ? (D) h10 : D.i(h10);
    }

    @Override
    public synchronized <T> a3.b<T> h(F<T> f10) {
        E.c(f10, "Null interface requested.");
        return (a3.b) this.f24013b.get(f10);
    }

    @Override
    public synchronized <T> a3.b<Set<T>> i(F<T> f10) {
        z<?> zVar = this.f24014c.get(f10);
        if (zVar != null) {
            return zVar;
        }
        return (a3.b<Set<T>>) f24011i;
    }

    public final void q(List<C3049g<?>> list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<a3.b<ComponentRegistrar>> it = this.f24015d.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = it.next().get();
                    if (componentRegistrar != null) {
                        list.addAll(this.f24019h.a(componentRegistrar));
                        it.remove();
                    }
                } catch (InvalidRegistrarException e10) {
                    it.remove();
                    Log.w(j.f23997c, "Invalid component registrar.", e10);
                }
            }
            Iterator<C3049g<?>> it2 = list.iterator();
            while (it2.hasNext()) {
                Object[] array = it2.next().m().toArray();
                int length = array.length;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        Object obj = array[i10];
                        if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (this.f24016e.contains(obj.toString())) {
                                it2.remove();
                                break;
                            }
                            this.f24016e.add(obj.toString());
                        }
                        i10++;
                    }
                }
            }
            if (this.f24012a.isEmpty()) {
                u.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f24012a.o());
                arrayList2.addAll(list);
                u.a(arrayList2);
            }
            for (final C3049g<?> c3049g : list) {
                this.f24012a.put(c3049g, new y(new a3.b() {
                    @Override
                    public final Object get() {
                        Object w10;
                        w10 = s.this.w(c3049g);
                        return w10;
                    }
                }));
            }
            arrayList.addAll(C(list));
            arrayList.addAll(D());
            B();
        }
        Iterator<E> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((Runnable) it3.next()).run();
        }
        A();
    }

    public final void r(Map<C3049g<?>, a3.b<?>> map, boolean z10) {
        for (Map.Entry<C3049g<?>, a3.b<?>> entry : map.entrySet()) {
            C3049g<?> key = entry.getKey();
            a3.b<?> value = entry.getValue();
            if (key.s() || (key.t() && z10)) {
                value.get();
            }
        }
        this.f24017f.f();
    }

    @VisibleForTesting
    public Collection<C3049g<?>> s() {
        return this.f24012a.o();
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    public void t() {
        Iterator<a3.b<?>> it = this.f24012a.values().iterator();
        while (it.hasNext()) {
            it.next().get();
        }
    }

    public void u(boolean z10) {
        HashMap hashMap;
        if (androidx.lifecycle.c.a(this.f24018g, null, Boolean.valueOf(z10))) {
            synchronized (this) {
                hashMap = new HashMap(this.f24012a);
            }
            r(hashMap, z10);
        }
    }

    public final Object w(C3049g c3049g) {
        return c3049g.k().a(new H(c3049g, this));
    }

    @Deprecated
    public s(Executor executor, Iterable<ComponentRegistrar> iterable, C3049g<?>... c3049gArr) {
        this(executor, E(iterable), Arrays.asList(c3049gArr), m.f24003a);
    }

    public s(Executor executor, Iterable<a3.b<ComponentRegistrar>> iterable, Collection<C3049g<?>> collection, m mVar) {
        this.f24012a = new HashMap();
        this.f24013b = new HashMap();
        this.f24014c = new HashMap();
        this.f24016e = new HashSet();
        this.f24018g = new AtomicReference<>();
        x xVar = new x(executor);
        this.f24017f = xVar;
        this.f24019h = mVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(C3049g.D(xVar, x.class, X2.d.class, X2.c.class));
        arrayList.add(C3049g.D(this, V2.a.class, new Class[0]));
        for (C3049g<?> c3049g : collection) {
            if (c3049g != null) {
                arrayList.add(c3049g);
            }
        }
        this.f24015d = v(iterable);
        q(arrayList);
    }
}

package z2;

import com.google.common.cache.CacheLoader;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.E1;
import com.google.common.collect.M1;
import com.google.common.collect.Q1;
import com.google.common.collect.S1;
import com.google.common.collect.V0;
import com.google.common.collect.e3;
import com.google.common.primitives.r;
import com.google.common.reflect.p;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.CheckForNull;
import w2.B;
import w2.H;
import w2.T;
import w2.z;

@InterfaceC16248e
public final class C16256m {

    public static final com.google.common.cache.j<Class<?>, AbstractC12521g1<Method>> f130615c = com.google.common.cache.d.D().M().b(new a());

    public static final com.google.common.cache.j<Class<?>, AbstractC12564r1<Class<?>>> f130616d = com.google.common.cache.d.D().M().b(new b());

    public final ConcurrentMap<Class<?>, CopyOnWriteArraySet<C16253j>> f130617a = Q1.V();

    @q3.i
    public final C16249f f130618b;

    public class a extends CacheLoader<Class<?>, AbstractC12521g1<Method>> {
        @Override
        public AbstractC12521g1<Method> d(Class<?> cls) throws Exception {
            return C16256m.e(cls);
        }
    }

    public class b extends CacheLoader<Class<?>, AbstractC12564r1<Class<?>>> {
        @Override
        public AbstractC12564r1<Class<?>> d(Class<?> cls) {
            return AbstractC12564r1.s(p.T(cls).E().I0());
        }
    }

    public static final class c {

        public final String f130619a;

        public final List<Class<?>> f130620b;

        public c(Method method) {
            this.f130619a = method.getName();
            this.f130620b = Arrays.asList(method.getParameterTypes());
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f130619a.equals(cVar.f130619a) && this.f130620b.equals(cVar.f130620b);
        }

        public int hashCode() {
            return B.b(this.f130619a, this.f130620b);
        }
    }

    public C16256m(C16249f c16249f) {
        this.f130618b = (C16249f) H.E(c16249f);
    }

    @v2.d
    public static AbstractC12564r1<Class<?>> c(Class<?> cls) {
        try {
            return f130616d.h(cls);
        } catch (UncheckedExecutionException e10) {
            throw T.q(e10.getCause());
        }
    }

    public static AbstractC12521g1<Method> d(Class<?> cls) {
        try {
            return f130615c.h(cls);
        } catch (UncheckedExecutionException e10) {
            T.w(e10.getCause());
            throw e10;
        }
    }

    public static AbstractC12521g1<Method> e(Class<?> cls) {
        Set I02 = p.T(cls).E().I0();
        HashMap Y10 = Q1.Y();
        Iterator it = I02.iterator();
        while (it.hasNext()) {
            for (Method method : ((Class) it.next()).getDeclaredMethods()) {
                if (method.isAnnotationPresent(InterfaceC16251h.class) && !method.isSynthetic()) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    H.w(parameterTypes.length == 1, "Method %s has @Subscribe annotation but has %s parameters. Subscriber methods must have exactly 1 parameter.", method, parameterTypes.length);
                    H.z(!parameterTypes[0].isPrimitive(), "@Subscribe method %s's parameter is %s. Subscriber methods cannot accept primitives. Consider changing the parameter to %s.", method, parameterTypes[0].getName(), r.f(parameterTypes[0]).getSimpleName());
                    c cVar = new c(method);
                    if (!Y10.containsKey(cVar)) {
                        Y10.put(cVar, method);
                    }
                }
            }
        }
        return AbstractC12521g1.r(Y10.values());
    }

    public final S1<Class<?>, C16253j> b(Object obj) {
        V0 M10 = V0.M();
        e3<Method> it = d(obj.getClass()).iterator();
        while (it.hasNext()) {
            Method next = it.next();
            M10.put(next.getParameterTypes()[0], C16253j.c(this.f130618b, obj, next));
        }
        return M10;
    }

    public Iterator<C16253j> f(Object obj) {
        AbstractC12564r1<Class<?>> c10 = c(obj.getClass());
        ArrayList u10 = M1.u(c10.size());
        e3<Class<?>> it = c10.iterator();
        while (it.hasNext()) {
            CopyOnWriteArraySet<C16253j> copyOnWriteArraySet = this.f130617a.get(it.next());
            if (copyOnWriteArraySet != null) {
                u10.add(copyOnWriteArraySet.iterator());
            }
        }
        return E1.i(u10.iterator());
    }

    @v2.d
    public Set<C16253j> g(Class<?> cls) {
        return (Set) z.a(this.f130617a.get(cls), AbstractC12564r1.z());
    }

    public void h(Object obj) {
        for (Map.Entry<Class<?>, Collection<C16253j>> entry : b(obj).k().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<C16253j> value = entry.getValue();
            CopyOnWriteArraySet<C16253j> copyOnWriteArraySet = this.f130617a.get(key);
            if (copyOnWriteArraySet == null) {
                CopyOnWriteArraySet<C16253j> copyOnWriteArraySet2 = new CopyOnWriteArraySet<>();
                copyOnWriteArraySet = (CopyOnWriteArraySet) z.a(this.f130617a.putIfAbsent(key, copyOnWriteArraySet2), copyOnWriteArraySet2);
            }
            copyOnWriteArraySet.addAll(value);
        }
    }

    public void i(Object obj) {
        for (Map.Entry<Class<?>, Collection<C16253j>> entry : b(obj).k().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<C16253j> value = entry.getValue();
            CopyOnWriteArraySet<C16253j> copyOnWriteArraySet = this.f130617a.get(key);
            if (copyOnWriteArraySet == null || !copyOnWriteArraySet.removeAll(value)) {
                String valueOf = String.valueOf(obj);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 65);
                sb2.append("missing event subscriber for an annotated method. Is ");
                sb2.append(valueOf);
                sb2.append(" registered?");
                throw new IllegalArgumentException(sb2.toString());
            }
        }
    }
}

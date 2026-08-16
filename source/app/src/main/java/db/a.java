package Db;

import Ib.k;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.jme3.bullet.NativePhysicsObject;
import com.jme3.bullet.collision.shapes.infos.BoundingValueHierarchy;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class a {

    public static final Method f5061d;

    public static final Method f5062e;

    public static final Constructor<BoundingValueHierarchy> f5063f;

    public static final Method f5064g;

    public List<Dc.a> f5065a;

    public final Map<d, c> f5066b = new HashMap();

    public Vertex f5067c;

    public static final class b {

        public final long f5068a;

        public final boolean f5069b;

        public b(long nativeId, boolean useCompression) {
            this.f5068a = nativeId;
            this.f5069b = useCompression;
        }
    }

    public static final class c {

        public final a f5070a;

        public final d f5071b;

        public final List<Dc.a> f5072c;

        public final List<b> f5073d;

        public int f5074e;

        public boolean f5075f;

        public boolean f5076g;

        /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static b d(Dc.c tempShape) {
            long j10;
            BoundingValueHierarchy f10 = a.f(tempShape);
            try {
                j10 = f10.nativeId();
                try {
                    return new b(j10, f10.isCompressed());
                } catch (Error e10) {
                    e = e10;
                    if (j10 != 0) {
                        a.i(j10);
                    }
                    throw e;
                } catch (RuntimeException e11) {
                    e = e11;
                    if (j10 != 0) {
                    }
                    throw e;
                }
            } catch (Error | RuntimeException e12) {
                e = e12;
                j10 = 0;
            }
        }

        public W8.b b(int index) {
            i();
            try {
                b bVar = this.f5073d.get(index);
                return new W8.b(new Dc.c(bVar.f5068a, bVar.f5069b, this.f5072c.get(index)), this, true);
            } catch (Error | RuntimeException e10) {
                h();
                throw e10;
            }
        }

        public synchronized int c() {
            return this.f5072c.size();
        }

        public final void e() {
            synchronized (this) {
                try {
                    if (this.f5076g) {
                        return;
                    }
                    this.f5076g = true;
                    for (int i10 = 0; i10 < this.f5073d.size(); i10++) {
                        b bVar = this.f5073d.get(i10);
                        if (bVar != null && bVar.f5068a != 0) {
                            a.i(bVar.f5068a);
                        }
                    }
                    this.f5072c.clear();
                    this.f5073d.clear();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public d f() {
            return this.f5071b;
        }

        public synchronized int g() {
            return this.f5074e;
        }

        public boolean h() {
            boolean z10;
            synchronized (this) {
                try {
                    if (this.f5076g) {
                        return false;
                    }
                    int i10 = this.f5074e;
                    if (i10 > 0) {
                        this.f5074e = i10 - 1;
                    }
                    if (this.f5074e != 0 || this.f5075f) {
                        z10 = false;
                    } else {
                        this.f5075f = true;
                        z10 = true;
                    }
                    if (!z10) {
                        return false;
                    }
                    this.f5070a.k(this);
                    e();
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public synchronized void i() {
            if (this.f5075f || this.f5076g) {
                throw new IllegalStateException("CollisionBvhCacheEntry was already destroyed");
            }
            this.f5074e++;
        }

        public c(a owner, d key, List<Dc.a> sourceMeshes) {
            this.f5072c = new SteppedArrayList();
            this.f5073d = new SteppedArrayList();
            this.f5074e = 0;
            this.f5075f = false;
            this.f5076g = false;
            this.f5070a = owner;
            this.f5071b = key;
            float intBitsToFloat = Float.intBitsToFloat(key.f5077a);
            float intBitsToFloat2 = Float.intBitsToFloat(key.f5078b);
            float intBitsToFloat3 = Float.intBitsToFloat(key.f5079c);
            for (int i10 = 0; i10 < sourceMeshes.size(); i10++) {
                Dc.a a10 = W8.a.a(sourceMeshes.get(i10), intBitsToFloat, intBitsToFloat2, intBitsToFloat3);
                this.f5072c.add(a10);
                Dc.c cVar = new Dc.c(a10);
                try {
                    this.f5073d.add(d(cVar));
                    cVar.d();
                } catch (Throwable th2) {
                    cVar.d();
                    throw th2;
                }
            }
        }
    }

    public static final class d {

        public final int f5077a;

        public final int f5078b;

        public final int f5079c;

        public d(float scaleX, float scaleY, float scaleZ) {
            this.f5077a = Float.floatToIntBits(scaleX);
            this.f5078b = Float.floatToIntBits(scaleY);
            this.f5079c = Float.floatToIntBits(scaleZ);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f5077a == dVar.f5077a && this.f5078b == dVar.f5078b && this.f5079c == dVar.f5079c;
        }

        public int hashCode() {
            return ((((371 + this.f5077a) * 53) + this.f5078b) * 53) + this.f5079c;
        }
    }

    static {
        Class<Long> cls = Long.TYPE;
        f5061d = h(BoundingValueHierarchy.class, "finalizeNative", cls);
        f5062e = h(BoundingValueHierarchy.class, "deSerialize", byte[].class);
        f5063f = g(BoundingValueHierarchy.class);
        f5064g = h(NativePhysicsObject.class, "setNativeIdNotTracked", cls);
    }

    public static BoundingValueHierarchy f(Dc.c tempShape) {
        try {
            Long l10 = (Long) f5062e.invoke(null, tempShape.serializeBvh());
            l10.longValue();
            BoundingValueHierarchy newInstance = f5063f.newInstance(null);
            f5064g.invoke(newInstance, l10);
            return newInstance;
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Constructor<BoundingValueHierarchy> g(Class<BoundingValueHierarchy> type) {
        try {
            Constructor<BoundingValueHierarchy> declaredConstructor = type.getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            return declaredConstructor;
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Method h(Class<?> type, String name, Class<?>... parameterTypes) {
        try {
            Method declaredMethod = type.getDeclaredMethod(name, parameterTypes);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void i(long bvhId) {
        try {
            f5061d.invoke(null, Long.valueOf(bvhId));
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    public c d(float scaleX, float scaleY, float scaleZ) {
        c cVar;
        List<Dc.a> list = this.f5065a;
        if (list == null || list.isEmpty()) {
            return null;
        }
        d dVar = new d(scaleX, scaleY, scaleZ);
        synchronized (this.f5066b) {
            try {
                cVar = this.f5066b.get(dVar);
                if (cVar == null) {
                    cVar = new c(dVar, this.f5065a);
                    this.f5066b.put(dVar, cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cVar;
    }

    public final void e() {
        synchronized (this.f5066b) {
            try {
                Iterator<c> it = this.f5066b.values().iterator();
                while (it.hasNext()) {
                    it.next().e();
                }
                this.f5066b.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public List<Dc.a> j() {
        return this.f5065a;
    }

    public final void k(c entry) {
        synchronized (this.f5066b) {
            if (entry != null) {
                try {
                    this.f5066b.remove(entry.f(), entry);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public Vertex l(Vertex vertex) {
        if (this.f5067c == null) {
            this.f5067c = k.j(vertex);
        }
        return this.f5067c;
    }

    public void m(List<Dc.a> shapes) {
        e();
        this.f5065a = shapes;
    }
}

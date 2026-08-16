package F;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import org.eclipse.jdt.internal.core.JavaElement;

public final class j implements F.b {

    public static final int f6078h = 4194304;

    @VisibleForTesting
    public static final int f6079i = 8;

    public static final int f6080j = 2;

    public final h<a, Object> f6081b;

    public final b f6082c;

    public final Map<Class<?>, NavigableMap<Integer, Integer>> f6083d;

    public final Map<Class<?>, F.a<?>> f6084e;

    public final int f6085f;

    public int f6086g;

    public static final class a implements m {

        public final b f6087a;

        public int f6088b;

        public Class<?> f6089c;

        public a(b bVar) {
            this.f6087a = bVar;
        }

        @Override
        public void a() {
            this.f6087a.c(this);
        }

        public void b(int i10, Class<?> cls) {
            this.f6088b = i10;
            this.f6089c = cls;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f6088b == aVar.f6088b && this.f6089c == aVar.f6089c;
        }

        public int hashCode() {
            int i10 = this.f6088b * 31;
            Class<?> cls = this.f6089c;
            return i10 + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            return "Key{size=" + this.f6088b + "array=" + ((Object) this.f6089c) + JavaElement.JEM_ANNOTATION;
        }
    }

    public static final class b extends d<a> {
        @Override
        public a a() {
            return new a(this);
        }

        public a e(int i10, Class<?> cls) {
            a b10 = b();
            b10.b(i10, cls);
            return b10;
        }
    }

    @VisibleForTesting
    public j() {
        this.f6081b = new h<>();
        this.f6082c = new b();
        this.f6083d = new HashMap();
        this.f6084e = new HashMap();
        this.f6085f = 4194304;
    }

    @Override
    public synchronized void a(int i10) {
        try {
            if (i10 >= 40) {
                b();
            } else if (i10 >= 20 || i10 == 15) {
                h(this.f6085f / 2);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void b() {
        h(0);
    }

    @Override
    public synchronized <T> T c(int i10, Class<T> cls) {
        Integer ceilingKey;
        try {
            ceilingKey = n(cls).ceilingKey(Integer.valueOf(i10));
        } catch (Throwable th2) {
            throw th2;
        }
        return (T) m(q(i10, ceilingKey) ? this.f6082c.e(ceilingKey.intValue(), cls) : this.f6082c.e(i10, cls), cls);
    }

    @Override
    public synchronized <T> T d(int i10, Class<T> cls) {
        return (T) m(this.f6082c.e(i10, cls), cls);
    }

    @Override
    @Deprecated
    public <T> void e(T t10, Class<T> cls) {
        put(t10);
    }

    public final void f(int i10, Class<?> cls) {
        NavigableMap<Integer, Integer> n10 = n(cls);
        Integer num = n10.get(Integer.valueOf(i10));
        if (num != null) {
            if (num.intValue() == 1) {
                n10.remove(Integer.valueOf(i10));
                return;
            } else {
                n10.put(Integer.valueOf(i10), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i10 + ", this: " + ((Object) this));
    }

    public final void g() {
        h(this.f6085f);
    }

    public final void h(int i10) {
        while (this.f6086g > i10) {
            Object f10 = this.f6081b.f();
            Y.k.d(f10);
            F.a i11 = i(f10);
            this.f6086g -= i11.a(f10) * i11.b();
            f(i11.a(f10), f10.getClass());
            if (Log.isLoggable(i11.getTag(), 2)) {
                Log.v(i11.getTag(), "evicted: " + i11.a(f10));
            }
        }
    }

    public final <T> F.a<T> i(T t10) {
        return j(t10.getClass());
    }

    public final <T> F.a<T> j(Class<T> cls) {
        F.a<T> aVar = (F.a) this.f6084e.get(cls);
        if (aVar == null) {
            if (cls.equals(int[].class)) {
                aVar = new i();
            } else {
                if (!cls.equals(byte[].class)) {
                    throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
                }
                aVar = new g();
            }
            this.f6084e.put(cls, aVar);
        }
        return aVar;
    }

    @Nullable
    public final <T> T k(a aVar) {
        return (T) this.f6081b.a(aVar);
    }

    public int l() {
        int i10 = 0;
        for (Class<?> cls : this.f6083d.o()) {
            for (Integer num : this.f6083d.get(cls).o()) {
                i10 += num.intValue() * this.f6083d.get(cls).get(num).intValue() * j(cls).b();
            }
        }
        return i10;
    }

    public final <T> T m(a aVar, Class<T> cls) {
        F.a<T> j10 = j(cls);
        T t10 = (T) k(aVar);
        if (t10 != null) {
            this.f6086g -= j10.a(t10) * j10.b();
            f(j10.a(t10), cls);
        }
        if (t10 != null) {
            return t10;
        }
        if (Log.isLoggable(j10.getTag(), 2)) {
            Log.v(j10.getTag(), "Allocated " + aVar.f6088b + " bytes");
        }
        return j10.newArray(aVar.f6088b);
    }

    public final NavigableMap<Integer, Integer> n(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f6083d.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f6083d.put(cls, treeMap);
        return treeMap;
    }

    public final boolean o() {
        int i10 = this.f6086g;
        return i10 == 0 || this.f6085f / i10 >= 2;
    }

    public final boolean p(int i10) {
        return i10 <= this.f6085f / 2;
    }

    @Override
    public synchronized <T> void put(T t10) {
        Class<?> cls = t10.getClass();
        F.a<T> j10 = j(cls);
        int a10 = j10.a(t10);
        int b10 = j10.b() * a10;
        if (p(b10)) {
            a e10 = this.f6082c.e(a10, cls);
            this.f6081b.d(e10, t10);
            NavigableMap<Integer, Integer> n10 = n(cls);
            Integer num = n10.get(Integer.valueOf(e10.f6088b));
            Integer valueOf = Integer.valueOf(e10.f6088b);
            int i10 = 1;
            if (num != null) {
                i10 = 1 + num.intValue();
            }
            n10.put(valueOf, Integer.valueOf(i10));
            this.f6086g += b10;
            g();
        }
    }

    public final boolean q(int i10, Integer num) {
        return num != null && (o() || num.intValue() <= i10 * 8);
    }

    public j(int i10) {
        this.f6081b = new h<>();
        this.f6082c = new b();
        this.f6083d = new HashMap();
        this.f6084e = new HashMap();
        this.f6085f = i10;
    }
}

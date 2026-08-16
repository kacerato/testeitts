package F;

import F.m;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavaElement;

public class h<K extends m, V> {

    public final a<K, V> f6071a = new a<>();

    public final Map<K, a<K, V>> f6072b = new HashMap();

    public static class a<K, V> {

        public final K f6073a;

        public List<V> f6074b;

        public a<K, V> f6075c;

        public a<K, V> f6076d;

        public a() {
            this(null);
        }

        public void a(V v10) {
            if (this.f6074b == null) {
                this.f6074b = new ArrayList();
            }
            this.f6074b.add(v10);
        }

        @Nullable
        public V b() {
            int c10 = c();
            if (c10 > 0) {
                return this.f6074b.remove(c10 - 1);
            }
            return null;
        }

        public int c() {
            List<V> list = this.f6074b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        public a(K k10) {
            this.f6076d = this;
            this.f6075c = this;
            this.f6073a = k10;
        }
    }

    public static <K, V> void e(a<K, V> aVar) {
        a<K, V> aVar2 = aVar.f6076d;
        aVar2.f6075c = aVar.f6075c;
        aVar.f6075c.f6076d = aVar2;
    }

    public static <K, V> void g(a<K, V> aVar) {
        aVar.f6075c.f6076d = aVar;
        aVar.f6076d.f6075c = aVar;
    }

    @Nullable
    public V a(K k10) {
        a<K, V> aVar = this.f6072b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            this.f6072b.put(k10, aVar);
        } else {
            k10.a();
        }
        b(aVar);
        return aVar.b();
    }

    public final void b(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.f6071a;
        aVar.f6076d = aVar2;
        aVar.f6075c = aVar2.f6075c;
        g(aVar);
    }

    public final void c(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.f6071a;
        aVar.f6076d = aVar2.f6076d;
        aVar.f6075c = aVar2;
        g(aVar);
    }

    public void d(K k10, V v10) {
        a<K, V> aVar = this.f6072b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            c(aVar);
            this.f6072b.put(k10, aVar);
        } else {
            k10.a();
        }
        aVar.a(v10);
    }

    @Nullable
    public V f() {
        for (a aVar = this.f6071a.f6076d; !aVar.equals(this.f6071a); aVar = aVar.f6076d) {
            V v10 = (V) aVar.b();
            if (v10 != null) {
                return v10;
            }
            e(aVar);
            this.f6072b.remove(aVar.f6073a);
            ((m) aVar.f6073a).a();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("GroupedLinkedMap( ");
        a aVar = this.f6071a.f6075c;
        boolean z10 = false;
        while (!aVar.equals(this.f6071a)) {
            sb2.append(JavaElement.JEM_COMPILATIONUNIT);
            sb2.append(aVar.f6073a);
            sb2.append(':');
            sb2.append(aVar.c());
            sb2.append("}, ");
            aVar = aVar.f6075c;
            z10 = true;
        }
        if (z10) {
            sb2.delete(sb2.length() - 2, sb2.length());
        }
        sb2.append(" )");
        return sb2.toString();
    }
}

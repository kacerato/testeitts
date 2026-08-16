package T2;

import com.google.firebase.components.DependencyCycleException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class u {

    public static class b {

        public final C3049g<?> f24025a;

        public final Set<b> f24026b = new HashSet();

        public final Set<b> f24027c = new HashSet();

        public b(C3049g<?> c3049g) {
            this.f24025a = c3049g;
        }

        public void a(b bVar) {
            this.f24026b.add(bVar);
        }

        public void b(b bVar) {
            this.f24027c.add(bVar);
        }

        public C3049g<?> c() {
            return this.f24025a;
        }

        public Set<b> d() {
            return this.f24026b;
        }

        public boolean e() {
            return this.f24026b.isEmpty();
        }

        public boolean f() {
            return this.f24027c.isEmpty();
        }

        public void g(b bVar) {
            this.f24027c.remove(bVar);
        }
    }

    public static class c {

        public final F<?> f24028a;

        public final boolean f24029b;

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return cVar.f24028a.equals(this.f24028a) && cVar.f24029b == this.f24029b;
        }

        public int hashCode() {
            return ((this.f24028a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f24029b).hashCode();
        }

        public c(F<?> f10, boolean z10) {
            this.f24028a = f10;
            this.f24029b = z10;
        }
    }

    public static void a(List<C3049g<?>> list) {
        Set<b> c10 = c(list);
        Set<b> b10 = b(c10);
        int i10 = 0;
        while (!b10.isEmpty()) {
            b next = b10.iterator().next();
            b10.remove(next);
            i10++;
            for (b bVar : next.d()) {
                bVar.g(next);
                if (bVar.f()) {
                    b10.add(bVar);
                }
            }
        }
        if (i10 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar2 : c10) {
            if (!bVar2.f() && !bVar2.e()) {
                arrayList.add(bVar2.c());
            }
        }
        throw new DependencyCycleException(arrayList);
    }

    public static Set<b> b(Set<b> set) {
        HashSet hashSet = new HashSet();
        for (b bVar : set) {
            if (bVar.f()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    public static Set<b> c(List<C3049g<?>> list) {
        Set<b> set;
        HashMap hashMap = new HashMap(list.size());
        Iterator<C3049g<?>> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                Iterator it2 = hashMap.values().iterator();
                while (it2.hasNext()) {
                    for (b bVar : (Set) it2.next()) {
                        for (v vVar : bVar.c().j()) {
                            if (vVar.f() && (set = (Set) hashMap.get(new c(vVar.d(), vVar.h()))) != null) {
                                for (b bVar2 : set) {
                                    bVar.a(bVar2);
                                    bVar2.b(bVar);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = hashMap.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                return hashSet;
            }
            C3049g<?> next = it.next();
            b bVar3 = new b(next);
            for (F<? super Object> f10 : next.m()) {
                c cVar = new c(f10, !next.v());
                if (!hashMap.containsKey(cVar)) {
                    hashMap.put(cVar, new HashSet());
                }
                Set set2 = (Set) hashMap.get(cVar);
                if (!set2.isEmpty() && !cVar.f24029b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", f10));
                }
                set2.add(bVar3);
            }
        }
    }
}

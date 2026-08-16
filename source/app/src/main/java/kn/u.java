package kn;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class u {

    public final float f95638a;

    public final float f95639b;

    public final Map<a, List<f>> f95640c = new HashMap();

    public static class a {

        public int f95641a;

        public int f95642b;

        public a(int x10, int y10) {
            this.f95641a = x10;
            this.f95642b = y10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f95641a == aVar.f95641a && this.f95642b == aVar.f95642b;
        }

        public int hashCode() {
            return ((this.f95641a + 31) * 31) + this.f95642b;
        }
    }

    public u(float m_cellSize) {
        this.f95638a = m_cellSize;
        this.f95639b = 1.0f / m_cellSize;
    }

    public static boolean g(Map.Entry entry) {
        return entry.getValue() != null && ((List) entry.getValue()).size() > 0;
    }

    public static int[] h(Map.Entry entry) {
        return new int[]{((a) entry.getKey()).f95641a, ((a) entry.getKey()).f95642b, ((List) entry.getValue()).size()};
    }

    public void c(f agent, float minx, float miny, float maxx, float maxy) {
        int floor = (int) Math.floor(minx * this.f95639b);
        int floor2 = (int) Math.floor(maxx * this.f95639b);
        int floor3 = (int) Math.floor(maxy * this.f95639b);
        for (int floor4 = (int) Math.floor(miny * this.f95639b); floor4 <= floor3; floor4++) {
            for (int i10 = floor; i10 <= floor2; i10++) {
                a aVar = new a(i10, floor4);
                List<f> list = this.f95640c.get(aVar);
                if (list == null) {
                    list = new ArrayList<>();
                    this.f95640c.put(aVar, list);
                }
                list.add(agent);
            }
        }
    }

    public void d() {
        this.f95640c.clear();
    }

    public float e() {
        return this.f95638a;
    }

    public List<int[]> f() {
        return (List) this.f95640c.entrySet().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean g10;
                g10 = u.g((Map.Entry) obj);
                return g10;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                int[] h10;
                h10 = u.h((Map.Entry) obj);
                return h10;
            }
        }).collect(Collectors.toList());
    }

    public Set<f> i(float minx, float miny, float maxx, float maxy) {
        int floor = (int) Math.floor(minx * this.f95639b);
        int floor2 = (int) Math.floor(maxx * this.f95639b);
        int floor3 = (int) Math.floor(maxy * this.f95639b);
        HashSet hashSet = new HashSet();
        for (int floor4 = (int) Math.floor(miny * this.f95639b); floor4 <= floor3; floor4++) {
            for (int i10 = floor; i10 <= floor2; i10++) {
                List<f> list = this.f95640c.get(new a(i10, floor4));
                if (list != null) {
                    hashSet.addAll(list);
                }
            }
        }
        return hashSet;
    }
}

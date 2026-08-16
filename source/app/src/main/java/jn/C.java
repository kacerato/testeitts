package jn;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class C {

    public final Map<Long, List<B>> f94165a = new HashMap();

    public final ArrayList<B> f94166b = new ArrayList<>();

    public void a() {
        this.f94166b.clear();
        this.f94165a.clear();
    }

    public B b(long id2, int state) {
        B b10 = new B(this.f94166b.size() + 1);
        b10.f94163h = id2;
        b10.f94161f = state;
        this.f94166b.add(b10);
        List<B> list = this.f94165a.get(Long.valueOf(id2));
        if (list == null) {
            list = new ArrayList<>();
            this.f94165a.put(Long.valueOf(id2), list);
        }
        list.add(b10);
        return b10;
    }

    public B c(long id2) {
        List<B> list = this.f94165a.get(Long.valueOf(id2));
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public List<B> d(long id2) {
        List<B> list = this.f94165a.get(Long.valueOf(id2));
        return list == null ? new ArrayList() : list;
    }

    public B e(long ref) {
        return f(ref, 0);
    }

    public B f(long id2, int state) {
        List<B> list = this.f94165a.get(Long.valueOf(id2));
        if (list != null) {
            for (B b10 : list) {
                if (b10.f94161f == state) {
                    return b10;
                }
            }
        }
        return b(id2, state);
    }

    public B g(int idx) {
        if (idx != 0) {
            return this.f94166b.get(idx - 1);
        }
        return null;
    }

    public int h(B node) {
        if (node != null) {
            return node.f94156a;
        }
        return 0;
    }

    public Map<Long, List<B>> i() {
        return this.f94165a;
    }
}

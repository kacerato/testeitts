package Ek;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class C2496g extends AbstractC14545v {

    public final List<C2495f> f5962b;

    public static class a {

        public final List<C2495f> f5963a = new ArrayList();

        public a a(C2495f... c2495fArr) {
            this.f5963a.addAll(Arrays.asList(c2495fArr));
            return this;
        }

        public C2496g b() {
            return new C2496g(this.f5963a);
        }
    }

    public C2496g(List<C2495f> list) {
        this.f5962b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static C2496g w(Object obj) {
        if (obj instanceof C2496g) {
            return (C2496g) obj;
        }
        if (obj != null) {
            return new C2496g(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0((InterfaceC14516g[]) this.f5962b.toArray(new C2495f[0]));
    }

    public int size() {
        return this.f5962b.size();
    }

    public List<C2495f> v() {
        return this.f5962b;
    }

    public C2496g(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(C2495f.w(it.next()));
        }
        this.f5962b = Collections.unmodifiableList(arrayList);
    }
}

package Fk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;

public class h0 extends AbstractC14545v {

    public final List<w0> f7100b;

    public static class a {

        public final List<w0> f7101a = new ArrayList();

        public a a(w0... w0VarArr) {
            this.f7101a.addAll(Arrays.asList(w0VarArr));
            return this;
        }

        public h0 b() {
            return new h0(this.f7101a);
        }
    }

    public h0(List<w0> list) {
        this.f7100b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static h0 v(Object obj) {
        if (obj instanceof h0) {
            return (h0) obj;
        }
        if (obj != null) {
            return new h0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h();
        Iterator<w0> it = this.f7100b.iterator();
        while (it.hasNext()) {
            c14518h.a(it.next().r());
        }
        return new G0(c14518h);
    }

    public List<w0> x() {
        return this.f7100b;
    }

    public h0(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(w0.w(it.next()));
        }
        this.f7100b = Collections.unmodifiableList(arrayList);
    }
}

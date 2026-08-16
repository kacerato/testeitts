package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C8699o50;
import ei.C13155a;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.function.Consumer;
import org.openjdk.tools.doclint.DocLint;

public class Y4 {

    public static final X4 f57130e = new X4();

    public static final boolean f57131f = true;

    public final Consumer f57132a;

    public com.android.tools.r8.graph.M2 f57133b = null;

    public W4 f57134c = new W4();

    public ArrayList f57135d = new ArrayList();

    public Y4(Consumer consumer) {
        this.f57132a = consumer;
    }

    public void a(com.android.tools.r8.graph.H2 h22) {
        if (!f57131f && this.f57133b != null) {
            throw new AssertionError();
        }
        this.f57135d.add(new C8699o50(h22.f36245e, null));
    }

    public void b(com.android.tools.r8.graph.H2 h22) {
        if (!f57131f && this.f57133b != null) {
            throw new AssertionError();
        }
        this.f57133b = h22.f36245e;
    }

    public void a() {
        this.f57135d.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int compareTo;
                compareTo = ((com.android.tools.r8.graph.M2) ((C8699o50) obj).a()).compareTo((com.android.tools.r8.graph.M2) ((C8699o50) obj2).a());
                return compareTo;
            }
        });
        ArrayList arrayList = this.f57135d;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C8699o50 c8699o50 = (C8699o50) obj;
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) c8699o50.a();
            W4 w42 = (W4) c8699o50.b();
            this.f57132a.accept(m22.j0());
            if (w42 == null) {
                this.f57132a.accept(C10656zq0.f54547c);
            } else {
                this.f57132a.accept(b3.s.f32937c + C10656zq0.f54547c);
                w42.a();
                w42.f57088a.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        Y4.this.a((C4460g1) obj2);
                    }
                });
                w42.f57089b.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        Y4.this.a((C4516j1) obj2);
                    }
                });
            }
        }
        this.f57135d = null;
    }

    public void b() {
        W4 w42 = this.f57134c;
        if (!w42.f57088a.isEmpty() || !w42.f57089b.isEmpty()) {
            this.f57135d.add(new C8699o50(this.f57133b, this.f57134c));
            this.f57134c = new W4();
        }
        this.f57133b = null;
    }

    public void b(C4516j1 c4516j1) {
        this.f57134c.f57089b.add(c4516j1);
    }

    public void b(C4460g1 c4460g1) {
        this.f57134c.f57088a.add(c4460g1);
    }

    public final void a(C4516j1 c4516j1) {
        this.f57132a.accept(C13155a.f85806a);
        String a10 = c4516j1.f37314g.a(false);
        if (!a10.isEmpty()) {
            this.f57132a.accept(a10);
            this.f57132a.accept(" ");
        }
        this.f57132a.accept(c4516j1.getReference().f36127i.f36440e.j0());
        this.f57132a.accept(" ");
        this.f57132a.accept(c4516j1.getReference().f38298g.j0());
        this.f57132a.accept("(");
        for (int i10 = 0; i10 < c4516j1.getReference().f36127i.f36441f.f36675b.length; i10++) {
            if (i10 != 0) {
                this.f57132a.accept(DocLint.SEPARATOR);
            }
            this.f57132a.accept(c4516j1.getReference().f36127i.f36441f.f36675b[i10].j0());
        }
        this.f57132a.accept(")");
        this.f57132a.accept(C10656zq0.f54547c);
    }

    public final void a(C4460g1 c4460g1) {
        this.f57132a.accept(C13155a.f85806a);
        String a10 = c4460g1.f37202g.a(false);
        if (!a10.isEmpty()) {
            this.f57132a.accept(a10);
            this.f57132a.accept(" ");
        }
        this.f57132a.accept(c4460g1.getReference().f37449i.j0());
        this.f57132a.accept(" ");
        this.f57132a.accept(c4460g1.getReference().f38298g.j0());
        this.f57132a.accept(C10656zq0.f54547c);
    }
}

package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;

public abstract class AbstractC10176wx0 extends AbstractC6143Wj {

    public static final boolean f53644j = true;

    public final IdentityHashMap f53645f;

    public final AbstractC8374m80 f53646g;

    public final AbstractC8374m80 f53647h;

    public final IdentityHashMap f53648i;

    public AbstractC10176wx0(C4798y c4798y, C4387c4 c4387c4) {
        super(c4798y, c4387c4);
        this.f53645f = new IdentityHashMap();
        this.f53646g = AbstractC8374m80.c();
        this.f53647h = AbstractC8374m80.c();
        this.f53648i = new IdentityHashMap();
    }

    public void a(com.android.tools.r8.graph.H5 h52, C10009vx0 c10009vx0) {
    }

    public final void b(C5000Cq c5000Cq, com.android.tools.r8.graph.H5 h52) {
        final C10009vx0 c10009vx0 = (C10009vx0) c5000Cq.f39368b.remove(h52.x());
        a(h52, c10009vx0);
        if (c10009vx0.f53381a == null && h52.a((com.android.tools.r8.graph.H0) c10009vx0.f53382b)) {
            if (c10009vx0.f53383c.isEmpty() && c10009vx0.f53384d.isEmpty() && !c10009vx0.f53385e) {
                this.f53646g.add((AbstractC8374m80) h52);
                return;
            }
            if (!h52.getHolder().isInterface()) {
                if (!C10009vx0.f53380f && c10009vx0.f53381a != null) {
                    throw new AssertionError();
                }
                final C10009vx0 c10009vx02 = null;
                if (!c10009vx0.f53385e) {
                    C10009vx0 c10009vx03 = c10009vx0.f53382b.getAccessFlags().H() ? null : c10009vx0;
                    Iterator it = c10009vx0.f53383c.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            C10009vx0 c10009vx04 = (C10009vx0) it.next();
                            if (!c10009vx04.f53382b.getAccessFlags().H()) {
                                if (c10009vx03 != null) {
                                    break;
                                } else {
                                    c10009vx03 = c10009vx04;
                                }
                            }
                        } else {
                            if (!C10009vx0.f53380f && c10009vx03 != null && c10009vx03.f53382b.getAccessFlags().H()) {
                                throw new AssertionError();
                            }
                            c10009vx02 = c10009vx03;
                        }
                    }
                }
                if (c10009vx02 != null) {
                    c10009vx0.a(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            AbstractC10176wx0.this.a(c10009vx0, c10009vx02, (C10009vx0) obj);
                        }
                    });
                    this.f53647h.add((AbstractC8374m80) c10009vx02.f53382b);
                    return;
                }
            }
            c10009vx0.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AbstractC10176wx0.this.a(c10009vx0, (C10009vx0) obj);
                }
            });
        }
    }

    @Override
    public final void j(com.android.tools.r8.graph.H2 h22) {
        final C5000Cq c5000Cq = (C5000Cq) this.f53645f.remove(h22);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC10176wx0.this.b(c5000Cq, (com.android.tools.r8.graph.H5) obj);
            }
        };
        h22.getClass();
        h22.j(consumer, EnumC6871d70.f47286b);
    }

    @Override
    public final void l(com.android.tools.r8.graph.H2 h22) {
        this.f53645f.put(h22, m(h22));
    }

    public final C5000Cq m(final com.android.tools.r8.graph.H2 h22) {
        final C5000Cq c5000Cq = new C5000Cq(new HashMap());
        C4387c4 c4387c4 = this.f45516b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC10176wx0.this.a(c5000Cq, h22, (com.android.tools.r8.graph.H2) obj);
            }
        };
        c4387c4.getClass();
        Z60 z60 = EnumC6871d70.f47286b;
        c4387c4.a(z60, consumer, h22);
        h22.j(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5000Cq.this.a(r2, new BiFunction() {
                    @Override
                    public final Object apply(Object obj2, Object obj3) {
                        return AbstractC10176wx0.a(com.android.tools.r8.graph.H5.this, (com.android.tools.r8.graph.F2) obj2, (C10009vx0) obj3);
                    }
                });
            }
        }, z60);
        return c5000Cq;
    }

    public final void a(final C5000Cq c5000Cq, final com.android.tools.r8.graph.H2 h22, final com.android.tools.r8.graph.H2 h23) {
        ((C5000Cq) this.f53645f.get(h23)).forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC10176wx0.this.a(c5000Cq, h22, h23, (com.android.tools.r8.graph.F2) obj, (C10009vx0) obj2);
            }
        });
    }

    public final void a(C5000Cq c5000Cq, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23, com.android.tools.r8.graph.F2 f22, final C10009vx0 c10009vx0) {
        c5000Cq.a(f22, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return AbstractC10176wx0.a(C10009vx0.this, (com.android.tools.r8.graph.F2) obj, (C10009vx0) obj2);
            }
        });
        if (h22.isInterface() || !h23.isInterface()) {
            return;
        }
        C4514j c4514j = (C4514j) this.f45515a.f();
        if (!C4514j.f37304i) {
            c4514j.c();
        } else {
            c4514j.getClass();
        }
        com.android.tools.r8.graph.H0 p10 = c4514j.a(h22, f22.b(), f22.a()).p();
        if (p10 == null || (p10 instanceof com.android.tools.r8.graph.H5) || p10.getAccessFlags().H()) {
            return;
        }
        c10009vx0.f53385e = true;
    }

    public static C10009vx0 a(C10009vx0 c10009vx0, com.android.tools.r8.graph.F2 f22, C10009vx0 c10009vx02) {
        if (c10009vx02 == null || c10009vx02 == c10009vx0) {
            return c10009vx0;
        }
        if (!f53644j && !c10009vx0.f53382b.getHolder().isInterface()) {
            throw new AssertionError();
        }
        if (!c10009vx0.f53383c.contains(c10009vx02)) {
            if (c10009vx02.f53383c.contains(c10009vx0)) {
                return c10009vx0;
            }
            if (!c10009vx02.f53382b.getAccessFlags().H()) {
                if (c10009vx02.f53384d.isEmpty()) {
                    c10009vx02.f53384d = new ArrayList(1);
                }
                c10009vx02.f53384d.add(c10009vx0);
                c10009vx0.a(c10009vx02);
                return c10009vx02;
            }
            if (c10009vx0.f53384d.isEmpty()) {
                c10009vx0.f53384d = new ArrayList(1);
            }
            c10009vx0.f53384d.add(c10009vx02);
            if (c10009vx02.f53382b.getHolder().isInterface() && !c10009vx0.f53382b.getAccessFlags().H()) {
                c10009vx02.a(c10009vx0);
                return c10009vx0;
            }
        }
        return c10009vx02;
    }

    public static C10009vx0 a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.F2 f22, C10009vx0 c10009vx0) {
        if (c10009vx0 == null) {
            return new C10009vx0(h52, null);
        }
        C10009vx0 c10009vx02 = new C10009vx0(h52, c10009vx0);
        c10009vx0.a(c10009vx02);
        return c10009vx02;
    }

    public final void a(C10009vx0 c10009vx0, C10009vx0 c10009vx02, C10009vx0 c10009vx03) {
        if (c10009vx03.a() == c10009vx0) {
            com.android.tools.r8.graph.A2 reference = c10009vx02.f53382b.getReference();
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) this.f53648i.put(c10009vx03.f53382b.getReference(), reference);
            if (!f53644j && a22 != null && !a22.a(reference)) {
                throw new AssertionError();
            }
        }
    }

    public final void a(C10009vx0 c10009vx0, C10009vx0 c10009vx02) {
        if (c10009vx02.a() == c10009vx0) {
            com.android.tools.r8.graph.A2 reference = c10009vx0.f53382b.getReference();
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) this.f53648i.put(c10009vx02.f53382b.getReference(), reference);
            if (!f53644j && a22 != null && !a22.a(reference)) {
                throw new AssertionError();
            }
        }
    }
}

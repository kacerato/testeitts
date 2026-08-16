package com.android.tools.r8.naming;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public final class J {

    public static final boolean f55656e = true;

    public final com.android.tools.r8.graph.E0 f55657a;

    public final HashSet f55658b = new HashSet();

    public final HashSet f55659c = new HashSet();

    public final K f55660d;

    public J(K k10, com.android.tools.r8.graph.E0 e02) {
        this.f55660d = k10;
        this.f55657a = e02;
    }

    public final com.android.tools.r8.graph.L2 a(final com.android.tools.r8.graph.H0 h02) {
        com.android.tools.r8.graph.L2 a10;
        if (this.f55660d.f55671a.E().B().r() && (a10 = this.f55660d.f55673c.f55795a.f55803b.a(h02)) != null) {
            return a10;
        }
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return J.this.a(h02, (J) obj);
            }
        };
        Object apply = function.apply(this);
        if (apply == null && (apply = a(function)) == null) {
            apply = b(function);
        }
        if (((Boolean) apply) == null) {
            return null;
        }
        return h02.getReference().t0();
    }

    public final void b(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.H0 h02, com.android.tools.r8.graph.M2 m22) {
        ((C10928e0) this.f55660d.f55673c.f55795a.f55806e.get(m22)).a(h02, l22);
    }

    public final void c(final com.android.tools.r8.graph.H0 h02, final com.android.tools.r8.graph.L2 l22) {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                J.this.c(l22, h02, (J) obj);
            }
        });
    }

    public final void c(final com.android.tools.r8.graph.L2 l22, final com.android.tools.r8.graph.H0 h02, J j10) {
        j10.f55659c.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                J.this.b(l22, h02, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final boolean b(final com.android.tools.r8.graph.H0 h02, final com.android.tools.r8.graph.L2 l22) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return J.this.b(l22, h02, (J) obj);
            }
        };
        Object apply = function.apply(this);
        if (apply == null && (apply = a(function)) == null) {
            apply = b(function);
        }
        Boolean bool = (Boolean) apply;
        return bool == null || bool.booleanValue();
    }

    public final Boolean b(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.H0 h02, J j10) {
        Iterator it = j10.f55659c.iterator();
        while (it.hasNext()) {
            if (!this.f55660d.f55673c.f55795a.b((com.android.tools.r8.graph.M2) it.next()).b(l22, h02.getReference())) {
                return Boolean.FALSE;
            }
        }
        return null;
    }

    public final Boolean a(com.android.tools.r8.graph.H0 h02, J j10) {
        Iterator it = j10.f55659c.iterator();
        while (it.hasNext()) {
            Set d10 = ((C10928e0) this.f55660d.f55673c.f55795a.f55806e.get((com.android.tools.r8.graph.M2) it.next())).d(h02.getReference());
            if (!f55656e && d10 != null && d10.isEmpty()) {
                throw new AssertionError();
            }
            if (d10 != null && d10.contains(h02.getReference().t0())) {
                return Boolean.TRUE;
            }
        }
        return null;
    }

    public final Object b(Function function) {
        for (com.android.tools.r8.graph.M2 m22 : this.f55657a.f36248h.f36675b) {
            J j10 = (J) this.f55660d.f55675e.get(m22);
            if (j10 != null) {
                Object apply = function.apply(j10);
                if (apply != null) {
                    return apply;
                }
                Object b10 = j10.b(function);
                if (b10 != null) {
                    return b10;
                }
            }
        }
        return null;
    }

    public final void a(final com.android.tools.r8.graph.H0 h02, final com.android.tools.r8.graph.L2 l22) {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                J.this.a(l22, h02, (J) obj);
            }
        });
    }

    public final void a(final com.android.tools.r8.graph.L2 l22, final com.android.tools.r8.graph.H0 h02, J j10) {
        j10.f55659c.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                J.this.a(l22, h02, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.H0 h02, com.android.tools.r8.graph.M2 m22) {
        ((C10908a0) this.f55660d.f55673c.f55795a.b(m22).c(h02.getReference())).a(l22, h02.getReference());
    }

    public final void a(final Consumer consumer) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return J.a(Consumer.this, (J) obj);
            }
        };
        if (function.apply(this) == null && a(function) == null) {
            b(function);
        }
    }

    public static Object a(Consumer consumer, J j10) {
        consumer.accept(j10);
        return null;
    }

    public final Object a(Function function) {
        Iterator it = this.f55658b.iterator();
        while (it.hasNext()) {
            J j10 = (J) this.f55660d.f55675e.get((com.android.tools.r8.graph.M2) it.next());
            if (j10 != null) {
                Object apply = function.apply(j10);
                if (apply != null) {
                    return apply;
                }
                Object a10 = j10.a(function);
                if (a10 != null) {
                    return a10;
                }
            }
        }
        return null;
    }
}

package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class B00 extends AbstractC10102wY {

    public final C6541b80 f38767b;

    public final C4387c4 f38768c;

    public final IdentityHashMap f38769d = new IdentityHashMap();

    public final IdentityHashMap f38770e = new IdentityHashMap();

    public final IdentityHashMap f38771f = new IdentityHashMap();

    public final IdentityHashMap f38772g = new IdentityHashMap();

    public B00(C4798y c4798y, C4387c4 c4387c4) {
        this.f38767b = new C6541b80(c4798y, c4387c4);
        this.f38768c = c4387c4;
    }

    public static boolean c(com.android.tools.r8.graph.E0 e02) {
        return !e02.e0();
    }

    @Override
    public final Collection a(AA aa2) {
        AA aa3;
        C5058Dq c5058Dq;
        Set a10;
        Set a11;
        LinkedList linkedList = new LinkedList();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            Iterator<E> it2 = linkedList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    aa3 = null;
                    break;
                }
                aa3 = (AA) it2.next();
                C5058Dq c5058Dq2 = (C5058Dq) identityHashMap.get(aa3);
                if (this.f38772g.containsKey(h22)) {
                    a10 = (Set) this.f38772g.get(h22);
                } else {
                    a10 = this.f38767b.a(h22);
                    Iterator it3 = a10.iterator();
                    while (it3.hasNext()) {
                        this.f38772g.put((com.android.tools.r8.graph.H2) it3.next(), a10);
                    }
                }
                C5058Dq a12 = a(a10);
                a12.getClass();
                Iterator it4 = c5058Dq2.f39661b.iterator();
                while (true) {
                    if (it4.hasNext()) {
                        if (a12.f39661b.contains((com.android.tools.r8.graph.F2) it4.next())) {
                            break;
                        }
                    } else {
                        Set c10 = AbstractC5513Ll0.c();
                        Iterator<E> it5 = aa3.f38553b.iterator();
                        while (it5.hasNext()) {
                            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it5.next();
                            if (this.f38772g.containsKey(h23)) {
                                a11 = (Set) this.f38772g.get(h23);
                            } else {
                                a11 = this.f38767b.a(h23);
                                Iterator it6 = a11.iterator();
                                while (it6.hasNext()) {
                                    this.f38772g.put((com.android.tools.r8.graph.H2) it6.next(), a11);
                                }
                            }
                            c10.add(a11);
                        }
                        Iterator it7 = c10.iterator();
                        while (it7.hasNext()) {
                            C5058Dq a13 = a((Set) it7.next());
                            C5058Dq a14 = a(h22);
                            a13.getClass();
                            Iterator it8 = a14.f39661b.iterator();
                            while (it8.hasNext()) {
                                if (a13.f39661b.contains((com.android.tools.r8.graph.F2) it8.next())) {
                                    break;
                                }
                            }
                        }
                        break;
                    }
                }
            }
            if (aa3 == null) {
                AA aa4 = new AA();
                aa4.f38553b.add(h22);
                linkedList.add(aa4);
                c5058Dq = new C5058Dq(new HashSet());
                identityHashMap.put(aa4, c5058Dq);
            } else {
                aa3.f38553b.add(h22);
                c5058Dq = (C5058Dq) identityHashMap.get(aa3);
            }
            C5058Dq a15 = a(h22);
            c5058Dq.getClass();
            c5058Dq.f39661b.addAll(a15.f39661b);
        }
        return AbstractC9369s60.a(linkedList);
    }

    @Override
    public final void e() {
        this.f38769d.clear();
        this.f38770e.clear();
        this.f38772g.clear();
    }

    @Override
    public final String f() {
        return "NoWeakerAccessPriviledges";
    }

    public final C5058Dq b(com.android.tools.r8.graph.E0 e02) {
        if (this.f38771f.containsKey(e02)) {
            return (C5058Dq) this.f38771f.get(e02);
        }
        final C5058Dq c5058Dq = new C5058Dq(new HashSet());
        e02.b(new C5251Gz0(c5058Dq), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean g10;
                g10 = ((C4516j1) obj).getAccessFlags().g();
                return g10;
            }
        });
        this.f38768c.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                B00.this.b(c5058Dq, (com.android.tools.r8.graph.E0) obj);
            }
        }, e02);
        this.f38771f.put(e02, c5058Dq);
        return c5058Dq;
    }

    public final void c(C5058Dq c5058Dq, com.android.tools.r8.graph.E0 e02) {
        C5058Dq b10 = b(e02);
        c5058Dq.getClass();
        c5058Dq.f39661b.addAll(b10.f39661b);
    }

    public final void b(C5058Dq c5058Dq, com.android.tools.r8.graph.E0 e02) {
        C5058Dq b10 = b(e02);
        c5058Dq.getClass();
        c5058Dq.f39661b.addAll(b10.f39661b);
    }

    public final C5058Dq a(com.android.tools.r8.graph.E0 e02) {
        if (this.f38769d.containsKey(e02)) {
            return (C5058Dq) this.f38769d.get(e02);
        }
        final C5058Dq c5058Dq = new C5058Dq(new HashSet());
        this.f38768c.a(e02, new C5598Mz0(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                B00.this.a(c5058Dq, (com.android.tools.r8.graph.E0) obj);
            }
        });
        if (e02.isInterface()) {
            e02.b(new C5251Gz0(c5058Dq), new C5714Oz0());
        }
        this.f38769d.put(e02, c5058Dq);
        return c5058Dq;
    }

    public final void a(C5058Dq c5058Dq, com.android.tools.r8.graph.E0 e02) {
        C5058Dq a10 = a(e02);
        c5058Dq.getClass();
        c5058Dq.f39661b.addAll(a10.f39661b);
    }

    public final C5058Dq a(Set set) {
        if (this.f38770e.containsKey(set)) {
            return (C5058Dq) this.f38770e.get(set);
        }
        final C5058Dq c5058Dq = new C5058Dq(new HashSet());
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            h22.j(new C5425Jz0(c5058Dq), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean g10;
                    g10 = ((C4516j1) obj).getAccessFlags().g();
                    return g10;
                }
            });
            this.f38768c.a(h22, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return B00.c((com.android.tools.r8.graph.E0) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    B00.this.c(c5058Dq, (com.android.tools.r8.graph.E0) obj);
                }
            });
        }
        this.f38770e.put(set, c5058Dq);
        return c5058Dq;
    }
}

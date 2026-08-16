package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

public final class XZ extends AbstractC10102wY {

    public static final boolean f45745d = true;

    public final C4798y f45746b;

    public final com.android.tools.r8.graph.M2 f45747c;

    public XZ(C4798y c4798y) {
        this.f45746b = c4798y;
        this.f45747c = c4798y.b().f38068i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006f, code lost:
    
        r7 = r3.f39368b.o();
        r8 = new com.android.tools.r8.internal.C5058Dq(new java.util.HashSet());
        r7 = r7.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0087, code lost:
    
        if (r7.hasNext() == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0089, code lost:
    
        r9 = (com.android.tools.r8.graph.F2) r7.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0095, code lost:
    
        if (r5.f39368b.containsKey(r9) == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0097, code lost:
    
        r8.f39661b.add(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
    
        r7 = r8.f39661b.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a7, code lost:
    
        if (r7.hasNext() == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a9, code lost:
    
        r7 = (com.android.tools.r8.graph.F2) r7.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bb, code lost:
    
        if (r5.f39368b.get(r7) != r3.f39368b.get(r7)) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c5, code lost:
    
        if (r5.f39368b.get(r7) != r11.f45747c) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c9, code lost:
    
        r5.putAll(r3);
        r6.f38553b.add(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0036, code lost:
    
        continue;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Collection a(AA aa2) {
        Function function;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            if (aa2.j()) {
                function = new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return XZ.this.b((com.android.tools.r8.graph.H2) obj);
                    }
                };
            } else {
                function = new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return XZ.this.a((com.android.tools.r8.graph.H2) obj);
                    }
                };
            }
            C5000Cq c5000Cq = (C5000Cq) function.apply(h22);
            Iterator it2 = linkedHashMap.entrySet().iterator();
            while (true) {
                if (it2.hasNext()) {
                    Map.Entry entry = (Map.Entry) it2.next();
                    AA aa3 = (AA) entry.getKey();
                    C5000Cq c5000Cq2 = (C5000Cq) entry.getValue();
                    Set o10 = c5000Cq.f39368b.o();
                    c5000Cq2.getClass();
                    Iterator<E> it3 = o10.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (c5000Cq2.f39368b.containsKey((com.android.tools.r8.graph.F2) it3.next())) {
                                break;
                            }
                        } else {
                            c5000Cq2.putAll(c5000Cq);
                            aa3.f38553b.add(h22);
                            break;
                        }
                    }
                } else {
                    AA aa4 = new AA();
                    aa4.f38553b.add(h22);
                    linkedHashMap.put(aa4, c5000Cq);
                    break;
                }
            }
        }
        Set o11 = linkedHashMap.o();
        LinkedList linkedList = new LinkedList();
        AbstractC9907vK.a(o11, linkedList);
        return AbstractC9369s60.a(linkedList);
    }

    public final C5000Cq b(com.android.tools.r8.graph.H2 h22) {
        if (!f45745d && !h22.isInterface()) {
            throw new AssertionError();
        }
        C5000Cq c5000Cq = new C5000Cq(new HashMap());
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) h22);
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) c6286Yx0.c();
            if (!f45745d && !h23.isInterface()) {
                throw new AssertionError();
            }
            a(c5000Cq, h23);
            a(h23, c6286Yx0);
        }
        return c5000Cq;
    }

    @Override
    public final String f() {
        return "NoDefaultInterfaceMethodMerging";
    }

    public final void a(final C5000Cq c5000Cq, final com.android.tools.r8.graph.H2 h22) {
        h22.j(new Consumer() {
            @Override
            public final void accept(Object obj) {
                XZ.this.a(c5000Cq, h22, (com.android.tools.r8.graph.H5) obj);
            }
        }, new com.android.tools.r8.graph.F7());
    }

    public final void a(C5000Cq c5000Cq, final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        c5000Cq.a(h52.d(), h22.getType(), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return XZ.this.a(h22, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
    }

    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        return m23 == h22.getType() ? m23 : this.f45747c;
    }

    public final C5000Cq a(com.android.tools.r8.graph.H2 h22) {
        if (!f45745d && h22.isInterface()) {
            throw new AssertionError();
        }
        C5000Cq c5000Cq = new C5000Cq(new HashMap());
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        a(h22, c6286Yx0);
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) c6286Yx0.c();
            if (!f45745d && !h23.isInterface()) {
                throw new AssertionError();
            }
            a(c5000Cq, h23);
            a(h23, c6286Yx0);
        }
        return c5000Cq;
    }

    public final void a(com.android.tools.r8.graph.H2 h22, C6286Yx0 c6286Yx0) {
        Iterator<com.android.tools.r8.graph.M2> it = h22.R0().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 next = it.next();
            C4798y c4798y = this.f45746b;
            c4798y.getClass();
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(next == h22.f36245e ? h22 : c4798y.a(next));
            if (a10 != null && a10.isInterface()) {
                c6286Yx0.b((C6286Yx0) a10);
            }
        }
    }
}

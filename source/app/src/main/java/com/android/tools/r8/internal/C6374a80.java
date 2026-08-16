package com.android.tools.r8.internal;

import com.android.tools.r8.ClassConflictResolver;
import com.android.tools.r8.dex.InterfaceC4302b;
import com.android.tools.r8.errors.DuplicateTypesDiagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.Reference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiFunction;
import java.util.function.Supplier;

public final class C6374a80 extends AbstractC7945jd {

    public static final boolean f46425e = true;

    public final InterfaceC4302b f46426d;

    public C6374a80(ConcurrentHashMap concurrentHashMap, InterfaceC4302b interfaceC4302b) {
        super(concurrentHashMap, null);
        this.f46426d = interfaceC4302b;
    }

    @Override
    public final Supplier a(com.android.tools.r8.graph.E0 e02) {
        return (com.android.tools.r8.graph.H2) e02;
    }

    @Override
    public final com.android.tools.r8.graph.V c() {
        return com.android.tools.r8.graph.V.f36877c;
    }

    @Override
    public final String toString() {
        return "program classes: " + super.toString();
    }

    @Override
    public final com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.E0 e03) {
        return this.f46426d.a((com.android.tools.r8.graph.H2) e02, (com.android.tools.r8.graph.H2) e03);
    }

    public static C6374a80 a(ArrayList arrayList, final InterfaceC4302b interfaceC4302b) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) obj;
            concurrentHashMap.merge(h22.f36245e, h22, new BiFunction() {
                @Override
                public final Object apply(Object obj2, Object obj3) {
                    Supplier a10;
                    a10 = InterfaceC4302b.this.a((com.android.tools.r8.graph.H2) ((Supplier) obj2).get(), (com.android.tools.r8.graph.H2) ((Supplier) obj3).get());
                    return a10;
                }
            });
        }
        return new C6374a80(concurrentHashMap, interfaceC4302b);
    }

    public static InterfaceC4302b a(final ClassConflictResolver classConflictResolver, final C5094Ef0 c5094Ef0) {
        return new InterfaceC4302b() {
            @Override
            public final com.android.tools.r8.graph.H2 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23) {
                return C6374a80.a(ClassConflictResolver.this, c5094Ef0, h22, h23);
            }
        };
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x00d2, code lost:
    
        if ((r7.f36244d instanceof com.android.tools.r8.internal.C7902jJ) != false) goto L62;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static com.android.tools.r8.graph.H2 a(ClassConflictResolver classConflictResolver, C5094Ef0 c5094Ef0, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23) {
        com.android.tools.r8.graph.H2 h24;
        boolean z10 = f46425e;
        if (!z10 && h22.f36245e != h23.f36245e) {
            throw new AssertionError();
        }
        boolean o10 = h22.f36246f.o();
        boolean o11 = h23.f36246f.o();
        if (o10 && o11) {
            String j02 = h22.f36245e.j0();
            Iterator it = com.android.tools.r8.graph.M2.f36590i.iterator();
            while (it.hasNext()) {
                if (j02.contains((String) it.next())) {
                    boolean z11 = f46425e;
                    if (!z11) {
                        if (!z11 && h22.b0().d() != h23.b0().d()) {
                            throw new AssertionError();
                        }
                        if (!z11 && h22.b0().f36638b.h() != h23.b0().f36638b.h()) {
                            throw new AssertionError();
                        }
                    }
                    h24 = h22;
                }
            }
            h24 = null;
        } else {
            if (o10) {
                if (!z10 && !h22.f36246f.o()) {
                    throw new AssertionError();
                }
                if (!z10 && h23.f36246f.o()) {
                    throw new AssertionError();
                }
                if (h22.f36244d instanceof C7902jJ) {
                    h24 = h23;
                }
            } else if (o11) {
                if (!z10 && !h23.f36246f.o()) {
                    throw new AssertionError();
                }
                if (!z10 && h22.f36246f.o()) {
                    throw new AssertionError();
                }
            }
            h24 = null;
        }
        if (h24 != null) {
            return h24;
        }
        if (classConflictResolver != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(h22.f36244d);
            arrayList.add(h23.f36244d);
            Origin resolveDuplicateClass = classConflictResolver.resolveDuplicateClass(h22.M0(), arrayList, c5094Ef0);
            if (resolveDuplicateClass == h22.f36244d) {
                return h22;
            }
            if (resolveDuplicateClass == h23.f36244d) {
                return h23;
            }
        }
        c5094Ef0.a(null, new DuplicateTypesDiagnostic(Reference.classFromDescriptor(h22.f36245e.V0()), AbstractC7552hC.a(h22.f36244d, h23.f36244d)));
        throw c5094Ef0.f39969c;
    }
}

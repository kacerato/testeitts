package com.android.tools.r8.shaking;

import com.android.tools.r8.experimental.graphinfo.AnnotationGraphNode;
import com.android.tools.r8.experimental.graphinfo.ClassGraphNode;
import com.android.tools.r8.experimental.graphinfo.FieldGraphNode;
import com.android.tools.r8.experimental.graphinfo.GraphConsumer;
import com.android.tools.r8.experimental.graphinfo.GraphNode;
import com.android.tools.r8.experimental.graphinfo.KeepRuleGraphNode;
import com.android.tools.r8.experimental.graphinfo.MethodGraphNode;
import com.android.tools.r8.graph.AbstractC4365b1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6200Xj;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5076Dz;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

public final class S0 {

    public static final boolean f56950k = true;

    public final C4798y f56951a;

    public final C8570nJ f56952b;

    public final GraphConsumer f56953c;

    public final C11430t f56954d;

    public final IdentityHashMap f56955e = new IdentityHashMap();

    public final IdentityHashMap f56956f = new IdentityHashMap();

    public final IdentityHashMap f56957g = new IdentityHashMap();

    public final IdentityHashMap f56958h = new IdentityHashMap();

    public final IdentityHashMap f56959i = new IdentityHashMap();

    public final IdentityHashMap f56960j = new IdentityHashMap();

    public S0(C4798y c4798y, GraphConsumer graphConsumer) {
        this.f56951a = c4798y;
        this.f56952b = c4798y.E();
        if (!c4798y.E().f50599F1.f50841R0) {
            this.f56954d = null;
            this.f56953c = graphConsumer;
        } else {
            C11430t c11430t = new C11430t(graphConsumer);
            this.f56954d = c11430t;
            this.f56953c = c11430t;
        }
    }

    public final KeepRuleGraphNode a(G3 g32, L3 l32) {
        if (!G3.f56495w && g32.f56496t == null) {
            throw new AssertionError();
        }
        GraphNode a10 = a(g32.f56496t.getReference());
        HashSet hashSet = new HashSet(1);
        hashSet.add(a10);
        return new KeepRuleGraphNode(g32, hashSet);
    }

    public final ClassGraphNode b(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 c10 = this.f56951a.f().c(m22);
        return new ClassGraphNode(c10 != null && c10.v1(), Reference.classFromDescriptor(m22.V0()));
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        if (!f56950k && this.f56954d == null) {
            throw new AssertionError();
        }
        ClassGraphNode a10 = a(h22.f36245e);
        Set c10 = AbstractC5513Ll0.c();
        ArrayDeque a11 = AbstractC6200Xj.a(a10);
        while (!a11.isEmpty()) {
            GraphNode graphNode = (GraphNode) a11.pop();
            if ((graphNode instanceof KeepRuleGraphNode) && ((KeepRuleGraphNode) graphNode).getPreconditions().isEmpty()) {
                return true;
            }
            if (c10.add(graphNode)) {
                Map<GraphNode, Set<C5076Dz>> a12 = this.f56954d.a(graphNode);
                boolean z10 = f56950k;
                if (!z10 && a12 == null) {
                    throw new AssertionError((Object) ("No sources set for " + ((Object) graphNode)));
                }
                if (!z10 && a12.isEmpty()) {
                    throw new AssertionError((Object) ("Empty sources set for " + ((Object) graphNode)));
                }
                a11.addAll(a12.o());
            }
        }
        if (f56950k) {
            return false;
        }
        throw new AssertionError((Object) ("No rooted path to " + ((Object) h22.f36245e)));
    }

    public final C5076Dz.a a(KeepRuleGraphNode keepRuleGraphNode) {
        if (keepRuleGraphNode.getPreconditions().isEmpty()) {
            return C5076Dz.a.f39708b;
        }
        Iterator<GraphNode> it = keepRuleGraphNode.getPreconditions().iterator();
        while (it.hasNext()) {
            a(it.next(), keepRuleGraphNode, C5076Dz.a.f39711e);
        }
        return C5076Dz.a.f39710d;
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        if (!f56950k) {
            com.android.tools.r8.graph.H2 holder = h52.getHolder();
            holder.getClass();
            if (holder.a(com.android.tools.r8.graph.M2.f36589h) != h52.d()) {
                throw new AssertionError();
            }
        }
        if (this.f56953c != null) {
            a(a(h52.p()), a(h52.getReference()), C5076Dz.a.f39709c);
        }
    }

    public final R0 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.D5 d52) {
        R0 r02 = R0.f56919a;
        if (d52.e0()) {
            com.android.tools.r8.graph.H2 d02 = d52.d0();
            if (this.f56953c != null) {
                a(a(d02.f36245e), a(h22.f36245e), C5076Dz.a.f39718l);
            }
            return r02;
        }
        if (d52.L()) {
            com.android.tools.r8.graph.F5 W10 = d52.W();
            if (this.f56953c != null) {
                a(a(W10.getReference()), a(h22.f36245e), C5076Dz.a.f39718l);
            }
            return r02;
        }
        if (!f56950k && !d52.N()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H5 H10 = d52.H();
        if (this.f56953c != null) {
            a(a(H10.getReference()), a(h22.f36245e), C5076Dz.a.f39718l);
        }
        return r02;
    }

    public final R0 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        if (h52 != null) {
            if (!f56950k && !h52.d().f1()) {
                throw new AssertionError();
            }
            if (this.f56953c != null) {
                a(a(h22.f36245e), a(h52.getReference()), C5076Dz.a.f39720n);
                return R0.f56919a;
            }
        } else if (!f56950k && h22.c1()) {
            throw new AssertionError();
        }
        return R0.f56919a;
    }

    public final void a(GraphNode graphNode, GraphNode graphNode2, C5076Dz.a aVar) {
        if (!f56950k && this.f56953c == null) {
            throw new AssertionError();
        }
        this.f56953c.acceptEdge(graphNode, graphNode2, a(aVar));
    }

    public final boolean a(X1 x12) {
        boolean z10 = f56950k;
        if (!z10 && x12 == null) {
            throw new AssertionError();
        }
        if (x12 == R0.f56919a) {
            return true;
        }
        if (z10 || x12.a(this) != null) {
            return !(this.f56953c != null);
        }
        throw new AssertionError();
    }

    public final R0 a(com.android.tools.r8.graph.H2 h22, X1 x12) {
        if (a(x12)) {
            return R0.f56919a;
        }
        a(a(h22.f36245e), x12);
        return R0.f56919a;
    }

    public final R0 a(C4516j1 c4516j1, X1 x12) {
        if (a(x12)) {
            return R0.f56919a;
        }
        if (x12.a() == C5076Dz.a.f39722p) {
            com.android.tools.r8.graph.E0 g10 = this.f56951a.g(c4516j1.B0());
            if (g10 == null || g10.v1()) {
                return R0.f56919a;
            }
        }
        a(a(c4516j1.getReference()), x12);
        return R0.f56919a;
    }

    public final R0 a(C4460g1 c4460g1, X1 x12) {
        if (a(x12)) {
            return R0.f56919a;
        }
        a(a(c4460g1.getReference()), x12);
        return R0.f56919a;
    }

    public final void a(GraphNode graphNode, X1 x12) {
        if (!f56950k && a(x12)) {
            throw new AssertionError();
        }
        GraphNode a10 = x12.a(this);
        if (a10.isLibraryNode()) {
            return;
        }
        this.f56953c.acceptEdge(a10, graphNode, a(x12.a()));
    }

    public final GraphNode a(com.android.tools.r8.graph.J2 j22) {
        j22.getClass();
        if (j22 instanceof com.android.tools.r8.graph.M2) {
            return a(j22.o0());
        }
        if (j22.r0()) {
            return a(j22.n0());
        }
        if (j22.p0()) {
            return a(j22.l0());
        }
        throw new C5417Jv0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C5076Dz a(C5076Dz.a aVar) {
        return (C5076Dz) this.f56960j.computeIfAbsent(aVar, new Function() {
            @Override
            public final Object apply(Object obj) {
                return new C5076Dz((C5076Dz.a) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AnnotationGraphNode a(final C4666r0 c4666r0, final com.android.tools.r8.graph.D5 d52) {
        return (AnnotationGraphNode) this.f56955e.computeIfAbsent(c4666r0, new Function() {
            @Override
            public final Object apply(Object obj) {
                return S0.this.a(d52, c4666r0, (C4666r0) obj);
            }
        });
    }

    public final AnnotationGraphNode a(com.android.tools.r8.graph.D5 d52, C4666r0 c4666r0, C4666r0 c4666r02) {
        return new AnnotationGraphNode((GraphNode) d52.getReference().a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return S0.this.a((com.android.tools.r8.graph.M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return S0.this.a((C4554l1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return S0.this.a((com.android.tools.r8.graph.A2) obj);
            }
        }), a(c4666r0.l0()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ClassGraphNode a(com.android.tools.r8.graph.M2 m22) {
        return (ClassGraphNode) this.f56956f.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return S0.this.b((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final MethodGraphNode a(final com.android.tools.r8.graph.A2 a22) {
        return (MethodGraphNode) this.f56957g.computeIfAbsent(a22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return S0.this.a(a22, (com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public final MethodGraphNode a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        com.android.tools.r8.graph.E0 c10 = this.f56951a.f().c(a22.f38297f);
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        com.android.tools.r8.graph.M2[] m2Arr = a23.f36127i.f36441f.f36675b;
        int length = m2Arr.length;
        boolean z10 = false;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            TypeReference typeFromDescriptor = Reference.typeFromDescriptor(m2Arr[i11].V0());
            typeFromDescriptor.getClass();
            int i13 = i12 + 1;
            if (objArr.length < i13) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i13));
            }
            objArr[i12] = typeFromDescriptor;
            i11++;
            i12 = i13;
        }
        if (c10 != null && c10.v1()) {
            z10 = true;
        }
        return new MethodGraphNode(z10, Reference.method(Reference.classFromDescriptor(a23.f38297f.V0()), a23.f38298g.toString(), AbstractC7552hC.b(i12, objArr), a23.f36127i.f36440e.S0() ? null : Reference.typeFromDescriptor(a23.f36127i.f36440e.V0())));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final FieldGraphNode a(final C4554l1 c4554l1) {
        return (FieldGraphNode) this.f56958h.computeIfAbsent(c4554l1, new Function() {
            @Override
            public final Object apply(Object obj) {
                return S0.this.a(c4554l1, (C4554l1) obj);
            }
        });
    }

    public final FieldGraphNode a(C4554l1 c4554l1, C4554l1 c4554l12) {
        com.android.tools.r8.graph.E0 c10 = this.f56951a.f().c(c4554l1.f38297f);
        return new FieldGraphNode(c10 != null && c10.v1(), Reference.field(Reference.classFromDescriptor(c4554l12.f38297f.V0()), c4554l12.f38298g.toString(), Reference.typeFromDescriptor(c4554l12.f37449i.V0())));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final KeepRuleGraphNode a(AbstractC4365b1 abstractC4365b1, final L3 l32) {
        final Set set;
        if (l32 instanceof K3) {
            if (abstractC4365b1 != null) {
                set = Collections.singleton(a(abstractC4365b1.getReference()));
            } else {
                set = Collections.EMPTY_SET;
            }
            return (KeepRuleGraphNode) this.f56959i.computeIfAbsent(l32, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return S0.a(L3.this, set, (L3) obj);
                }
            });
        }
        if (l32 instanceof G3) {
            final G3 g32 = (G3) l32;
            if (!f56950k) {
                if (!G3.f56495w && g32.f56496t == null) {
                    throw new AssertionError();
                }
                if (g32.f56496t == null) {
                    throw new AssertionError();
                }
            }
            return (KeepRuleGraphNode) this.f56959i.computeIfAbsent(g32, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return S0.this.a(g32, (L3) obj);
                }
            });
        }
        throw new C5417Jv0("Unexpected type of keep rule: " + ((Object) l32));
    }

    public static KeepRuleGraphNode a(L3 l32, Set set, L3 l33) {
        return new KeepRuleGraphNode(l32, set);
    }
}

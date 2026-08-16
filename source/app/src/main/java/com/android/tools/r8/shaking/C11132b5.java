package com.android.tools.r8.shaking;

import com.android.tools.r8.experimental.graphinfo.ClassGraphNode;
import com.android.tools.r8.experimental.graphinfo.FieldGraphNode;
import com.android.tools.r8.experimental.graphinfo.GraphConsumer;
import com.android.tools.r8.experimental.graphinfo.GraphNode;
import com.android.tools.r8.experimental.graphinfo.KeepRuleGraphNode;
import com.android.tools.r8.experimental.graphinfo.MethodGraphNode;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5076Dz;
import com.android.tools.r8.internal.C7660hs1;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.position.TextPosition;
import com.android.tools.r8.position.TextRange;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import com.bumptech.glide.load.engine.GlideException;
import java.io.PrintStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import org.openjdk.tools.doclint.DocLint;

public class C11132b5 extends C11430t {

    public static final boolean f57193c = true;

    public C11132b5(GraphConsumer graphConsumer) {
        super(graphConsumer);
    }

    public static String d(GraphNode graphNode) {
        if (graphNode instanceof ClassGraphNode) {
            return C4932Bl.b(((ClassGraphNode) graphNode).getReference().getDescriptor());
        }
        if (graphNode instanceof MethodGraphNode) {
            MethodReference reference = ((MethodGraphNode) graphNode).getReference();
            return (reference.getReturnType() == null ? "void" : reference.getReturnType().getTypeName()) + " " + reference.getHolderClass().getTypeName() + "." + reference.getMethodName() + C10656zq0.a(DocLint.SEPARATOR, AT.a((Collection) reference.getFormalTypes(), (Function) new C7660hs1()), C10656zq0.a.f54549b);
        }
        if (graphNode instanceof FieldGraphNode) {
            FieldReference reference2 = ((FieldGraphNode) graphNode).getReference();
            return reference2.getFieldType().getTypeName() + " " + reference2.getHolderClass().getTypeName() + "." + reference2.getFieldName();
        }
        if (!(graphNode instanceof KeepRuleGraphNode)) {
            if (GraphNode.cycle().equals(graphNode)) {
                return "only cyclic dependencies remain, failed to determine a path from a keep rule";
            }
            if (f57193c) {
                return Objects.toString(graphNode);
            }
            throw new AssertionError((Object) ("Unexpected graph node type: " + ((Object) graphNode)));
        }
        KeepRuleGraphNode keepRuleGraphNode = (KeepRuleGraphNode) graphNode;
        if (Origin.unknown().equals(keepRuleGraphNode.getOrigin())) {
            return keepRuleGraphNode.getContent();
        }
        Origin origin = keepRuleGraphNode.getOrigin();
        return ((Object) origin) + b3.s.f32937c + a(keepRuleGraphNode.getPosition());
    }

    public void a(ClassReference classReference, PrintStream printStream) {
        ClassGraphNode classGraphNode;
        Iterator<GraphNode> it = a().iterator();
        while (true) {
            if (!it.hasNext()) {
                classGraphNode = null;
                break;
            }
            GraphNode next = it.next();
            if (next instanceof ClassGraphNode) {
                classGraphNode = (ClassGraphNode) next;
                if (classGraphNode.getReference().equals(classReference)) {
                    break;
                }
            }
        }
        if (classGraphNode == null) {
            classGraphNode = new ClassGraphNode(false, classReference);
        }
        a(classGraphNode, printStream);
    }

    public void a(MethodReference methodReference, PrintStream printStream) {
        MethodGraphNode methodGraphNode;
        Iterator<GraphNode> it = a().iterator();
        while (true) {
            if (!it.hasNext()) {
                methodGraphNode = null;
                break;
            }
            GraphNode next = it.next();
            if (next instanceof MethodGraphNode) {
                methodGraphNode = (MethodGraphNode) next;
                if (methodGraphNode.getReference().equals(methodReference)) {
                    break;
                }
            }
        }
        if (methodGraphNode == null) {
            methodGraphNode = new MethodGraphNode(false, methodReference);
        }
        a(methodGraphNode, printStream);
    }

    public void a(FieldReference fieldReference, PrintStream printStream) {
        FieldGraphNode fieldGraphNode;
        Iterator<GraphNode> it = a().iterator();
        while (true) {
            if (!it.hasNext()) {
                fieldGraphNode = null;
                break;
            }
            GraphNode next = it.next();
            if (next instanceof FieldGraphNode) {
                fieldGraphNode = (FieldGraphNode) next;
                if (fieldGraphNode.getReference().equals(fieldReference)) {
                    break;
                }
            }
        }
        if (fieldGraphNode == null) {
            fieldGraphNode = new FieldGraphNode(false, fieldReference);
        }
        a(fieldGraphNode, printStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(GraphNode graphNode, PrintStream printStream) {
        Z4 z42 = new Z4(printStream);
        ArrayList arrayList = null;
        C11115a5 c11115a5 = null;
        if (graphNode != null) {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            ArrayDeque arrayDeque = new ArrayDeque();
            GraphNode graphNode2 = graphNode;
            while (true) {
                Map<GraphNode, Set<C5076Dz>> a10 = a(graphNode2);
                if (a10 == null) {
                    arrayList = a(graphNode, c11115a5);
                    break;
                }
                if (!f57193c && a10.isEmpty()) {
                    throw new AssertionError();
                }
                for (GraphNode graphNode3 : a10.o()) {
                    if (!identityHashMap.containsKey(graphNode3)) {
                        identityHashMap.put(graphNode3, graphNode3);
                        arrayDeque.addLast(new C11115a5(graphNode3, c11115a5));
                    }
                }
                if (arrayDeque.isEmpty()) {
                    arrayList = a(graphNode, new C11115a5(GraphNode.cycle(), c11115a5));
                    break;
                } else {
                    c11115a5 = (C11115a5) arrayDeque.removeFirst();
                    graphNode2 = c11115a5.f57173a;
                }
            }
        }
        if (arrayList == null) {
            printStream.print("Nothing is keeping ");
            printStream.println(d(graphNode));
            return;
        }
        String d10 = d(graphNode);
        z42.f57149b++;
        for (int i10 = 0; i10 < z42.f57149b; i10++) {
            z42.f57148a.print(GlideException.a.f59088e);
        }
        z42.f57148a.println(d10);
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C8699o50 c8699o50 = (C8699o50) arrayList.get(size);
            a((GraphNode) c8699o50.a(), (C5076Dz) c8699o50.b(), z42);
        }
        z42.f57149b--;
    }

    public final ArrayList a(GraphNode graphNode, C11115a5 c11115a5) {
        C5076Dz c5076Dz;
        C5076Dz c5076Dz2;
        if (c11115a5 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (true) {
            int i10 = 0;
            if (c11115a5.f57174b != null) {
                GraphNode graphNode2 = c11115a5.f57173a;
                if (graphNode2.isCycle()) {
                    arrayList.add(new C8699o50(graphNode2, new C5076Dz(C5076Dz.a.f39726t)));
                } else {
                    Set<C5076Dz> set = a(c11115a5.f57174b.f57173a).get(graphNode2);
                    C5076Dz.a[] values = C5076Dz.a.values();
                    int length = values.length;
                    while (true) {
                        if (i10 < length) {
                            C5076Dz.a aVar = values[i10];
                            Iterator<C5076Dz> it = set.iterator();
                            while (it.hasNext()) {
                                c5076Dz2 = it.next();
                                if (c5076Dz2.a() == aVar) {
                                    break;
                                }
                            }
                            i10++;
                        } else if (f57193c) {
                            c5076Dz2 = C5076Dz.f39705b;
                        } else {
                            throw new AssertionError((Object) "Unexpected empty set of graph edge info");
                        }
                    }
                    arrayList.add(new C8699o50(graphNode2, c5076Dz2));
                }
                c11115a5 = c11115a5.f57174b;
            } else {
                Set<C5076Dz> set2 = a(graphNode).get(c11115a5.f57173a);
                GraphNode graphNode3 = c11115a5.f57173a;
                C5076Dz.a[] values2 = C5076Dz.a.values();
                int length2 = values2.length;
                loop3: while (true) {
                    if (i10 < length2) {
                        C5076Dz.a aVar2 = values2[i10];
                        Iterator<C5076Dz> it2 = set2.iterator();
                        while (it2.hasNext()) {
                            c5076Dz = it2.next();
                            if (c5076Dz.a() == aVar2) {
                                break loop3;
                            }
                        }
                        i10++;
                    } else if (f57193c) {
                        c5076Dz = C5076Dz.f39705b;
                    } else {
                        throw new AssertionError((Object) "Unexpected empty set of graph edge info");
                    }
                }
                arrayList.add(new C8699o50(graphNode3, c5076Dz));
                return arrayList;
            }
        }
    }

    public static void a(GraphNode graphNode, C5076Dz c5076Dz, Z4 z42) {
        String str = "is " + c5076Dz.b() + b3.s.f32937c;
        for (int i10 = 0; i10 < z42.f57149b; i10++) {
            z42.f57148a.print(GlideException.a.f59088e);
        }
        z42.f57148a.print("|- ");
        z42.f57148a.println(str);
        for (String str2 : C10656zq0.c(d(graphNode))) {
            for (int i11 = 0; i11 < z42.f57149b; i11++) {
                z42.f57148a.print(GlideException.a.f59088e);
            }
            z42.f57148a.print("|  ");
            z42.f57148a.println(str2);
        }
    }

    public static String a(Position position) {
        if (position instanceof TextRange) {
            TextPosition start = ((TextRange) position).getStart();
            return start.getLine() + b3.s.f32937c + start.getColumn();
        }
        return position.getDescription();
    }
}

package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4650q2;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiPredicate;
import java.util.function.Consumer;

public final class C6588bS {

    public final AbstractC8552nC f46763a;

    public final QC f46764b;

    public final QC f46765c;

    public C6588bS(C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        this.f46763a = a(c4798y, b10);
        int i10 = QC.f43505c;
        IC a10 = new IC().a(b10.f38190x4.f38218d).a(b10.f38190x4.f38221g).a(b10.f38190x4.f38220f).a(b10.f38198y4.f36261b).a(b10.f38198y4.f36262c).a(b10.f38198y4.f36263d).a(b10.f37922O4.f36319a).a(b10.f38206z4.f36283b).a(b10.f38206z4.f36284c).a(b10.f38206z4.f36285d).a(b10.f37901L4.f36434b).a(b10.f37901L4.f36436d).a(b10.f37901L4.f36437e).a(b10.f37943R4.f36492k).a(b10.f37820A4.f36521b).a(b10.f37820A4.f36522c).a(b10.f37820A4.f36523d).a(b10.f37828B4.f36630b).a(b10.f37828B4.f36631c).a(b10.f37828B4.f36632d).a(b10.f37836C4.f37171b).a(b10.f37836C4.f37172c).a(b10.f37836C4.f37173d).a(b10.f37978W4.f37263a).a(b10.f37978W4.f37264b).a(b10.f37873H4.f37502a).a(b10.f37859F4.f38228f).a(b10.f37859F4.f38226d).a(b10.f37852E4.f37352d).a(b10.f37852E4.f37353e).a(b10.f37880I4.f37573b).a(b10.f37880I4.f37574c).a(b10.f37880I4.f37575d).a(b10.f38182w4.f37666r).a(b10.f38174v4.f37666r).a(b10.f37887J4.f38241c).a(b10.f37887J4.f38262x).a(b10.f37887J4.f38240b).a(b10.f37887J4.f38237B).a(b10.f37887J4.f38238C);
        a10.a((Iterable) b10.f37922O4.f36334p);
        this.f46764b = a10.a(b10.f37872H3).a();
        C4724u1.c cVar = b10.f37859F4;
        this.f46765c = QC.a(3, 3, cVar.f38225c, cVar.f38227e, cVar.f38230h);
    }

    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.A2 a22, List list) {
        return !PK.a(c4798y, list);
    }

    public static boolean b(C4798y c4798y, com.android.tools.r8.graph.A2 a22, List list) {
        return !PK.a(c4798y, list);
    }

    public final void a(Consumer consumer) {
        this.f46764b.forEach(consumer);
    }

    public final boolean a(com.android.tools.r8.graph.A2 a22, List list) {
        if (this.f46764b.contains(a22)) {
            return true;
        }
        AbstractC8552nC abstractC8552nC = this.f46763a;
        Object a10 = C7534h6.a();
        Object obj = abstractC8552nC.get(a22);
        if (obj != null) {
            a10 = obj;
        }
        return ((BiPredicate) a10).test(a22, list);
    }

    public final boolean a(VJ vj2, com.android.tools.r8.graph.A4 a42) {
        return a(a42.getReference(), vj2.f54321f) || this.f46765c.contains(a42.getReference());
    }

    public static AbstractC8552nC a(final C4798y c4798y, C4724u1 c4724u1) {
        C8051kC a10 = new C8051kC(4).a(c4724u1.f38198y4.f36261b, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                boolean O10;
                O10 = ((C10340xw0) ((List) obj2).get(0)).O();
                return O10;
            }
        }).a(c4724u1.f37852E4.f37359k, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C6588bS.a(C4798y.this, (com.android.tools.r8.graph.A2) obj, (List) obj2);
            }
        }).a(c4724u1.f37887J4.f38243e, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                boolean O10;
                O10 = ((C10340xw0) ((List) obj2).get(1)).O();
                return O10;
            }
        }).a(c4724u1.f37887J4.f38236A, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C6588bS.b(C4798y.this, (com.android.tools.r8.graph.A2) obj, (List) obj2);
            }
        });
        final C4650q2 c4650q2 = c4724u1.f38182w4;
        QC qc2 = c4650q2.f37669u;
        BiPredicate biPredicate = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C4650q2.this.a((com.android.tools.r8.graph.A2) obj, (List) obj2);
            }
        };
        Iterator<E> it = qc2.iterator();
        while (it.hasNext()) {
            a10.a(it.next(), biPredicate);
        }
        final C4650q2 c4650q22 = c4724u1.f38174v4;
        QC qc3 = c4650q22.f37669u;
        BiPredicate biPredicate2 = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C4650q2.this.a((com.android.tools.r8.graph.A2) obj, (List) obj2);
            }
        };
        Iterator<E> it2 = qc3.iterator();
        while (it2.hasNext()) {
            a10.a(it2.next(), biPredicate2);
        }
        return a10.a();
    }
}

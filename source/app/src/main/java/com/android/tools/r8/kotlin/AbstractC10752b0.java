package com.android.tools.r8.kotlin;

import com.android.tools.r8.C11699z2;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.HU0;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.JJ;
import com.android.tools.r8.internal.ML;
import com.android.tools.r8.internal.OL;
import com.android.tools.r8.shaking.AbstractC11468v3;
import com.android.tools.r8.shaking.C11350o3;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import org.eclipse.jdt.core.Signature;

public abstract class AbstractC10752b0 {

    public static final ML f55255a = new ML(1, 4, 0);

    public static final C10746a0 f55256b = new C10746a0("NO_KOTLIN_INFO");

    public static final C10746a0 f55257c = new C10746a0("INVALID_KOTLIN_INFO");

    public static final boolean f55258d = true;

    public static OL a(com.android.tools.r8.graph.A2 a22) {
        StringBuilder sb2 = new StringBuilder("(");
        for (com.android.tools.r8.graph.M2 m22 : a22.f36127i.f36441f.f36675b) {
            sb2.append(m22.V0());
        }
        sb2.append(")");
        sb2.append(a22.f36127i.f36440e.V0());
        return new OL(a22.f38298g.toString(), sb2.toString());
    }

    public static OL a(OL ol2, int i10) {
        return new OL(ol2.a() + "$default", ol2.f42858b.replace(")", C11699z2.a(Signature.SIG_INT, i10) + "Ljava/lang/Object;)"));
    }

    public static boolean a(String str) {
        try {
            for (String str2 : C4932Bl.e(str)) {
                if (str2.charAt(0) == 'L' && !C4932Bl.y(str2)) {
                    return false;
                }
            }
            return true;
        } catch (JJ unused) {
            return false;
        }
    }

    public static boolean a(C4798y c4798y) {
        com.android.tools.r8.graph.E0 c10 = c4798y.f().c(c4798y.b().f37858F3);
        if (c10 == null || c10.v1()) {
            return true;
        }
        C11350o3 B10 = c4798y.E().B();
        if (B10 == null || B10.p() == null) {
            return false;
        }
        Iterator<AbstractC11468v3> it = B10.p().iterator();
        while (it.hasNext()) {
            if (a(it.next(), c4798y.E().f50660a)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(AbstractC11468v3 abstractC11468v3, C4724u1 c4724u1) {
        abstractC11468v3.getClass();
        if (abstractC11468v3 instanceof com.android.tools.r8.shaking.G3) {
            return a(abstractC11468v3.p().E(), c4724u1);
        }
        if (!(abstractC11468v3 instanceof com.android.tools.r8.shaking.K3)) {
            return false;
        }
        com.android.tools.r8.shaking.K3 q10 = abstractC11468v3.q();
        if (q10.D() == com.android.tools.r8.shaking.O3.f56854c || q10.C().f56726e) {
            return false;
        }
        return q10.c().a(c4724u1.f37858F3);
    }

    public static String a(String str, boolean z10) {
        if (z10) {
            return "." + C4932Bl.f(str);
        }
        return C4932Bl.c(str);
    }

    public static boolean a(C4798y c4798y, Object obj, Consumer consumer, InterfaceC7495gt0 interfaceC7495gt0) {
        if (obj != null) {
            return ((Boolean) interfaceC7495gt0.a(obj, consumer, c4798y)).booleanValue();
        }
        return false;
    }

    public static boolean a(C4798y c4798y, List list, List list2, InterfaceC7495gt0 interfaceC7495gt0) {
        if (!f55258d && !list2.isEmpty()) {
            throw new AssertionError();
        }
        Objects.requireNonNull(list2);
        return a(c4798y, list, (Consumer) new HU0(list2), interfaceC7495gt0);
    }

    public static boolean a(C4798y c4798y, List list, Consumer consumer, InterfaceC7495gt0 interfaceC7495gt0) {
        Iterator it = list.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= ((Boolean) interfaceC7495gt0.a(it.next(), consumer, c4798y)).booleanValue();
        }
        return z10;
    }
}

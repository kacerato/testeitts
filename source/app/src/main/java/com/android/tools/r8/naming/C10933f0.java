package com.android.tools.r8.naming;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C8570nJ;
import java.util.IdentityHashMap;
import java.util.function.BiConsumer;

public class C10933f0 extends AbstractC10988q0 {

    public static final boolean f55890g = true;

    public final C4798y f55891d;

    public final AbstractC8552nC f55892e;

    public final IdentityHashMap f55893f;

    public C10933f0(C4798y c4798y, C10922d c10922d, X x10, C11021x c11021x) {
        super(c4798y.b());
        IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f55893f = identityHashMap;
        this.f55891d = c4798y;
        this.f55892e = c10922d.f55854a;
        identityHashMap.putAll(c10922d.f55855b);
        identityHashMap.putAll(x10.f55790a);
        identityHashMap.putAll(c11021x.f56100a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final String a(String str) {
        Object obj = this.f55892e.get(str);
        if (obj != 0) {
            str = obj;
        }
        return str;
    }

    @Override
    public final AbstractC10992r0 c() {
        return this;
    }

    public final String toString() {
        final StringBuilder sb2 = new StringBuilder();
        this.f55893f.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10933f0.a(StringBuilder.this, (AbstractC4592n1) obj, (com.android.tools.r8.graph.L2) obj2);
            }
        });
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22) {
        return (com.android.tools.r8.graph.L2) this.f55893f.getOrDefault(m22, m22.f36592f);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(C4425e4 c4425e4, C8570nJ c8570nJ) {
        String valueOf;
        if (c4425e4.c() == null) {
            return null;
        }
        com.android.tools.r8.graph.M2 b10 = c4425e4.b();
        String a10 = C4932Bl.a(b10.f36592f.toString());
        String a11 = C4932Bl.a(c(b10).toString());
        if (a10.equals(a11)) {
            return c4425e4.c();
        }
        com.android.tools.r8.graph.M2 d10 = c4425e4.d();
        com.android.tools.r8.graph.L2 c10 = c4425e4.c();
        AbstractC8552nC abstractC8552nC = C4932Bl.f39005a;
        if (d10 != null && c10 != null) {
            valueOf = C4932Bl.a(d10.w0(), b10.w0(), c10.toString());
        } else {
            valueOf = String.valueOf('$');
        }
        if (valueOf == null) {
            valueOf = String.valueOf('$');
        }
        int lastIndexOf = a11.lastIndexOf(valueOf);
        if (lastIndexOf < 0) {
            if (!f55890g && ((c8570nJ.B().f().f56573e || c8570nJ.B().f().f56571c) && !c8570nJ.B().r())) {
                throw new AssertionError((Object) (((Object) b10) + " -> " + a11));
            }
            return c8570nJ.f50660a.b(C4932Bl.v(c(b10).toString()));
        }
        return c8570nJ.f50660a.b(a11.substring(valueOf.length() + lastIndexOf));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.A2 a22) {
        return (com.android.tools.r8.graph.L2) this.f55893f.getOrDefault(a22, a22.t0());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.L2 a(C4554l1 c4554l1) {
        return (com.android.tools.r8.graph.L2) this.f55893f.getOrDefault(c4554l1, c4554l1.t0());
    }

    public static void a(StringBuilder sb2, AbstractC4592n1 abstractC4592n1, com.android.tools.r8.graph.L2 l22) {
        if (abstractC4592n1 instanceof com.android.tools.r8.graph.M2) {
            sb2.append("[c] ");
        } else if (abstractC4592n1 instanceof com.android.tools.r8.graph.A2) {
            sb2.append("[m] ");
        } else if (abstractC4592n1 instanceof C4554l1) {
            sb2.append("[f] ");
        }
        sb2.append(abstractC4592n1.j0());
        sb2.append(" -> ");
        sb2.append(l22.j0());
        sb2.append('\n');
    }
}

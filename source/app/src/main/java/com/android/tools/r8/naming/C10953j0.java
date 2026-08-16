package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C5325If;
import java.util.function.Predicate;

public class C10953j0 extends AbstractC10943h0 implements InterfaceC10917c {

    public final C4798y f55941e;

    public final C4724u1 f55942f;

    public C10953j0(C4798y c4798y) {
        super(c4798y.E().B().f57586A, c4798y.E().B().f57594I);
        this.f55941e = c4798y;
        this.f55942f = c4798y.b();
    }

    public boolean a(com.android.tools.r8.graph.M2 m22) {
        return false;
    }

    public com.android.tools.r8.graph.L2 b(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f55941e.g(m22));
        if (a10 == null || !this.f55941e.r().a(a10).b(this.f55941e.E())) {
            return m22.v0();
        }
        return null;
    }

    public com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22, char[] cArr, C10927e c10927e, Predicate predicate) {
        String str = null;
        String str2 = null;
        while (true) {
            String str3 = (cArr + a(cArr, c10927e)) + ";";
            if (!str3.equals(str)) {
                if (!str3.endsWith("LR;") && !str3.endsWith("/R;")) {
                    str2 = str3;
                }
                if (str2 != null && !predicate.test(str2)) {
                    return this.f55942f.b(str2);
                }
                str = str3;
            } else {
                throw new C5325If("Generating same name '" + str3 + "' when given a new minified name to '" + m22.toString() + "'.");
            }
        }
    }
}

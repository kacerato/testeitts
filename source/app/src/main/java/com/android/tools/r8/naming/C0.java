package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.position.Position;
import java.util.HashMap;
import java.util.HashSet;
import java.util.function.BiConsumer;

public final class C0 extends C10933f0 {

    public final HashSet f55583h;

    public final HashMap f55584i;

    public C0(C4798y c4798y, C10922d c10922d, X x10, C11021x c11021x, HashSet hashSet) {
        super(c4798y, c10922d, x10, c11021x);
        this.f55583h = hashSet;
        this.f55584i = new HashMap();
        c10922d.f55855b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C0.this.a((com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.L2) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.L2 l22) {
        if (m22.v0().g(l22)) {
            return;
        }
        this.f55584i.put(l22, m22);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22) {
        if (this.f55583h.contains(m22) && this.f55584i.containsKey(m22.f36592f)) {
            com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) this.f55584i.get(m22.f36592f);
            C5094Ef0 c5094Ef0 = this.f55891d.E().f50691j;
            String m24 = m23.toString();
            String j02 = m22.j0();
            c5094Ef0.error(new C10907a("'" + m24 + "' cannot be mapped to '" + j02 + "' because it is in conflict with an existing class with the same name. This usually happens when compiling a test application against a source application and there are used classes in the test that was not given a -keep rule when compiling the app. Try either renaming '" + j02 + "' such that it will not collide or add a keep rule to keep '" + m24 + "'.", Position.UNKNOWN));
            this.f55583h.remove(m22);
        }
        return super.a(m22);
    }
}

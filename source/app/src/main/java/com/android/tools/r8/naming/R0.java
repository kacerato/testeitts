package com.android.tools.r8.naming;

import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5094Ef0;
import java.util.HashMap;
import java.util.HashSet;

public final class R0 extends AbstractC11017w0 {

    public final HashMap f55737a = new HashMap();

    public final HashSet f55738b = new HashSet();

    public final C5094Ef0 f55739c;

    public R0(C5094Ef0 c5094Ef0) {
        this.f55739c = c5094Ef0;
    }

    @Override
    public final AbstractC11017w0 a(com.android.tools.r8.naming.mappinginformation.b bVar) {
        return this;
    }

    @Override
    public final AbstractC11017w0 a(String str, String str2) {
        return this;
    }

    @Override
    public final void a(String str) {
    }

    @Override
    public final AbstractC10937g a(String str, String str2, E0 e02) {
        String H10 = C4932Bl.H(str2);
        String H11 = C4932Bl.H(str);
        this.f55738b.add(H11);
        C10947i c10947i = new C10947i(H11, H10, e02, this.f55739c);
        if (!str.startsWith("R8$$REMOVED$$CLASS$$") && this.f55737a.put(H10, c10947i) != null) {
            C5094Ef0 c5094Ef0 = this.f55739c;
            int i10 = C11027y0.f56112f;
            c5094Ef0.error(new C11027y0("'" + C4932Bl.b(H10) + "' already has a mapping", e02));
        }
        return c10947i;
    }
}

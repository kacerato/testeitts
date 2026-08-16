package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.AssertionsConfiguration;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.internal.C5417Jv0;

public final class C10704e {

    public static final boolean f54857c = true;

    public final AssertionsConfiguration f54858a;

    public final L2 f54859b;

    public C10704e(AssertionsConfiguration assertionsConfiguration, C4724u1 c4724u1) {
        this.f54858a = assertionsConfiguration;
        int i10 = AbstractC10702d.f54854a[assertionsConfiguration.getScope().ordinal()];
        if (i10 == 1) {
            if (assertionsConfiguration.getValue().length() == 0) {
                this.f54859b = c4724u1.b("");
                return;
            }
            this.f54859b = c4724u1.b("L" + assertionsConfiguration.getValue().replace('.', '/') + "/");
            return;
        }
        if (i10 != 2) {
            if (i10 != 3) {
                throw new C5417Jv0();
            }
            this.f54859b = null;
        } else {
            this.f54859b = c4724u1.b("L" + assertionsConfiguration.getValue().replace('.', '/') + ";");
        }
    }
}

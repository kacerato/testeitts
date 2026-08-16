package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.CL;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.function.Consumer;

public final class L implements InterfaceC11195f0 {

    public final C10853s0 f55106a;

    public final String f55107b;

    public L(C10853s0 c10853s0, String str) {
        this.f55107b = str;
        this.f55106a = c10853s0;
    }

    public final boolean a(Consumer consumer, C4460g1 c4460g1, C4798y c4798y) {
        boolean z10;
        String str;
        String str2 = this.f55107b;
        if (c4460g1 != null) {
            String l22 = c4460g1.getReference().f38298g.toString();
            str = c4798y.s().a(c4460g1.getReference()).toString();
            if (!l22.equals(str)) {
                z10 = true;
                String V02 = c4798y.b().f38068i2.V0();
                C7 c72 = new C7();
                boolean b10 = this.f55106a.b(new C10777f1(c72), c4798y, V02) | z10;
                consumer.accept(new CL(str, (String) c72.a()));
                return b10;
            }
        }
        z10 = false;
        str = str2;
        String V022 = c4798y.b().f38068i2.V0();
        C7 c722 = new C7();
        boolean b102 = this.f55106a.b(new C10777f1(c722), c4798y, V022) | z10;
        consumer.accept(new CL(str, (String) c722.a()));
        return b102;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55106a.a(interfaceC4403d1);
    }
}

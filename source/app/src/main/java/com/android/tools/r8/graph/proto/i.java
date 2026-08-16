package com.android.tools.r8.graph.proto;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5746Pm0;
import java.util.Objects;

public final class i extends g {
    public i(AbstractC5746Pm0 abstractC5746Pm0, M2 m22) {
        super(abstractC5746Pm0, m22);
    }

    @Override
    public final b a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, e());
        AbstractC5746Pm0 b10 = f() ? this.f37616b.b(c4798y, c10, abstractC5308Hz, abstractC5308Hz2) : null;
        return (b10 == this.f37616b && c10 == e()) ? this : new i(b10, c10);
    }

    @Override
    public final g a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, e());
        AbstractC5746Pm0 b10 = f() ? this.f37616b.b(c4798y, c10, abstractC5308Hz, abstractC5308Hz2) : null;
        return (b10 == this.f37616b && c10 == e()) ? this : new i(b10, c10);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj != null && i.class == obj.getClass()) {
            i iVar = (i) obj;
            if (e() == iVar.e() && Objects.equals(this.f37616b, iVar.f37616b)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return Objects.hash(this.f37616b, e());
    }
}

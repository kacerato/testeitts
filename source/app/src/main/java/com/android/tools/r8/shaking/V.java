package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC8374m80;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C7942jc;
import com.android.tools.r8.internal.C9132qj;
import com.android.tools.r8.internal.VJ;
import java.util.Iterator;
import java.util.Set;

public final class V extends W {

    public final com.android.tools.r8.graph.A2 f57041c;

    public final com.android.tools.r8.graph.A2 f57042d;

    public final com.android.tools.r8.graph.A2 f57043e;

    public final com.android.tools.r8.graph.A2 f57044f;

    public final com.android.tools.r8.graph.A2 f57045g;

    public final com.android.tools.r8.graph.A2 f57046h;

    public V(C4798y c4798y, N n10) {
        super(c4798y, n10);
        C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.M2 d10 = b10.d("Landroid/content/Intent;");
        com.android.tools.r8.graph.M2 d11 = b10.d("Landroid/os/Parcel;");
        this.f57041c = b10.a(d10, b10.a(b10.f38032d6, b10.f38052g2), "getSerializableExtra");
        this.f57042d = b10.a(d10, b10.a(b10.f38032d6, b10.f38052g2, b10.f38180w2), "getSerializableExtra");
        this.f57043e = b10.a(b10.f38046f4, b10.a(b10.f38032d6, b10.f38052g2), "getSerializable");
        this.f57044f = b10.a(b10.f38046f4, b10.a(b10.f38032d6, b10.f38052g2, b10.f38180w2), "getSerializable");
        this.f57045g = b10.a(d11, b10.a(b10.f38032d6, new com.android.tools.r8.graph.M2[0]), "readSerializable");
        this.f57046h = b10.a(d11, b10.a(b10.f38032d6, b10.f38196y2, b10.f38180w2), "readSerializable");
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H5 h52, VJ vj2) {
        com.android.tools.r8.graph.H2 a10;
        com.android.tools.r8.graph.A2 B22 = vj2.B2();
        if (B22.a(this.f57044f) || B22.a(this.f57046h) || B22.a(this.f57042d)) {
            a(h52, vj2, 1);
            return true;
        }
        if (!B22.a(this.f57043e) && !B22.a(this.f57045g) && !B22.a(this.f57041c)) {
            return false;
        }
        C10340xw0 d10 = vj2.d();
        if (d10 != null && !d10.j()) {
            C9132qj c9132qj = C9132qj.f51861a;
            Set c10 = AbstractC5513Ll0.c();
            C10340xw0.a(c9132qj, d10, c10);
            Iterator it = c10.iterator();
            while (it.hasNext()) {
                C7942jc D10 = ((AbstractC10561zE) it.next()).D();
                if (D10 != null && (a10 = a(D10.f49274k, true)) != null) {
                    this.f57083b.c(a10, new M1(h52.getHolder(), h52.d()));
                }
            }
        }
        return true;
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.H5 h52) {
        if (a22.a(this.f57043e) || a22.a(this.f57044f) || a22.a(this.f57045g) || a22.a(this.f57046h) || a22.a(this.f57041c) || a22.a(this.f57042d)) {
            this.f57083b.f56778U.add((AbstractC8374m80) h52);
        }
    }
}

package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;

public abstract class AbstractC5730Pf {

    public final C4798y f43300a;

    public final com.android.tools.r8.graph.H5 f43301b;

    public final C5939Sw f43302c;

    public final C6598bX f43303d;

    public final IdentityHashMap f43304e = new IdentityHashMap();

    public AbstractC5730Pf(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C5939Sw c5939Sw, C6598bX c6598bX) {
        this.f43300a = c4798y;
        this.f43301b = h52;
        this.f43302c = c5939Sw;
        this.f43303d = c6598bX;
    }

    public final InterfaceC6078Vf a(GE ge2) {
        InterfaceC6078Vf a10;
        InterfaceC6078Vf interfaceC6078Vf = (InterfaceC6078Vf) this.f43304e.get(ge2);
        if (interfaceC6078Vf != null) {
            return interfaceC6078Vf;
        }
        if (ge2.p()) {
            a10 = a(ge2.k());
        } else {
            C10340xw0 h10 = ge2.h();
            if (h10.j()) {
                a10 = a(h10.l());
            } else {
                a10 = a(h10.r());
            }
        }
        this.f43304e.put(ge2, a10);
        return a10;
    }

    public abstract InterfaceC6078Vf a(C7201f60 c7201f60);

    public abstract InterfaceC6078Vf a(AbstractC10561zE abstractC10561zE);
}

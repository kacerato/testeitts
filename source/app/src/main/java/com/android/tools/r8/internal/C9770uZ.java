package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;

public final class C9770uZ extends AbstractC8489mr0 {

    public final com.android.tools.r8.graph.M2 f52876c;

    public C9770uZ(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        super(c4798y, m22);
        this.f52876c = m23;
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C10106wa(this.f52876c));
        arrayList.add(new C6607bb());
        return a(arrayList);
    }
}

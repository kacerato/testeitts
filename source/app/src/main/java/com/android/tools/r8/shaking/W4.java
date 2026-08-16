package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import java.util.ArrayList;
import java.util.Comparator;

public final class W4 {

    public final ArrayList f57088a = new ArrayList();

    public final ArrayList f57089b = new ArrayList();

    public final void a() {
        this.f57088a.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int compareTo;
                compareTo = ((C4460g1) obj).getReference().compareTo(((C4460g1) obj2).getReference());
                return compareTo;
            }
        });
        this.f57089b.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int compareTo;
                compareTo = ((C4516j1) obj).getReference().compareTo(((C4516j1) obj2).getReference());
                return compareTo;
            }
        });
    }
}

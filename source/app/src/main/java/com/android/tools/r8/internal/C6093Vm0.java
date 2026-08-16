package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C6093Vm0 extends AbstractC7810in0 {
    public C6093Vm0(int i10) {
        super(i10);
    }

    @Override
    public final void k() {
        if (!this.f49059e) {
            for (int i10 = 0; i10 < this.f49057c.size(); i10++) {
                Map.Entry entry = (Map.Entry) this.f49057c.get(i10);
                if (((C5685Ol) ((InterfaceC5360Iw) entry.getKey())).k()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
            for (Map.Entry entry2 : i()) {
                if (((C5685Ol) ((InterfaceC5360Iw) entry2.getKey())).k()) {
                    entry2.setValue(Collections.unmodifiableList((List) entry2.getValue()));
                }
            }
        }
        if (this.f49059e) {
            return;
        }
        this.f49058d = this.f49058d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.f49058d);
        this.f49061g = this.f49061g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.f49061g);
        this.f49059e = true;
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        return a((InterfaceC5360Iw) obj, obj2);
    }
}

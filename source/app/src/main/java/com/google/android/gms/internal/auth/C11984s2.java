package com.google.android.gms.internal.auth;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C11984s2 extends C2 {
    public C11984s2(int i10) {
        super(i10, null);
    }

    @Override
    public final void e() {
        if (!q()) {
            for (int i10 = 0; i10 < i(); i10++) {
                Map.Entry n10 = n(i10);
                if (((InterfaceC11995v1) n10.getKey()).P1()) {
                    n10.setValue(Collections.unmodifiableList((List) n10.getValue()));
                }
            }
            for (Map.Entry entry : j()) {
                if (((InterfaceC11995v1) entry.getKey()).P1()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.e();
    }
}

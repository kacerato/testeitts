package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C12110k6 extends C12155p6 {
    public C12110k6() {
        super(null);
    }

    @Override
    public final void e() {
        if (!i()) {
            for (int i10 = 0; i10 < j(); i10++) {
                Map.Entry k10 = k(i10);
                if (((InterfaceC12064f5) ((C12128m6) k10).b()).Q1()) {
                    k10.setValue(Collections.unmodifiableList((List) k10.getValue()));
                }
            }
            for (Map.Entry entry : l()) {
                if (((InterfaceC12064f5) entry.getKey()).Q1()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.e();
    }
}

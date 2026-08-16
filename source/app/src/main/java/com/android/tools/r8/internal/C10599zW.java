package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Collections;

public final class C10599zW extends AW {

    public byte[] f54396b;

    public AW f54397c;

    public C10599zW(byte[] bArr) {
        super(Collections.EMPTY_LIST);
        this.f54397c = null;
        this.f54396b = bArr;
    }

    @Override
    public final Collection a() {
        if (this.f54397c == null) {
            this.f54397c = AW.a(this.f54396b);
            this.f54396b = null;
        }
        return this.f54397c.f38628a;
    }
}

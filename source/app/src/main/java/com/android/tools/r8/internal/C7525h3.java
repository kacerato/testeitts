package com.android.tools.r8.internal;

import com.android.tools.r8.ByteDataView;

public final class C7525h3 implements Comparable {

    public final String f48421b;

    public final ByteDataView f48422c;

    public final boolean f48423d;

    public final boolean f48424e;

    public C7525h3(String str, ByteDataView byteDataView, boolean z10, boolean z11) {
        this.f48421b = str;
        this.f48422c = byteDataView;
        this.f48423d = z10;
        this.f48424e = z11;
    }

    @Override
    public final int compareTo(Object obj) {
        C7525h3 c7525h3 = (C7525h3) obj;
        return c7525h3 == null ? this.f48421b.compareTo((String) null) : this.f48421b.compareTo(c7525h3.f48421b);
    }
}

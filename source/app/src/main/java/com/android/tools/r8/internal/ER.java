package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class ER {

    public static final boolean f39855i = true;

    public final HashMap f39856a = new HashMap();

    public final HashMap f39857b = new HashMap();

    public final HashMap f39858c = new HashMap();

    public final ArrayList f39859d = new ArrayList();

    public final ArrayList f39860e = new ArrayList();

    public final HashMap f39861f = new HashMap();

    public List f39862g;

    public InterfaceC5976Tl0 f39863h;

    public final ER a(String str, byte[] bArr) {
        this.f39856a.put(str, bArr);
        return this;
    }

    public final HR a() {
        if (f39855i || !(this.f39860e == null || this.f39861f == null)) {
            return new HR(this.f39856a, this.f39857b.values(), this.f39860e, this.f39861f, this.f39858c.values(), this.f39859d, this.f39862g, this.f39863h);
        }
        throw new AssertionError();
    }
}

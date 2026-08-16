package com.android.tools.r8.internal;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

public final class C8107kb0 {

    public static final boolean f49687b = true;

    public final ArrayList f49688a = new ArrayList();

    public final byte[] a() {
        if (!f49687b && this.f49688a.isEmpty()) {
            throw new AssertionError();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(((InterfaceC7940jb0) this.f49688a.iterator().next()).a());
        for (int i10 = 1; i10 < this.f49688a.size(); i10++) {
            sb2.append('\n');
            sb2.append(((InterfaceC7940jb0) this.f49688a.get(i10)).a());
        }
        return sb2.toString().getBytes(StandardCharsets.UTF_8);
    }
}

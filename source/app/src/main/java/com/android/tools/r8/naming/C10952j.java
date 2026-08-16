package com.android.tools.r8.naming;

import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.naming.V;
import java.util.Arrays;
import java.util.HashMap;

public final class C10952j implements InterfaceC10942h {

    public final String f55935a;

    public final String f55936b;

    public final E0 f55937c;

    public final AbstractC8552nC f55938d;

    public final AbstractC8552nC f55939e;

    public final AbstractC8552nC f55940f;

    public C10952j(String str, String str2, E0 e02, HashMap hashMap, HashMap hashMap2, HashMap hashMap3) {
        this.f55936b = str;
        this.f55935a = str2;
        this.f55937c = e02;
        this.f55938d = AbstractC8552nC.a(hashMap);
        this.f55939e = AbstractC8552nC.a(hashMap2);
        this.f55940f = AbstractC8552nC.a(hashMap3);
    }

    @Override
    public final V a(V.c cVar) {
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10952j)) {
            return false;
        }
        C10952j c10952j = (C10952j) obj;
        return this.f55935a.equals(c10952j.f55935a) && this.f55936b.equals(c10952j.f55936b) && this.f55938d.equals(c10952j.f55938d) && this.f55939e.equals(c10952j.f55939e) && this.f55940f.equals(c10952j.f55940f);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f55935a, this.f55936b, this.f55938d, this.f55939e, this.f55940f});
    }
}

package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C9410sM implements AQ {

    public static final C8584nQ f52342c = new C8584nQ(AbstractC9618te0.a(C9410sM.class));

    public boolean f52343a;

    public final ArrayList f52344b = new ArrayList();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!C9410sM.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        GJ.a(obj, "null cannot be cast to non-null type kotlin.metadata.jvm.internal.JvmTypeExtension");
        C9410sM c9410sM = (C9410sM) obj;
        return this.f52343a == c9410sM.f52343a && GJ.a(this.f52344b, c9410sM.f52344b);
    }

    @Override
    public final C8584nQ getType() {
        return f52342c;
    }

    public final int hashCode() {
        return this.f52344b.hashCode() + (Boolean.hashCode(this.f52343a) * 31);
    }
}

package com.android.tools.r8.internal;

public final class C4968Cc {

    public final String f39270a;

    public final String f39271b;

    public C4968Cc(String str, String str2) {
        GJ.c(str, "className");
        GJ.c(str2, "methodName");
        this.f39270a = str;
        this.f39271b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4968Cc)) {
            return false;
        }
        C4968Cc c4968Cc = (C4968Cc) obj;
        return GJ.a((Object) this.f39270a, (Object) c4968Cc.f39270a) && GJ.a((Object) this.f39271b, (Object) c4968Cc.f39271b);
    }

    public final int hashCode() {
        return this.f39271b.hashCode() + (this.f39270a.hashCode() * 31);
    }

    public final String toString() {
        return "ClassAndMethod(className=" + this.f39270a + ", methodName=" + this.f39271b + ")";
    }
}

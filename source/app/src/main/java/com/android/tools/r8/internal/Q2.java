package com.android.tools.r8.internal;

public abstract class Q2 {

    public final Q2 f43440a;

    public Q2(Q2 q22) {
        this.f43440a = q22;
    }

    public Q2 a(String str, String str2) {
        Q2 q22 = this.f43440a;
        if (q22 != null) {
            return q22.a(str, str2);
        }
        return null;
    }

    public abstract void a(Object obj, String str);

    public abstract void a(String str, String str2, String str3);

    public Q2 a(String str) {
        Q2 q22 = this.f43440a;
        if (q22 != null) {
            return q22.a(str);
        }
        return null;
    }

    public void a() {
        Q2 q22 = this.f43440a;
        if (q22 != null) {
            q22.a();
        }
    }
}

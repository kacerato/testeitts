package com.android.tools.r8.internal;

public abstract class AbstractC5632Nn0 {

    public static final boolean f42693a;

    public static final C5517Ln0 f42694b;

    public static final C5574Mn0 f42695c;

    public static final C5169Fn0 f42696d;

    public static final C5285Hn0 f42697e;

    public static final C5401Jn0 f42698f;

    static {
        boolean z10;
        try {
            Class.forName("java.sql.Date");
            z10 = true;
        } catch (ClassNotFoundException unused) {
            z10 = false;
        }
        f42693a = z10;
        if (z10) {
            f42694b = new C5517Ln0();
            f42695c = new C5574Mn0();
            f42696d = C5227Gn0.f40589b;
            f42697e = C5343In0.f41210b;
            f42698f = C5459Kn0.f41779b;
            return;
        }
        f42694b = null;
        f42695c = null;
        f42696d = null;
        f42697e = null;
        f42698f = null;
    }
}

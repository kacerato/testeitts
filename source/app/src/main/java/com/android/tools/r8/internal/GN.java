package com.android.tools.r8.internal;

public final class GN {

    public EnumC9583tP f40470a = EnumC9583tP.UNKNOWN;

    public IN f40471b = IN.f41068a;

    public JN f40472c = JN.f41385b;

    public final void a(String str) {
        this.f40472c = str.isEmpty() ? JN.f41385b : new JN(str);
    }

    public final MN a() {
        if (this.f40471b.equals(IN.f41068a) && this.f40472c.equals(JN.f41385b)) {
            return MN.f42283d;
        }
        return new MN(this.f40470a, this.f40471b, this.f40472c);
    }
}

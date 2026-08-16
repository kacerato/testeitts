package com.android.tools.r8.internal;

public final class C7407gL extends AbstractC6907dL {

    public final FS f48234b = new FS(false);

    public final void a(String str, AbstractC6907dL abstractC6907dL) {
        FS fs = this.f48234b;
        if (abstractC6907dL == null) {
            abstractC6907dL = C7240fL.f47942b;
        }
        fs.put(str, abstractC6907dL);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof C7407gL) && ((C7407gL) obj).f48234b.equals(this.f48234b);
        }
        return true;
    }

    public final int hashCode() {
        return this.f48234b.hashCode();
    }

    public final void a(String str, String str2) {
        a(str, str2 == null ? C7240fL.f47942b : new C7906jL(str2));
    }
}

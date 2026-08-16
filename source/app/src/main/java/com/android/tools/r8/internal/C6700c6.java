package com.android.tools.r8.internal;

import androidx.exifinterface.media.ExifInterface;

public final class C6700c6 implements InterfaceC10173ww0 {

    public static final C6700c6 f46964b = new C6700c6(null);

    public static final C6700c6 f46965c = new C6700c6(C9663tt0.f52718j);

    public static final C6700c6 f46966d = new C6700c6(C9663tt0.f52719k);

    public static final C6700c6 f46967e = new C6700c6(C9663tt0.f52720l);

    public static final C6700c6 f46968f = new C6700c6(C9663tt0.f52721m);

    public static final C6700c6 f46969g = new C6700c6(C9663tt0.d("java/lang/Object"));

    public static final C6700c6 f46970h = new C6700c6(C9663tt0.f52713e);

    public final C9663tt0 f46971a;

    public C6700c6(C9663tt0 c9663tt0) {
        this.f46971a = c9663tt0;
    }

    public final int a() {
        C9663tt0 c9663tt0 = this.f46971a;
        return (c9663tt0 == C9663tt0.f52720l || c9663tt0 == C9663tt0.f52721m) ? 2 : 1;
    }

    public final boolean b() {
        C9663tt0 c9663tt0 = this.f46971a;
        if (c9663tt0 != null) {
            return c9663tt0.c() == 10 || this.f46971a.c() == 9;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6700c6)) {
            return false;
        }
        C9663tt0 c9663tt0 = this.f46971a;
        return c9663tt0 == null ? ((C6700c6) obj).f46971a == null : c9663tt0.equals(((C6700c6) obj).f46971a);
    }

    public final int hashCode() {
        C9663tt0 c9663tt0 = this.f46971a;
        if (c9663tt0 == null) {
            return 0;
        }
        return c9663tt0.hashCode();
    }

    public final String toString() {
        return this == f46964b ? "." : this == f46970h ? ExifInterface.GPS_MEASUREMENT_IN_PROGRESS : this == f46969g ? "R" : this.f46971a.b();
    }
}

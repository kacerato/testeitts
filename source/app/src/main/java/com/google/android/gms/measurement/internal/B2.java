package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import vm.InterfaceC15866d;

public final class B2 extends T3 {

    public char f62548c;

    public long f62549d;

    @GuardedBy("this")
    public String f62550e;

    public final C12448z2 f62551f;

    public final C12448z2 f62552g;

    public final C12448z2 f62553h;

    public final C12448z2 f62554i;

    public final C12448z2 f62555j;

    public final C12448z2 f62556k;

    public final C12448z2 f62557l;

    public final C12448z2 f62558m;

    public final C12448z2 f62559n;

    public B2(C12370p3 c12370p3) {
        super(c12370p3);
        this.f62548c = (char) 0;
        this.f62549d = -1L;
        this.f62551f = new C12448z2(this, 6, false, false);
        this.f62552g = new C12448z2(this, 6, true, false);
        this.f62553h = new C12448z2(this, 6, false, true);
        this.f62554i = new C12448z2(this, 5, false, false);
        this.f62555j = new C12448z2(this, 5, true, false);
        this.f62556k = new C12448z2(this, 5, false, true);
        this.f62557l = new C12448z2(this, 4, false, false);
        this.f62558m = new C12448z2(this, 3, false, false);
        this.f62559n = new C12448z2(this, 2, false, false);
    }

    public static String A(boolean z10, String str, Object obj, Object obj2, Object obj3) {
        String B10 = B(z10, obj);
        String B11 = B(z10, obj2);
        String B12 = B(z10, obj3);
        StringBuilder sb2 = new StringBuilder();
        String str2 = "";
        if (str == null) {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(B10)) {
            sb2.append(str2);
            sb2.append(B10);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(B11)) {
            str3 = str2;
        } else {
            sb2.append(str2);
            sb2.append(B11);
        }
        if (!TextUtils.isEmpty(B12)) {
            sb2.append(str3);
            sb2.append(B12);
        }
        return sb2.toString();
    }

    @VisibleForTesting
    public static String B(boolean z10, Object obj) {
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i10 = 0;
        if (obj instanceof Long) {
            if (!z10) {
                return obj.toString();
            }
            Long l10 = (Long) obj;
            if (Math.abs(l10.longValue()) < 100) {
                return obj.toString();
            }
            char charAt = obj.toString().charAt(0);
            String valueOf = String.valueOf(Math.abs(l10.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            int length = String.valueOf(round).length();
            String str = charAt == '-' ? "-" : "";
            StringBuilder sb2 = new StringBuilder(str.length() + length + 3 + str.length() + String.valueOf(round2).length());
            sb2.append(str);
            sb2.append(round);
            sb2.append("...");
            sb2.append(str);
            sb2.append(round2);
            return sb2.toString();
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (!(obj instanceof Throwable)) {
            return obj instanceof A2 ? ((A2) obj).a() : z10 ? "-" : obj.toString();
        }
        Throwable th2 = (Throwable) obj;
        StringBuilder sb3 = new StringBuilder(z10 ? th2.getClass().getName() : th2.toString());
        String C10 = C(C12370p3.class.getCanonicalName());
        StackTraceElement[] stackTrace = th2.getStackTrace();
        int length2 = stackTrace.length;
        while (true) {
            if (i10 >= length2) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i10];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && C(className).equals(C10)) {
                sb3.append(": ");
                sb3.append((Object) stackTraceElement);
                break;
            }
            i10++;
        }
        return sb3.toString();
    }

    @VisibleForTesting
    public static String C(String str) {
        int lastIndexOf;
        return (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(46)) == -1) ? "" : str.substring(0, lastIndexOf);
    }

    public static Object x(String str) {
        if (str == null) {
            return null;
        }
        return new A2(str);
    }

    public final char D() {
        return this.f62548c;
    }

    public final void E(char c10) {
        this.f62548c = c10;
    }

    public final long F() {
        return this.f62549d;
    }

    public final void G(long j10) {
        this.f62549d = 130000L;
    }

    @Override
    public final boolean i() {
        return false;
    }

    public final C12448z2 o() {
        return this.f62551f;
    }

    public final C12448z2 p() {
        return this.f62552g;
    }

    public final C12448z2 q() {
        return this.f62553h;
    }

    public final C12448z2 r() {
        return this.f62554i;
    }

    public final C12448z2 s() {
        return this.f62555j;
    }

    public final C12448z2 t() {
        return this.f62556k;
    }

    public final C12448z2 u() {
        return this.f62557l;
    }

    public final C12448z2 v() {
        return this.f62558m;
    }

    public final C12448z2 w() {
        return this.f62559n;
    }

    public final void y(int i10, boolean z10, boolean z11, String str, Object obj, Object obj2, Object obj3) {
        if (!z10 && Log.isLoggable(z(), i10)) {
            Log.println(i10, z(), A(false, str, obj, obj2, obj3));
        }
        if (z11 || i10 < 5) {
            return;
        }
        G0.A.r(str);
        C12306h3 A10 = this.f62917a.A();
        if (A10 == null) {
            Log.println(6, z(), "Scheduler not set. Not logging error/warn");
        } else {
            if (!A10.k()) {
                Log.println(6, z(), "Scheduler not initialized. Not logging error/warn");
                return;
            }
            if (i10 >= 9) {
                i10 = 8;
            }
            A10.t(new RunnableC12440y2(this, i10, str, obj, obj2, obj3));
        }
    }

    @InterfaceC15866d({"logTagDoNotUseDirectly"})
    @VisibleForTesting
    public final String z() {
        String str;
        synchronized (this) {
            try {
                if (this.f62550e == null) {
                    this.f62550e = this.f62917a.w().u();
                }
                G0.A.r(this.f62550e);
                str = this.f62550e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }
}

package T0;

import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.core.os.BuildCompat;

@C0.a
public final class v {
    @ChecksSdkIntAtLeast(api = 11)
    @C0.a
    @Deprecated
    public static boolean a() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 12)
    @C0.a
    public static boolean b() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 14)
    @C0.a
    public static boolean c() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 15)
    @C0.a
    public static boolean d() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 16)
    @C0.a
    public static boolean e() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 17)
    @C0.a
    public static boolean f() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 18)
    @C0.a
    public static boolean g() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 19)
    @C0.a
    public static boolean h() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 20)
    @C0.a
    public static boolean i() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 21)
    @C0.a
    public static boolean j() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 22)
    @C0.a
    public static boolean k() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 23)
    @C0.a
    public static boolean l() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 24)
    @C0.a
    public static boolean m() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 26)
    @C0.a
    public static boolean n() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 28)
    @C0.a
    public static boolean o() {
        return Build.VERSION.SDK_INT >= 28;
    }

    @ChecksSdkIntAtLeast(api = 29)
    @C0.a
    public static boolean p() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @ChecksSdkIntAtLeast(api = 30)
    @C0.a
    public static boolean q() {
        return Build.VERSION.SDK_INT >= 30;
    }

    @ChecksSdkIntAtLeast(api = 31)
    @C0.a
    public static boolean r() {
        return Build.VERSION.SDK_INT >= 31;
    }

    @ChecksSdkIntAtLeast(api = 32)
    @C0.a
    public static boolean s() {
        return Build.VERSION.SDK_INT >= 32;
    }

    @ChecksSdkIntAtLeast(api = 33)
    @C0.a
    public static boolean t() {
        return Build.VERSION.SDK_INT >= 33;
    }

    @ChecksSdkIntAtLeast(api = 34)
    @C0.a
    public static boolean u() {
        return Build.VERSION.SDK_INT >= 34;
    }

    @ChecksSdkIntAtLeast(api = 35, codename = "VanillaIceCream")
    @C0.a
    public static boolean v() {
        if (u()) {
            return BuildCompat.isAtLeastV();
        }
        return false;
    }
}

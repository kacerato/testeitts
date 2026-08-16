package N7;

import android.app.Activity;
import android.content.Context;

public class f {

    public static e f15783a;

    public static Activity a() {
        return f15783a.a();
    }

    public static Context b() {
        return f15783a.getContext();
    }

    public static boolean c() {
        return f15783a != null;
    }

    public static boolean d() {
        return f15783a.d();
    }

    public static void e(Runnable runnable) {
        f15783a.e(runnable);
    }

    public static void f(e pageToMainListener) {
        f15783a = pageToMainListener;
    }

    public static void g() {
        f15783a = null;
    }
}

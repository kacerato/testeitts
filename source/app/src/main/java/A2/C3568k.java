package a2;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.internal.A;

public class C3568k {
    @NonNull
    public static C3562e a(int i10) {
        return i10 != 0 ? i10 != 1 ? b() : new C3563f() : new C3571n();
    }

    @NonNull
    public static C3562e b() {
        return new C3571n();
    }

    @NonNull
    public static C3564g c() {
        return new C3564g();
    }

    public static void d(@NonNull View view, float f10) {
        Drawable background = view.getBackground();
        if (background instanceof C3567j) {
            ((C3567j) background).m0(f10);
        }
    }

    public static void e(@NonNull View view) {
        Drawable background = view.getBackground();
        if (background instanceof C3567j) {
            f(view, (C3567j) background);
        }
    }

    public static void f(@NonNull View view, @NonNull C3567j c3567j) {
        if (c3567j.a0()) {
            c3567j.r0(A.i(view));
        }
    }
}

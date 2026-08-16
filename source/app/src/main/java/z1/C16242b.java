package z1;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.internal.k;
import com.google.android.material.internal.t;
import w1.C15879a;
import z1.C16241a;

@InterfaceC16243c
public class C16242b {

    public static final boolean f130582a = false;

    public static final String f130583b = "BadgeUtils";

    public static class a implements Runnable {

        public final Toolbar f130584b;

        public final int f130585c;

        public final C16241a f130586d;

        public final FrameLayout f130587e;

        public a(Toolbar toolbar, int i10, C16241a c16241a, FrameLayout frameLayout) {
            this.f130584b = toolbar;
            this.f130585c = i10;
            this.f130586d = c16241a;
            this.f130587e = frameLayout;
        }

        @Override
        public void run() {
            ActionMenuItemView a10 = t.a(this.f130584b, this.f130585c);
            if (a10 != null) {
                C16242b.k(this.f130586d, this.f130584b.getResources());
                C16242b.b(this.f130586d, a10, this.f130587e);
            }
        }
    }

    public static void a(@NonNull C16241a c16241a, @NonNull View view) {
        b(c16241a, view, null);
    }

    public static void b(@NonNull C16241a c16241a, @NonNull View view, @Nullable FrameLayout frameLayout) {
        j(c16241a, view, frameLayout);
        if (c16241a.p() != null) {
            c16241a.p().setForeground(c16241a);
        } else {
            if (f130582a) {
                throw new IllegalArgumentException("Trying to reference null customBadgeParent");
            }
            view.getOverlay().add(c16241a);
        }
    }

    public static void c(@NonNull C16241a c16241a, @NonNull Toolbar toolbar, @IdRes int i10) {
        d(c16241a, toolbar, i10, null);
    }

    public static void d(@NonNull C16241a c16241a, @NonNull Toolbar toolbar, @IdRes int i10, @Nullable FrameLayout frameLayout) {
        toolbar.post(new a(toolbar, i10, c16241a, frameLayout));
    }

    @NonNull
    public static SparseArray<C16241a> e(Context context, @NonNull k kVar) {
        SparseArray<C16241a> sparseArray = new SparseArray<>(kVar.size());
        for (int i10 = 0; i10 < kVar.size(); i10++) {
            int keyAt = kVar.keyAt(i10);
            C16241a.c cVar = (C16241a.c) kVar.valueAt(i10);
            if (cVar == null) {
                throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
            }
            sparseArray.put(keyAt, C16241a.g(context, cVar));
        }
        return sparseArray;
    }

    @NonNull
    public static k f(@NonNull SparseArray<C16241a> sparseArray) {
        k kVar = new k();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            int keyAt = sparseArray.keyAt(i10);
            C16241a valueAt = sparseArray.valueAt(i10);
            if (valueAt == null) {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
            kVar.put(keyAt, valueAt.v());
        }
        return kVar;
    }

    public static void g(@Nullable C16241a c16241a, @NonNull View view) {
        if (c16241a == null) {
            return;
        }
        if (f130582a || c16241a.p() != null) {
            c16241a.p().setForeground(null);
        } else {
            view.getOverlay().remove(c16241a);
        }
    }

    public static void h(@Nullable C16241a c16241a, @NonNull Toolbar toolbar, @IdRes int i10) {
        if (c16241a == null) {
            return;
        }
        ActionMenuItemView a10 = t.a(toolbar, i10);
        if (a10 != null) {
            i(c16241a);
            g(c16241a, a10);
        } else {
            Log.w(f130583b, "Trying to remove badge from a null menuItemView: " + i10);
        }
    }

    @VisibleForTesting
    public static void i(C16241a c16241a) {
        c16241a.F(0);
        c16241a.G(0);
    }

    public static void j(@NonNull C16241a c16241a, @NonNull View view, @Nullable FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        c16241a.setBounds(rect);
        c16241a.c0(view, frameLayout);
    }

    @VisibleForTesting
    public static void k(C16241a c16241a, Resources resources) {
        c16241a.F(resources.getDimensionPixelOffset(C15879a.f.f123113T2));
        c16241a.G(resources.getDimensionPixelOffset(C15879a.f.f123121U2));
    }

    public static void l(@NonNull Rect rect, float f10, float f11, float f12, float f13) {
        rect.set((int) (f10 - f12), (int) (f11 - f13), (int) (f10 + f12), (int) (f11 + f13));
    }
}

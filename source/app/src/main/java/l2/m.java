package l2;

import a2.C3572o;
import a2.InterfaceC3576s;
import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.transition.Transition;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import com.google.android.material.internal.C12454b;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import w1.C15879a;

@RequiresApi(21)
public class m extends SharedElementCallback {

    @Nullable
    public static WeakReference<View> f96055f;

    @Nullable
    public Rect f96059d;

    public boolean f96056a = true;

    public boolean f96057b = true;

    public boolean f96058c = false;

    @Nullable
    public d f96060e = new e();

    public class a extends u {

        public final Window f96061a;

        public a(Window window) {
            this.f96061a = window;
        }

        @Override
        public void onTransitionEnd(Transition transition) {
            m.i(this.f96061a);
        }

        @Override
        public void onTransitionStart(Transition transition) {
            m.h(this.f96061a);
        }
    }

    public class b extends u {

        public final Activity f96063a;

        public b(Activity activity) {
            this.f96063a = activity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onTransitionEnd(Transition transition) {
            View view;
            if (m.f96055f != null && (view = (View) m.f96055f.get()) != null) {
                view.setAlpha(1.0f);
                WeakReference unused = m.f96055f = null;
            }
            this.f96063a.finish();
            this.f96063a.overridePendingTransition(0, 0);
        }
    }

    public class c extends u {

        public final Window f96065a;

        public c(Window window) {
            this.f96065a = window;
        }

        @Override
        public void onTransitionStart(Transition transition) {
            m.h(this.f96065a);
        }
    }

    public interface d {
        @Nullable
        C3572o a(@NonNull View view);
    }

    public static class e implements d {
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        @Nullable
        public C3572o a(@NonNull View view) {
            if (view instanceof InterfaceC3576s) {
                return ((InterfaceC3576s) view).getShapeAppearanceModel();
            }
            return null;
        }
    }

    public static void h(Window window) {
        window.getDecorView().getBackground().mutate().setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(0, BlendModeCompat.CLEAR));
    }

    public static void i(Window window) {
        window.getDecorView().getBackground().mutate().clearColorFilter();
    }

    public static void o(Window window, l lVar) {
        if (lVar.getDuration() >= 0) {
            window.setTransitionBackgroundFadeDuration(lVar.getDuration());
        }
    }

    @Nullable
    public d e() {
        return this.f96060e;
    }

    public boolean f() {
        return this.f96058c;
    }

    public boolean g() {
        return this.f96057b;
    }

    public void j(@Nullable d dVar) {
        this.f96060e = dVar;
    }

    public void k(boolean z10) {
        this.f96058c = z10;
    }

    public void l(boolean z10) {
        this.f96057b = z10;
    }

    public final void m(Window window) {
        Transition sharedElementEnterTransition = window.getSharedElementEnterTransition();
        if (sharedElementEnterTransition instanceof l) {
            l lVar = (l) sharedElementEnterTransition;
            if (!this.f96058c) {
                window.setSharedElementReenterTransition(null);
            }
            if (this.f96057b) {
                o(window, lVar);
                lVar.addListener(new a(window));
            }
        }
    }

    public final void n(Activity activity, Window window) {
        Transition sharedElementReturnTransition = window.getSharedElementReturnTransition();
        if (sharedElementReturnTransition instanceof l) {
            l lVar = (l) sharedElementReturnTransition;
            lVar.V(true);
            lVar.addListener(new b(activity));
            if (this.f96057b) {
                o(window, lVar);
                lVar.addListener(new c(window));
            }
        }
    }

    @Override
    @Nullable
    public Parcelable onCaptureSharedElementSnapshot(@NonNull View view, @NonNull Matrix matrix, @NonNull RectF rectF) {
        f96055f = new WeakReference<>(view);
        return super.onCaptureSharedElementSnapshot(view, matrix, rectF);
    }

    @Override
    @Nullable
    public View onCreateSnapshotView(@NonNull Context context, @Nullable Parcelable parcelable) {
        WeakReference<View> weakReference;
        View view;
        C3572o a10;
        View onCreateSnapshotView = super.onCreateSnapshotView(context, parcelable);
        if (onCreateSnapshotView != null && (weakReference = f96055f) != null && this.f96060e != null && (view = weakReference.get()) != null && (a10 = this.f96060e.a(view)) != null) {
            onCreateSnapshotView.setTag(C15879a.h.f123726e3, a10);
        }
        return onCreateSnapshotView;
    }

    @Override
    public void onMapSharedElements(@NonNull List<String> list, @NonNull Map<String, View> map) {
        View view;
        Activity a10;
        if (list.isEmpty() || map.isEmpty() || (view = map.get(list.get(0))) == null || (a10 = C12454b.a(view.getContext())) == null) {
            return;
        }
        Window window = a10.getWindow();
        if (this.f96056a) {
            m(window);
        } else {
            n(a10, window);
        }
    }

    @Override
    public void onSharedElementEnd(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty()) {
            View view = list2.get(0);
            int i10 = C15879a.h.f123726e3;
            if (view.getTag(i10) instanceof View) {
                list2.get(0).setTag(i10, null);
            }
        }
        if (!this.f96056a && !list2.isEmpty()) {
            this.f96059d = v.i(list2.get(0));
        }
        this.f96056a = false;
    }

    @Override
    public void onSharedElementStart(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty() && !list3.isEmpty()) {
            list2.get(0).setTag(C15879a.h.f123726e3, list3.get(0));
        }
        if (this.f96056a || list2.isEmpty() || this.f96059d == null) {
            return;
        }
        View view = list2.get(0);
        view.measure(View.MeasureSpec.makeMeasureSpec(this.f96059d.width(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f96059d.height(), 1073741824));
        Rect rect = this.f96059d;
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
    }
}

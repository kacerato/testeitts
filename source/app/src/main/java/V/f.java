package V;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class f<T extends View, Z> implements p<Z> {

    public static final String f26371g = "CustomViewTarget";

    @IdRes
    public static final int f26372h = i.e.f58958l;

    public final b f26373b;

    public final T f26374c;

    @Nullable
    public View.OnAttachStateChangeListener f26375d;

    public boolean f26376e;

    public boolean f26377f;

    public class a implements View.OnAttachStateChangeListener {
        public a() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            f.this.r();
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            f.this.q();
        }
    }

    @VisibleForTesting
    public static final class b {

        public static final int f26379e = 0;

        @Nullable
        @VisibleForTesting
        public static Integer f26380f;

        public final View f26381a;

        public final List<o> f26382b = new ArrayList();

        public boolean f26383c;

        @Nullable
        public a f26384d;

        public static final class a implements ViewTreeObserver.OnPreDrawListener {

            public final WeakReference<b> f26385b;

            public a(@NonNull b bVar) {
                this.f26385b = new WeakReference<>(bVar);
            }

            @Override
            public boolean onPreDraw() {
                if (Log.isLoggable(f.f26371g, 2)) {
                    Log.v(f.f26371g, "OnGlobalLayoutListener called attachStateListener=" + ((Object) this));
                }
                b bVar = this.f26385b.get();
                if (bVar == null) {
                    return true;
                }
                bVar.a();
                return true;
            }
        }

        public b(@NonNull View view) {
            this.f26381a = view;
        }

        public static int c(@NonNull Context context) {
            if (f26380f == null) {
                Display defaultDisplay = ((WindowManager) Y.k.d((WindowManager) context.getSystemService(Context.WINDOW_SERVICE))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f26380f = Integer.valueOf(Math.max(point.f32423x, point.f32424y));
            }
            return f26380f.intValue();
        }

        public void a() {
            if (this.f26382b.isEmpty()) {
                return;
            }
            int g10 = g();
            int f10 = f();
            if (i(g10, f10)) {
                j(g10, f10);
                b();
            }
        }

        public void b() {
            ViewTreeObserver viewTreeObserver = this.f26381a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f26384d);
            }
            this.f26384d = null;
            this.f26382b.clear();
        }

        public void d(@NonNull o oVar) {
            int g10 = g();
            int f10 = f();
            if (i(g10, f10)) {
                oVar.d(g10, f10);
                return;
            }
            if (!this.f26382b.contains(oVar)) {
                this.f26382b.add(oVar);
            }
            if (this.f26384d == null) {
                ViewTreeObserver viewTreeObserver = this.f26381a.getViewTreeObserver();
                a aVar = new a(this);
                this.f26384d = aVar;
                viewTreeObserver.addOnPreDrawListener(aVar);
            }
        }

        public final int e(int i10, int i11, int i12) {
            int i13 = i11 - i12;
            if (i13 > 0) {
                return i13;
            }
            if (this.f26383c && this.f26381a.isLayoutRequested()) {
                return 0;
            }
            int i14 = i10 - i12;
            if (i14 > 0) {
                return i14;
            }
            if (this.f26381a.isLayoutRequested() || i11 != -2) {
                return 0;
            }
            if (Log.isLoggable(f.f26371g, 4)) {
                Log.i(f.f26371g, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return c(this.f26381a.getContext());
        }

        public final int f() {
            int paddingTop = this.f26381a.getPaddingTop() + this.f26381a.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f26381a.getLayoutParams();
            return e(this.f26381a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        public final int g() {
            int paddingLeft = this.f26381a.getPaddingLeft() + this.f26381a.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f26381a.getLayoutParams();
            return e(this.f26381a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        public final boolean h(int i10) {
            return i10 > 0 || i10 == Integer.MIN_VALUE;
        }

        public final boolean i(int i10, int i11) {
            return h(i10) && h(i11);
        }

        public final void j(int i10, int i11) {
            Iterator it = new ArrayList(this.f26382b).iterator();
            while (it.hasNext()) {
                ((o) it.next()).d(i10, i11);
            }
        }

        public void k(@NonNull o oVar) {
            this.f26382b.remove(oVar);
        }
    }

    public f(@NonNull T t10) {
        this.f26374c = (T) Y.k.d(t10);
        this.f26373b = new b(t10);
    }

    @Nullable
    private Object e() {
        return this.f26374c.getTag(f26372h);
    }

    private void l() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f26375d;
        if (onAttachStateChangeListener == null || this.f26377f) {
            return;
        }
        this.f26374c.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f26377f = true;
    }

    private void n() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f26375d;
        if (onAttachStateChangeListener == null || !this.f26377f) {
            return;
        }
        this.f26374c.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f26377f = false;
    }

    private void s(@Nullable Object obj) {
        this.f26374c.setTag(f26372h, obj);
    }

    @Override
    public final void a(@NonNull o oVar) {
        this.f26373b.k(oVar);
    }

    @Override
    public void b() {
    }

    @Override
    public void c() {
    }

    @NonNull
    public final f<T, Z> d() {
        if (this.f26375d != null) {
            return this;
        }
        this.f26375d = new a();
        l();
        return this;
    }

    @Override
    public final void f(@Nullable Drawable drawable) {
        this.f26373b.b();
        o(drawable);
        if (this.f26376e) {
            return;
        }
        n();
    }

    @Override
    public final void g(@Nullable U.d dVar) {
        s(dVar);
    }

    @Override
    @Nullable
    public final U.d getRequest() {
        Object e10 = e();
        if (e10 == null) {
            return null;
        }
        if (e10 instanceof U.d) {
            return (U.d) e10;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override
    public final void i(@NonNull o oVar) {
        this.f26373b.d(oVar);
    }

    @NonNull
    public final T j() {
        return this.f26374c;
    }

    @Override
    public final void k(@Nullable Drawable drawable) {
        l();
        p(drawable);
    }

    public abstract void o(@Nullable Drawable drawable);

    @Override
    public void onStart() {
    }

    public void p(@Nullable Drawable drawable) {
    }

    public final void q() {
        U.d request = getRequest();
        if (request != null) {
            this.f26376e = true;
            request.clear();
            this.f26376e = false;
        }
    }

    public final void r() {
        U.d request = getRequest();
        if (request == null || !request.e()) {
            return;
        }
        request.j();
    }

    @Deprecated
    public final f<T, Z> t(@IdRes int i10) {
        return this;
    }

    public String toString() {
        return "Target for: " + ((Object) this.f26374c);
    }

    @NonNull
    public final f<T, Z> u() {
        this.f26373b.f26383c = true;
        return this;
    }
}

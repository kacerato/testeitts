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
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Deprecated
public abstract class r<T extends View, Z> extends V.b<Z> {

    public static final String f26408h = "ViewTarget";

    public static boolean f26409i;

    public static int f26410j = i.e.f58958l;

    public final T f26411c;

    public final b f26412d;

    @Nullable
    public View.OnAttachStateChangeListener f26413e;

    public boolean f26414f;

    public boolean f26415g;

    public class a implements View.OnAttachStateChangeListener {
        public a() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            r.this.r();
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            r.this.q();
        }
    }

    @VisibleForTesting
    public static final class b {

        public static final int f26417e = 0;

        @Nullable
        @VisibleForTesting
        public static Integer f26418f;

        public final View f26419a;

        public final List<o> f26420b = new ArrayList();

        public boolean f26421c;

        @Nullable
        public a f26422d;

        public static final class a implements ViewTreeObserver.OnPreDrawListener {

            public final WeakReference<b> f26423b;

            public a(@NonNull b bVar) {
                this.f26423b = new WeakReference<>(bVar);
            }

            @Override
            public boolean onPreDraw() {
                if (Log.isLoggable(r.f26408h, 2)) {
                    Log.v(r.f26408h, "OnGlobalLayoutListener called attachStateListener=" + ((Object) this));
                }
                b bVar = this.f26423b.get();
                if (bVar == null) {
                    return true;
                }
                bVar.a();
                return true;
            }
        }

        public b(@NonNull View view) {
            this.f26419a = view;
        }

        public static int c(@NonNull Context context) {
            if (f26418f == null) {
                Display defaultDisplay = ((WindowManager) Y.k.d((WindowManager) context.getSystemService(Context.WINDOW_SERVICE))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f26418f = Integer.valueOf(Math.max(point.f32423x, point.f32424y));
            }
            return f26418f.intValue();
        }

        public void a() {
            if (this.f26420b.isEmpty()) {
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
            ViewTreeObserver viewTreeObserver = this.f26419a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f26422d);
            }
            this.f26422d = null;
            this.f26420b.clear();
        }

        public void d(@NonNull o oVar) {
            int g10 = g();
            int f10 = f();
            if (i(g10, f10)) {
                oVar.d(g10, f10);
                return;
            }
            if (!this.f26420b.contains(oVar)) {
                this.f26420b.add(oVar);
            }
            if (this.f26422d == null) {
                ViewTreeObserver viewTreeObserver = this.f26419a.getViewTreeObserver();
                a aVar = new a(this);
                this.f26422d = aVar;
                viewTreeObserver.addOnPreDrawListener(aVar);
            }
        }

        public final int e(int i10, int i11, int i12) {
            int i13 = i11 - i12;
            if (i13 > 0) {
                return i13;
            }
            if (this.f26421c && this.f26419a.isLayoutRequested()) {
                return 0;
            }
            int i14 = i10 - i12;
            if (i14 > 0) {
                return i14;
            }
            if (this.f26419a.isLayoutRequested() || i11 != -2) {
                return 0;
            }
            if (Log.isLoggable(r.f26408h, 4)) {
                Log.i(r.f26408h, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return c(this.f26419a.getContext());
        }

        public final int f() {
            int paddingTop = this.f26419a.getPaddingTop() + this.f26419a.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f26419a.getLayoutParams();
            return e(this.f26419a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        public final int g() {
            int paddingLeft = this.f26419a.getPaddingLeft() + this.f26419a.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f26419a.getLayoutParams();
            return e(this.f26419a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        public final boolean h(int i10) {
            return i10 > 0 || i10 == Integer.MIN_VALUE;
        }

        public final boolean i(int i10, int i11) {
            return h(i10) && h(i11);
        }

        public final void j(int i10, int i11) {
            Iterator it = new ArrayList(this.f26420b).iterator();
            while (it.hasNext()) {
                ((o) it.next()).d(i10, i11);
            }
        }

        public void k(@NonNull o oVar) {
            this.f26420b.remove(oVar);
        }
    }

    public r(@NonNull T t10) {
        this.f26411c = (T) Y.k.d(t10);
        this.f26412d = new b(t10);
    }

    @Deprecated
    public static void t(int i10) {
        if (f26409i) {
            throw new IllegalArgumentException("You cannot set the tag id more than once or change the tag id after the first request has been made");
        }
        f26410j = i10;
    }

    @Override
    @CallSuper
    public void a(@NonNull o oVar) {
        this.f26412d.k(oVar);
    }

    @NonNull
    public T d() {
        return this.f26411c;
    }

    @Override
    @CallSuper
    public void f(@Nullable Drawable drawable) {
        super.f(drawable);
        this.f26412d.b();
        if (this.f26414f) {
            return;
        }
        p();
    }

    @Override
    public void g(@Nullable U.d dVar) {
        s(dVar);
    }

    @Override
    @Nullable
    public U.d getRequest() {
        Object n10 = n();
        if (n10 == null) {
            return null;
        }
        if (n10 instanceof U.d) {
            return (U.d) n10;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override
    @CallSuper
    public void i(@NonNull o oVar) {
        this.f26412d.d(oVar);
    }

    @Override
    @CallSuper
    public void k(@Nullable Drawable drawable) {
        super.k(drawable);
        o();
    }

    @NonNull
    public final r<T, Z> l() {
        if (this.f26413e != null) {
            return this;
        }
        this.f26413e = new a();
        o();
        return this;
    }

    @Nullable
    public final Object n() {
        return this.f26411c.getTag(f26410j);
    }

    public final void o() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f26413e;
        if (onAttachStateChangeListener == null || this.f26415g) {
            return;
        }
        this.f26411c.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f26415g = true;
    }

    public final void p() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f26413e;
        if (onAttachStateChangeListener == null || !this.f26415g) {
            return;
        }
        this.f26411c.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f26415g = false;
    }

    public void q() {
        U.d request = getRequest();
        if (request != null) {
            this.f26414f = true;
            request.clear();
            this.f26414f = false;
        }
    }

    public void r() {
        U.d request = getRequest();
        if (request == null || !request.e()) {
            return;
        }
        request.j();
    }

    public final void s(@Nullable Object obj) {
        f26409i = true;
        this.f26411c.setTag(f26410j, obj);
    }

    public String toString() {
        return "Target for: " + ((Object) this.f26411c);
    }

    @NonNull
    public final r<T, Z> u() {
        this.f26412d.f26421c = true;
        return this;
    }

    @Deprecated
    public r(@NonNull T t10, boolean z10) {
        this(t10);
        if (z10) {
            u();
        }
    }
}

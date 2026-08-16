package y1;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;

public abstract class AbstractC16133a<V extends View> extends c<V> {

    public static final int f129896k = -1;

    @Nullable
    public Runnable f129897d;

    public OverScroller f129898e;

    public boolean f129899f;

    public int f129900g;

    public int f129901h;

    public int f129902i;

    @Nullable
    public VelocityTracker f129903j;

    public class RunnableC2208a implements Runnable {

        public final CoordinatorLayout f129904b;

        public final V f129905c;

        public RunnableC2208a(CoordinatorLayout coordinatorLayout, V v10) {
            this.f129904b = coordinatorLayout;
            this.f129905c = v10;
        }

        @Override
        public void run() {
            OverScroller overScroller;
            if (this.f129905c == null || (overScroller = AbstractC16133a.this.f129898e) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                AbstractC16133a.this.p(this.f129904b, this.f129905c);
                return;
            }
            AbstractC16133a abstractC16133a = AbstractC16133a.this;
            abstractC16133a.r(this.f129904b, this.f129905c, abstractC16133a.f129898e.getCurrY());
            ViewCompat.postOnAnimation(this.f129905c, this);
        }
    }

    public AbstractC16133a() {
        this.f129900g = -1;
        this.f129902i = -1;
    }

    public boolean j(V v10) {
        return false;
    }

    public final void k() {
        if (this.f129903j == null) {
            this.f129903j = VelocityTracker.obtain();
        }
    }

    public final boolean l(CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10, int i11, float f10) {
        Runnable runnable = this.f129897d;
        if (runnable != null) {
            v10.removeCallbacks(runnable);
            this.f129897d = null;
        }
        if (this.f129898e == null) {
            this.f129898e = new OverScroller(v10.getContext());
        }
        this.f129898e.fling(0, b(), 0, Math.round(f10), 0, 0, i10, i11);
        if (!this.f129898e.computeScrollOffset()) {
            p(coordinatorLayout, v10);
            return false;
        }
        RunnableC2208a runnableC2208a = new RunnableC2208a(coordinatorLayout, v10);
        this.f129897d = runnableC2208a;
        ViewCompat.postOnAnimation(v10, runnableC2208a);
        return true;
    }

    public int m(@NonNull V v10) {
        return -v10.getHeight();
    }

    public int n(@NonNull V v10) {
        return v10.getHeight();
    }

    public int o() {
        return b();
    }

    @Override
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f129902i < 0) {
            this.f129902i = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f129899f) {
            int i10 = this.f129900g;
            if (i10 == -1 || (findPointerIndex = motionEvent.findPointerIndex(i10)) == -1) {
                return false;
            }
            int y10 = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y10 - this.f129901h) > this.f129902i) {
                this.f129901h = y10;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f129900g = -1;
            int x10 = (int) motionEvent.getX();
            int y11 = (int) motionEvent.getY();
            boolean z10 = j(v10) && coordinatorLayout.isPointInChildBounds(v10, x10, y11);
            this.f129899f = z10;
            if (z10) {
                this.f129901h = y11;
                this.f129900g = motionEvent.getPointerId(0);
                k();
                OverScroller overScroller = this.f129898e;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f129898e.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f129903j;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull MotionEvent motionEvent) {
        boolean z10;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f129900g);
                if (findPointerIndex == -1) {
                    return false;
                }
                int y10 = (int) motionEvent.getY(findPointerIndex);
                int i10 = this.f129901h - y10;
                this.f129901h = y10;
                q(coordinatorLayout, v10, i10, m(v10), 0);
            } else if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int i11 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                    this.f129900g = motionEvent.getPointerId(i11);
                    this.f129901h = (int) (motionEvent.getY(i11) + 0.5f);
                }
            }
            z10 = false;
            velocityTracker2 = this.f129903j;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return !this.f129899f || z10;
        }
        VelocityTracker velocityTracker3 = this.f129903j;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
            this.f129903j.computeCurrentVelocity(1000);
            l(coordinatorLayout, v10, -n(v10), 0, this.f129903j.getYVelocity(this.f129900g));
            z10 = true;
            this.f129899f = false;
            this.f129900g = -1;
            velocityTracker = this.f129903j;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f129903j = null;
            }
            velocityTracker2 = this.f129903j;
            if (velocityTracker2 != null) {
            }
            if (this.f129899f) {
                return true;
            }
        }
        z10 = false;
        this.f129899f = false;
        this.f129900g = -1;
        velocityTracker = this.f129903j;
        if (velocityTracker != null) {
        }
        velocityTracker2 = this.f129903j;
        if (velocityTracker2 != null) {
        }
        if (this.f129899f) {
        }
    }

    public void p(CoordinatorLayout coordinatorLayout, V v10) {
    }

    public final int q(CoordinatorLayout coordinatorLayout, V v10, int i10, int i11, int i12) {
        return s(coordinatorLayout, v10, o() - i10, i11, i12);
    }

    public int r(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        return s(coordinatorLayout, v10, i10, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public int s(CoordinatorLayout coordinatorLayout, V v10, int i10, int i11, int i12) {
        int clamp;
        int b10 = b();
        if (i11 == 0 || b10 < i11 || b10 > i12 || b10 == (clamp = MathUtils.clamp(i10, i11, i12))) {
            return 0;
        }
        h(clamp);
        return b10 - clamp;
    }

    public AbstractC16133a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f129900g = -1;
        this.f129902i = -1;
    }
}

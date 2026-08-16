package org.blacksquircle.ui.editorkit.widget.internal;

import F6.c;
import Lf.k;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView;
import com.itsmagic.engine2.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class ScrollableEditText extends AppCompatMultiAutoCompleteTextView {
    private boolean horizontallyScrollable;
    private final float maximumVelocity;

    @NotNull
    private final List<OnScrollChangedListener> scrollListeners;

    @NotNull
    private final OverScroller textScroller;

    @Nullable
    private VelocityTracker velocityTracker;

    public interface OnScrollChangedListener {
        void onScrollChanged(int i10, int i11, int i12, int i13);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public ScrollableEditText(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void initVelocityTrackerIfNotExists() {
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
    }

    private final void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
        }
        this.velocityTracker = null;
    }

    public final void abortFling() {
        if (!this.textScroller.isFinished()) {
            this.textScroller.abortAnimation();
        }
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
    }

    public final void addOnScrollChangedListener(@NotNull OnScrollChangedListener listener) {
        M.p(listener, "listener");
        this.scrollListeners.add(listener);
    }

    @Override
    public void computeScroll() {
        if (this.textScroller.computeScrollOffset()) {
            int currX = this.textScroller.getCurrX();
            int currY = this.textScroller.getCurrY();
            if (currY >= 0) {
                scrollTo(currX, currY);
            } else if (getScrollY() - Math.abs(currY) > 0) {
                scrollTo(currX, currY);
            }
            postInvalidate();
        }
    }

    public final boolean isHorizontallyScrollableCompat() {
        return this.horizontallyScrollable;
    }

    @Override
    public void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        Iterator<OnScrollChangedListener> it = this.scrollListeners.iterator();
        while (it.hasNext()) {
            it.next().onScrollChanged(i10, i11, i12, i13);
        }
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        Iterator<OnScrollChangedListener> it = this.scrollListeners.iterator();
        while (it.hasNext()) {
            it.next().onScrollChanged(getScrollX(), getScrollY(), getScrollX(), getScrollY());
        }
    }

    @Override
    @c
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        M.p(event, "event");
        initVelocityTrackerIfNotExists();
        int action = event.getAction();
        if (action == 0) {
            abortFling();
        } else if (action == 1) {
            VelocityTracker velocityTracker3 = this.velocityTracker;
            if (velocityTracker3 != null) {
                velocityTracker3.computeCurrentVelocity(1000, this.maximumVelocity);
            }
            int xVelocity = (!isHorizontallyScrollableCompat() || (velocityTracker = this.velocityTracker) == null) ? 0 : (int) velocityTracker.getXVelocity();
            VelocityTracker velocityTracker4 = this.velocityTracker;
            int yVelocity = velocityTracker4 != null ? (int) velocityTracker4.getYVelocity() : 0;
            if (Math.abs(yVelocity) < 0 || Math.abs(xVelocity) < 0) {
                recycleVelocityTracker();
            } else if (xVelocity != 0 || yVelocity != 0) {
                try {
                    if (getLayout() != null) {
                        this.textScroller.fling(getScrollX(), getScrollY(), -xVelocity, -yVelocity, 0, (getLayout().getWidth() - getWidth()) + getPaddingStart() + getPaddingEnd(), 0, (getLayout().getHeight() - getHeight()) + getPaddingTop() + getPaddingBottom());
                    }
                } catch (Error e10) {
                    e10.printStackTrace();
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        } else if (action == 2 && (velocityTracker2 = this.velocityTracker) != null) {
            velocityTracker2.addMovement(event);
        }
        try {
            return super.onTouchEvent(event);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    public final void removeOnScrollChangedListener(@NotNull OnScrollChangedListener listener) {
        M.p(listener, "listener");
        this.scrollListeners.remove(listener);
    }

    @Override
    public void setHorizontallyScrolling(boolean z10) {
        super.setHorizontallyScrolling(z10);
        this.horizontallyScrollable = z10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public ScrollableEditText(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @k
    public ScrollableEditText(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.textScroller = new OverScroller(context);
        this.scrollListeners = new ArrayList();
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public ScrollableEditText(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? R.attr.autoCompleteTextViewStyle : i10);
    }
}

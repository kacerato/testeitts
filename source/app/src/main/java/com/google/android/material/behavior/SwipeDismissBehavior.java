package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;

public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    public static final int f63872k = 0;

    public static final int f63873l = 1;

    public static final int f63874m = 2;

    public static final int f63875n = 0;

    public static final int f63876o = 1;

    public static final int f63877p = 2;

    public static final float f63878q = 0.5f;

    public static final float f63879r = 0.0f;

    public static final float f63880s = 0.5f;

    public ViewDragHelper f63881a;

    public c f63882b;

    public boolean f63883c;

    public boolean f63885e;

    public float f63884d = 0.0f;

    public int f63886f = 2;

    public float f63887g = 0.5f;

    public float f63888h = 0.0f;

    public float f63889i = 0.5f;

    public final ViewDragHelper.Callback f63890j = new a();

    public class a extends ViewDragHelper.Callback {

        public static final int f63891d = -1;

        public int f63892a;

        public int f63893b = -1;

        public a() {
        }

        public final boolean a(@NonNull View view, float f10) {
            if (f10 == 0.0f) {
                return Math.abs(view.getLeft() - this.f63892a) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f63887g);
            }
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int i10 = SwipeDismissBehavior.this.f63886f;
            if (i10 == 2) {
                return true;
            }
            if (i10 == 0) {
                if (z10) {
                    if (f10 >= 0.0f) {
                        return false;
                    }
                } else if (f10 <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            if (z10) {
                if (f10 <= 0.0f) {
                    return false;
                }
            } else if (f10 >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override
        public int clampViewPositionHorizontal(@NonNull View view, int i10, int i11) {
            int width;
            int width2;
            int width3;
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int i12 = SwipeDismissBehavior.this.f63886f;
            if (i12 == 0) {
                if (z10) {
                    width = this.f63892a - view.getWidth();
                    width2 = this.f63892a;
                } else {
                    width = this.f63892a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i12 != 1) {
                width = this.f63892a - view.getWidth();
                width2 = view.getWidth() + this.f63892a;
            } else if (z10) {
                width = this.f63892a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f63892a - view.getWidth();
                width2 = this.f63892a;
            }
            return SwipeDismissBehavior.c(width, i10, width2);
        }

        @Override
        public int clampViewPositionVertical(@NonNull View view, int i10, int i11) {
            return view.getTop();
        }

        @Override
        public int getViewHorizontalDragRange(@NonNull View view) {
            return view.getWidth();
        }

        @Override
        public void onViewCaptured(@NonNull View view, int i10) {
            this.f63893b = i10;
            this.f63892a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override
        public void onViewDragStateChanged(int i10) {
            c cVar = SwipeDismissBehavior.this.f63882b;
            if (cVar != null) {
                cVar.b(i10);
            }
        }

        @Override
        public void onViewPositionChanged(@NonNull View view, int i10, int i11, int i12, int i13) {
            float width = this.f63892a + (view.getWidth() * SwipeDismissBehavior.this.f63888h);
            float width2 = this.f63892a + (view.getWidth() * SwipeDismissBehavior.this.f63889i);
            float f10 = i10;
            if (f10 <= width) {
                view.setAlpha(1.0f);
            } else if (f10 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.b(0.0f, 1.0f - SwipeDismissBehavior.e(width, width2, f10), 1.0f));
            }
        }

        @Override
        public void onViewReleased(@NonNull View view, float f10, float f11) {
            int i10;
            boolean z10;
            c cVar;
            this.f63893b = -1;
            int width = view.getWidth();
            if (a(view, f10)) {
                int left = view.getLeft();
                int i11 = this.f63892a;
                i10 = left < i11 ? i11 - width : i11 + width;
                z10 = true;
            } else {
                i10 = this.f63892a;
                z10 = false;
            }
            if (SwipeDismissBehavior.this.f63881a.settleCapturedViewAt(i10, view.getTop())) {
                ViewCompat.postOnAnimation(view, new d(view, z10));
            } else {
                if (!z10 || (cVar = SwipeDismissBehavior.this.f63882b) == null) {
                    return;
                }
                cVar.a(view);
            }
        }

        @Override
        public boolean tryCaptureView(View view, int i10) {
            int i11 = this.f63893b;
            return (i11 == -1 || i11 == i10) && SwipeDismissBehavior.this.a(view);
        }
    }

    public class b implements AccessibilityViewCommand {
        public b() {
        }

        @Override
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            if (!SwipeDismissBehavior.this.a(view)) {
                return false;
            }
            boolean z10 = ViewCompat.getLayoutDirection(view) == 1;
            int i10 = SwipeDismissBehavior.this.f63886f;
            ViewCompat.offsetLeftAndRight(view, (!(i10 == 0 && z10) && (i10 != 1 || z10)) ? view.getWidth() : -view.getWidth());
            view.setAlpha(0.0f);
            c cVar = SwipeDismissBehavior.this.f63882b;
            if (cVar != null) {
                cVar.a(view);
            }
            return true;
        }
    }

    public interface c {
        void a(View view);

        void b(int i10);
    }

    public class d implements Runnable {

        public final View f63896b;

        public final boolean f63897c;

        public d(View view, boolean z10) {
            this.f63896b = view;
            this.f63897c = z10;
        }

        @Override
        public void run() {
            c cVar;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.f63881a;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.f63896b, this);
            } else {
                if (!this.f63897c || (cVar = SwipeDismissBehavior.this.f63882b) == null) {
                    return;
                }
                cVar.a(this.f63896b);
            }
        }
    }

    public static float b(float f10, float f11, float f12) {
        return Math.min(Math.max(f10, f11), f12);
    }

    public static int c(int i10, int i11, int i12) {
        return Math.min(Math.max(i10, i11), i12);
    }

    public static float e(float f10, float f11, float f12) {
        return (f12 - f10) / (f11 - f10);
    }

    public boolean a(@NonNull View view) {
        return true;
    }

    public final void d(ViewGroup viewGroup) {
        if (this.f63881a == null) {
            this.f63881a = this.f63885e ? ViewDragHelper.create(viewGroup, this.f63884d, this.f63890j) : ViewDragHelper.create(viewGroup, this.f63890j);
        }
    }

    public int f() {
        ViewDragHelper viewDragHelper = this.f63881a;
        if (viewDragHelper != null) {
            return viewDragHelper.getViewDragState();
        }
        return 0;
    }

    @Nullable
    @VisibleForTesting
    public c g() {
        return this.f63882b;
    }

    public void h(float f10) {
        this.f63887g = b(0.0f, f10, 1.0f);
    }

    public void i(float f10) {
        this.f63889i = b(0.0f, f10, 1.0f);
    }

    public void j(@Nullable c cVar) {
        this.f63882b = cVar;
    }

    public void k(float f10) {
        this.f63884d = f10;
        this.f63885e = true;
    }

    public void l(float f10) {
        this.f63888h = b(0.0f, f10, 1.0f);
    }

    public void m(int i10) {
        this.f63886f = i10;
    }

    public final void n(View view) {
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (a(view)) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new b());
        }
    }

    @Override
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull MotionEvent motionEvent) {
        boolean z10 = this.f63883c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z10 = coordinatorLayout.isPointInChildBounds(v10, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f63883c = z10;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f63883c = false;
        }
        if (!z10) {
            return false;
        }
        d(coordinatorLayout);
        return this.f63881a.shouldInterceptTouchEvent(motionEvent);
    }

    @Override
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10) {
        boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, v10, i10);
        if (ViewCompat.getImportantForAccessibility(v10) == 0) {
            ViewCompat.setImportantForAccessibility(v10, 1);
            n(v10);
        }
        return onLayoutChild;
    }

    @Override
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.f63881a;
        if (viewDragHelper == null) {
            return false;
        }
        viewDragHelper.processTouchEvent(motionEvent);
        return true;
    }
}

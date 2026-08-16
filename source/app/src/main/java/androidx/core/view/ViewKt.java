package androidx.core.view;

import Xf.C3316q;
import Xf.InterfaceC3312m;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.exifinterface.media.ExifInterface;
import nf.P0;

public final class ViewKt {
    public static final void doOnAttach(final View view, final Mf.l<? super View, P0> action) {
        kotlin.jvm.internal.M.p(view, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        if (ViewCompat.isAttachedToWindow(view)) {
            action.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
                @Override
                public void onViewAttachedToWindow(View view2) {
                    kotlin.jvm.internal.M.p(view2, "view");
                    View.this.removeOnAttachStateChangeListener(this);
                    action.invoke(view2);
                }

                @Override
                public void onViewDetachedFromWindow(View view2) {
                    kotlin.jvm.internal.M.p(view2, "view");
                }
            });
        }
    }

    public static final void doOnDetach(final View view, final Mf.l<? super View, P0> action) {
        kotlin.jvm.internal.M.p(view, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        if (ViewCompat.isAttachedToWindow(view)) {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
                @Override
                public void onViewAttachedToWindow(View view2) {
                    kotlin.jvm.internal.M.p(view2, "view");
                }

                @Override
                public void onViewDetachedFromWindow(View view2) {
                    kotlin.jvm.internal.M.p(view2, "view");
                    View.this.removeOnAttachStateChangeListener(this);
                    action.invoke(view2);
                }
            });
        } else {
            action.invoke(view);
        }
    }

    public static final void doOnLayout(View view, final Mf.l<? super View, P0> action) {
        kotlin.jvm.internal.M.p(view, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        if (!ViewCompat.isLaidOut(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
                @Override
                public void onLayoutChange(View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                    kotlin.jvm.internal.M.p(view2, "view");
                    view2.removeOnLayoutChangeListener(this);
                    Mf.l.this.invoke(view2);
                }
            });
        } else {
            action.invoke(view);
        }
    }

    public static final void doOnNextLayout(View view, final Mf.l<? super View, P0> action) {
        kotlin.jvm.internal.M.p(view, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public void onLayoutChange(View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                kotlin.jvm.internal.M.p(view2, "view");
                view2.removeOnLayoutChangeListener(this);
                action.invoke(view2);
            }
        });
    }

    public static final OneShotPreDrawListener doOnPreDraw(final View view, final Mf.l<? super View, P0> action) {
        kotlin.jvm.internal.M.p(view, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        OneShotPreDrawListener add = OneShotPreDrawListener.add(view, new Runnable() {
            @Override
            public final void run() {
                action.invoke(view);
            }
        });
        kotlin.jvm.internal.M.o(add, "View.doOnPreDraw(\n    cr\u2026dd(this) { action(this) }");
        return add;
    }

    public static final Bitmap drawToBitmap(View view, Bitmap.Config config) {
        kotlin.jvm.internal.M.p(view, "<this>");
        kotlin.jvm.internal.M.p(config, "config");
        if (!ViewCompat.isLaidOut(view)) {
            throw new IllegalStateException("View needs to be laid out before calling drawToBitmap()");
        }
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), config);
        kotlin.jvm.internal.M.o(createBitmap, "createBitmap(width, height, config)");
        Canvas canvas = new Canvas(createBitmap);
        canvas.translate(-view.getScrollX(), -view.getScrollY());
        view.draw(canvas);
        return createBitmap;
    }

    public static Bitmap drawToBitmap$default(View view, Bitmap.Config config, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        return drawToBitmap(view, config);
    }

    public static final InterfaceC3312m<View> getAllViews(View view) {
        kotlin.jvm.internal.M.p(view, "<this>");
        return C3316q.b(new ViewKt$allViews$1(view, null));
    }

    public static final InterfaceC3312m<ViewParent> getAncestors(View view) {
        kotlin.jvm.internal.M.p(view, "<this>");
        return Xf.x.v(view.getParent(), ViewKt$ancestors$1.INSTANCE);
    }

    public static final int getMarginBottom(View view) {
        kotlin.jvm.internal.M.p(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.bottomMargin;
        }
        return 0;
    }

    public static final int getMarginEnd(View view) {
        kotlin.jvm.internal.M.p(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return 0;
    }

    public static final int getMarginLeft(View view) {
        kotlin.jvm.internal.M.p(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.leftMargin;
        }
        return 0;
    }

    public static final int getMarginRight(View view) {
        kotlin.jvm.internal.M.p(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.rightMargin;
        }
        return 0;
    }

    public static final int getMarginStart(View view) {
        kotlin.jvm.internal.M.p(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return 0;
    }

    public static final int getMarginTop(View view) {
        kotlin.jvm.internal.M.p(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.topMargin;
        }
        return 0;
    }

    public static final boolean isGone(View view) {
        kotlin.jvm.internal.M.p(view, "<this>");
        return view.getVisibility() == 8;
    }

    public static final boolean isInvisible(View view) {
        kotlin.jvm.internal.M.p(view, "<this>");
        return view.getVisibility() == 4;
    }

    public static final boolean isVisible(View view) {
        kotlin.jvm.internal.M.p(view, "<this>");
        return view.getVisibility() == 0;
    }

    public static final Runnable postDelayed(View view, long j10, final Mf.a<P0> action) {
        kotlin.jvm.internal.M.p(view, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                action.invoke();
            }
        };
        view.postDelayed(runnable, j10);
        return runnable;
    }

    public static final Runnable postOnAnimationDelayed(View view, long j10, final Mf.a<P0> action) {
        kotlin.jvm.internal.M.p(view, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                ViewKt.m680postOnAnimationDelayed$lambda1(Mf.a.this);
            }
        };
        Api16Impl.postOnAnimationDelayed(view, runnable, j10);
        return runnable;
    }

    public static final void m680postOnAnimationDelayed$lambda1(Mf.a action) {
        kotlin.jvm.internal.M.p(action, "$action");
        action.invoke();
    }

    public static final void setGone(View view, boolean z10) {
        kotlin.jvm.internal.M.p(view, "<this>");
        view.setVisibility(z10 ? 8 : 0);
    }

    public static final void setInvisible(View view, boolean z10) {
        kotlin.jvm.internal.M.p(view, "<this>");
        view.setVisibility(z10 ? 4 : 0);
    }

    public static final void setPadding(View view, int i10) {
        kotlin.jvm.internal.M.p(view, "<this>");
        view.setPadding(i10, i10, i10, i10);
    }

    public static final void setVisible(View view, boolean z10) {
        kotlin.jvm.internal.M.p(view, "<this>");
        view.setVisibility(z10 ? 0 : 8);
    }

    public static final void updateLayoutParams(View view, Mf.l<? super ViewGroup.LayoutParams, P0> block) {
        kotlin.jvm.internal.M.p(view, "<this>");
        kotlin.jvm.internal.M.p(block, "block");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        block.invoke(layoutParams);
        view.setLayoutParams(layoutParams);
    }

    public static final <T extends ViewGroup.LayoutParams> void updateLayoutParamsTyped(View view, Mf.l<? super T, P0> block) {
        kotlin.jvm.internal.M.p(view, "<this>");
        kotlin.jvm.internal.M.p(block, "block");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        kotlin.jvm.internal.M.y(1, ExifInterface.GPS_DIRECTION_TRUE);
        block.invoke(layoutParams);
        view.setLayoutParams(layoutParams);
    }

    public static final void updatePadding(View view, int i10, int i11, int i12, int i13) {
        kotlin.jvm.internal.M.p(view, "<this>");
        view.setPadding(i10, i11, i12, i13);
    }

    public static void updatePadding$default(View view, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = view.getPaddingLeft();
        }
        if ((i14 & 2) != 0) {
            i11 = view.getPaddingTop();
        }
        if ((i14 & 4) != 0) {
            i12 = view.getPaddingRight();
        }
        if ((i14 & 8) != 0) {
            i13 = view.getPaddingBottom();
        }
        kotlin.jvm.internal.M.p(view, "<this>");
        view.setPadding(i10, i11, i12, i13);
    }

    public static final void updatePaddingRelative(View view, int i10, int i11, int i12, int i13) {
        kotlin.jvm.internal.M.p(view, "<this>");
        view.setPaddingRelative(i10, i11, i12, i13);
    }

    public static void updatePaddingRelative$default(View view, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = view.getPaddingStart();
        }
        if ((i14 & 2) != 0) {
            i11 = view.getPaddingTop();
        }
        if ((i14 & 4) != 0) {
            i12 = view.getPaddingEnd();
        }
        if ((i14 & 8) != 0) {
            i13 = view.getPaddingBottom();
        }
        kotlin.jvm.internal.M.p(view, "<this>");
        view.setPaddingRelative(i10, i11, i12, i13);
    }
}

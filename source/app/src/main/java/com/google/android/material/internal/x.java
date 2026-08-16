package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class x implements z {

    public a f64776a;

    @SuppressLint({"ViewConstructor", "PrivateApi"})
    public static class a extends ViewGroup {

        public static Method f64777g;

        public ViewGroup f64778b;

        public View f64779c;

        public ArrayList<Drawable> f64780d;

        public x f64781e;

        public boolean f64782f;

        static {
            try {
                Class<Integer> cls = Integer.TYPE;
                f64777g = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        public a(Context context, ViewGroup viewGroup, View view, x xVar) {
            super(context);
            this.f64780d = null;
            this.f64778b = viewGroup;
            this.f64779c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f64781e = xVar;
        }

        public void a(Drawable drawable) {
            c();
            if (this.f64780d == null) {
                this.f64780d = new ArrayList<>();
            }
            if (this.f64780d.contains(drawable)) {
                return;
            }
            this.f64780d.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        public void b(View view) {
            c();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f64778b && viewGroup.getParent() != null && ViewCompat.isAttachedToWindow(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f64778b.getLocationOnScreen(iArr2);
                    ViewCompat.offsetLeftAndRight(view, iArr[0] - iArr2[0]);
                    ViewCompat.offsetTopAndBottom(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        public final void c() {
            if (this.f64782f) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        public final void d() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f64780d;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f64782f = true;
                    this.f64778b.removeView(this);
                }
            }
        }

        @Override
        public void dispatchDraw(Canvas canvas) {
            this.f64778b.getLocationOnScreen(new int[2]);
            this.f64779c.getLocationOnScreen(new int[2]);
            canvas.translate(r0[0] - r1[0], r0[1] - r1[1]);
            canvas.clipRect(new Rect(0, 0, this.f64779c.getWidth(), this.f64779c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f64780d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f64780d.get(i10).draw(canvas);
            }
        }

        @Override
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public final void e(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f64778b.getLocationOnScreen(iArr2);
            this.f64779c.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public ViewParent f(int i10, int i11, Rect rect) {
            if (this.f64778b == null || f64777g == null) {
                return null;
            }
            try {
                e(new int[2]);
                f64777g.invoke(this.f64778b, Integer.valueOf(i10), Integer.valueOf(i11), rect);
                return null;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public void g(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f64780d;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                d();
            }
        }

        public void h(View view) {
            super.removeView(view);
            d();
        }

        @Override
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f64778b == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (this.f64778b == null) {
                invalidate(rect);
                return null;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = new int[2];
            e(iArr2);
            rect.offset(iArr2[0], iArr2[1]);
            return super.invalidateChildInParent(iArr, rect);
        }

        @Override
        public void invalidateDrawable(@NonNull Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override
        public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        }

        @Override
        public boolean verifyDrawable(@NonNull Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f64780d) != null && arrayList.contains(drawable));
        }
    }

    public x(Context context, ViewGroup viewGroup, View view) {
        this.f64776a = new a(context, viewGroup, view, this);
    }

    public static x a(View view) {
        ViewGroup f10 = A.f(view);
        if (f10 == null) {
            return null;
        }
        int childCount = f10.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = f10.getChildAt(i10);
            if (childAt instanceof a) {
                return ((a) childAt).f64781e;
            }
        }
        return new u(f10.getContext(), f10, view);
    }

    @Override
    public void add(@NonNull Drawable drawable) {
        this.f64776a.a(drawable);
    }

    @Override
    public void remove(@NonNull Drawable drawable) {
        this.f64776a.g(drawable);
    }
}

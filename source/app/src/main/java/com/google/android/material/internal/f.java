package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.LinearLayoutCompat;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class f extends LinearLayoutCompat {

    @Nullable
    public Drawable f64696b;

    public final Rect f64697c;

    public final Rect f64698d;

    public int f64699e;

    public boolean f64700f;

    public boolean f64701g;

    public f(@NonNull Context context) {
        this(context, null);
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f64696b;
        if (drawable != null) {
            if (this.f64701g) {
                this.f64701g = false;
                Rect rect = this.f64697c;
                Rect rect2 = this.f64698d;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f64700f) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f64699e, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override
    @RequiresApi(21)
    @TargetApi(21)
    public void drawableHotspotChanged(float f10, float f11) {
        super.drawableHotspotChanged(f10, f11);
        Drawable drawable = this.f64696b;
        if (drawable != null) {
            drawable.setHotspot(f10, f11);
        }
    }

    @Override
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f64696b;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f64696b.setState(getDrawableState());
    }

    @Override
    @Nullable
    public Drawable getForeground() {
        return this.f64696b;
    }

    @Override
    public int getForegroundGravity() {
        return this.f64699e;
    }

    @Override
    @RequiresApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f64696b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f64701g = z10 | this.f64701g;
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f64701g = true;
    }

    @Override
    public void setForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f64696b;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f64696b);
            }
            this.f64696b = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f64699e == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override
    public void setForegroundGravity(int i10) {
        if (this.f64699e != i10) {
            if ((8388615 & i10) == 0) {
                i10 |= 8388611;
            }
            if ((i10 & 112) == 0) {
                i10 |= 48;
            }
            this.f64699e = i10;
            if (i10 == 119 && this.f64696b != null) {
                this.f64696b.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f64696b;
    }

    public f(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public f(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f64697c = new Rect();
        this.f64698d = new Rect();
        this.f64699e = 119;
        this.f64700f = true;
        this.f64701g = false;
        TypedArray j10 = s.j(context, attributeSet, C15879a.o.f125406Wf, i10, 0, new int[0]);
        this.f64699e = j10.getInt(C15879a.o.f125454Yf, this.f64699e);
        Drawable drawable = j10.getDrawable(C15879a.o.f125430Xf);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f64700f = j10.getBoolean(C15879a.o.f125478Zf, true);
        j10.recycle();
    }
}

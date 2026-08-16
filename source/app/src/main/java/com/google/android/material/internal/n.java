package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class n extends FrameLayout {

    @Nullable
    public Drawable f64748b;

    public Rect f64749c;

    public Rect f64750d;

    public boolean f64751e;

    public boolean f64752f;

    public class a implements OnApplyWindowInsetsListener {
        public a() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            n nVar = n.this;
            if (nVar.f64749c == null) {
                nVar.f64749c = new Rect();
            }
            n.this.f64749c.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            n.this.a(windowInsetsCompat);
            n.this.setWillNotDraw(!windowInsetsCompat.hasSystemWindowInsets() || n.this.f64748b == null);
            ViewCompat.postInvalidateOnAnimation(n.this);
            return windowInsetsCompat.consumeSystemWindowInsets();
        }
    }

    public n(@NonNull Context context) {
        this(context, null);
    }

    public void a(WindowInsetsCompat windowInsetsCompat) {
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f64749c == null || this.f64748b == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.f64751e) {
            this.f64750d.set(0, 0, width, this.f64749c.top);
            this.f64748b.setBounds(this.f64750d);
            this.f64748b.draw(canvas);
        }
        if (this.f64752f) {
            this.f64750d.set(0, height - this.f64749c.bottom, width, height);
            this.f64748b.setBounds(this.f64750d);
            this.f64748b.draw(canvas);
        }
        Rect rect = this.f64750d;
        Rect rect2 = this.f64749c;
        rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
        this.f64748b.setBounds(this.f64750d);
        this.f64748b.draw(canvas);
        Rect rect3 = this.f64750d;
        Rect rect4 = this.f64749c;
        rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
        this.f64748b.setBounds(this.f64750d);
        this.f64748b.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f64748b;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f64748b;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z10) {
        this.f64752f = z10;
    }

    public void setDrawTopInsetForeground(boolean z10) {
        this.f64751e = z10;
    }

    public void setScrimInsetForeground(@Nullable Drawable drawable) {
        this.f64748b = drawable;
    }

    public n(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public n(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f64750d = new Rect();
        this.f64751e = true;
        this.f64752f = true;
        TypedArray j10 = s.j(context, attributeSet, C15879a.o.Sp, i10, C15879a.n.f124859za, new int[0]);
        this.f64748b = j10.getDrawable(C15879a.o.Tp);
        j10.recycle();
        setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new a());
    }
}

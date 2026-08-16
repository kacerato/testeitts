package Yg;

import Yg.j;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import t3.b;

public class l extends n {

    @Nullable
    public Drawable f30513W;

    public int f30514q0;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public l(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    public final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.f116380cn, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f30514q0 = obtainStyledAttributes.getColor(1, this.f30514q0);
        this.f30513W = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
    }

    @Override
    public void h0() {
        Canvas v10 = v();
        Canvas g02 = g0();
        Drawable drawable = this.f30513W;
        if (drawable != null) {
            M.m(drawable);
            drawable.setBounds(getPadding(), getPadding(), getWidth() - getPadding(), getHeight() - getPadding());
            Drawable drawable2 = this.f30513W;
            M.m(drawable2);
            drawable2.setColorFilter(this.f30514q0, PorterDuff.Mode.SRC_IN);
            Drawable drawable3 = this.f30513W;
            M.m(drawable3);
            drawable3.draw(v10);
            Drawable drawable4 = this.f30513W;
            M.m(drawable4);
            drawable4.setColorFilter(null);
            Drawable drawable5 = this.f30513W;
            M.m(drawable5);
            drawable5.draw(g02);
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        Drawable drawable = this.f30513W;
        if (drawable == null || measuredWidth == 0 || measuredHeight == 0) {
            return;
        }
        M.m(drawable);
        if (drawable.getIntrinsicWidth() > 0) {
            Drawable drawable2 = this.f30513W;
            M.m(drawable2);
            if (drawable2.getIntrinsicHeight() <= 0) {
                return;
            }
            Drawable drawable3 = this.f30513W;
            M.m(drawable3);
            float intrinsicWidth = drawable3.getIntrinsicWidth();
            Drawable drawable4 = this.f30513W;
            M.m(drawable4);
            float intrinsicHeight = drawable4.getIntrinsicHeight();
            if (intrinsicWidth / intrinsicHeight > measuredWidth / measuredHeight) {
                setMeasuredDimension(measuredWidth, (int) ((measuredWidth * intrinsicHeight) / intrinsicWidth));
            } else {
                setMeasuredDimension((int) ((measuredHeight * intrinsicWidth) / intrinsicHeight), measuredHeight);
            }
        }
    }

    @Override
    public void w() {
        super.setSpeedTextPosition(j.a.CENTER);
        super.setUnitUnderSpeedText(true);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public l(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public l(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f30514q0 = -2697257;
        C(context, attributeSet);
    }

    public l(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}

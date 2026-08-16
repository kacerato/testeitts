package Yg;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import t3.b;

public class m extends v {

    @Nullable
    public Drawable f30515v2;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public m(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.f116455fn, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f30515v2 = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
    }

    @Override
    public void d0() {
        Canvas v10 = v();
        Drawable drawable = this.f30515v2;
        if (drawable != null) {
            M.m(drawable);
            drawable.setBounds(((int) getViewLeft()) + getPadding(), ((int) getViewTop()) + getPadding(), ((int) getViewRight()) - getPadding(), ((int) getViewBottom()) - getPadding());
            Drawable drawable2 = this.f30515v2;
            M.m(drawable2);
            drawable2.draw(v10);
        }
        s0(v10);
        u0(v10);
    }

    @Nullable
    public final Drawable getImageSpeedometer() {
        return this.f30515v2;
    }

    @Override
    public void o0() {
        setBackgroundCircleColor(0);
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        super.onDraw(canvas);
        y(canvas);
        q0(canvas);
        t0(canvas);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        d0();
    }

    public final void setImageSpeedometer(int i10) {
        setImageSpeedometer(getContext().getDrawable(i10));
    }

    @Override
    public void w() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public m(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    public final void setImageSpeedometer(@Nullable Drawable drawable) {
        this.f30515v2 = drawable;
        d0();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public m(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        C(context, attributeSet);
    }

    public final void setImageSpeedometer(@NotNull Bitmap bitmapImage) {
        M.p(bitmapImage, "bitmapImage");
        setImageSpeedometer(new BitmapDrawable(getContext().getResources(), bitmapImage));
    }

    public m(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}

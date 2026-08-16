package L1;

import X1.c;
import a2.C3567j;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.s;
import h2.C13421a;
import w1.C15879a;

public class a extends View {

    public static final int f11532g = C15879a.n.f124539cc;

    @NonNull
    public final C3567j f11533b;

    public int f11534c;

    @ColorInt
    public int f11535d;

    public int f11536e;

    public int f11537f;

    public a(@NonNull Context context) {
        this(context, null);
    }

    public int getDividerColor() {
        return this.f11535d;
    }

    @Px
    public int getDividerInsetEnd() {
        return this.f11537f;
    }

    @Px
    public int getDividerInsetStart() {
        return this.f11536e;
    }

    public int getDividerThickness() {
        return this.f11534c;
    }

    @Override
    public void onDraw(@NonNull Canvas canvas) {
        int width;
        int i10;
        super.onDraw(canvas);
        boolean z10 = ViewCompat.getLayoutDirection(this) == 1;
        int i11 = z10 ? this.f11537f : this.f11536e;
        if (z10) {
            width = getWidth();
            i10 = this.f11536e;
        } else {
            width = getWidth();
            i10 = this.f11537f;
        }
        this.f11533b.setBounds(i11, 0, width - i10, getBottom() - getTop());
        this.f11533b.draw(canvas);
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i12 = this.f11534c;
            if (i12 > 0 && measuredHeight != i12) {
                measuredHeight = i12;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    public void setDividerColor(@ColorInt int i10) {
        if (this.f11535d != i10) {
            this.f11535d = i10;
            this.f11533b.n0(ColorStateList.valueOf(i10));
            invalidate();
        }
    }

    public void setDividerColorResource(@ColorRes int i10) {
        setDividerColor(ContextCompat.getColor(getContext(), i10));
    }

    public void setDividerInsetEnd(@Px int i10) {
        this.f11537f = i10;
    }

    public void setDividerInsetEndResource(@DimenRes int i10) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerInsetStart(@Px int i10) {
        this.f11536e = i10;
    }

    public void setDividerInsetStartResource(@DimenRes int i10) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerThickness(@Px int i10) {
        if (this.f11534c != i10) {
            this.f11534c = i10;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(@DimenRes int i10) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i10));
    }

    public a(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122417ha);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public a(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r4), attributeSet, i10);
        int i11 = f11532g;
        Context context2 = getContext();
        this.f11533b = new C3567j();
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f125292Rl, i10, i11, new int[0]);
        this.f11534c = j10.getDimensionPixelSize(C15879a.o.f125388Vl, getResources().getDimensionPixelSize(C15879a.f.f123271m2));
        this.f11536e = j10.getDimensionPixelOffset(C15879a.o.f125364Ul, 0);
        this.f11537f = j10.getDimensionPixelOffset(C15879a.o.f125340Tl, 0);
        setDividerColor(c.a(context2, j10, C15879a.o.f125316Sl).getDefaultColor());
        j10.recycle();
    }
}

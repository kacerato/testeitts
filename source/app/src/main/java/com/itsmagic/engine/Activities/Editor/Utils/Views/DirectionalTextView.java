package com.itsmagic.engine.Activities.Editor.Utils.Views;

import Lf.k;
import Vf.u;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.H;
import t3.b;

public final class DirectionalTextView extends AppCompatTextView {

    @NotNull
    public static final a f72108d = new a(null);

    public static final int f72109e = 0;

    public static final int f72110f = 1;

    public static final int f72111g = 2;

    public static final int f72112h = 3;

    @NotNull
    public final Rect f72113b;

    public int f72114c;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public DirectionalTextView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    public final Path a() {
        List Q10;
        int width = getWidth();
        int height = getHeight();
        int width2 = this.f72113b.width();
        int height2 = this.f72113b.height();
        Path path = new Path();
        int i10 = this.f72114c;
        if (i10 == 0) {
            int i11 = (width - height2) / 2;
            Q10 = H.Q(Integer.valueOf(i11), Integer.valueOf((height - width2) / 2), Integer.valueOf(i11), Integer.valueOf((height + width2) / 2));
        } else if (i10 == 1) {
            int i12 = (width + height2) / 2;
            Q10 = H.Q(Integer.valueOf(i12), Integer.valueOf((height + width2) / 2), Integer.valueOf(i12), Integer.valueOf((height - width2) / 2));
        } else if (i10 != 2) {
            int i13 = (height - height2) / 2;
            Q10 = H.Q(Integer.valueOf((width + width2) / 2), Integer.valueOf(i13), Integer.valueOf((width - width2) / 2), Integer.valueOf(i13));
        } else {
            int i14 = (height + height2) / 2;
            Q10 = H.Q(Integer.valueOf((width - width2) / 2), Integer.valueOf(i14), Integer.valueOf((width + width2) / 2), Integer.valueOf(i14));
        }
        int intValue = ((Number) Q10.get(0)).intValue();
        int intValue2 = ((Number) Q10.get(1)).intValue();
        int intValue3 = ((Number) Q10.get(2)).intValue();
        int intValue4 = ((Number) Q10.get(3)).intValue();
        path.moveTo(intValue, intValue2);
        path.lineTo(intValue3, intValue4);
        return path;
    }

    public final int b(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        return mode != Integer.MIN_VALUE ? mode != 1073741824 ? this.f72113b.width() + getPaddingLeft() + getPaddingRight() : size : u.D(this.f72113b.width() + getPaddingLeft() + getPaddingRight(), size);
    }

    public final int c(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        return mode != Integer.MIN_VALUE ? mode != 1073741824 ? this.f72113b.height() + getPaddingTop() + getPaddingBottom() : size : u.D(this.f72113b.height() + getPaddingTop() + getPaddingBottom(), size);
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        canvas.save();
        Path a10 = a();
        getPaint().setColor(getCurrentTextColor());
        canvas.drawTextOnPath(getText().toString(), a10, 0.0f, 0.0f, getPaint());
        canvas.restore();
    }

    @Override
    public void onMeasure(int i10, int i11) {
        getPaint().getTextBounds(getText().toString(), 0, getText().length(), this.f72113b);
        int i12 = this.f72114c;
        boolean z10 = i12 == 2 || i12 == 3;
        setMeasuredDimension(z10 ? b(i10) : c(i10), z10 ? c(i11) : b(i11));
    }

    public final void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1 && i10 != 2 && i10 != 3) {
            i10 = 0;
        }
        this.f72114c = i10;
        requestLayout();
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public DirectionalTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @k
    public DirectionalTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f72113b = new Rect();
        this.f72114c = 1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.s.f116577kj);
            setOrientation(obtainStyledAttributes.getInt(0, 0));
            obtainStyledAttributes.recycle();
        }
        requestLayout();
        invalidate();
    }

    public DirectionalTextView(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}

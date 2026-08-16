package V1;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import com.google.android.material.internal.s;
import w1.C15879a;

public abstract class c {

    @Px
    public int f26459a;

    @Px
    public int f26460b;

    @NonNull
    public int[] f26461c = new int[0];

    @ColorInt
    public int f26462d;

    public int f26463e;

    public int f26464f;

    public c(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C15879a.f.f123052L5);
        TypedArray j10 = s.j(context, attributeSet, C15879a.o.f125716j4, i10, i11, new int[0]);
        this.f26459a = X1.c.c(context, j10, C15879a.o.f125942s4, dimensionPixelSize);
        this.f26460b = Math.min(X1.c.c(context, j10, C15879a.o.f125917r4, 0), this.f26459a / 2);
        this.f26463e = j10.getInt(C15879a.o.f125842o4, 0);
        this.f26464f = j10.getInt(C15879a.o.f125767l4, 0);
        c(context, j10);
        d(context, j10);
        j10.recycle();
    }

    public boolean a() {
        return this.f26464f != 0;
    }

    public boolean b() {
        return this.f26463e != 0;
    }

    public final void c(@NonNull Context context, @NonNull TypedArray typedArray) {
        int i10 = C15879a.o.f125792m4;
        if (!typedArray.hasValue(i10)) {
            this.f26461c = new int[]{J1.a.b(context, C15879a.c.f122060N2, -1)};
            return;
        }
        if (typedArray.peekValue(i10).type != 1) {
            this.f26461c = new int[]{typedArray.getColor(i10, -1)};
            return;
        }
        int[] intArray = context.getResources().getIntArray(typedArray.getResourceId(i10, -1));
        this.f26461c = intArray;
        if (intArray.length == 0) {
            throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
        }
    }

    public final void d(@NonNull Context context, @NonNull TypedArray typedArray) {
        int i10 = C15879a.o.f125892q4;
        if (typedArray.hasValue(i10)) {
            this.f26462d = typedArray.getColor(i10, -1);
            return;
        }
        this.f26462d = this.f26461c[0];
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.disabledAlpha});
        float f10 = obtainStyledAttributes.getFloat(0, 0.2f);
        obtainStyledAttributes.recycle();
        this.f26462d = J1.a.a(this.f26462d, (int) (f10 * 255.0f));
    }

    public abstract void e();
}

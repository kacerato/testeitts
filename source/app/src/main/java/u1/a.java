package U1;

import android.content.Context;
import android.view.View;
import androidx.annotation.DimenRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class a extends T1.a {
    public a(@NonNull Context context) {
        super(context);
    }

    @Override
    @DimenRes
    public int getItemDefaultMarginResId() {
        return C15879a.f.f123330t5;
    }

    @Override
    @LayoutRes
    public int getItemLayoutResId() {
        return C15879a.k.f124027y0;
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (View.MeasureSpec.getMode(i11) == 0) {
            setMeasuredDimension(getMeasuredWidthAndState(), View.resolveSizeAndState(Math.max(getMeasuredHeight(), View.MeasureSpec.getSize(i11)), i11, 0));
        }
    }
}

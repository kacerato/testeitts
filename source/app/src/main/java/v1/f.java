package V1;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import w1.C15879a;

public final class f extends b<g> {

    public static final int f26493A = 0;

    public static final int f26494B = 1;

    public static final int f26495z = C15879a.n.f124748rb;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface a {
    }

    public f(@NonNull Context context) {
        this(context, null);
    }

    public int getIndicatorDirection() {
        return ((g) this.f26441b).f26498i;
    }

    @Px
    public int getIndicatorInset() {
        return ((g) this.f26441b).f26497h;
    }

    @Px
    public int getIndicatorSize() {
        return ((g) this.f26441b).f26496g;
    }

    public void setIndicatorDirection(int i10) {
        ((g) this.f26441b).f26498i = i10;
        invalidate();
    }

    public void setIndicatorInset(@Px int i10) {
        S s10 = this.f26441b;
        if (((g) s10).f26497h != i10) {
            ((g) s10).f26497h = i10;
            invalidate();
        }
    }

    public void setIndicatorSize(@Px int i10) {
        int max = Math.max(i10, getTrackThickness() * 2);
        S s10 = this.f26441b;
        if (((g) s10).f26496g != max) {
            ((g) s10).f26496g = max;
            ((g) s10).e();
            invalidate();
        }
    }

    @Override
    public void setTrackThickness(int i10) {
        super.setTrackThickness(i10);
        ((g) this.f26441b).e();
    }

    @Override
    public g i(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        return new g(context, attributeSet);
    }

    public final void u() {
        setIndeterminateDrawable(l.u(getContext(), (g) this.f26441b));
        setProgressDrawable(h.x(getContext(), (g) this.f26441b));
    }

    public f(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122355e2);
    }

    public f(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10, f26495z);
        u();
    }
}

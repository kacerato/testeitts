package V1;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import w1.C15879a;

public final class p extends V1.b<q> {

    public static final int f26559A = 0;

    public static final int f26560B = 1;

    public static final int f26561C = 0;

    public static final int f26562D = 1;

    public static final int f26563E = 2;

    public static final int f26564F = 3;

    public static final int f26565z = C15879a.n.f124189Db;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface a {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface b {
    }

    public p(@NonNull Context context) {
        this(context, null);
    }

    private void u() {
        setIndeterminateDrawable(l.v(getContext(), (q) this.f26441b));
        setProgressDrawable(h.y(getContext(), (q) this.f26441b));
    }

    public int getIndeterminateAnimationType() {
        return ((q) this.f26441b).f26566g;
    }

    public int getIndicatorDirection() {
        return ((q) this.f26441b).f26567h;
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        S s10 = this.f26441b;
        q qVar = (q) s10;
        boolean z11 = true;
        if (((q) s10).f26567h != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((q) this.f26441b).f26567h != 2) && (ViewCompat.getLayoutDirection(this) != 0 || ((q) this.f26441b).f26567h != 3))) {
            z11 = false;
        }
        qVar.f26568i = z11;
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        int paddingLeft = i10 - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i11 - (getPaddingTop() + getPaddingBottom());
        l<q> indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
        h<q> progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    @Override
    public void p(int i10, boolean z10) {
        S s10 = this.f26441b;
        if (s10 != 0 && ((q) s10).f26566g == 0 && isIndeterminate()) {
            return;
        }
        super.p(i10, z10);
    }

    public void setIndeterminateAnimationType(int i10) {
        if (((q) this.f26441b).f26566g == i10) {
            return;
        }
        if (s() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        S s10 = this.f26441b;
        ((q) s10).f26566g = i10;
        ((q) s10).e();
        if (i10 == 0) {
            getIndeterminateDrawable().y(new n((q) this.f26441b));
        } else {
            getIndeterminateDrawable().y(new o(getContext(), (q) this.f26441b));
        }
        invalidate();
    }

    @Override
    public void setIndicatorColor(@NonNull int... iArr) {
        super.setIndicatorColor(iArr);
        ((q) this.f26441b).e();
    }

    public void setIndicatorDirection(int i10) {
        S s10 = this.f26441b;
        ((q) s10).f26567h = i10;
        q qVar = (q) s10;
        boolean z10 = true;
        if (i10 != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((q) this.f26441b).f26567h != 2) && (ViewCompat.getLayoutDirection(this) != 0 || i10 != 3))) {
            z10 = false;
        }
        qVar.f26568i = z10;
        invalidate();
    }

    @Override
    public void setTrackCornerRadius(int i10) {
        super.setTrackCornerRadius(i10);
        ((q) this.f26441b).e();
        invalidate();
    }

    @Override
    public q i(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        return new q(context, attributeSet);
    }

    public p(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122505m9);
    }

    public p(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10, f26565z);
        u();
    }
}

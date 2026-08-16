package V1;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.internal.s;
import w1.C15879a;

public final class q extends c {

    public int f26566g;

    public int f26567h;

    public boolean f26568i;

    public q(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122505m9);
    }

    @Override
    public void e() {
        if (this.f26566g == 0) {
            if (this.f26460b > 0) {
                throw new IllegalArgumentException("Rounded corners are not supported in contiguous indeterminate animation.");
            }
            if (this.f26461c.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }

    public q(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        this(context, attributeSet, i10, p.f26565z);
    }

    public q(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray j10 = s.j(context, attributeSet, C15879a.o.f125783lk, C15879a.c.f122505m9, p.f26565z, new int[0]);
        this.f26566g = j10.getInt(C15879a.o.f125808mk, 1);
        this.f26567h = j10.getInt(C15879a.o.f125833nk, 0);
        j10.recycle();
        e();
        this.f26568i = this.f26567h == 1;
    }
}

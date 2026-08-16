package V1;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import com.google.android.material.internal.s;
import w1.C15879a;

public final class g extends c {

    @Px
    public int f26496g;

    @Px
    public int f26497h;

    public int f26498i;

    public g(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122355e2);
    }

    @Override
    public void e() {
    }

    public g(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        this(context, attributeSet, i10, f.f26495z);
    }

    public g(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(context, attributeSet, i10, i11);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C15879a.f.f123004F5);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(C15879a.f.f122964A5);
        TypedArray j10 = s.j(context, attributeSet, C15879a.o.f125919r6, i10, i11, new int[0]);
        this.f26496g = Math.max(X1.c.c(context, j10, C15879a.o.f125994u6, dimensionPixelSize), this.f26459a * 2);
        this.f26497h = X1.c.c(context, j10, C15879a.o.f125969t6, dimensionPixelSize2);
        this.f26498i = j10.getInt(C15879a.o.f125944s6, 0);
        j10.recycle();
        e();
    }
}

package F1;

import X1.c;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.widget.CompoundButtonCompat;
import com.google.android.material.internal.s;
import h2.C13421a;
import w1.C15879a;

public class a extends AppCompatCheckBox {

    public static final int f6134d = C15879a.n.f124818wb;

    public static final int[][] f6135e = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    @Nullable
    public ColorStateList f6136b;

    public boolean f6137c;

    public a(Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f6136b == null) {
            int[][] iArr = f6135e;
            int[] iArr2 = new int[iArr.length];
            int d10 = J1.a.d(this, C15879a.c.f121880D2);
            int d11 = J1.a.d(this, C15879a.c.f122164T2);
            int d12 = J1.a.d(this, C15879a.c.f122042M2);
            iArr2[0] = J1.a.h(d11, d10, 1.0f);
            iArr2[1] = J1.a.h(d11, d12, 0.54f);
            iArr2[2] = J1.a.h(d11, d12, 0.38f);
            iArr2[3] = J1.a.h(d11, d12, 0.38f);
            this.f6136b = new ColorStateList(iArr, iArr2);
        }
        return this.f6136b;
    }

    public boolean b() {
        return this.f6137c;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f6137c && CompoundButtonCompat.getButtonTintList(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f6137c = z10;
        if (z10) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    public a(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122731z1);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public a(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r4), attributeSet, i10);
        int i11 = f6134d;
        Context context2 = getContext();
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f125220Ol, i10, i11, new int[0]);
        int i12 = C15879a.o.f125244Pl;
        if (j10.hasValue(i12)) {
            CompoundButtonCompat.setButtonTintList(this, c.a(context2, j10, i12));
        }
        this.f6137c = j10.getBoolean(C15879a.o.f125268Ql, false);
        j10.recycle();
    }
}

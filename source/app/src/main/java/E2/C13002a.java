package e2;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.internal.A;
import com.google.android.material.internal.s;
import h2.C13421a;
import w1.C15879a;

public class C13002a extends SwitchCompat {

    public static final int f85018f = C15879a.n.f124846yb;

    public static final int[][] f85019g = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    @NonNull
    public final N1.a f85020b;

    @Nullable
    public ColorStateList f85021c;

    @Nullable
    public ColorStateList f85022d;

    public boolean f85023e;

    public C13002a(@NonNull Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.f85021c == null) {
            int d10 = J1.a.d(this, C15879a.c.f122164T2);
            int d11 = J1.a.d(this, C15879a.c.f121880D2);
            float dimension = getResources().getDimension(C15879a.f.f123218f6);
            if (this.f85020b.l()) {
                dimension += A.i(this);
            }
            int e10 = this.f85020b.e(d10, dimension);
            int[][] iArr = f85019g;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = J1.a.h(d10, d11, 1.0f);
            iArr2[1] = e10;
            iArr2[2] = J1.a.h(d10, d11, 0.38f);
            iArr2[3] = e10;
            this.f85021c = new ColorStateList(iArr, iArr2);
        }
        return this.f85021c;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.f85022d == null) {
            int[][] iArr = f85019g;
            int[] iArr2 = new int[iArr.length];
            int d10 = J1.a.d(this, C15879a.c.f122164T2);
            int d11 = J1.a.d(this, C15879a.c.f121880D2);
            int d12 = J1.a.d(this, C15879a.c.f122042M2);
            iArr2[0] = J1.a.h(d10, d11, 0.54f);
            iArr2[1] = J1.a.h(d10, d12, 0.32f);
            iArr2[2] = J1.a.h(d10, d11, 0.12f);
            iArr2[3] = J1.a.h(d10, d12, 0.12f);
            this.f85022d = new ColorStateList(iArr, iArr2);
        }
        return this.f85022d;
    }

    public boolean a() {
        return this.f85023e;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f85023e && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.f85023e && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f85023e = z10;
        if (z10) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }

    public C13002a(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122192Ud);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C13002a(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r4), attributeSet, i10);
        int i11 = f85018f;
        Context context2 = getContext();
        this.f85020b = new N1.a(context2);
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.es, i10, i11, new int[0]);
        this.f85023e = j10.getBoolean(C15879a.o.fs, false);
        j10.recycle();
    }
}

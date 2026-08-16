package B1;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewCompat;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b extends T1.c {

    public final int f1313G;

    public final int f1314H;

    public final int f1315I;

    public final int f1316J;

    public boolean f1317K;

    public int[] f1318L;

    public b(@NonNull Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.f1313G = resources.getDimensionPixelSize(C15879a.f.f123127V0);
        this.f1314H = resources.getDimensionPixelSize(C15879a.f.f123135W0);
        this.f1315I = resources.getDimensionPixelSize(C15879a.f.f123079P0);
        this.f1316J = resources.getDimensionPixelSize(C15879a.f.f123087Q0);
        this.f1318L = new int[5];
    }

    @Override
    @NonNull
    public T1.a f(@NonNull Context context) {
        return new a(context);
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int i18 = i14 - i16;
                    childAt.layout(i18 - childAt.getMeasuredWidth(), 0, i18, i15);
                } else {
                    childAt.layout(i16, 0, childAt.getMeasuredWidth() + i16, i15);
                }
                i16 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        MenuBuilder menu = getMenu();
        int size = View.MeasureSpec.getSize(i10);
        int size2 = menu.getVisibleItems().size();
        int childCount = getChildCount();
        int size3 = View.MeasureSpec.getSize(i11);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
        if (j(getLabelVisibilityMode(), size2) && r()) {
            View childAt = getChildAt(getSelectedItemPosition());
            int i12 = this.f1316J;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.f1315I, Integer.MIN_VALUE), makeMeasureSpec);
                i12 = Math.max(i12, childAt.getMeasuredWidth());
            }
            int i13 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min = Math.min(size - (this.f1314H * i13), Math.min(i12, this.f1315I));
            int i14 = size - min;
            int min2 = Math.min(i14 / (i13 == 0 ? 1 : i13), this.f1313G);
            int i15 = i14 - (i13 * min2);
            int i16 = 0;
            while (i16 < childCount) {
                if (getChildAt(i16).getVisibility() != 8) {
                    this.f1318L[i16] = i16 == getSelectedItemPosition() ? min : min2;
                    if (i15 > 0) {
                        int[] iArr = this.f1318L;
                        iArr[i16] = iArr[i16] + 1;
                        i15--;
                    }
                } else {
                    this.f1318L[i16] = 0;
                }
                i16++;
            }
        } else {
            int min3 = Math.min(size / (size2 != 0 ? size2 : 1), this.f1315I);
            int i17 = size - (size2 * min3);
            for (int i18 = 0; i18 < childCount; i18++) {
                if (getChildAt(i18).getVisibility() != 8) {
                    int[] iArr2 = this.f1318L;
                    iArr2[i18] = min3;
                    if (i17 > 0) {
                        iArr2[i18] = min3 + 1;
                        i17--;
                    }
                } else {
                    this.f1318L[i18] = 0;
                }
            }
        }
        int i19 = 0;
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt2 = getChildAt(i20);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.f1318L[i20], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i19 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i19, View.MeasureSpec.makeMeasureSpec(i19, 1073741824), 0), View.resolveSizeAndState(size3, i11, 0));
    }

    public boolean r() {
        return this.f1317K;
    }

    public void setItemHorizontalTranslationEnabled(boolean z10) {
        this.f1317K = z10;
    }
}

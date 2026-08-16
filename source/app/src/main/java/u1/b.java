package U1;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b extends T1.c {

    public final FrameLayout.LayoutParams f25663G;

    public b(@NonNull Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.f25663G = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
    }

    @Override
    @NonNull
    public T1.a f(@NonNull Context context) {
        return new a(context);
    }

    public int getMenuGravity() {
        return this.f25663G.gravity;
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int i14 = i12 - i10;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i15;
                childAt.layout(0, i15, i14, measuredHeight);
                i15 = measuredHeight;
            }
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i11);
        int size2 = getMenu().getVisibleItems().size();
        setMeasuredDimension(View.resolveSizeAndState(View.MeasureSpec.getSize(i10), i10, 0), View.resolveSizeAndState((size2 <= 1 || !j(getLabelVisibilityMode(), size2)) ? u(i10, size, size2, null) : v(i10, size, size2), i11, 0));
    }

    public boolean r() {
        return (this.f25663G.gravity & 112) == 48;
    }

    public final int s(int i10, int i11, int i12) {
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), i11 / Math.max(1, i12)), 0);
    }

    public void setMenuGravity(int i10) {
        FrameLayout.LayoutParams layoutParams = this.f25663G;
        if (layoutParams.gravity != i10) {
            layoutParams.gravity = i10;
            setLayoutParams(layoutParams);
        }
    }

    public final int t(View view, int i10, int i11) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        view.measure(i10, i11);
        return view.getMeasuredHeight();
    }

    public final int u(int i10, int i11, int i12, View view) {
        s(i10, i11, i12);
        int s10 = view == null ? s(i10, i11, i12) : View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        int childCount = getChildCount();
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt != view) {
                i13 += t(childAt, i10, s10);
            }
        }
        return i13;
    }

    public final int v(int i10, int i11, int i12) {
        int i13;
        View childAt = getChildAt(getSelectedItemPosition());
        if (childAt != null) {
            i13 = t(childAt, i10, s(i10, i11, i12));
            i11 -= i13;
            i12--;
        } else {
            i13 = 0;
        }
        return i13 + u(i10, i11, i12, childAt);
    }
}

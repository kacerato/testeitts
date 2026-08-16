package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
import w1.C15879a;
import x1.h;
import x1.j;

@Deprecated
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    @Nullable
    public Map<View, Integer> f65365l;

    public FabTransformationSheetBehavior() {
    }

    @Override
    @NonNull
    public FabTransformationBehavior.e B(Context context, boolean z10) {
        int i10 = z10 ? C15879a.b.f121822t : C15879a.b.f121821s;
        FabTransformationBehavior.e eVar = new FabTransformationBehavior.e();
        eVar.f65354a = h.d(context, i10);
        eVar.f65355b = new j(17, 0.0f, 0.0f);
        return eVar;
    }

    public final void D(@NonNull View view, boolean z10) {
        ViewParent parent = view.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z10) {
                this.f65365l = new HashMap(childCount);
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                boolean z11 = (childAt.getLayoutParams() instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).getBehavior() instanceof FabTransformationScrimBehavior);
                if (childAt != view && !z11) {
                    if (z10) {
                        this.f65365l.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        ViewCompat.setImportantForAccessibility(childAt, 4);
                    } else {
                        Map<View, Integer> map = this.f65365l;
                        if (map != null && map.containsKey(childAt)) {
                            ViewCompat.setImportantForAccessibility(childAt, this.f65365l.get(childAt).intValue());
                        }
                    }
                }
            }
            if (z10) {
                return;
            }
            this.f65365l = null;
        }
    }

    @Override
    @CallSuper
    public boolean e(@NonNull View view, @NonNull View view2, boolean z10, boolean z11) {
        D(view2, z10);
        return super.e(view, view2, z10, z11);
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}

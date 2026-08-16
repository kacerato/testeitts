package com.google.android.material.transformation;

import O1.b;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import java.util.List;

@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    public static final int f65327b = 0;

    public static final int f65328c = 1;

    public static final int f65329d = 2;

    public int f65330a;

    public class a implements ViewTreeObserver.OnPreDrawListener {

        public final View f65331b;

        public final int f65332c;

        public final b f65333d;

        public a(View view, int i10, b bVar) {
            this.f65331b = view;
            this.f65332c = i10;
            this.f65333d = bVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean onPreDraw() {
            this.f65331b.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f65330a == this.f65332c) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                b bVar = this.f65333d;
                expandableBehavior.e((View) bVar, this.f65331b, bVar.b(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f65330a = 0;
    }

    @Nullable
    public static <T extends ExpandableBehavior> T d(@NonNull View view, @NonNull Class<T> cls) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof ExpandableBehavior) {
            return cls.cast(behavior);
        }
        throw new IllegalArgumentException("The view is not associated with ExpandableBehavior");
    }

    public final boolean b(boolean z10) {
        if (!z10) {
            return this.f65330a == 1;
        }
        int i10 = this.f65330a;
        return i10 == 0 || i10 == 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public b c(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = dependencies.get(i10);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (b) view2;
            }
        }
        return null;
    }

    public abstract boolean e(View view, View view2, boolean z10, boolean z11);

    @Override
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @CallSuper
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        b bVar = (b) view2;
        if (!b(bVar.b())) {
            return false;
        }
        this.f65330a = bVar.b() ? 1 : 2;
        return e((View) bVar, view, bVar.b(), true);
    }

    @Override
    @CallSuper
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10) {
        b c10;
        if (ViewCompat.isLaidOut(view) || (c10 = c(coordinatorLayout, view)) == null || !b(c10.b())) {
            return false;
        }
        int i11 = c10.b() ? 1 : 2;
        this.f65330a = i11;
        view.getViewTreeObserver().addOnPreDrawListener(new a(view, i11, c10));
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f65330a = 0;
    }
}

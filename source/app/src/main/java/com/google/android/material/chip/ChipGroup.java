package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.annotation.BoolRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.s;
import h2.C13421a;
import java.util.ArrayList;
import java.util.List;
import w1.C15879a;

public class ChipGroup extends com.google.android.material.internal.e {

    public static final int f64143o = C15879a.n.f124678mb;

    @Dimension
    public int f64144f;

    @Dimension
    public int f64145g;

    public boolean f64146h;

    public boolean f64147i;

    @Nullable
    public d f64148j;

    public final b f64149k;

    @NonNull
    public e f64150l;

    @IdRes
    public int f64151m;

    public boolean f64152n;

    public class b implements CompoundButton.OnCheckedChangeListener {
        public b() {
        }

        @Override
        public void onCheckedChanged(@NonNull CompoundButton compoundButton, boolean z10) {
            if (ChipGroup.this.f64152n) {
                return;
            }
            if (ChipGroup.this.getCheckedChipIds().isEmpty() && ChipGroup.this.f64147i) {
                ChipGroup.this.s(compoundButton.getId(), true);
                ChipGroup.this.r(compoundButton.getId(), false);
                return;
            }
            int id2 = compoundButton.getId();
            if (!z10) {
                if (ChipGroup.this.f64151m == id2) {
                    ChipGroup.this.setCheckedId(-1);
                }
            } else {
                if (ChipGroup.this.f64151m != -1 && ChipGroup.this.f64151m != id2 && ChipGroup.this.f64146h) {
                    ChipGroup chipGroup = ChipGroup.this;
                    chipGroup.s(chipGroup.f64151m, false);
                }
                ChipGroup.this.setCheckedId(id2);
            }
        }
    }

    public static class c extends ViewGroup.MarginLayoutParams {
        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(int i10, int i11) {
            super(i10, i11);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public interface d {
        void a(ChipGroup chipGroup, @IdRes int i10);
    }

    public class e implements ViewGroup.OnHierarchyChangeListener {

        public ViewGroup.OnHierarchyChangeListener f64154b;

        public e() {
        }

        @Override
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(ViewCompat.generateViewId());
                }
                Chip chip = (Chip) view2;
                if (chip.isChecked()) {
                    ((ChipGroup) view).m(chip.getId());
                }
                chip.setOnCheckedChangeListenerInternal(ChipGroup.this.f64149k);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f64154b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f64154b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    private int getChipCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11) instanceof Chip) {
                i10++;
            }
        }
        return i10;
    }

    public void setCheckedId(int i10) {
        r(i10, true);
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i11 = this.f64151m;
                if (i11 != -1 && this.f64146h) {
                    s(i11, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i10, layoutParams);
    }

    @Override
    public boolean c() {
        return super.c();
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof c);
    }

    @Override
    @NonNull
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c(-2, -2);
    }

    @Override
    @NonNull
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    @IdRes
    public int getCheckedChipId() {
        if (this.f64146h) {
            return this.f64151m;
        }
        return -1;
    }

    @NonNull
    public List<Integer> getCheckedChipIds() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                arrayList.add(Integer.valueOf(childAt.getId()));
                if (this.f64146h) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    @Dimension
    public int getChipSpacingHorizontal() {
        return this.f64144f;
    }

    @Dimension
    public int getChipSpacingVertical() {
        return this.f64145g;
    }

    public void m(@IdRes int i10) {
        int i11 = this.f64151m;
        if (i10 == i11) {
            return;
        }
        if (i11 != -1 && this.f64146h) {
            s(i11, false);
        }
        if (i10 != -1) {
            s(i10, true);
        }
        setCheckedId(i10);
    }

    public void n() {
        this.f64152n = true;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.f64152n = false;
        setCheckedId(-1);
    }

    public int o(@Nullable View view) {
        if (!(view instanceof Chip)) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11) instanceof Chip) {
                if (((Chip) getChildAt(i11)) == view) {
                    return i10;
                }
                i10++;
            }
        }
        return -1;
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f64151m;
        if (i10 != -1) {
            s(i10, true);
            setCheckedId(this.f64151m);
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCount(), c() ? getChipCount() : -1, false, q() ? 1 : 2));
    }

    public boolean p() {
        return this.f64147i;
    }

    public boolean q() {
        return this.f64146h;
    }

    public final void r(int i10, boolean z10) {
        this.f64151m = i10;
        d dVar = this.f64148j;
        if (dVar != null && this.f64146h && z10) {
            dVar.a(this, i10);
        }
    }

    public final void s(@IdRes int i10, boolean z10) {
        View findViewById = findViewById(i10);
        if (findViewById instanceof Chip) {
            this.f64152n = true;
            ((Chip) findViewById).setChecked(z10);
            this.f64152n = false;
        }
    }

    public void setChipSpacing(@Dimension int i10) {
        setChipSpacingHorizontal(i10);
        setChipSpacingVertical(i10);
    }

    public void setChipSpacingHorizontal(@Dimension int i10) {
        if (this.f64144f != i10) {
            this.f64144f = i10;
            setItemSpacing(i10);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(@DimenRes int i10) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i10));
    }

    public void setChipSpacingResource(@DimenRes int i10) {
        setChipSpacing(getResources().getDimensionPixelOffset(i10));
    }

    public void setChipSpacingVertical(@Dimension int i10) {
        if (this.f64145g != i10) {
            this.f64145g = i10;
            setLineSpacing(i10);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(@DimenRes int i10) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i10));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i10) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(d dVar) {
        this.f64148j = dVar;
    }

    @Override
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f64150l.f64154b = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z10) {
        this.f64147i = z10;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i10) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i10) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override
    public void setSingleLine(boolean z10) {
        super.setSingleLine(z10);
    }

    public void setSingleSelection(boolean z10) {
        if (this.f64146h != z10) {
            this.f64146h = z10;
            n();
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122041M1);
    }

    @Override
    @NonNull
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    public void setSingleLine(@BoolRes int i10) {
        setSingleLine(getResources().getBoolean(i10));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ChipGroup(Context context, AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r4), attributeSet, i10);
        int i11 = f64143o;
        this.f64149k = new b();
        this.f64150l = new e();
        this.f64151m = -1;
        this.f64152n = false;
        TypedArray j10 = s.j(getContext(), attributeSet, C15879a.o.f125718j6, i10, i11, new int[0]);
        int dimensionPixelOffset = j10.getDimensionPixelOffset(C15879a.o.f125769l6, 0);
        setChipSpacingHorizontal(j10.getDimensionPixelOffset(C15879a.o.f125794m6, dimensionPixelOffset));
        setChipSpacingVertical(j10.getDimensionPixelOffset(C15879a.o.f125819n6, dimensionPixelOffset));
        setSingleLine(j10.getBoolean(C15879a.o.f125869p6, false));
        setSingleSelection(j10.getBoolean(C15879a.o.f125894q6, false));
        setSelectionRequired(j10.getBoolean(C15879a.o.f125844o6, false));
        int resourceId = j10.getResourceId(C15879a.o.f125744k6, -1);
        if (resourceId != -1) {
            this.f64151m = resourceId;
        }
        j10.recycle();
        super.setOnHierarchyChangeListener(this.f64150l);
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    public void setSingleSelection(@BoolRes int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }
}

package com.google.android.material.button;

import a2.C3558a;
import a2.C3572o;
import a2.InterfaceC3561d;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.annotation.BoolRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.A;
import com.google.android.material.internal.s;
import h2.C13421a;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;
import w1.C15879a;

public class MaterialButtonToggleGroup extends LinearLayout {

    public static final String f64091l = "MaterialButtonToggleGroup";

    public static final int f64092m = C15879a.n.f124203Eb;

    public final List<d> f64093b;

    public final c f64094c;

    public final f f64095d;

    public final LinkedHashSet<e> f64096e;

    public final Comparator<MaterialButton> f64097f;

    public Integer[] f64098g;

    public boolean f64099h;

    public boolean f64100i;

    public boolean f64101j;

    @IdRes
    public int f64102k;

    public class a implements Comparator<MaterialButton> {
        public a() {
        }

        @Override
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int compareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (compareTo != 0) {
                return compareTo;
            }
            int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            return compareTo2 != 0 ? compareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
        }
    }

    public class b extends AccessibilityDelegateCompat {
        public b() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, MaterialButtonToggleGroup.this.p(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    public class c implements MaterialButton.b {
        public c() {
        }

        @Override
        public void a(@NonNull MaterialButton materialButton, boolean z10) {
            if (MaterialButtonToggleGroup.this.f64099h) {
                return;
            }
            if (MaterialButtonToggleGroup.this.f64100i) {
                MaterialButtonToggleGroup.this.f64102k = z10 ? materialButton.getId() : -1;
            }
            if (MaterialButtonToggleGroup.this.z(materialButton.getId(), z10)) {
                MaterialButtonToggleGroup.this.n(materialButton.getId(), materialButton.isChecked());
            }
            MaterialButtonToggleGroup.this.invalidate();
        }

        public c(MaterialButtonToggleGroup materialButtonToggleGroup, a aVar) {
            this();
        }
    }

    public static class d {

        public static final InterfaceC3561d f64106e = new C3558a(0.0f);

        public InterfaceC3561d f64107a;

        public InterfaceC3561d f64108b;

        public InterfaceC3561d f64109c;

        public InterfaceC3561d f64110d;

        public d(InterfaceC3561d interfaceC3561d, InterfaceC3561d interfaceC3561d2, InterfaceC3561d interfaceC3561d3, InterfaceC3561d interfaceC3561d4) {
            this.f64107a = interfaceC3561d;
            this.f64108b = interfaceC3561d3;
            this.f64109c = interfaceC3561d4;
            this.f64110d = interfaceC3561d2;
        }

        public static d a(d dVar) {
            InterfaceC3561d interfaceC3561d = f64106e;
            return new d(interfaceC3561d, dVar.f64110d, interfaceC3561d, dVar.f64109c);
        }

        public static d b(d dVar, View view) {
            return A.j(view) ? c(dVar) : d(dVar);
        }

        public static d c(d dVar) {
            InterfaceC3561d interfaceC3561d = dVar.f64107a;
            InterfaceC3561d interfaceC3561d2 = dVar.f64110d;
            InterfaceC3561d interfaceC3561d3 = f64106e;
            return new d(interfaceC3561d, interfaceC3561d2, interfaceC3561d3, interfaceC3561d3);
        }

        public static d d(d dVar) {
            InterfaceC3561d interfaceC3561d = f64106e;
            return new d(interfaceC3561d, interfaceC3561d, dVar.f64108b, dVar.f64109c);
        }

        public static d e(d dVar, View view) {
            return A.j(view) ? d(dVar) : c(dVar);
        }

        public static d f(d dVar) {
            InterfaceC3561d interfaceC3561d = dVar.f64107a;
            InterfaceC3561d interfaceC3561d2 = f64106e;
            return new d(interfaceC3561d, interfaceC3561d2, dVar.f64108b, interfaceC3561d2);
        }
    }

    public interface e {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, @IdRes int i10, boolean z10);
    }

    public class f implements MaterialButton.c {
        public f() {
        }

        @Override
        public void a(@NonNull MaterialButton materialButton, boolean z10) {
            MaterialButtonToggleGroup.this.invalidate();
        }

        public f(MaterialButtonToggleGroup materialButtonToggleGroup, a aVar) {
            this();
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context) {
        this(context, null);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (r(i10)) {
                return i10;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (r(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if ((getChildAt(i11) instanceof MaterialButton) && r(i11)) {
                i10++;
            }
        }
        return i10;
    }

    private void setCheckedId(int i10) {
        this.f64102k = i10;
        n(i10, true);
    }

    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(ViewCompat.generateViewId());
        }
    }

    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.a(this.f64094c);
        materialButton.setOnPressedChangeListenerInternal(this.f64095d);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    public static void y(C3572o.b bVar, @Nullable d dVar) {
        if (dVar == null) {
            bVar.o(0.0f);
        } else {
            bVar.L(dVar.f64107a).y(dVar.f64110d).Q(dVar.f64108b).D(dVar.f64109c);
        }
    }

    public final void A() {
        TreeMap treeMap = new TreeMap(this.f64097f);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            treeMap.put(o(i10), Integer.valueOf(i10));
        }
        this.f64098g = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    @VisibleForTesting
    public void B() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i10 = 0; i10 < childCount; i10++) {
            MaterialButton o10 = o(i10);
            if (o10.getVisibility() != 8) {
                C3572o.b v10 = o10.getShapeAppearanceModel().v();
                y(v10, q(i10, firstVisibleChildIndex, lastVisibleChildIndex));
                o10.setShapeAppearanceModel(v10.m());
            }
        }
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e(f64091l, "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i10, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        if (materialButton.isChecked()) {
            z(materialButton.getId(), true);
            setCheckedId(materialButton.getId());
        }
        C3572o shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f64093b.add(new d(shapeAppearanceModel.r(), shapeAppearanceModel.j(), shapeAppearanceModel.t(), shapeAppearanceModel.l()));
        ViewCompat.setAccessibilityDelegate(materialButton, new b());
    }

    @Override
    public void dispatchDraw(@NonNull Canvas canvas) {
        A();
        super.dispatchDraw(canvas);
    }

    public void g(@NonNull e eVar) {
        this.f64096e.add(eVar);
    }

    @Override
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    @IdRes
    public int getCheckedButtonId() {
        if (this.f64100i) {
            return this.f64102k;
        }
        return -1;
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            MaterialButton o10 = o(i10);
            if (o10.isChecked()) {
                arrayList.add(Integer.valueOf(o10.getId()));
            }
        }
        return arrayList;
    }

    @Override
    public int getChildDrawingOrder(int i10, int i11) {
        Integer[] numArr = this.f64098g;
        if (numArr != null && i11 < numArr.length) {
            return numArr[i11].intValue();
        }
        Log.w(f64091l, "Child order wasn't updated");
        return i11;
    }

    public final void h() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i10 = firstVisibleChildIndex + 1; i10 < getChildCount(); i10++) {
            MaterialButton o10 = o(i10);
            int min = Math.min(o10.getStrokeWidth(), o(i10 - 1).getStrokeWidth());
            LinearLayout.LayoutParams i11 = i(o10);
            if (getOrientation() == 0) {
                MarginLayoutParamsCompat.setMarginEnd(i11, 0);
                MarginLayoutParamsCompat.setMarginStart(i11, -min);
                i11.topMargin = 0;
            } else {
                i11.bottomMargin = 0;
                i11.topMargin = -min;
                MarginLayoutParamsCompat.setMarginStart(i11, 0);
            }
            o10.setLayoutParams(i11);
        }
        v(firstVisibleChildIndex);
    }

    @NonNull
    public final LinearLayout.LayoutParams i(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    public void j(@IdRes int i10) {
        if (i10 == this.f64102k) {
            return;
        }
        k(i10, true);
    }

    public final void k(int i10, boolean z10) {
        MaterialButton materialButton = (MaterialButton) findViewById(i10);
        if (materialButton != null) {
            materialButton.setChecked(z10);
        }
    }

    public void l() {
        this.f64099h = true;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            MaterialButton o10 = o(i10);
            o10.setChecked(false);
            n(o10.getId(), false);
        }
        this.f64099h = false;
        setCheckedId(-1);
    }

    public void m() {
        this.f64096e.clear();
    }

    public final void n(@IdRes int i10, boolean z10) {
        Iterator<e> it = this.f64096e.iterator();
        while (it.hasNext()) {
            it.next().a(this, i10, z10);
        }
    }

    public final MaterialButton o(int i10) {
        return (MaterialButton) getChildAt(i10);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f64102k;
        if (i10 != -1) {
            k(i10, true);
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getVisibleButtonCount(), false, t() ? 1 : 2));
    }

    @Override
    public void onMeasure(int i10, int i11) {
        B();
        h();
        super.onMeasure(i10, i11);
    }

    @Override
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.i(this.f64094c);
            materialButton.setOnPressedChangeListenerInternal(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f64093b.remove(indexOfChild);
        }
        B();
        h();
    }

    public final int p(@Nullable View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11) == view) {
                return i10;
            }
            if ((getChildAt(i11) instanceof MaterialButton) && r(i11)) {
                i10++;
            }
        }
        return -1;
    }

    @Nullable
    public final d q(int i10, int i11, int i12) {
        d dVar = this.f64093b.get(i10);
        if (i11 == i12) {
            return dVar;
        }
        boolean z10 = getOrientation() == 0;
        if (i10 == i11) {
            return z10 ? d.e(dVar, this) : d.f(dVar);
        }
        if (i10 == i12) {
            return z10 ? d.b(dVar, this) : d.a(dVar);
        }
        return null;
    }

    public final boolean r(int i10) {
        return getChildAt(i10).getVisibility() != 8;
    }

    public boolean s() {
        return this.f64101j;
    }

    public void setSelectionRequired(boolean z10) {
        this.f64101j = z10;
    }

    public void setSingleSelection(boolean z10) {
        if (this.f64100i != z10) {
            this.f64100i = z10;
            l();
        }
    }

    public boolean t() {
        return this.f64100i;
    }

    public void u(@NonNull e eVar) {
        this.f64096e.remove(eVar);
    }

    public final void v(int i10) {
        if (getChildCount() == 0 || i10 == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) o(i10).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
        } else {
            MarginLayoutParamsCompat.setMarginEnd(layoutParams, 0);
            MarginLayoutParamsCompat.setMarginStart(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    public final void w(@IdRes int i10, boolean z10) {
        View findViewById = findViewById(i10);
        if (findViewById instanceof MaterialButton) {
            this.f64099h = true;
            ((MaterialButton) findViewById).setChecked(z10);
            this.f64099h = false;
        }
    }

    public void x(@IdRes int i10) {
        k(i10, false);
    }

    public final boolean z(int i10, boolean z10) {
        List<Integer> checkedButtonIds = getCheckedButtonIds();
        if (this.f64101j && checkedButtonIds.isEmpty()) {
            w(i10, true);
            this.f64102k = i10;
            return false;
        }
        if (z10 && this.f64100i) {
            checkedButtonIds.remove(Integer.valueOf(i10));
            Iterator<Integer> it = checkedButtonIds.iterator();
            while (it.hasNext()) {
                int intValue = it.next().intValue();
                w(intValue, false);
                n(intValue, false);
            }
        }
        return true;
    }

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122067N9);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r4), attributeSet, i10);
        int i11 = f64092m;
        this.f64093b = new ArrayList();
        a aVar = null;
        this.f64094c = new c(this, aVar);
        this.f64095d = new f(this, aVar);
        this.f64096e = new LinkedHashSet<>();
        this.f64097f = new a();
        this.f64099h = false;
        TypedArray j10 = s.j(getContext(), attributeSet, C15879a.o.f125533bl, i10, i11, new int[0]);
        setSingleSelection(j10.getBoolean(C15879a.o.f125608el, false));
        this.f64102k = j10.getResourceId(C15879a.o.f125558cl, -1);
        this.f64101j = j10.getBoolean(C15879a.o.f125583dl, false);
        setChildrenDrawingOrderEnabled(true);
        j10.recycle();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    public void setSingleSelection(@BoolRes int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }
}

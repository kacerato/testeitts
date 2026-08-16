package T1;

import a2.C3567j;
import a2.C3572o;
import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.util.Pools;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.google.android.material.internal.q;
import java.util.HashSet;
import w1.C15879a;
import x1.C16046a;
import z1.C16241a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public abstract class c extends ViewGroup implements MenuView {

    public static final int f23890C = 5;

    public static final int f23891D = -1;

    public static final int[] f23892E = {R.attr.state_checked};

    public static final int[] f23893F = {-16842910};

    public d f23894A;

    public MenuBuilder f23895B;

    @NonNull
    public final TransitionSet f23896b;

    @NonNull
    public final View.OnClickListener f23897c;

    public final Pools.Pool<T1.a> f23898d;

    @NonNull
    public final SparseArray<View.OnTouchListener> f23899e;

    public int f23900f;

    @Nullable
    public T1.a[] f23901g;

    public int f23902h;

    public int f23903i;

    @Nullable
    public ColorStateList f23904j;

    @Dimension
    public int f23905k;

    public ColorStateList f23906l;

    @Nullable
    public final ColorStateList f23907m;

    @StyleRes
    public int f23908n;

    @StyleRes
    public int f23909o;

    public Drawable f23910p;

    public int f23911q;

    @NonNull
    public SparseArray<C16241a> f23912r;

    public int f23913s;

    public int f23914t;

    public boolean f23915u;

    public int f23916v;

    public int f23917w;

    public int f23918x;

    public C3572o f23919y;

    public ColorStateList f23920z;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            MenuItemImpl itemData = ((T1.a) view).getItemData();
            if (c.this.f23895B.performItemAction(itemData, c.this.f23894A, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    public c(@NonNull Context context) {
        super(context);
        this.f23898d = new Pools.SynchronizedPool(5);
        this.f23899e = new SparseArray<>(5);
        this.f23902h = 0;
        this.f23903i = 0;
        this.f23912r = new SparseArray<>(5);
        this.f23913s = -1;
        this.f23914t = -1;
        this.f23907m = d(R.attr.textColorSecondary);
        AutoTransition autoTransition = new AutoTransition();
        this.f23896b = autoTransition;
        autoTransition.setOrdering(0);
        autoTransition.setDuration(S1.a.d(getContext(), C15879a.c.f121996Ja, getResources().getInteger(C15879a.i.f123890j)));
        autoTransition.setInterpolator(S1.a.e(getContext(), C15879a.c.f122172Ta, C16046a.f127889b));
        autoTransition.addTransition(new q());
        this.f23897c = new a();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    private T1.a getNewItem() {
        T1.a acquire = this.f23898d.acquire();
        return acquire == null ? f(getContext()) : acquire;
    }

    private void setBadgeIfNeeded(@NonNull T1.a aVar) {
        C16241a c16241a;
        int id2 = aVar.getId();
        if (k(id2) && (c16241a = this.f23912r.get(id2)) != null) {
            aVar.setBadge(c16241a);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void c() {
        removeAllViews();
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                if (aVar != null) {
                    this.f23898d.release(aVar);
                    aVar.j();
                }
            }
        }
        if (this.f23895B.size() == 0) {
            this.f23902h = 0;
            this.f23903i = 0;
            this.f23901g = null;
            return;
        }
        m();
        this.f23901g = new T1.a[this.f23895B.size()];
        boolean j10 = j(this.f23900f, this.f23895B.getVisibleItems().size());
        for (int i10 = 0; i10 < this.f23895B.size(); i10++) {
            this.f23894A.c(true);
            this.f23895B.getItem(i10).setCheckable(true);
            this.f23894A.c(false);
            T1.a newItem = getNewItem();
            this.f23901g[i10] = newItem;
            newItem.setIconTintList(this.f23904j);
            newItem.setIconSize(this.f23905k);
            newItem.setTextColor(this.f23907m);
            newItem.setTextAppearanceInactive(this.f23908n);
            newItem.setTextAppearanceActive(this.f23909o);
            newItem.setTextColor(this.f23906l);
            int i11 = this.f23913s;
            if (i11 != -1) {
                newItem.setItemPaddingTop(i11);
            }
            int i12 = this.f23914t;
            if (i12 != -1) {
                newItem.setItemPaddingBottom(i12);
            }
            newItem.setActiveIndicatorWidth(this.f23916v);
            newItem.setActiveIndicatorHeight(this.f23917w);
            newItem.setActiveIndicatorMarginHorizontal(this.f23918x);
            newItem.setActiveIndicatorDrawable(e());
            newItem.setActiveIndicatorEnabled(this.f23915u);
            Drawable drawable = this.f23910p;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f23911q);
            }
            newItem.setShifting(j10);
            newItem.setLabelVisibilityMode(this.f23900f);
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.f23895B.getItem(i10);
            newItem.initialize(menuItemImpl, 0);
            newItem.setItemPosition(i10);
            int itemId = menuItemImpl.getItemId();
            newItem.setOnTouchListener(this.f23899e.get(itemId));
            newItem.setOnClickListener(this.f23897c);
            int i13 = this.f23902h;
            if (i13 != 0 && itemId == i13) {
                this.f23903i = i10;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int min = Math.min(this.f23895B.size() - 1, this.f23903i);
        this.f23903i = min;
        this.f23895B.getItem(min).setChecked(true);
    }

    @Nullable
    public ColorStateList d(int i10) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = f23893F;
        return new ColorStateList(new int[][]{iArr, f23892E, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i11, defaultColor});
    }

    @Nullable
    public final Drawable e() {
        if (this.f23919y == null || this.f23920z == null) {
            return null;
        }
        C3567j c3567j = new C3567j(this.f23919y);
        c3567j.n0(this.f23920z);
        return c3567j;
    }

    @NonNull
    public abstract T1.a f(@NonNull Context context);

    @Nullable
    public T1.a g(int i10) {
        q(i10);
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr == null) {
            return null;
        }
        for (T1.a aVar : aVarArr) {
            if (aVar.getId() == i10) {
                return aVar;
            }
        }
        return null;
    }

    public SparseArray<C16241a> getBadgeDrawables() {
        return this.f23912r;
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.f23904j;
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.f23920z;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.f23915u;
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        return this.f23917w;
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f23918x;
    }

    @Nullable
    public C3572o getItemActiveIndicatorShapeAppearance() {
        return this.f23919y;
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        return this.f23916v;
    }

    @Nullable
    public Drawable getItemBackground() {
        T1.a[] aVarArr = this.f23901g;
        return (aVarArr == null || aVarArr.length <= 0) ? this.f23910p : aVarArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f23911q;
    }

    @Dimension
    public int getItemIconSize() {
        return this.f23905k;
    }

    @Px
    public int getItemPaddingBottom() {
        return this.f23914t;
    }

    @Px
    public int getItemPaddingTop() {
        return this.f23913s;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f23909o;
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f23908n;
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f23906l;
    }

    public int getLabelVisibilityMode() {
        return this.f23900f;
    }

    @Nullable
    public MenuBuilder getMenu() {
        return this.f23895B;
    }

    public int getSelectedItemId() {
        return this.f23902h;
    }

    public int getSelectedItemPosition() {
        return this.f23903i;
    }

    @Override
    public int getWindowAnimations() {
        return 0;
    }

    @Nullable
    public C16241a h(int i10) {
        return this.f23912r.get(i10);
    }

    public C16241a i(int i10) {
        q(i10);
        C16241a c16241a = this.f23912r.get(i10);
        if (c16241a == null) {
            c16241a = C16241a.d(getContext());
            this.f23912r.put(i10, c16241a);
        }
        T1.a g10 = g(i10);
        if (g10 != null) {
            g10.setBadge(c16241a);
        }
        return c16241a;
    }

    @Override
    public void initialize(@NonNull MenuBuilder menuBuilder) {
        this.f23895B = menuBuilder;
    }

    public boolean j(int i10, int i11) {
        if (i10 == -1) {
            if (i11 <= 3) {
                return false;
            }
        } else if (i10 != 0) {
            return false;
        }
        return true;
    }

    public final boolean k(int i10) {
        return i10 != -1;
    }

    public void l(int i10) {
        q(i10);
        C16241a c16241a = this.f23912r.get(i10);
        T1.a g10 = g(i10);
        if (g10 != null) {
            g10.j();
        }
        if (c16241a != null) {
            this.f23912r.remove(i10);
        }
    }

    public final void m() {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < this.f23895B.size(); i10++) {
            hashSet.add(Integer.valueOf(this.f23895B.getItem(i10).getItemId()));
        }
        for (int i11 = 0; i11 < this.f23912r.size(); i11++) {
            int keyAt = this.f23912r.keyAt(i11);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                this.f23912r.delete(keyAt);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void n(int i10, @Nullable View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.f23899e.remove(i10);
        } else {
            this.f23899e.put(i10, onTouchListener);
        }
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                if (aVar.getItemData().getItemId() == i10) {
                    aVar.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public void o(int i10) {
        int size = this.f23895B.size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = this.f23895B.getItem(i11);
            if (i10 == item.getItemId()) {
                this.f23902h = i10;
                this.f23903i = i11;
                item.setChecked(true);
                return;
            }
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f23895B.getVisibleItems().size(), false, 1));
    }

    public void p() {
        MenuBuilder menuBuilder = this.f23895B;
        if (menuBuilder == null || this.f23901g == null) {
            return;
        }
        int size = menuBuilder.size();
        if (size != this.f23901g.length) {
            c();
            return;
        }
        int i10 = this.f23902h;
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = this.f23895B.getItem(i11);
            if (item.isChecked()) {
                this.f23902h = item.getItemId();
                this.f23903i = i11;
            }
        }
        if (i10 != this.f23902h) {
            TransitionManager.beginDelayedTransition(this, this.f23896b);
        }
        boolean j10 = j(this.f23900f, this.f23895B.getVisibleItems().size());
        for (int i12 = 0; i12 < size; i12++) {
            this.f23894A.c(true);
            this.f23901g[i12].setLabelVisibilityMode(this.f23900f);
            this.f23901g[i12].setShifting(j10);
            this.f23901g[i12].initialize((MenuItemImpl) this.f23895B.getItem(i12), 0);
            this.f23894A.c(false);
        }
    }

    public final void q(int i10) {
        if (k(i10)) {
            return;
        }
        throw new IllegalArgumentException(i10 + " is not a valid view id");
    }

    public void setBadgeDrawables(SparseArray<C16241a> sparseArray) {
        this.f23912r = sparseArray;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setBadge(sparseArray.get(aVar.getId()));
            }
        }
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f23904j = colorStateList;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.f23920z = colorStateList;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setActiveIndicatorDrawable(e());
            }
        }
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.f23915u = z10;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setActiveIndicatorEnabled(z10);
            }
        }
    }

    public void setItemActiveIndicatorHeight(@Px int i10) {
        this.f23917w = i10;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setActiveIndicatorHeight(i10);
            }
        }
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i10) {
        this.f23918x = i10;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setActiveIndicatorMarginHorizontal(i10);
            }
        }
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable C3572o c3572o) {
        this.f23919y = c3572o;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setActiveIndicatorDrawable(e());
            }
        }
    }

    public void setItemActiveIndicatorWidth(@Px int i10) {
        this.f23916v = i10;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setActiveIndicatorWidth(i10);
            }
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f23910p = drawable;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i10) {
        this.f23911q = i10;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setItemBackground(i10);
            }
        }
    }

    public void setItemIconSize(@Dimension int i10) {
        this.f23905k = i10;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setIconSize(i10);
            }
        }
    }

    public void setItemPaddingBottom(@Px int i10) {
        this.f23914t = i10;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setItemPaddingBottom(i10);
            }
        }
    }

    public void setItemPaddingTop(@Px int i10) {
        this.f23913s = i10;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setItemPaddingTop(i10);
            }
        }
    }

    public void setItemTextAppearanceActive(@StyleRes int i10) {
        this.f23909o = i10;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setTextAppearanceActive(i10);
                ColorStateList colorStateList = this.f23906l;
                if (colorStateList != null) {
                    aVar.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(@StyleRes int i10) {
        this.f23908n = i10;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setTextAppearanceInactive(i10);
                ColorStateList colorStateList = this.f23906l;
                if (colorStateList != null) {
                    aVar.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f23906l = colorStateList;
        T1.a[] aVarArr = this.f23901g;
        if (aVarArr != null) {
            for (T1.a aVar : aVarArr) {
                aVar.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i10) {
        this.f23900f = i10;
    }

    public void setPresenter(@NonNull d dVar) {
        this.f23894A = dVar;
    }
}

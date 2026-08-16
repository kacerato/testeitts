package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Dimension;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import java.util.ArrayList;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class i implements MenuPresenter {

    public static final String f64705A = "android:menu:adapter";

    public static final String f64706B = "android:menu:header";

    public static final int f64707y = 0;

    public static final String f64708z = "android:menu:list";

    public NavigationMenuView f64709b;

    public LinearLayout f64710c;

    public MenuPresenter.Callback f64711d;

    public MenuBuilder f64712e;

    public int f64713f;

    public c f64714g;

    public LayoutInflater f64715h;

    @Nullable
    public ColorStateList f64717j;

    public ColorStateList f64719l;

    public ColorStateList f64720m;

    public Drawable f64721n;

    public int f64722o;

    public int f64723p;

    public int f64724q;

    public boolean f64725r;

    public int f64727t;

    public int f64728u;

    public int f64729v;

    public int f64716i = 0;

    public int f64718k = 0;

    public boolean f64726s = true;

    public int f64730w = -1;

    public final View.OnClickListener f64731x = new a();

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            boolean z10 = true;
            i.this.D(true);
            MenuItemImpl itemData = ((NavigationMenuItemView) view).getItemData();
            i iVar = i.this;
            boolean performItemAction = iVar.f64712e.performItemAction(itemData, iVar, 0);
            if (itemData != null && itemData.isCheckable() && performItemAction) {
                i.this.f64714g.p(itemData);
            } else {
                z10 = false;
            }
            i.this.D(false);
            if (z10) {
                i.this.updateMenuView(false);
            }
        }
    }

    public static class b extends l {
        public b(View view) {
            super(view);
        }
    }

    public class c extends RecyclerView.Adapter<l> {

        public static final String f64733e = "android:menu:checked";

        public static final String f64734f = "android:menu:action_views";

        public static final int f64735g = 0;

        public static final int f64736h = 1;

        public static final int f64737i = 2;

        public static final int f64738j = 3;

        public final ArrayList<e> f64739a = new ArrayList<>();

        public MenuItemImpl f64740b;

        public boolean f64741c;

        public c() {
            n();
        }

        public final void g(int i10, int i11) {
            while (i10 < i11) {
                ((g) this.f64739a.get(i10)).f64746b = true;
                i10++;
            }
        }

        @Override
        public int getItemCount() {
            return this.f64739a.size();
        }

        @Override
        public long getItemId(int i10) {
            return i10;
        }

        @Override
        public int getItemViewType(int i10) {
            e eVar = this.f64739a.get(i10);
            if (eVar instanceof f) {
                return 2;
            }
            if (eVar instanceof d) {
                return 3;
            }
            if (eVar instanceof g) {
                return ((g) eVar).a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @NonNull
        public Bundle h() {
            Bundle bundle = new Bundle();
            MenuItemImpl menuItemImpl = this.f64740b;
            if (menuItemImpl != null) {
                bundle.putInt(f64733e, menuItemImpl.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f64739a.size();
            for (int i10 = 0; i10 < size; i10++) {
                e eVar = this.f64739a.get(i10);
                if (eVar instanceof g) {
                    MenuItemImpl a10 = ((g) eVar).a();
                    View actionView = a10 != null ? a10.getActionView() : null;
                    if (actionView != null) {
                        com.google.android.material.internal.k kVar = new com.google.android.material.internal.k();
                        actionView.saveHierarchyState(kVar);
                        sparseArray.put(a10.getItemId(), kVar);
                    }
                }
            }
            bundle.putSparseParcelableArray(f64734f, sparseArray);
            return bundle;
        }

        public MenuItemImpl i() {
            return this.f64740b;
        }

        public int j() {
            int i10 = i.this.f64710c.getChildCount() == 0 ? 0 : 1;
            for (int i11 = 0; i11 < i.this.f64714g.getItemCount(); i11++) {
                if (i.this.f64714g.getItemViewType(i11) == 0) {
                    i10++;
                }
            }
            return i10;
        }

        @Override
        public void onBindViewHolder(@NonNull l lVar, int i10) {
            int itemViewType = getItemViewType(i10);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    if (itemViewType != 2) {
                        return;
                    }
                    f fVar = (f) this.f64739a.get(i10);
                    lVar.itemView.setPadding(0, fVar.b(), 0, fVar.a());
                    return;
                }
                TextView textView = (TextView) lVar.itemView;
                textView.setText(((g) this.f64739a.get(i10)).a().getTitle());
                int i11 = i.this.f64716i;
                if (i11 != 0) {
                    TextViewCompat.setTextAppearance(textView, i11);
                }
                ColorStateList colorStateList = i.this.f64717j;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                    return;
                }
                return;
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) lVar.itemView;
            navigationMenuItemView.setIconTintList(i.this.f64720m);
            int i12 = i.this.f64718k;
            if (i12 != 0) {
                navigationMenuItemView.setTextAppearance(i12);
            }
            ColorStateList colorStateList2 = i.this.f64719l;
            if (colorStateList2 != null) {
                navigationMenuItemView.setTextColor(colorStateList2);
            }
            Drawable drawable = i.this.f64721n;
            ViewCompat.setBackground(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            g gVar = (g) this.f64739a.get(i10);
            navigationMenuItemView.setNeedsEmptyIcon(gVar.f64746b);
            navigationMenuItemView.setHorizontalPadding(i.this.f64722o);
            navigationMenuItemView.setIconPadding(i.this.f64723p);
            i iVar = i.this;
            if (iVar.f64725r) {
                navigationMenuItemView.setIconSize(iVar.f64724q);
            }
            navigationMenuItemView.setMaxLines(i.this.f64727t);
            navigationMenuItemView.initialize(gVar.a(), 0);
        }

        @Override
        @Nullable
        public l onCreateViewHolder(ViewGroup viewGroup, int i10) {
            if (i10 == 0) {
                i iVar = i.this;
                return new C0966i(iVar.f64715h, viewGroup, iVar.f64731x);
            }
            if (i10 == 1) {
                return new k(i.this.f64715h, viewGroup);
            }
            if (i10 == 2) {
                return new j(i.this.f64715h, viewGroup);
            }
            if (i10 != 3) {
                return null;
            }
            return new b(i.this.f64710c);
        }

        @Override
        public void onViewRecycled(l lVar) {
            if (lVar instanceof C0966i) {
                ((NavigationMenuItemView) lVar.itemView).c();
            }
        }

        public final void n() {
            if (this.f64741c) {
                return;
            }
            boolean z10 = true;
            this.f64741c = true;
            this.f64739a.clear();
            this.f64739a.add(new d());
            int size = i.this.f64712e.getVisibleItems().size();
            int i10 = -1;
            int i11 = 0;
            boolean z11 = false;
            int i12 = 0;
            while (i11 < size) {
                MenuItemImpl menuItemImpl = i.this.f64712e.getVisibleItems().get(i11);
                if (menuItemImpl.isChecked()) {
                    p(menuItemImpl);
                }
                if (menuItemImpl.isCheckable()) {
                    menuItemImpl.setExclusiveCheckable(false);
                }
                if (menuItemImpl.hasSubMenu()) {
                    SubMenu subMenu = menuItemImpl.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i11 != 0) {
                            this.f64739a.add(new f(i.this.f64729v, 0));
                        }
                        this.f64739a.add(new g(menuItemImpl));
                        int size2 = this.f64739a.size();
                        int size3 = subMenu.size();
                        int i13 = 0;
                        boolean z12 = false;
                        while (i13 < size3) {
                            MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i13);
                            if (menuItemImpl2.isVisible()) {
                                if (!z12 && menuItemImpl2.getIcon() != null) {
                                    z12 = z10;
                                }
                                if (menuItemImpl2.isCheckable()) {
                                    menuItemImpl2.setExclusiveCheckable(false);
                                }
                                if (menuItemImpl.isChecked()) {
                                    p(menuItemImpl);
                                }
                                this.f64739a.add(new g(menuItemImpl2));
                            }
                            i13++;
                            z10 = true;
                        }
                        if (z12) {
                            g(size2, this.f64739a.size());
                        }
                    }
                } else {
                    int groupId = menuItemImpl.getGroupId();
                    if (groupId != i10) {
                        i12 = this.f64739a.size();
                        z11 = menuItemImpl.getIcon() != null;
                        if (i11 != 0) {
                            i12++;
                            ArrayList<e> arrayList = this.f64739a;
                            int i14 = i.this.f64729v;
                            arrayList.add(new f(i14, i14));
                        }
                    } else if (!z11 && menuItemImpl.getIcon() != null) {
                        g(i12, this.f64739a.size());
                        z11 = true;
                    }
                    g gVar = new g(menuItemImpl);
                    gVar.f64746b = z11;
                    this.f64739a.add(gVar);
                    i10 = groupId;
                }
                i11++;
                z10 = true;
            }
            this.f64741c = false;
        }

        public void o(@NonNull Bundle bundle) {
            MenuItemImpl a10;
            View actionView;
            com.google.android.material.internal.k kVar;
            MenuItemImpl a11;
            int i10 = bundle.getInt(f64733e, 0);
            if (i10 != 0) {
                this.f64741c = true;
                int size = this.f64739a.size();
                int i11 = 0;
                while (true) {
                    if (i11 >= size) {
                        break;
                    }
                    e eVar = this.f64739a.get(i11);
                    if ((eVar instanceof g) && (a11 = ((g) eVar).a()) != null && a11.getItemId() == i10) {
                        p(a11);
                        break;
                    }
                    i11++;
                }
                this.f64741c = false;
                n();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(f64734f);
            if (sparseParcelableArray != null) {
                int size2 = this.f64739a.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    e eVar2 = this.f64739a.get(i12);
                    if ((eVar2 instanceof g) && (a10 = ((g) eVar2).a()) != null && (actionView = a10.getActionView()) != null && (kVar = (com.google.android.material.internal.k) sparseParcelableArray.get(a10.getItemId())) != null) {
                        actionView.restoreHierarchyState(kVar);
                    }
                }
            }
        }

        public void p(@NonNull MenuItemImpl menuItemImpl) {
            if (this.f64740b == menuItemImpl || !menuItemImpl.isCheckable()) {
                return;
            }
            MenuItemImpl menuItemImpl2 = this.f64740b;
            if (menuItemImpl2 != null) {
                menuItemImpl2.setChecked(false);
            }
            this.f64740b = menuItemImpl;
            menuItemImpl.setChecked(true);
        }

        public void q(boolean z10) {
            this.f64741c = z10;
        }

        public void r() {
            n();
            notifyDataSetChanged();
        }
    }

    public static class d implements e {
    }

    public interface e {
    }

    public static class f implements e {

        public final int f64743a;

        public final int f64744b;

        public f(int i10, int i11) {
            this.f64743a = i10;
            this.f64744b = i11;
        }

        public int a() {
            return this.f64744b;
        }

        public int b() {
            return this.f64743a;
        }
    }

    public static class g implements e {

        public final MenuItemImpl f64745a;

        public boolean f64746b;

        public g(MenuItemImpl menuItemImpl) {
            this.f64745a = menuItemImpl;
        }

        public MenuItemImpl a() {
            return this.f64745a;
        }
    }

    public class h extends RecyclerViewAccessibilityDelegate {
        public h(@NonNull RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(i.this.f64714g.j(), 0, false));
        }
    }

    public static class C0966i extends l {
        public C0966i(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(C15879a.k.f123938K, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    public static class j extends l {
        public j(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C15879a.k.f123942M, viewGroup, false));
        }
    }

    public static class k extends l {
        public k(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C15879a.k.f123944N, viewGroup, false));
        }
    }

    public static abstract class l extends RecyclerView.ViewHolder {
        public l(View view) {
            super(view);
        }
    }

    public void A(int i10) {
        this.f64730w = i10;
        NavigationMenuView navigationMenuView = this.f64709b;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i10);
        }
    }

    public void B(@Nullable ColorStateList colorStateList) {
        this.f64717j = colorStateList;
        updateMenuView(false);
    }

    public void C(@StyleRes int i10) {
        this.f64716i = i10;
        updateMenuView(false);
    }

    public void D(boolean z10) {
        c cVar = this.f64714g;
        if (cVar != null) {
            cVar.q(z10);
        }
    }

    public final void E() {
        int i10 = (this.f64710c.getChildCount() == 0 && this.f64726s) ? this.f64728u : 0;
        NavigationMenuView navigationMenuView = this.f64709b;
        navigationMenuView.setPadding(0, i10, 0, navigationMenuView.getPaddingBottom());
    }

    public void b(@NonNull View view) {
        this.f64710c.addView(view);
        NavigationMenuView navigationMenuView = this.f64709b;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    public void c(@NonNull WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.f64728u != systemWindowInsetTop) {
            this.f64728u = systemWindowInsetTop;
            E();
        }
        NavigationMenuView navigationMenuView = this.f64709b;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, windowInsetsCompat.getSystemWindowInsetBottom());
        ViewCompat.dispatchApplyWindowInsets(this.f64710c, windowInsetsCompat);
    }

    @Override
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Nullable
    public MenuItemImpl d() {
        return this.f64714g.i();
    }

    public int e() {
        return this.f64710c.getChildCount();
    }

    @Override
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public View f(int i10) {
        return this.f64710c.getChildAt(i10);
    }

    @Override
    public boolean flagActionItems() {
        return false;
    }

    @Nullable
    public Drawable g() {
        return this.f64721n;
    }

    @Override
    public int getId() {
        return this.f64713f;
    }

    @Override
    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.f64709b == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.f64715h.inflate(C15879a.k.f123946O, viewGroup, false);
            this.f64709b = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new h(this.f64709b));
            if (this.f64714g == null) {
                this.f64714g = new c();
            }
            int i10 = this.f64730w;
            if (i10 != -1) {
                this.f64709b.setOverScrollMode(i10);
            }
            this.f64710c = (LinearLayout) this.f64715h.inflate(C15879a.k.f123940L, (ViewGroup) this.f64709b, false);
            this.f64709b.setAdapter(this.f64714g);
        }
        return this.f64709b;
    }

    public int h() {
        return this.f64722o;
    }

    public int i() {
        return this.f64723p;
    }

    @Override
    public void initForMenu(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.f64715h = LayoutInflater.from(context);
        this.f64712e = menuBuilder;
        this.f64729v = context.getResources().getDimensionPixelOffset(C15879a.f.f123318s1);
    }

    public int j() {
        return this.f64727t;
    }

    @Nullable
    public ColorStateList k() {
        return this.f64719l;
    }

    @Nullable
    public ColorStateList l() {
        return this.f64720m;
    }

    public View m(@LayoutRes int i10) {
        View inflate = this.f64715h.inflate(i10, (ViewGroup) this.f64710c, false);
        b(inflate);
        return inflate;
    }

    public boolean n() {
        return this.f64726s;
    }

    public void o(@NonNull View view) {
        this.f64710c.removeView(view);
        if (this.f64710c.getChildCount() == 0) {
            NavigationMenuView navigationMenuView = this.f64709b;
            navigationMenuView.setPadding(0, this.f64728u, 0, navigationMenuView.getPaddingBottom());
        }
    }

    @Override
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z10) {
        MenuPresenter.Callback callback = this.f64711d;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z10);
        }
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f64709b.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle(f64705A);
            if (bundle2 != null) {
                this.f64714g.o(bundle2);
            }
            SparseArray<Parcelable> sparseParcelableArray2 = bundle.getSparseParcelableArray(f64706B);
            if (sparseParcelableArray2 != null) {
                this.f64710c.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override
    @NonNull
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.f64709b != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f64709b.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        c cVar = this.f64714g;
        if (cVar != null) {
            bundle.putBundle(f64705A, cVar.h());
        }
        if (this.f64710c != null) {
            SparseArray<Parcelable> sparseArray2 = new SparseArray<>();
            this.f64710c.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray(f64706B, sparseArray2);
        }
        return bundle;
    }

    @Override
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    public void p(boolean z10) {
        if (this.f64726s != z10) {
            this.f64726s = z10;
            E();
        }
    }

    public void q(@NonNull MenuItemImpl menuItemImpl) {
        this.f64714g.p(menuItemImpl);
    }

    public void r(int i10) {
        this.f64713f = i10;
    }

    public void s(@Nullable Drawable drawable) {
        this.f64721n = drawable;
        updateMenuView(false);
    }

    @Override
    public void setCallback(MenuPresenter.Callback callback) {
        this.f64711d = callback;
    }

    public void t(int i10) {
        this.f64722o = i10;
        updateMenuView(false);
    }

    public void u(int i10) {
        this.f64723p = i10;
        updateMenuView(false);
    }

    @Override
    public void updateMenuView(boolean z10) {
        c cVar = this.f64714g;
        if (cVar != null) {
            cVar.r();
        }
    }

    public void v(@Dimension int i10) {
        if (this.f64724q != i10) {
            this.f64724q = i10;
            this.f64725r = true;
            updateMenuView(false);
        }
    }

    public void w(@Nullable ColorStateList colorStateList) {
        this.f64720m = colorStateList;
        updateMenuView(false);
    }

    public void x(int i10) {
        this.f64727t = i10;
        updateMenuView(false);
    }

    public void y(@StyleRes int i10) {
        this.f64718k = i10;
        updateMenuView(false);
    }

    public void z(@Nullable ColorStateList colorStateList) {
        this.f64719l = colorStateList;
        updateMenuView(false);
    }
}

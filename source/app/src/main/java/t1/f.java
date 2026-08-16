package T1;

import a2.C3567j;
import a2.C3568k;
import a2.C3572o;
import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.C12454b;
import com.google.android.material.internal.h;
import com.google.android.material.internal.i;
import com.google.android.material.internal.n;
import com.google.android.material.internal.s;
import h2.C13421a;
import w1.C15879a;

public class f extends n {

    public static final int[] f23942n = {R.attr.state_checked};

    public static final int[] f23943o = {-16842910};

    public static final int f23944p = C15879a.n.f124845ya;

    public static final int f23945q = 1;

    @NonNull
    public final h f23946g;

    public final i f23947h;

    public c f23948i;

    public final int f23949j;

    public final int[] f23950k;

    public MenuInflater f23951l;

    public ViewTreeObserver.OnGlobalLayoutListener f23952m;

    public class a implements MenuBuilder.Callback {
        public a() {
        }

        @Override
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            c cVar = f.this.f23948i;
            return cVar != null && cVar.a(menuItem);
        }

        @Override
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        public b() {
        }

        @Override
        public void onGlobalLayout() {
            f fVar = f.this;
            fVar.getLocationOnScreen(fVar.f23950k);
            boolean z10 = f.this.f23950k[1] == 0;
            f.this.f23947h.p(z10);
            f.this.setDrawTopInsetForeground(z10);
            Activity a10 = C12454b.a(f.this.getContext());
            if (a10 != null) {
                f.this.setDrawBottomInsetForeground((a10.findViewById(16908290).getHeight() == f.this.getHeight()) && (Color.alpha(a10.getWindow().getNavigationBarColor()) != 0));
            }
        }
    }

    public interface c {
        boolean a(@NonNull MenuItem menuItem);
    }

    public f(@NonNull Context context) {
        this(context, null);
    }

    private MenuInflater getMenuInflater() {
        if (this.f23951l == null) {
            this.f23951l = new SupportMenuInflater(getContext());
        }
        return this.f23951l;
    }

    @Override
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void a(@NonNull WindowInsetsCompat windowInsetsCompat) {
        this.f23947h.c(windowInsetsCompat);
    }

    public void d(@NonNull View view) {
        this.f23947h.b(view);
    }

    @Nullable
    public final ColorStateList e(int i10) {
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
        int[] iArr = f23943o;
        return new ColorStateList(new int[][]{iArr, f23942n, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i11, defaultColor});
    }

    @NonNull
    public final Drawable f(@NonNull TintTypedArray tintTypedArray) {
        C3567j c3567j = new C3567j(C3572o.b(getContext(), tintTypedArray.getResourceId(C15879a.o.Ao, 0), tintTypedArray.getResourceId(C15879a.o.Bo, 0)).m());
        c3567j.n0(X1.c.b(getContext(), tintTypedArray, C15879a.o.Co));
        return new InsetDrawable((Drawable) c3567j, tintTypedArray.getDimensionPixelSize(C15879a.o.Fo, 0), tintTypedArray.getDimensionPixelSize(C15879a.o.Go, 0), tintTypedArray.getDimensionPixelSize(C15879a.o.Eo, 0), tintTypedArray.getDimensionPixelSize(C15879a.o.Do, 0));
    }

    public View g(int i10) {
        return this.f23947h.f(i10);
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.f23947h.d();
    }

    public int getHeaderCount() {
        return this.f23947h.e();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f23947h.g();
    }

    @Dimension
    public int getItemHorizontalPadding() {
        return this.f23947h.h();
    }

    @Dimension
    public int getItemIconPadding() {
        return this.f23947h.i();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f23947h.l();
    }

    public int getItemMaxLines() {
        return this.f23947h.j();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f23947h.k();
    }

    @NonNull
    public Menu getMenu() {
        return this.f23946g;
    }

    public final boolean h(@NonNull TintTypedArray tintTypedArray) {
        return tintTypedArray.hasValue(C15879a.o.Ao) || tintTypedArray.hasValue(C15879a.o.Bo);
    }

    public View i(@LayoutRes int i10) {
        return this.f23947h.m(i10);
    }

    public void j(int i10) {
        this.f23947h.D(true);
        getMenuInflater().inflate(i10, this.f23946g);
        this.f23947h.D(false);
        this.f23947h.updateMenuView(false);
    }

    public void k(@NonNull View view) {
        this.f23947h.o(view);
    }

    public final void l() {
        this.f23952m = new b();
        getViewTreeObserver().addOnGlobalLayoutListener(this.f23952m);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3568k.e(this);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f23952m);
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == Integer.MIN_VALUE) {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), this.f23949j), 1073741824);
        } else if (mode == 0) {
            i10 = View.MeasureSpec.makeMeasureSpec(this.f23949j, 1073741824);
        }
        super.onMeasure(i10, i11);
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.getSuperState());
        this.f23946g.restorePresenterStates(dVar.f23955b);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        d dVar = new d(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        dVar.f23955b = bundle;
        this.f23946g.savePresenterStates(bundle);
        return dVar;
    }

    public void setCheckedItem(@IdRes int i10) {
        MenuItem findItem = this.f23946g.findItem(i10);
        if (findItem != null) {
            this.f23947h.q((MenuItemImpl) findItem);
        }
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        C3568k.d(this, f10);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f23947h.s(drawable);
    }

    public void setItemBackgroundResource(@DrawableRes int i10) {
        setItemBackground(ContextCompat.getDrawable(getContext(), i10));
    }

    public void setItemHorizontalPadding(@Dimension int i10) {
        this.f23947h.t(i10);
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i10) {
        this.f23947h.t(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconPadding(@Dimension int i10) {
        this.f23947h.u(i10);
    }

    public void setItemIconPaddingResource(int i10) {
        this.f23947h.u(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconSize(@Dimension int i10) {
        this.f23947h.v(i10);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f23947h.w(colorStateList);
    }

    public void setItemMaxLines(int i10) {
        this.f23947h.x(i10);
    }

    public void setItemTextAppearance(@StyleRes int i10) {
        this.f23947h.y(i10);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f23947h.z(colorStateList);
    }

    public void setNavigationItemSelectedListener(@Nullable c cVar) {
        this.f23948i = cVar;
    }

    @Override
    public void setOverScrollMode(int i10) {
        super.setOverScrollMode(i10);
        i iVar = this.f23947h;
        if (iVar != null) {
            iVar.A(i10);
        }
    }

    public static class d extends AbsSavedState {
        public static final Parcelable.Creator<d> CREATOR = new a();

        @Nullable
        public Bundle f23955b;

        public static class a implements Parcelable.ClassLoaderCreator<d> {
            @Override
            @Nullable
            public d createFromParcel(@NonNull Parcel parcel) {
                return new d(parcel, null);
            }

            @Override
            @NonNull
            public d createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new d(parcel, classLoader);
            }

            @Override
            @NonNull
            public d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f23955b = parcel.readBundle(classLoader);
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.f23955b);
        }

        public d(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public f(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122453jb);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public f(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r6), attributeSet, i10);
        ColorStateList e10;
        int i11 = f23944p;
        i iVar = new i();
        this.f23947h = iVar;
        this.f23950k = new int[2];
        Context context2 = getContext();
        h hVar = new h(context2);
        this.f23946g = hVar;
        TintTypedArray k10 = s.k(context2, attributeSet, C15879a.o.oo, i10, i11, new int[0]);
        int i12 = C15879a.o.po;
        if (k10.hasValue(i12)) {
            ViewCompat.setBackground(this, k10.getDrawable(i12));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            C3572o m10 = C3572o.e(context2, attributeSet, i10, i11).m();
            Drawable background = getBackground();
            C3567j c3567j = new C3567j(m10);
            if (background instanceof ColorDrawable) {
                c3567j.n0(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            c3567j.Y(context2);
            ViewCompat.setBackground(this, c3567j);
        }
        if (k10.hasValue(C15879a.o.so)) {
            setElevation(k10.getDimensionPixelSize(r13, 0));
        }
        setFitsSystemWindows(k10.getBoolean(C15879a.o.qo, false));
        this.f23949j = k10.getDimensionPixelSize(C15879a.o.ro, 0);
        int i13 = C15879a.o.Mo;
        ColorStateList colorStateList = k10.hasValue(i13) ? k10.getColorStateList(i13) : null;
        int i14 = C15879a.o.No;
        int resourceId = k10.hasValue(i14) ? k10.getResourceId(i14, 0) : 0;
        if (resourceId == 0 && colorStateList == null) {
            colorStateList = e(R.attr.textColorSecondary);
        }
        int i15 = C15879a.o.yo;
        if (k10.hasValue(i15)) {
            e10 = k10.getColorStateList(i15);
        } else {
            e10 = e(R.attr.textColorSecondary);
        }
        int i16 = C15879a.o.Ho;
        int resourceId2 = k10.hasValue(i16) ? k10.getResourceId(i16, 0) : 0;
        int i17 = C15879a.o.xo;
        if (k10.hasValue(i17)) {
            setItemIconSize(k10.getDimensionPixelSize(i17, 0));
        }
        int i18 = C15879a.o.Io;
        ColorStateList colorStateList2 = k10.hasValue(i18) ? k10.getColorStateList(i18) : null;
        if (resourceId2 == 0 && colorStateList2 == null) {
            colorStateList2 = e(R.attr.textColorPrimary);
        }
        Drawable drawable = k10.getDrawable(C15879a.o.uo);
        if (drawable == null && h(k10)) {
            drawable = f(k10);
        }
        int i19 = C15879a.o.vo;
        if (k10.hasValue(i19)) {
            iVar.t(k10.getDimensionPixelSize(i19, 0));
        }
        int dimensionPixelSize = k10.getDimensionPixelSize(C15879a.o.wo, 0);
        setItemMaxLines(k10.getInt(C15879a.o.zo, 1));
        hVar.setCallback(new a());
        iVar.r(1);
        iVar.initForMenu(context2, hVar);
        if (resourceId != 0) {
            iVar.C(resourceId);
        }
        iVar.B(colorStateList);
        iVar.w(e10);
        iVar.A(getOverScrollMode());
        if (resourceId2 != 0) {
            iVar.y(resourceId2);
        }
        iVar.z(colorStateList2);
        iVar.s(drawable);
        iVar.u(dimensionPixelSize);
        hVar.addMenuPresenter(iVar);
        addView((View) iVar.getMenuView(this));
        int i20 = C15879a.o.Jo;
        if (k10.hasValue(i20)) {
            j(k10.getResourceId(i20, 0));
        }
        int i21 = C15879a.o.to;
        if (k10.hasValue(i21)) {
            i(k10.getResourceId(i21, 0));
        }
        k10.recycle();
        l();
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem findItem = this.f23946g.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.f23947h.q((MenuItemImpl) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }
}

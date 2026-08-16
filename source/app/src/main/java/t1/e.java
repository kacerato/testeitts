package T1;

import a2.C3567j;
import a2.C3568k;
import a2.C3572o;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.s;
import h2.C13421a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import w1.C15879a;
import z1.C16241a;

public abstract class e extends FrameLayout {

    public static final int f23928i = -1;

    public static final int f23929j = 0;

    public static final int f23930k = 1;

    public static final int f23931l = 2;

    public static final int f23932m = 1;

    @NonNull
    public final T1.b f23933b;

    @NonNull
    public final T1.c f23934c;

    @NonNull
    public final T1.d f23935d;

    @Nullable
    public ColorStateList f23936e;

    public MenuInflater f23937f;

    public d f23938g;

    public c f23939h;

    public class a implements MenuBuilder.Callback {
        public a() {
        }

        @Override
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            if (e.this.f23939h == null || menuItem.getItemId() != e.this.getSelectedItemId()) {
                return (e.this.f23938g == null || e.this.f23938g.a(menuItem)) ? false : true;
            }
            e.this.f23939h.a(menuItem);
            return true;
        }

        @Override
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface b {
    }

    public interface c {
        void a(@NonNull MenuItem menuItem);
    }

    public interface d {
        boolean a(@NonNull MenuItem menuItem);
    }

    public static class C0570e extends AbsSavedState {
        public static final Parcelable.Creator<C0570e> CREATOR = new a();

        @Nullable
        public Bundle f23941b;

        public static class a implements Parcelable.ClassLoaderCreator<C0570e> {
            @Override
            @Nullable
            public C0570e createFromParcel(@NonNull Parcel parcel) {
                return new C0570e(parcel, null);
            }

            @Override
            @NonNull
            public C0570e createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new C0570e(parcel, classLoader);
            }

            @Override
            @NonNull
            public C0570e[] newArray(int i10) {
                return new C0570e[i10];
            }
        }

        public C0570e(Parcelable parcelable) {
            super(parcelable);
        }

        public final void b(@NonNull Parcel parcel, ClassLoader classLoader) {
            this.f23941b = parcel.readBundle(classLoader);
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.f23941b);
        }

        public C0570e(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            b(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }
    }

    public e(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(C13421a.c(context, attributeSet, i10, i11), attributeSet, i10);
        T1.d dVar = new T1.d();
        this.f23935d = dVar;
        Context context2 = getContext();
        int[] iArr = C15879a.o.Vn;
        int i12 = C15879a.o.ho;
        int i13 = C15879a.o.go;
        TintTypedArray k10 = s.k(context2, attributeSet, iArr, i10, i11, i12, i13);
        T1.b bVar = new T1.b(context2, getClass(), getMaxItemCount());
        this.f23933b = bVar;
        T1.c d10 = d(context2);
        this.f23934c = d10;
        dVar.b(d10);
        dVar.a(1);
        d10.setPresenter(dVar);
        bVar.addMenuPresenter(dVar);
        dVar.initForMenu(getContext(), bVar);
        int i14 = C15879a.o.bo;
        if (k10.hasValue(i14)) {
            d10.setIconTintList(k10.getColorStateList(i14));
        } else {
            d10.setIconTintList(d10.d(R.attr.textColorSecondary));
        }
        setItemIconSize(k10.getDimensionPixelSize(C15879a.o.ao, getResources().getDimensionPixelSize(C15879a.f.f123234h5)));
        if (k10.hasValue(i12)) {
            setItemTextAppearanceInactive(k10.getResourceId(i12, 0));
        }
        if (k10.hasValue(i13)) {
            setItemTextAppearanceActive(k10.getResourceId(i13, 0));
        }
        int i15 = C15879a.o.f125710io;
        if (k10.hasValue(i15)) {
            setItemTextColor(k10.getColorStateList(i15));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            ViewCompat.setBackground(this, c(context2));
        }
        int i16 = C15879a.o.eo;
        if (k10.hasValue(i16)) {
            setItemPaddingTop(k10.getDimensionPixelSize(i16, 0));
        }
        int i17 = C15879a.o.co;
        if (k10.hasValue(i17)) {
            setItemPaddingBottom(k10.getDimensionPixelSize(i17, 0));
        }
        if (k10.hasValue(C15879a.o.Xn)) {
            setElevation(k10.getDimensionPixelSize(r10, 0));
        }
        DrawableCompat.setTintList(getBackground().mutate(), X1.c.b(context2, k10, C15879a.o.Wn));
        setLabelVisibilityMode(k10.getInteger(C15879a.o.jo, -1));
        int resourceId = k10.getResourceId(C15879a.o.Zn, 0);
        if (resourceId != 0) {
            d10.setItemBackgroundRes(resourceId);
        } else {
            setItemRippleColor(X1.c.b(context2, k10, C15879a.o.fo));
        }
        int resourceId2 = k10.getResourceId(C15879a.o.Yn, 0);
        if (resourceId2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(resourceId2, C15879a.o.Pn);
            setItemActiveIndicatorWidth(obtainStyledAttributes.getDimensionPixelSize(C15879a.o.Rn, 0));
            setItemActiveIndicatorHeight(obtainStyledAttributes.getDimensionPixelSize(C15879a.o.Qn, 0));
            setItemActiveIndicatorMarginHorizontal(obtainStyledAttributes.getDimensionPixelOffset(C15879a.o.Tn, 0));
            setItemActiveIndicatorColor(X1.c.a(context2, obtainStyledAttributes, C15879a.o.Sn));
            setItemActiveIndicatorShapeAppearance(C3572o.b(context2, obtainStyledAttributes.getResourceId(C15879a.o.Un, 0), 0).m());
            obtainStyledAttributes.recycle();
        }
        int i18 = C15879a.o.ko;
        if (k10.hasValue(i18)) {
            g(k10.getResourceId(i18, 0));
        }
        k10.recycle();
        addView(d10);
        bVar.setCallback(new a());
    }

    private MenuInflater getMenuInflater() {
        if (this.f23937f == null) {
            this.f23937f = new SupportMenuInflater(getContext());
        }
        return this.f23937f;
    }

    @NonNull
    public final C3567j c(Context context) {
        C3567j c3567j = new C3567j();
        Drawable background = getBackground();
        if (background instanceof ColorDrawable) {
            c3567j.n0(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
        }
        c3567j.Y(context);
        return c3567j;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public abstract T1.c d(@NonNull Context context);

    @Nullable
    public C16241a e(int i10) {
        return this.f23934c.h(i10);
    }

    @NonNull
    public C16241a f(int i10) {
        return this.f23934c.i(i10);
    }

    public void g(int i10) {
        this.f23935d.c(true);
        getMenuInflater().inflate(i10, this.f23933b);
        this.f23935d.c(false);
        this.f23935d.updateMenuView(true);
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.f23934c.getItemActiveIndicatorColor();
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        return this.f23934c.getItemActiveIndicatorHeight();
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f23934c.getItemActiveIndicatorMarginHorizontal();
    }

    @Nullable
    public C3572o getItemActiveIndicatorShapeAppearance() {
        return this.f23934c.getItemActiveIndicatorShapeAppearance();
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        return this.f23934c.getItemActiveIndicatorWidth();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f23934c.getItemBackground();
    }

    @DrawableRes
    @Deprecated
    public int getItemBackgroundResource() {
        return this.f23934c.getItemBackgroundRes();
    }

    @Dimension
    public int getItemIconSize() {
        return this.f23934c.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f23934c.getIconTintList();
    }

    @Px
    public int getItemPaddingBottom() {
        return this.f23934c.getItemPaddingBottom();
    }

    @Px
    public int getItemPaddingTop() {
        return this.f23934c.getItemPaddingTop();
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.f23936e;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f23934c.getItemTextAppearanceActive();
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f23934c.getItemTextAppearanceInactive();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f23934c.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f23934c.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    @NonNull
    public Menu getMenu() {
        return this.f23933b;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public MenuView getMenuView() {
        return this.f23934c;
    }

    @NonNull
    public T1.d getPresenter() {
        return this.f23935d;
    }

    @IdRes
    public int getSelectedItemId() {
        return this.f23934c.getSelectedItemId();
    }

    public boolean h() {
        return this.f23934c.getItemActiveIndicatorEnabled();
    }

    public void i(int i10) {
        this.f23934c.l(i10);
    }

    public void j(int i10, @Nullable View.OnTouchListener onTouchListener) {
        this.f23934c.n(i10, onTouchListener);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3568k.e(this);
    }

    @Override
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof C0570e)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0570e c0570e = (C0570e) parcelable;
        super.onRestoreInstanceState(c0570e.getSuperState());
        this.f23933b.restorePresenterStates(c0570e.f23941b);
    }

    @Override
    @NonNull
    public Parcelable onSaveInstanceState() {
        C0570e c0570e = new C0570e(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        c0570e.f23941b = bundle;
        this.f23933b.savePresenterStates(bundle);
        return c0570e;
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        C3568k.d(this, f10);
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.f23934c.setItemActiveIndicatorColor(colorStateList);
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.f23934c.setItemActiveIndicatorEnabled(z10);
    }

    public void setItemActiveIndicatorHeight(@Px int i10) {
        this.f23934c.setItemActiveIndicatorHeight(i10);
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i10) {
        this.f23934c.setItemActiveIndicatorMarginHorizontal(i10);
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable C3572o c3572o) {
        this.f23934c.setItemActiveIndicatorShapeAppearance(c3572o);
    }

    public void setItemActiveIndicatorWidth(@Px int i10) {
        this.f23934c.setItemActiveIndicatorWidth(i10);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f23934c.setItemBackground(drawable);
        this.f23936e = null;
    }

    public void setItemBackgroundResource(@DrawableRes int i10) {
        this.f23934c.setItemBackgroundRes(i10);
        this.f23936e = null;
    }

    public void setItemIconSize(@Dimension int i10) {
        this.f23934c.setItemIconSize(i10);
    }

    public void setItemIconSizeRes(@DimenRes int i10) {
        setItemIconSize(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f23934c.setIconTintList(colorStateList);
    }

    public void setItemPaddingBottom(@Px int i10) {
        this.f23934c.setItemPaddingBottom(i10);
    }

    public void setItemPaddingTop(@Px int i10) {
        this.f23934c.setItemPaddingTop(i10);
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f23936e == colorStateList) {
            if (colorStateList != null || this.f23934c.getItemBackground() == null) {
                return;
            }
            this.f23934c.setItemBackground(null);
            return;
        }
        this.f23936e = colorStateList;
        if (colorStateList == null) {
            this.f23934c.setItemBackground(null);
        } else {
            this.f23934c.setItemBackground(new RippleDrawable(Y1.b.a(colorStateList), null, null));
        }
    }

    public void setItemTextAppearanceActive(@StyleRes int i10) {
        this.f23934c.setItemTextAppearanceActive(i10);
    }

    public void setItemTextAppearanceInactive(@StyleRes int i10) {
        this.f23934c.setItemTextAppearanceInactive(i10);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f23934c.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.f23934c.getLabelVisibilityMode() != i10) {
            this.f23934c.setLabelVisibilityMode(i10);
            this.f23935d.updateMenuView(false);
        }
    }

    public void setOnItemReselectedListener(@Nullable c cVar) {
        this.f23939h = cVar;
    }

    public void setOnItemSelectedListener(@Nullable d dVar) {
        this.f23938g = dVar;
    }

    public void setSelectedItemId(@IdRes int i10) {
        MenuItem findItem = this.f23933b.findItem(i10);
        if (findItem == null || this.f23933b.performItemAction(findItem, this.f23935d, 0)) {
            return;
        }
        findItem.setChecked(true);
    }
}

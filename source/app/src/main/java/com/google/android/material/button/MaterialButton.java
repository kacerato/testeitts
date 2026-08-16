package com.google.android.material.button;

import a2.C3568k;
import a2.C3572o;
import a2.InterfaceC3576s;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.A;
import com.google.android.material.internal.s;
import h2.C13421a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
import w1.C15879a;

public class MaterialButton extends AppCompatButton implements Checkable, InterfaceC3576s {

    public static final int f64069q = 1;

    public static final int f64070r = 2;

    public static final int f64071s = 3;

    public static final int f64072t = 4;

    public static final int f64073u = 16;

    public static final int f64074v = 32;

    public static final String f64075w = "MaterialButton";

    @NonNull
    public final C1.a f64077b;

    @NonNull
    public final LinkedHashSet<b> f64078c;

    @Nullable
    public c f64079d;

    @Nullable
    public PorterDuff.Mode f64080e;

    @Nullable
    public ColorStateList f64081f;

    @Nullable
    public Drawable f64082g;

    @Px
    public int f64083h;

    @Px
    public int f64084i;

    @Px
    public int f64085j;

    @Px
    public int f64086k;

    public boolean f64087l;

    public boolean f64088m;

    public int f64089n;

    public static final int[] f64067o = {R.attr.state_checkable};

    public static final int[] f64068p = {R.attr.state_checked};

    public static final int f64076x = C15879a.n.f124482Ya;

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    public interface b {
        void a(MaterialButton materialButton, boolean z10);
    }

    public interface c {
        void a(MaterialButton materialButton, boolean z10);
    }

    public static class d extends AbsSavedState {
        public static final Parcelable.Creator<d> CREATOR = new a();

        public boolean f64090b;

        public static class a implements Parcelable.ClassLoaderCreator<d> {
            @Override
            @NonNull
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

        public d(Parcelable parcelable) {
            super(parcelable);
        }

        public final void b(@NonNull Parcel parcel) {
            this.f64090b = parcel.readInt() == 1;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f64090b ? 1 : 0);
        }

        public d(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            b(parcel);
        }
    }

    public MaterialButton(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private String getA11yClassName() {
        return (c() ? CompoundButton.class : Button.class).getName();
    }

    private int getTextHeight() {
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextWidth() {
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        return Math.min((int) paint.measureText(charSequence), getLayout().getEllipsizedWidth());
    }

    public void a(@NonNull b bVar) {
        this.f64078c.add(bVar);
    }

    public void b() {
        this.f64078c.clear();
    }

    public boolean c() {
        C1.a aVar = this.f64077b;
        return aVar != null && aVar.p();
    }

    public final boolean d() {
        int i10 = this.f64089n;
        return i10 == 3 || i10 == 4;
    }

    public final boolean e() {
        int i10 = this.f64089n;
        return i10 == 1 || i10 == 2;
    }

    public final boolean f() {
        int i10 = this.f64089n;
        return i10 == 16 || i10 == 32;
    }

    public final boolean g() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    @Override
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Px
    public int getCornerRadius() {
        if (h()) {
            return this.f64077b.b();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f64082g;
    }

    public int getIconGravity() {
        return this.f64089n;
    }

    @Px
    public int getIconPadding() {
        return this.f64086k;
    }

    @Px
    public int getIconSize() {
        return this.f64083h;
    }

    public ColorStateList getIconTint() {
        return this.f64081f;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f64080e;
    }

    @Dimension
    public int getInsetBottom() {
        return this.f64077b.c();
    }

    @Dimension
    public int getInsetTop() {
        return this.f64077b.d();
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (h()) {
            return this.f64077b.h();
        }
        return null;
    }

    @Override
    @NonNull
    public C3572o getShapeAppearanceModel() {
        if (h()) {
            return this.f64077b.i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (h()) {
            return this.f64077b.j();
        }
        return null;
    }

    @Px
    public int getStrokeWidth() {
        if (h()) {
            return this.f64077b.k();
        }
        return 0;
    }

    @Override
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        return h() ? this.f64077b.l() : super.getSupportBackgroundTintList();
    }

    @Override
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return h() ? this.f64077b.m() : super.getSupportBackgroundTintMode();
    }

    public final boolean h() {
        C1.a aVar = this.f64077b;
        return (aVar == null || aVar.o()) ? false : true;
    }

    public void i(@NonNull b bVar) {
        this.f64078c.remove(bVar);
    }

    @Override
    public boolean isChecked() {
        return this.f64087l;
    }

    public final void j() {
        if (e()) {
            TextViewCompat.setCompoundDrawablesRelative(this, this.f64082g, null, null, null);
        } else if (d()) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, null, this.f64082g, null);
        } else if (f()) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, this.f64082g, null, null);
        }
    }

    public final void k(boolean z10) {
        Drawable drawable = this.f64082g;
        if (drawable != null) {
            Drawable mutate = DrawableCompat.wrap(drawable).mutate();
            this.f64082g = mutate;
            DrawableCompat.setTintList(mutate, this.f64081f);
            PorterDuff.Mode mode = this.f64080e;
            if (mode != null) {
                DrawableCompat.setTintMode(this.f64082g, mode);
            }
            int i10 = this.f64083h;
            if (i10 == 0) {
                i10 = this.f64082g.getIntrinsicWidth();
            }
            int i11 = this.f64083h;
            if (i11 == 0) {
                i11 = this.f64082g.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f64082g;
            int i12 = this.f64084i;
            int i13 = this.f64085j;
            drawable2.setBounds(i12, i13, i10 + i12, i11 + i13);
            this.f64082g.setVisible(true, z10);
        }
        if (z10) {
            j();
            return;
        }
        Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this);
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        if ((!e() || drawable3 == this.f64082g) && ((!d() || drawable5 == this.f64082g) && (!f() || drawable4 == this.f64082g))) {
            return;
        }
        j();
    }

    public final void l(int i10, int i11) {
        if (this.f64082g == null || getLayout() == null) {
            return;
        }
        if (!e() && !d()) {
            if (f()) {
                this.f64084i = 0;
                if (this.f64089n == 16) {
                    this.f64085j = 0;
                    k(false);
                    return;
                }
                int i12 = this.f64083h;
                if (i12 == 0) {
                    i12 = this.f64082g.getIntrinsicHeight();
                }
                int textHeight = (((((i11 - getTextHeight()) - getPaddingTop()) - i12) - this.f64086k) - getPaddingBottom()) / 2;
                if (this.f64085j != textHeight) {
                    this.f64085j = textHeight;
                    k(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f64085j = 0;
        int i13 = this.f64089n;
        if (i13 == 1 || i13 == 3) {
            this.f64084i = 0;
            k(false);
            return;
        }
        int i14 = this.f64083h;
        if (i14 == 0) {
            i14 = this.f64082g.getIntrinsicWidth();
        }
        int textWidth = (((((i10 - getTextWidth()) - ViewCompat.getPaddingEnd(this)) - i14) - this.f64086k) - ViewCompat.getPaddingStart(this)) / 2;
        if (g() != (this.f64089n == 4)) {
            textWidth = -textWidth;
        }
        if (this.f64084i != textWidth) {
            this.f64084i = textWidth;
            k(false);
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (h()) {
            C3568k.f(this, this.f64077b.f());
        }
    }

    @Override
    public int[] onCreateDrawableState(int i10) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (c()) {
            View.mergeDrawableStates(onCreateDrawableState, f64067o);
        }
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f64068p);
        }
        return onCreateDrawableState;
    }

    @Override
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(c());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.getSuperState());
        setChecked(dVar.f64090b);
    }

    @Override
    @NonNull
    public Parcelable onSaveInstanceState() {
        d dVar = new d(super.onSaveInstanceState());
        dVar.f64090b = this.f64087l;
        return dVar;
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        l(i10, i11);
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        l(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override
    public void setBackgroundColor(@ColorInt int i10) {
        if (h()) {
            this.f64077b.r(i10);
        } else {
            super.setBackgroundColor(i10);
        }
    }

    @Override
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (!h()) {
            super.setBackgroundDrawable(drawable);
        } else {
            if (drawable == getBackground()) {
                getBackground().setState(drawable.getState());
                return;
            }
            Log.w(f64075w, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
            this.f64077b.s();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override
    public void setBackgroundResource(@DrawableRes int i10) {
        setBackgroundDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    @Override
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z10) {
        if (h()) {
            this.f64077b.t(z10);
        }
    }

    @Override
    public void setChecked(boolean z10) {
        if (c() && isEnabled() && this.f64087l != z10) {
            this.f64087l = z10;
            refreshDrawableState();
            if (this.f64088m) {
                return;
            }
            this.f64088m = true;
            Iterator<b> it = this.f64078c.iterator();
            while (it.hasNext()) {
                it.next().a(this, this.f64087l);
            }
            this.f64088m = false;
        }
    }

    public void setCornerRadius(@Px int i10) {
        if (h()) {
            this.f64077b.u(i10);
        }
    }

    public void setCornerRadiusResource(@DimenRes int i10) {
        if (h()) {
            setCornerRadius(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        if (h()) {
            this.f64077b.f().m0(f10);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.f64082g != drawable) {
            this.f64082g = drawable;
            k(true);
            l(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i10) {
        if (this.f64089n != i10) {
            this.f64089n = i10;
            l(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(@Px int i10) {
        if (this.f64086k != i10) {
            this.f64086k = i10;
            setCompoundDrawablePadding(i10);
        }
    }

    public void setIconResource(@DrawableRes int i10) {
        setIcon(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    public void setIconSize(@Px int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f64083h != i10) {
            this.f64083h = i10;
            k(true);
        }
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f64081f != colorStateList) {
            this.f64081f = colorStateList;
            k(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f64080e != mode) {
            this.f64080e = mode;
            k(false);
        }
    }

    public void setIconTintResource(@ColorRes int i10) {
        setIconTint(AppCompatResources.getColorStateList(getContext(), i10));
    }

    public void setInsetBottom(@Dimension int i10) {
        this.f64077b.v(i10);
    }

    public void setInsetTop(@Dimension int i10) {
        this.f64077b.w(i10);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(@Nullable c cVar) {
        this.f64079d = cVar;
    }

    @Override
    public void setPressed(boolean z10) {
        c cVar = this.f64079d;
        if (cVar != null) {
            cVar.a(this, z10);
        }
        super.setPressed(z10);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (h()) {
            this.f64077b.x(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i10) {
        if (h()) {
            setRippleColor(AppCompatResources.getColorStateList(getContext(), i10));
        }
    }

    @Override
    public void setShapeAppearanceModel(@NonNull C3572o c3572o) {
        if (!h()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f64077b.y(c3572o);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z10) {
        if (h()) {
            this.f64077b.z(z10);
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (h()) {
            this.f64077b.A(colorStateList);
        }
    }

    public void setStrokeColorResource(@ColorRes int i10) {
        if (h()) {
            setStrokeColor(AppCompatResources.getColorStateList(getContext(), i10));
        }
    }

    public void setStrokeWidth(@Px int i10) {
        if (h()) {
            this.f64077b.B(i10);
        }
    }

    public void setStrokeWidthResource(@DimenRes int i10) {
        if (h()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (h()) {
            this.f64077b.C(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (h()) {
            this.f64077b.D(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override
    public void toggle() {
        setChecked(!this.f64087l);
    }

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122049M9);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r6), attributeSet, i10);
        int i11 = f64076x;
        this.f64078c = new LinkedHashSet<>();
        this.f64087l = false;
        this.f64088m = false;
        Context context2 = getContext();
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f125003Fk, i10, i11, new int[0]);
        this.f64086k = j10.getDimensionPixelSize(C15879a.o.f125315Sk, 0);
        this.f64080e = A.k(j10.getInt(C15879a.o.f125387Vk, -1), PorterDuff.Mode.SRC_IN);
        this.f64081f = X1.c.a(getContext(), j10, C15879a.o.f125363Uk);
        this.f64082g = X1.c.d(getContext(), j10, C15879a.o.f125267Qk);
        this.f64089n = j10.getInteger(C15879a.o.f125291Rk, 1);
        this.f64083h = j10.getDimensionPixelSize(C15879a.o.f125339Tk, 0);
        C1.a aVar = new C1.a(this, C3572o.e(context2, attributeSet, i10, i11).m());
        this.f64077b = aVar;
        aVar.q(j10);
        j10.recycle();
        setCompoundDrawablePadding(this.f64086k);
        k(this.f64082g != null);
    }
}

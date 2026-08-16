package E1;

import a2.C3568k;
import a2.C3572o;
import a2.InterfaceC3576s;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import com.google.android.material.internal.s;
import h2.C13421a;
import w1.C15879a;

public class a extends CardView implements Checkable, InterfaceC3576s {

    public static final int[] f5324g = {R.attr.state_checkable};

    public static final int[] f5325h = {R.attr.state_checked};

    public static final int[] f5326i = {C15879a.c.f122707xd};

    public static final int f5327j = C15879a.n.f124650kb;

    public static final String f5328k = "MaterialCardView";

    public static final String f5329l = "androidx.cardview.widget.CardView";

    @NonNull
    public final b f5330b;

    public boolean f5331c;

    public boolean f5332d;

    public boolean f5333e;

    public InterfaceC0099a f5334f;

    public interface InterfaceC0099a {
        void a(a aVar, boolean z10);
    }

    public a(Context context) {
        this(context, null);
    }

    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f5330b.k().getBounds());
        return rectF;
    }

    public final void f() {
        if (Build.VERSION.SDK_INT > 26) {
            this.f5330b.j();
        }
    }

    public boolean g() {
        b bVar = this.f5330b;
        return bVar != null && bVar.D();
    }

    @Override
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.f5330b.l();
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.f5330b.m();
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.f5330b.n();
    }

    @Dimension
    public int getCheckedIconMargin() {
        return this.f5330b.o();
    }

    @Dimension
    public int getCheckedIconSize() {
        return this.f5330b.p();
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.f5330b.q();
    }

    @Override
    public int getContentPaddingBottom() {
        return this.f5330b.A().bottom;
    }

    @Override
    public int getContentPaddingLeft() {
        return this.f5330b.A().left;
    }

    @Override
    public int getContentPaddingRight() {
        return this.f5330b.A().right;
    }

    @Override
    public int getContentPaddingTop() {
        return this.f5330b.A().top;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.f5330b.u();
    }

    @Override
    public float getRadius() {
        return this.f5330b.s();
    }

    public ColorStateList getRippleColor() {
        return this.f5330b.v();
    }

    @Override
    @NonNull
    public C3572o getShapeAppearanceModel() {
        return this.f5330b.w();
    }

    @ColorInt
    @Deprecated
    public int getStrokeColor() {
        return this.f5330b.x();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.f5330b.y();
    }

    @Dimension
    public int getStrokeWidth() {
        return this.f5330b.z();
    }

    public boolean h() {
        return this.f5333e;
    }

    public void i(int i10, int i11, int i12, int i13) {
        super.setContentPadding(i10, i11, i12, i13);
    }

    @Override
    public boolean isChecked() {
        return this.f5332d;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3568k.f(this, this.f5330b.k());
    }

    @Override
    public int[] onCreateDrawableState(int i10) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i10 + 3);
        if (g()) {
            View.mergeDrawableStates(onCreateDrawableState, f5324g);
        }
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f5325h);
        }
        if (h()) {
            View.mergeDrawableStates(onCreateDrawableState, f5326i);
        }
        return onCreateDrawableState;
    }

    @Override
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(f5329l);
        accessibilityEvent.setChecked(isChecked());
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(f5329l);
        accessibilityNodeInfo.setCheckable(g());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.f5330b.F(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f5331c) {
            if (!this.f5330b.C()) {
                Log.i(f5328k, "Setting a custom background is not supported.");
                this.f5330b.G(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override
    public void setCardBackgroundColor(@ColorInt int i10) {
        this.f5330b.H(ColorStateList.valueOf(i10));
    }

    @Override
    public void setCardElevation(float f10) {
        super.setCardElevation(f10);
        this.f5330b.Z();
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        this.f5330b.I(colorStateList);
    }

    public void setCheckable(boolean z10) {
        this.f5330b.J(z10);
    }

    @Override
    public void setChecked(boolean z10) {
        if (this.f5332d != z10) {
            toggle();
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.f5330b.K(drawable);
    }

    public void setCheckedIconMargin(@Dimension int i10) {
        this.f5330b.L(i10);
    }

    public void setCheckedIconMarginResource(@DimenRes int i10) {
        if (i10 != -1) {
            this.f5330b.L(getResources().getDimensionPixelSize(i10));
        }
    }

    public void setCheckedIconResource(@DrawableRes int i10) {
        this.f5330b.K(AppCompatResources.getDrawable(getContext(), i10));
    }

    public void setCheckedIconSize(@Dimension int i10) {
        this.f5330b.M(i10);
    }

    public void setCheckedIconSizeResource(@DimenRes int i10) {
        if (i10 != 0) {
            this.f5330b.M(getResources().getDimensionPixelSize(i10));
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        this.f5330b.N(colorStateList);
    }

    @Override
    public void setClickable(boolean z10) {
        super.setClickable(z10);
        b bVar = this.f5330b;
        if (bVar != null) {
            bVar.X();
        }
    }

    @Override
    public void setContentPadding(int i10, int i11, int i12, int i13) {
        this.f5330b.U(i10, i11, i12, i13);
    }

    public void setDragged(boolean z10) {
        if (this.f5333e != z10) {
            this.f5333e = z10;
            refreshDrawableState();
            f();
            invalidate();
        }
    }

    @Override
    public void setMaxCardElevation(float f10) {
        super.setMaxCardElevation(f10);
        this.f5330b.b0();
    }

    public void setOnCheckedChangeListener(@Nullable InterfaceC0099a interfaceC0099a) {
        this.f5334f = interfaceC0099a;
    }

    @Override
    public void setPreventCornerOverlap(boolean z10) {
        super.setPreventCornerOverlap(z10);
        this.f5330b.b0();
        this.f5330b.Y();
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f5330b.P(f10);
    }

    @Override
    public void setRadius(float f10) {
        super.setRadius(f10);
        this.f5330b.O(f10);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        this.f5330b.Q(colorStateList);
    }

    public void setRippleColorResource(@ColorRes int i10) {
        this.f5330b.Q(AppCompatResources.getColorStateList(getContext(), i10));
    }

    @Override
    public void setShapeAppearanceModel(@NonNull C3572o c3572o) {
        setClipToOutline(c3572o.u(getBoundsAsRectF()));
        this.f5330b.R(c3572o);
    }

    public void setStrokeColor(@ColorInt int i10) {
        this.f5330b.S(ColorStateList.valueOf(i10));
    }

    public void setStrokeWidth(@Dimension int i10) {
        this.f5330b.T(i10);
    }

    @Override
    public void setUseCompatPadding(boolean z10) {
        super.setUseCompatPadding(z10);
        this.f5330b.b0();
        this.f5330b.Y();
    }

    @Override
    public void toggle() {
        if (g() && isEnabled()) {
            this.f5332d = !this.f5332d;
            refreshDrawableState();
            f();
            InterfaceC0099a interfaceC0099a = this.f5334f;
            if (interfaceC0099a != null) {
                interfaceC0099a.a(this, this.f5332d);
            }
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122345da);
    }

    @Override
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.f5330b.H(colorStateList);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f5330b.S(colorStateList);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public a(Context context, AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r6), attributeSet, i10);
        int i11 = f5327j;
        this.f5332d = false;
        this.f5333e = false;
        this.f5331c = true;
        TypedArray j10 = s.j(getContext(), attributeSet, C15879a.o.f124908Bl, i10, i11, new int[0]);
        b bVar = new b(this, attributeSet, i10, i11);
        this.f5330b = bVar;
        bVar.H(super.getCardBackgroundColor());
        bVar.U(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        bVar.E(j10);
        j10.recycle();
    }
}

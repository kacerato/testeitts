package com.google.android.material.chip;

import X1.d;
import X1.f;
import a2.C3568k;
import a2.C3572o;
import a2.InterfaceC3576s;
import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.chip.a;
import com.google.android.material.internal.A;
import com.google.android.material.internal.s;
import h2.C13421a;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import w1.C15879a;
import x1.h;

public class Chip extends AppCompatCheckBox implements a.InterfaceC0960a, InterfaceC3576s {

    public static final String f64112A = "android.widget.Button";

    public static final String f64113B = "android.widget.CompoundButton";

    public static final String f64114C = "android.view.View";

    public static final String f64115r = "Chip";

    public static final int f64117t = 0;

    public static final int f64118u = 1;

    public static final String f64122y = "http://schemas.android.com/apk/res/android";

    public static final int f64123z = 48;

    @Nullable
    public com.google.android.material.chip.a f64124b;

    @Nullable
    public InsetDrawable f64125c;

    @Nullable
    public RippleDrawable f64126d;

    @Nullable
    public View.OnClickListener f64127e;

    @Nullable
    public CompoundButton.OnCheckedChangeListener f64128f;

    public boolean f64129g;

    public boolean f64130h;

    public boolean f64131i;

    public boolean f64132j;

    public boolean f64133k;

    public int f64134l;

    @Dimension(unit = 1)
    public int f64135m;

    @NonNull
    public final c f64136n;

    public final Rect f64137o;

    public final RectF f64138p;

    public final f f64139q;

    public static final int f64116s = C15879a.n.f124692nb;

    public static final Rect f64119v = new Rect();

    public static final int[] f64120w = {R.attr.state_selected};

    public static final int[] f64121x = {R.attr.state_checkable};

    public class a extends f {
        public a() {
        }

        @Override
        public void a(int i10) {
        }

        @Override
        public void b(@NonNull Typeface typeface, boolean z10) {
            Chip chip = Chip.this;
            chip.setText(chip.f64124b.H3() ? Chip.this.f64124b.O1() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    public class b extends ViewOutlineProvider {
        public b() {
        }

        @Override
        @TargetApi(21)
        public void getOutline(View view, @NonNull Outline outline) {
            if (Chip.this.f64124b != null) {
                Chip.this.f64124b.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    public class c extends ExploreByTouchHelper {
        public c(Chip chip) {
            super(chip);
        }

        @Override
        public int getVirtualViewAt(float f10, float f11) {
            return (Chip.this.n() && Chip.this.getCloseIconTouchBounds().contains(f10, f11)) ? 1 : 0;
        }

        @Override
        public void getVisibleVirtualViews(@NonNull List<Integer> list) {
            list.add(0);
            if (Chip.this.n() && Chip.this.x() && Chip.this.f64127e != null) {
                list.add(1);
            }
        }

        @Override
        public boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
            if (i11 != 16) {
                return false;
            }
            if (i10 == 0) {
                return Chip.this.performClick();
            }
            if (i10 == 1) {
                return Chip.this.y();
            }
            return false;
        }

        @Override
        public void onPopulateNodeForHost(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.r());
            accessibilityNodeInfoCompat.setClickable(Chip.this.isClickable());
            if (Chip.this.r() || Chip.this.isClickable()) {
                accessibilityNodeInfoCompat.setClassName(Chip.this.r() ? Chip.f64113B : Chip.f64112A);
            } else {
                accessibilityNodeInfoCompat.setClassName(Chip.f64114C);
            }
            accessibilityNodeInfoCompat.setText(Chip.this.getText());
        }

        @Override
        public void onPopulateNodeForVirtualView(int i10, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (i10 != 1) {
                accessibilityNodeInfoCompat.setContentDescription("");
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.f64119v);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                accessibilityNodeInfoCompat.setContentDescription(Chip.this.getContext().getString(C15879a.m.f124106l0, TextUtils.isEmpty(text) ? "" : text).trim());
            }
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
        }

        @Override
        public void onVirtualViewKeyboardFocusChanged(int i10, boolean z10) {
            if (i10 == 1) {
                Chip.this.f64132j = z10;
                Chip.this.refreshDrawableState();
            }
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    @NonNull
    public RectF getCloseIconTouchBounds() {
        this.f64138p.setEmpty();
        if (n() && this.f64127e != null) {
            this.f64124b.E1(this.f64138p);
        }
        return this.f64138p;
    }

    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f64137o.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f64137o;
    }

    @Nullable
    private d getTextAppearance() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.P1();
        }
        return null;
    }

    private void setCloseIconHovered(boolean z10) {
        if (this.f64131i != z10) {
            this.f64131i = z10;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z10) {
        if (this.f64130h != z10) {
            this.f64130h = z10;
            refreshDrawableState();
        }
    }

    public boolean A() {
        return this.f64133k;
    }

    public final void B(@Nullable com.google.android.material.chip.a aVar) {
        if (aVar != null) {
            aVar.j3(null);
        }
    }

    public final void C() {
        if (n() && x() && this.f64127e != null) {
            ViewCompat.setAccessibilityDelegate(this, this.f64136n);
        } else {
            ViewCompat.setAccessibilityDelegate(this, null);
        }
    }

    public final void D() {
        if (Y1.b.f29721a) {
            E();
            return;
        }
        this.f64124b.G3(true);
        ViewCompat.setBackground(this, getBackgroundDrawable());
        F();
        l();
    }

    public final void E() {
        this.f64126d = new RippleDrawable(Y1.b.d(this.f64124b.M1()), getBackgroundDrawable(), null);
        this.f64124b.G3(false);
        ViewCompat.setBackground(this, this.f64126d);
        F();
    }

    public final void F() {
        com.google.android.material.chip.a aVar;
        if (TextUtils.isEmpty(getText()) || (aVar = this.f64124b) == null) {
            return;
        }
        int o12 = (int) (aVar.o1() + this.f64124b.Q1() + this.f64124b.U0());
        int t12 = (int) (this.f64124b.t1() + this.f64124b.R1() + this.f64124b.Q0());
        if (this.f64125c != null) {
            Rect rect = new Rect();
            this.f64125c.getPadding(rect);
            t12 += rect.left;
            o12 += rect.right;
        }
        ViewCompat.setPaddingRelative(this, t12, getPaddingTop(), o12, getPaddingBottom());
    }

    public final void G() {
        TextPaint paint = getPaint();
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            paint.drawableState = aVar.getState();
        }
        d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.n(getContext(), paint, this.f64139q);
        }
    }

    public final void H(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
            Log.w(f64115r, "Do not set the background; Chip manages its own background drawable.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
            Log.w(f64115r, "Chip text must be vertically center and start aligned");
        }
    }

    @Override
    public void a() {
        k(this.f64135m);
        requestLayout();
        invalidateOutline();
    }

    @Override
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return m(motionEvent) || this.f64136n.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f64136n.dispatchKeyEvent(keyEvent) || this.f64136n.getKeyboardFocusedVirtualViewId() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override
    public void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.chip.a aVar = this.f64124b;
        if ((aVar == null || !aVar.b2()) ? false : this.f64124b.e3(j())) {
            invalidate();
        }
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f64125c;
        return insetDrawable == null ? this.f64124b : insetDrawable;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.k1();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.l1();
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.m1();
        }
        return null;
    }

    public float getChipCornerRadius() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return Math.max(0.0f, aVar.n1());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f64124b;
    }

    public float getChipEndPadding() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.o1();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.p1();
        }
        return null;
    }

    public float getChipIconSize() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.q1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.r1();
        }
        return null;
    }

    public float getChipMinHeight() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.s1();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.t1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.u1();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.v1();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.x1();
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.y1();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.z1();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.A1();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.B1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.D1();
        }
        return null;
    }

    @Override
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.H1();
        }
        return null;
    }

    @Override
    public void getFocusedRect(@NonNull Rect rect) {
        if (this.f64136n.getKeyboardFocusedVirtualViewId() == 1 || this.f64136n.getAccessibilityFocusedVirtualViewId() == 1) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public h getHideMotionSpec() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.I1();
        }
        return null;
    }

    public float getIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.J1();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.K1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.M1();
        }
        return null;
    }

    @Override
    @NonNull
    public C3572o getShapeAppearanceModel() {
        return this.f64124b.getShapeAppearanceModel();
    }

    @Nullable
    public h getShowMotionSpec() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.N1();
        }
        return null;
    }

    public float getTextEndPadding() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.Q1();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            return aVar.R1();
        }
        return 0.0f;
    }

    public final void i(@NonNull com.google.android.material.chip.a aVar) {
        aVar.j3(this);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    @NonNull
    public final int[] j() {
        ?? isEnabled = isEnabled();
        int i10 = isEnabled;
        if (this.f64132j) {
            i10 = isEnabled + 1;
        }
        int i11 = i10;
        if (this.f64131i) {
            i11 = i10 + 1;
        }
        int i12 = i11;
        if (this.f64130h) {
            i12 = i11 + 1;
        }
        int i13 = i12;
        if (isChecked()) {
            i13 = i12 + 1;
        }
        int[] iArr = new int[i13];
        int i14 = 0;
        if (isEnabled()) {
            iArr[0] = 16842910;
            i14 = 1;
        }
        if (this.f64132j) {
            iArr[i14] = 16842908;
            i14++;
        }
        if (this.f64131i) {
            iArr[i14] = 16843623;
            i14++;
        }
        if (this.f64130h) {
            iArr[i14] = 16842919;
            i14++;
        }
        if (isChecked()) {
            iArr[i14] = 16842913;
        }
        return iArr;
    }

    public boolean k(@Dimension int i10) {
        this.f64135m = i10;
        if (!A()) {
            if (this.f64125c != null) {
                z();
            } else {
                D();
            }
            return false;
        }
        int max = Math.max(0, i10 - this.f64124b.getIntrinsicHeight());
        int max2 = Math.max(0, i10 - this.f64124b.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            if (this.f64125c != null) {
                z();
            } else {
                D();
            }
            return false;
        }
        int i11 = max2 > 0 ? max2 / 2 : 0;
        int i12 = max > 0 ? max / 2 : 0;
        if (this.f64125c != null) {
            Rect rect = new Rect();
            this.f64125c.getPadding(rect);
            if (rect.top == i12 && rect.bottom == i12 && rect.left == i11 && rect.right == i11) {
                D();
                return true;
            }
        }
        if (getMinHeight() != i10) {
            setMinHeight(i10);
        }
        if (getMinWidth() != i10) {
            setMinWidth(i10);
        }
        q(i11, i12, i11, i12);
        D();
        return true;
    }

    public final void l() {
        if (getBackgroundDrawable() == this.f64125c && this.f64124b.getCallback() == null) {
            this.f64124b.setCallback(this.f64125c);
        }
    }

    @SuppressLint({"PrivateApi"})
    public final boolean m(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() != 10) {
            return false;
        }
        try {
            Field declaredField = ExploreByTouchHelper.class.getDeclaredField("mHoveredVirtualViewId");
            declaredField.setAccessible(true);
            if (((Integer) declaredField.get(this.f64136n)).intValue() == Integer.MIN_VALUE) {
                return false;
            }
            Method declaredMethod = ExploreByTouchHelper.class.getDeclaredMethod("updateHoveredVirtualView", Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this.f64136n, Integer.MIN_VALUE);
            return true;
        } catch (IllegalAccessException e10) {
            Log.e(f64115r, "Unable to send Accessibility Exit event", e10);
            return false;
        } catch (NoSuchFieldException e11) {
            Log.e(f64115r, "Unable to send Accessibility Exit event", e11);
            return false;
        } catch (NoSuchMethodException e12) {
            Log.e(f64115r, "Unable to send Accessibility Exit event", e12);
            return false;
        } catch (InvocationTargetException e13) {
            Log.e(f64115r, "Unable to send Accessibility Exit event", e13);
            return false;
        }
    }

    public final boolean n() {
        com.google.android.material.chip.a aVar = this.f64124b;
        return (aVar == null || aVar.x1() == null) ? false : true;
    }

    public final void o(Context context, @Nullable AttributeSet attributeSet, int i10) {
        TypedArray j10 = s.j(context, attributeSet, C15879a.o.f125943s5, i10, f64116s, new int[0]);
        this.f64133k = j10.getBoolean(C15879a.o.f125468Z5, false);
        this.f64135m = (int) Math.ceil(j10.getDimension(C15879a.o.f125180N5, (float) Math.ceil(A.e(getContext(), 48))));
        j10.recycle();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3568k.f(this, this.f64124b);
    }

    @Override
    public int[] onCreateDrawableState(int i10) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f64120w);
        }
        if (r()) {
            View.mergeDrawableStates(onCreateDrawableState, f64121x);
        }
        return onCreateDrawableState;
    }

    @Override
    public void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        this.f64136n.onFocusChanged(z10, i10, rect);
    }

    @Override
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (r() || isClickable()) {
            accessibilityNodeInfo.setClassName(r() ? f64113B : f64112A);
        } else {
            accessibilityNodeInfo.setClassName(f64114C);
        }
        accessibilityNodeInfo.setCheckable(r());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(chipGroup.b(this), 1, chipGroup.c() ? chipGroup.o(this) : -1, 1, false, isChecked()));
        }
    }

    @Override
    @Nullable
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(@NonNull MotionEvent motionEvent, int i10) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        if (this.f64134l != i10) {
            this.f64134l = i10;
            F();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0 != 3) goto L22;
     */
    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        boolean z10;
        int actionMasked = motionEvent.getActionMasked();
        boolean contains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.f64130h) {
                        if (!contains) {
                            setCloseIconPressed(false);
                        }
                        z10 = true;
                    }
                }
                z10 = false;
            } else if (this.f64130h) {
                y();
                z10 = true;
                setCloseIconPressed(false);
            }
            z10 = false;
            setCloseIconPressed(false);
        } else {
            if (contains) {
                setCloseIconPressed(true);
                z10 = true;
            }
            z10 = false;
        }
        return z10 || super.onTouchEvent(motionEvent);
    }

    public final void p() {
        setOutlineProvider(new b());
    }

    public final void q(int i10, int i11, int i12, int i13) {
        this.f64125c = new InsetDrawable((Drawable) this.f64124b, i10, i11, i12, i13);
    }

    public boolean r() {
        com.google.android.material.chip.a aVar = this.f64124b;
        return aVar != null && aVar.V1();
    }

    @Deprecated
    public boolean s() {
        return t();
    }

    @Override
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f64126d) {
            super.setBackground(drawable);
        } else {
            Log.w(f64115r, "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override
    public void setBackgroundColor(int i10) {
        Log.w(f64115r, "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f64126d) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w(f64115r, "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override
    public void setBackgroundResource(int i10) {
        Log.w(f64115r, "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        Log.w(f64115r, "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        Log.w(f64115r, "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.k2(z10);
        }
    }

    public void setCheckableResource(@BoolRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.l2(i10);
        }
    }

    @Override
    public void setChecked(boolean z10) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar == null) {
            this.f64129g = z10;
            return;
        }
        if (aVar.V1()) {
            boolean isChecked = isChecked();
            super.setChecked(z10);
            if (isChecked == z10 || (onCheckedChangeListener = this.f64128f) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z10);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.m2(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z10) {
        setCheckedIconVisible(z10);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i10) {
        setCheckedIconVisible(i10);
    }

    public void setCheckedIconResource(@DrawableRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.p2(i10);
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.q2(colorStateList);
        }
    }

    public void setCheckedIconTintResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.r2(i10);
        }
    }

    public void setCheckedIconVisible(@BoolRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.s2(i10);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.u2(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.v2(i10);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.w2(f10);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.x2(i10);
        }
    }

    public void setChipDrawable(@NonNull com.google.android.material.chip.a aVar) {
        com.google.android.material.chip.a aVar2 = this.f64124b;
        if (aVar2 != aVar) {
            B(aVar2);
            this.f64124b = aVar;
            aVar.u3(false);
            i(this.f64124b);
            k(this.f64135m);
        }
    }

    public void setChipEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.y2(f10);
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.z2(i10);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.A2(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z10) {
        setChipIconVisible(z10);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i10) {
        setChipIconVisible(i10);
    }

    public void setChipIconResource(@DrawableRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.D2(i10);
        }
    }

    public void setChipIconSize(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.E2(f10);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.F2(i10);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.G2(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.H2(i10);
        }
    }

    public void setChipIconVisible(@BoolRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.I2(i10);
        }
    }

    public void setChipMinHeight(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.K2(f10);
        }
    }

    public void setChipMinHeightResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.L2(i10);
        }
    }

    public void setChipStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.M2(f10);
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.N2(i10);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.O2(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.P2(i10);
        }
    }

    public void setChipStrokeWidth(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.Q2(f10);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.R2(i10);
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i10) {
        setText(getResources().getString(i10));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.T2(drawable);
        }
        C();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.U2(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z10) {
        setCloseIconVisible(z10);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i10) {
        setCloseIconVisible(i10);
    }

    public void setCloseIconEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.X2(f10);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.Y2(i10);
        }
    }

    public void setCloseIconResource(@DrawableRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.Z2(i10);
        }
        C();
    }

    public void setCloseIconSize(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.a3(f10);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.b3(i10);
        }
    }

    public void setCloseIconStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.c3(f10);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.d3(i10);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.f3(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.g3(i10);
        }
    }

    public void setCloseIconVisible(@BoolRes int i10) {
        setCloseIconVisible(getResources().getBoolean(i10));
    }

    @Override
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i10, i11, i12, i13);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override
    public void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i10, i11, i12, i13);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.m0(f10);
        }
    }

    @Override
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f64124b == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.k3(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        this.f64133k = z10;
        k(this.f64135m);
    }

    @Override
    public void setGravity(int i10) {
        if (i10 != 8388627) {
            Log.w(f64115r, "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i10);
        }
    }

    public void setHideMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.l3(hVar);
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.m3(i10);
        }
    }

    public void setIconEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.n3(f10);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.o3(i10);
        }
    }

    public void setIconStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.p3(f10);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.q3(i10);
        }
    }

    @Override
    public void setLayoutDirection(int i10) {
        if (this.f64124b == null) {
            return;
        }
        super.setLayoutDirection(i10);
    }

    @Override
    public void setLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i10);
    }

    @Override
    public void setMaxLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i10);
    }

    @Override
    public void setMaxWidth(@Px int i10) {
        super.setMaxWidth(i10);
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.r3(i10);
        }
    }

    @Override
    public void setMinLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i10);
    }

    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f64128f = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f64127e = onClickListener;
        C();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.s3(colorStateList);
        }
        if (this.f64124b.T1()) {
            return;
        }
        E();
    }

    public void setRippleColorResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.t3(i10);
            if (this.f64124b.T1()) {
                return;
            }
            E();
        }
    }

    @Override
    public void setShapeAppearanceModel(@NonNull C3572o c3572o) {
        this.f64124b.setShapeAppearanceModel(c3572o);
    }

    public void setShowMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.v3(hVar);
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.w3(i10);
        }
    }

    @Override
    public void setSingleLine(boolean z10) {
        if (!z10) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z10);
    }

    @Override
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(aVar.H3() ? null : charSequence, bufferType);
        com.google.android.material.chip.a aVar2 = this.f64124b;
        if (aVar2 != null) {
            aVar2.x3(charSequence);
        }
    }

    public void setTextAppearance(@Nullable d dVar) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.y3(dVar);
        }
        G();
    }

    public void setTextAppearanceResource(@StyleRes int i10) {
        setTextAppearance(getContext(), i10);
    }

    public void setTextEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.A3(f10);
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.B3(i10);
        }
    }

    public void setTextStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.E3(f10);
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.F3(i10);
        }
    }

    public boolean t() {
        com.google.android.material.chip.a aVar = this.f64124b;
        return aVar != null && aVar.X1();
    }

    @Deprecated
    public boolean u() {
        return v();
    }

    public boolean v() {
        com.google.android.material.chip.a aVar = this.f64124b;
        return aVar != null && aVar.Z1();
    }

    @Deprecated
    public boolean w() {
        return x();
    }

    public boolean x() {
        com.google.android.material.chip.a aVar = this.f64124b;
        return aVar != null && aVar.c2();
    }

    @CallSuper
    public boolean y() {
        boolean z10 = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f64127e;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z10 = true;
        }
        this.f64136n.sendEventForVirtualView(1, 1);
        return z10;
    }

    public final void z() {
        if (this.f64125c != null) {
            this.f64125c = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            D();
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122301b2);
    }

    public void setCloseIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.i3(z10);
        }
        C();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Chip(Context context, AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r4), attributeSet, i10);
        int i11 = f64116s;
        this.f64137o = new Rect();
        this.f64138p = new RectF();
        this.f64139q = new a();
        Context context2 = getContext();
        H(attributeSet);
        com.google.android.material.chip.a Z02 = com.google.android.material.chip.a.Z0(context2, attributeSet, i10, i11);
        o(context2, attributeSet, i10);
        setChipDrawable(Z02);
        Z02.m0(ViewCompat.getElevation(this));
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f125943s5, i10, i11, new int[0]);
        boolean hasValue = j10.hasValue(C15879a.o.f125593e6);
        j10.recycle();
        this.f64136n = new c(this);
        C();
        if (!hasValue) {
            p();
        }
        setChecked(this.f64129g);
        setText(Z02.O1());
        setEllipsize(Z02.H1());
        G();
        if (!this.f64124b.H3()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        F();
        if (A()) {
            setMinHeight(this.f64135m);
        }
        this.f64134l = ViewCompat.getLayoutDirection(this);
    }

    public void setCheckedIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.t2(z10);
        }
    }

    public void setChipIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.J2(z10);
        }
    }

    @Override
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.z3(i10);
        }
        G();
    }

    @Override
    public void setTextAppearance(int i10) {
        super.setTextAppearance(i10);
        com.google.android.material.chip.a aVar = this.f64124b;
        if (aVar != null) {
            aVar.z3(i10);
        }
        G();
    }
}

package T1;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import w1.C15879a;
import x1.C16046a;
import z1.C16241a;
import z1.C16242b;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public abstract class a extends FrameLayout implements MenuView.ItemView {

    public static final int[] f23857A = {R.attr.state_checked};

    public static final int f23858z = -1;

    public int f23859b;

    public int f23860c;

    public float f23861d;

    public float f23862e;

    public float f23863f;

    public int f23864g;

    public boolean f23865h;

    @Nullable
    public final FrameLayout f23866i;

    @Nullable
    public final View f23867j;

    public final ImageView f23868k;

    public final ViewGroup f23869l;

    public final TextView f23870m;

    public final TextView f23871n;

    public int f23872o;

    @Nullable
    public MenuItemImpl f23873p;

    @Nullable
    public ColorStateList f23874q;

    @Nullable
    public Drawable f23875r;

    @Nullable
    public Drawable f23876s;

    public ValueAnimator f23877t;

    public float f23878u;

    public boolean f23879v;

    public int f23880w;

    public int f23881x;

    @Nullable
    public C16241a f23882y;

    public class ViewOnLayoutChangeListenerC0568a implements View.OnLayoutChangeListener {
        public ViewOnLayoutChangeListenerC0568a() {
        }

        @Override
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            if (a.this.f23868k.getVisibility() == 0) {
                a aVar = a.this;
                aVar.p(aVar.f23868k);
            }
        }
    }

    public class b implements Runnable {

        public final int f23884b;

        public b(int i10) {
            this.f23884b = i10;
        }

        @Override
        public void run() {
            a.this.q(this.f23884b);
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {

        public final float f23886a;

        public c(float f10) {
            this.f23886a = f10;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            a.this.k(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f23886a);
        }
    }

    public a(@NonNull Context context) {
        super(context);
        this.f23872o = -1;
        this.f23878u = 0.0f;
        this.f23879v = false;
        this.f23880w = 0;
        this.f23881x = 0;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.f23866i = (FrameLayout) findViewById(C15879a.h.f123817r3);
        this.f23867j = findViewById(C15879a.h.f123810q3);
        ImageView imageView = (ImageView) findViewById(C15879a.h.f123824s3);
        this.f23868k = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(C15879a.h.f123831t3);
        this.f23869l = viewGroup;
        TextView textView = (TextView) findViewById(C15879a.h.f123845v3);
        this.f23870m = textView;
        TextView textView2 = (TextView) findViewById(C15879a.h.f123838u3);
        this.f23871n = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.f23859b = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.f23860c = viewGroup.getPaddingBottom();
        ViewCompat.setImportantForAccessibility(textView, 2);
        ViewCompat.setImportantForAccessibility(textView2, 2);
        setFocusable(true);
        e(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC0568a());
        }
    }

    private View getIconOrContainer() {
        FrameLayout frameLayout = this.f23866i;
        return frameLayout != null ? frameLayout : this.f23868k;
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int indexOfChild = viewGroup.indexOfChild(this);
        int i10 = 0;
        for (int i11 = 0; i11 < indexOfChild; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if ((childAt instanceof a) && childAt.getVisibility() == 0) {
                i10++;
            }
        }
        return i10;
    }

    private int getSuggestedIconHeight() {
        C16241a c16241a = this.f23882y;
        int minimumHeight = c16241a != null ? c16241a.getMinimumHeight() / 2 : 0;
        return Math.max(minimumHeight, ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin) + this.f23868k.getMeasuredWidth() + minimumHeight;
    }

    private int getSuggestedIconWidth() {
        C16241a c16241a = this.f23882y;
        int minimumWidth = c16241a == null ? 0 : c16241a.getMinimumWidth() - this.f23882y.q();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(minimumWidth, layoutParams.leftMargin) + this.f23868k.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.rightMargin);
    }

    public static void l(@NonNull View view, float f10, float f11, int i10) {
        view.setScaleX(f10);
        view.setScaleY(f11);
        view.setVisibility(i10);
    }

    public static void m(@NonNull View view, int i10, int i11) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i10;
        layoutParams.bottomMargin = i10;
        layoutParams.gravity = i11;
        view.setLayoutParams(layoutParams);
    }

    public static void r(@NonNull View view, int i10) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i10);
    }

    public final void e(float f10, float f11) {
        this.f23861d = f10 - f11;
        this.f23862e = (f11 * 1.0f) / f10;
        this.f23863f = (f10 * 1.0f) / f11;
    }

    @Nullable
    public final FrameLayout f(View view) {
        ImageView imageView = this.f23868k;
        if (view == imageView && C16242b.f130582a) {
            return (FrameLayout) imageView.getParent();
        }
        return null;
    }

    public final boolean g() {
        return this.f23882y != null;
    }

    @Nullable
    public Drawable getActiveIndicatorDrawable() {
        View view = this.f23867j;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    @Nullable
    public C16241a getBadge() {
        return this.f23882y;
    }

    @DrawableRes
    public int getItemBackgroundResId() {
        return C15879a.g.f123456h1;
    }

    @Override
    @Nullable
    public MenuItemImpl getItemData() {
        return this.f23873p;
    }

    @DimenRes
    public int getItemDefaultMarginResId() {
        return C15879a.f.f123242i5;
    }

    @LayoutRes
    public abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.f23872o;
    }

    @Override
    public int getSuggestedMinimumHeight() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f23869l.getLayoutParams();
        return getSuggestedIconHeight() + layoutParams.topMargin + this.f23869l.getMeasuredHeight() + layoutParams.bottomMargin;
    }

    @Override
    public int getSuggestedMinimumWidth() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f23869l.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), layoutParams.leftMargin + this.f23869l.getMeasuredWidth() + layoutParams.rightMargin);
    }

    public final void h(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (!this.f23879v) {
            k(f10, f10);
            return;
        }
        ValueAnimator valueAnimator = this.f23877t;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f23877t = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f23878u, f10);
        this.f23877t = ofFloat;
        ofFloat.addUpdateListener(new c(f10));
        this.f23877t.setInterpolator(S1.a.e(getContext(), C15879a.c.f122172Ta, C16046a.f127889b));
        this.f23877t.setDuration(S1.a.d(getContext(), C15879a.c.f121996Ja, getResources().getInteger(C15879a.i.f123890j)));
        this.f23877t.start();
    }

    public final void i() {
        MenuItemImpl menuItemImpl = this.f23873p;
        if (menuItemImpl != null) {
            setChecked(menuItemImpl.isChecked());
        }
    }

    @Override
    public void initialize(@NonNull MenuItemImpl menuItemImpl, int i10) {
        this.f23873p = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        TooltipCompat.setTooltipText(this, !TextUtils.isEmpty(menuItemImpl.getTooltipText()) ? menuItemImpl.getTooltipText() : menuItemImpl.getTitle());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
    }

    public void j() {
        o(this.f23868k);
    }

    public final void k(@FloatRange(from = 0.0d, to = 1.0d) float f10, float f11) {
        View view = this.f23867j;
        if (view != null) {
            view.setScaleX(C16046a.a(0.4f, 1.0f, f10));
            this.f23867j.setAlpha(C16046a.b(0.0f, 1.0f, f11 == 0.0f ? 0.8f : 0.0f, f11 == 0.0f ? 1.0f : 0.2f, f10));
        }
        this.f23878u = f10;
    }

    public final void n(@Nullable View view) {
        if (g() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            C16242b.b(this.f23882y, view, f(view));
        }
    }

    public final void o(@Nullable View view) {
        if (g()) {
            if (view != null) {
                setClipChildren(true);
                setClipToPadding(true);
                C16242b.g(this.f23882y, view);
            }
            this.f23882y = null;
        }
    }

    @Override
    @NonNull
    public int[] onCreateDrawableState(int i10) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        MenuItemImpl menuItemImpl = this.f23873p;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f23873p.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f23857A);
        }
        return onCreateDrawableState;
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C16241a c16241a = this.f23882y;
        if (c16241a != null && c16241a.isVisible()) {
            CharSequence title = this.f23873p.getTitle();
            if (!TextUtils.isEmpty(this.f23873p.getContentDescription())) {
                title = this.f23873p.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.f23882y.o()));
        }
        AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        wrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            wrap.setClickable(false);
            wrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        wrap.setRoleDescription(getResources().getString(C15879a.m.f124061P));
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        post(new b(i10));
    }

    public final void p(View view) {
        if (g()) {
            C16242b.j(this.f23882y, view, f(view));
        }
    }

    @Override
    public boolean prefersCondensedTitle() {
        return false;
    }

    public final void q(int i10) {
        if (this.f23867j == null) {
            return;
        }
        int min = Math.min(this.f23880w, i10 - (this.f23881x * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f23867j.getLayoutParams();
        layoutParams.width = min;
        this.f23867j.setLayoutParams(layoutParams);
    }

    public void setActiveIndicatorDrawable(@Nullable Drawable drawable) {
        View view = this.f23867j;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
    }

    public void setActiveIndicatorEnabled(boolean z10) {
        this.f23879v = z10;
        View view = this.f23867j;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorHeight(int i10) {
        View view = this.f23867j;
        if (view == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.height = i10;
        this.f23867j.setLayoutParams(layoutParams);
    }

    public void setActiveIndicatorMarginHorizontal(@Px int i10) {
        this.f23881x = i10;
        q(getWidth());
    }

    public void setActiveIndicatorWidth(int i10) {
        this.f23880w = i10;
        q(getWidth());
    }

    public void setBadge(@NonNull C16241a c16241a) {
        this.f23882y = c16241a;
        ImageView imageView = this.f23868k;
        if (imageView != null) {
            n(imageView);
        }
    }

    @Override
    public void setCheckable(boolean z10) {
        refreshDrawableState();
    }

    @Override
    public void setChecked(boolean z10) {
        this.f23871n.setPivotX(r0.getWidth() / 2);
        this.f23871n.setPivotY(r0.getBaseline());
        this.f23870m.setPivotX(r0.getWidth() / 2);
        this.f23870m.setPivotY(r0.getBaseline());
        h(z10 ? 1.0f : 0.0f);
        int i10 = this.f23864g;
        if (i10 != -1) {
            if (i10 == 0) {
                if (z10) {
                    m(getIconOrContainer(), this.f23859b, 49);
                    r(this.f23869l, this.f23860c);
                    this.f23871n.setVisibility(0);
                } else {
                    m(getIconOrContainer(), this.f23859b, 17);
                    r(this.f23869l, 0);
                    this.f23871n.setVisibility(4);
                }
                this.f23870m.setVisibility(4);
            } else if (i10 == 1) {
                r(this.f23869l, this.f23860c);
                if (z10) {
                    m(getIconOrContainer(), (int) (this.f23859b + this.f23861d), 49);
                    l(this.f23871n, 1.0f, 1.0f, 0);
                    TextView textView = this.f23870m;
                    float f10 = this.f23862e;
                    l(textView, f10, f10, 4);
                } else {
                    m(getIconOrContainer(), this.f23859b, 49);
                    TextView textView2 = this.f23871n;
                    float f11 = this.f23863f;
                    l(textView2, f11, f11, 4);
                    l(this.f23870m, 1.0f, 1.0f, 0);
                }
            } else if (i10 == 2) {
                m(getIconOrContainer(), this.f23859b, 17);
                this.f23871n.setVisibility(8);
                this.f23870m.setVisibility(8);
            }
        } else if (this.f23865h) {
            if (z10) {
                m(getIconOrContainer(), this.f23859b, 49);
                r(this.f23869l, this.f23860c);
                this.f23871n.setVisibility(0);
            } else {
                m(getIconOrContainer(), this.f23859b, 17);
                r(this.f23869l, 0);
                this.f23871n.setVisibility(4);
            }
            this.f23870m.setVisibility(4);
        } else {
            r(this.f23869l, this.f23860c);
            if (z10) {
                m(getIconOrContainer(), (int) (this.f23859b + this.f23861d), 49);
                l(this.f23871n, 1.0f, 1.0f, 0);
                TextView textView3 = this.f23870m;
                float f12 = this.f23862e;
                l(textView3, f12, f12, 4);
            } else {
                m(getIconOrContainer(), this.f23859b, 49);
                TextView textView4 = this.f23871n;
                float f13 = this.f23863f;
                l(textView4, f13, f13, 4);
                l(this.f23870m, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z10);
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.f23870m.setEnabled(z10);
        this.f23871n.setEnabled(z10);
        this.f23868k.setEnabled(z10);
        if (z10) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    @Override
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable == this.f23875r) {
            return;
        }
        this.f23875r = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.wrap(drawable).mutate();
            this.f23876s = drawable;
            ColorStateList colorStateList = this.f23874q;
            if (colorStateList != null) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
        }
        this.f23868k.setImageDrawable(drawable);
    }

    public void setIconSize(int i10) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f23868k.getLayoutParams();
        layoutParams.width = i10;
        layoutParams.height = i10;
        this.f23868k.setLayoutParams(layoutParams);
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        this.f23874q = colorStateList;
        if (this.f23873p == null || (drawable = this.f23876s) == null) {
            return;
        }
        DrawableCompat.setTintList(drawable, colorStateList);
        this.f23876s.invalidateSelf();
    }

    public void setItemBackground(int i10) {
        setItemBackground(i10 == 0 ? null : ContextCompat.getDrawable(getContext(), i10));
    }

    public void setItemPaddingBottom(int i10) {
        this.f23860c = i10;
        i();
    }

    public void setItemPaddingTop(int i10) {
        this.f23859b = i10;
        i();
    }

    public void setItemPosition(int i10) {
        this.f23872o = i10;
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.f23864g != i10) {
            this.f23864g = i10;
            i();
        }
    }

    public void setShifting(boolean z10) {
        if (this.f23865h != z10) {
            this.f23865h = z10;
            i();
        }
    }

    @Override
    public void setShortcut(boolean z10, char c10) {
    }

    public void setTextAppearanceActive(@StyleRes int i10) {
        TextViewCompat.setTextAppearance(this.f23871n, i10);
        e(this.f23870m.getTextSize(), this.f23871n.getTextSize());
    }

    public void setTextAppearanceInactive(@StyleRes int i10) {
        TextViewCompat.setTextAppearance(this.f23870m, i10);
        e(this.f23870m.getTextSize(), this.f23871n.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f23870m.setTextColor(colorStateList);
            this.f23871n.setTextColor(colorStateList);
        }
    }

    @Override
    public void setTitle(@Nullable CharSequence charSequence) {
        this.f23870m.setText(charSequence);
        this.f23871n.setText(charSequence);
        MenuItemImpl menuItemImpl = this.f23873p;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.f23873p;
        if (menuItemImpl2 != null && !TextUtils.isEmpty(menuItemImpl2.getTooltipText())) {
            charSequence = this.f23873p.getTooltipText();
        }
        TooltipCompat.setTooltipText(this, charSequence);
    }

    @Override
    public boolean showsIcon() {
        return true;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        ViewCompat.setBackground(this, drawable);
    }
}

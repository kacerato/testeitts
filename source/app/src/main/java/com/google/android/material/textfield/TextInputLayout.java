package com.google.android.material.textfield;

import a2.C3567j;
import a2.C3572o;
import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import com.google.android.material.internal.A;
import com.google.android.material.internal.C12453a;
import com.google.android.material.internal.C12455c;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.s;
import g2.C13286a;
import g2.C13287b;
import h2.C13421a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.apache.commons.math3.geometry.VectorFormat;
import w1.C15879a;
import x1.C16046a;
import z1.C16241a;

public class TextInputLayout extends LinearLayout {

    public static final long f65013D6 = 87;

    public static final int f65014F5 = C15879a.n.f124188Da;

    public static final long f65015F6 = 67;

    public static final int f65016F7 = -1;

    public static final String f65017F8 = "TextInputLayout";

    public static final int f65018H5 = 167;

    public static final int f65019H6 = -1;

    public static final int f65020K8 = 0;

    public static final int f65021L8 = 1;

    public static final int f65022M8 = 2;

    public static final int f65023N8 = -1;

    public static final int f65024O8 = 0;

    public static final int f65025P8 = 1;

    public static final int f65026Q8 = 2;

    public static final int f65027R8 = 3;

    @NonNull
    public final TextView f65028A;

    @Nullable
    public CharSequence f65029B;

    @NonNull
    public final TextView f65030C;

    public boolean f65031D;

    public PorterDuff.Mode f65032D0;

    public View.OnLongClickListener f65033D2;

    @ColorInt
    public int f65034D3;

    public boolean f65035D4;

    public boolean f65036D5;

    public CharSequence f65037E;

    public boolean f65038F;

    public final SparseArray<g2.c> f65039F1;

    @NonNull
    public final CheckableImageButton f65040F2;

    @ColorInt
    public int f65041F3;

    public ValueAnimator f65042F4;

    @Nullable
    public C3567j f65043G;

    @Nullable
    public C3567j f65044H;

    @NonNull
    public final CheckableImageButton f65045H1;

    public ColorStateList f65046H2;

    @ColorInt
    public int f65047H3;

    public boolean f65048H4;

    @NonNull
    public C3572o f65049I;

    public final int f65050J;

    public int f65051K;

    public int f65052L;

    public final LinkedHashSet<i> f65053L1;

    public ColorStateList f65054L2;

    public int f65055M;

    public ColorStateList f65056M1;

    public ColorStateList f65057M2;

    public boolean f65058M3;

    public int f65059N;

    public int f65060O;

    public int f65061P;

    @ColorInt
    public int f65062Q;

    @ColorInt
    public int f65063R;

    public boolean f65064R1;

    @ColorInt
    public int f65065R2;

    public final Rect f65066S;

    public final Rect f65067T;

    public final RectF f65068U;

    public Typeface f65069V;

    public PorterDuff.Mode f65070V1;

    @ColorInt
    public int f65071V2;

    @NonNull
    public final CheckableImageButton f65072W;

    @NonNull
    public final FrameLayout f65073b;

    public boolean f65074b1;

    public boolean f65075b2;

    @NonNull
    public final LinearLayout f65076c;

    @NonNull
    public final LinearLayout f65077d;

    @NonNull
    public final FrameLayout f65078e;

    public EditText f65079f;

    public CharSequence f65080g;

    public int f65081h;

    public int f65082i;

    @Nullable
    public Drawable f65083i1;

    @Nullable
    public Drawable f65084i2;

    @ColorInt
    public int f65085i3;

    public final g2.d f65086j;

    public boolean f65087k;

    public int f65088l;

    public boolean f65089m;

    public int f65090m1;

    public int f65091m2;

    public ColorStateList f65092m3;

    public final C12453a f65093m4;

    @Nullable
    public TextView f65094n;

    public int f65095o;

    public int f65096p;

    public CharSequence f65097q;

    public ColorStateList f65098q0;

    public View.OnLongClickListener f65099q1;

    public Drawable f65100q2;

    @ColorInt
    public int f65101q3;

    public boolean f65102r;

    public TextView f65103s;

    @Nullable
    public ColorStateList f65104t;

    public int f65105u;

    @Nullable
    public Fade f65106v;

    public boolean f65107v0;

    public final LinkedHashSet<h> f65108v1;

    public View.OnLongClickListener f65109v2;

    @ColorInt
    public int f65110v3;

    public boolean f65111v4;

    @Nullable
    public Fade f65112w;

    @Nullable
    public ColorStateList f65113x;

    @Nullable
    public ColorStateList f65114y;

    public int f65115y1;

    @Nullable
    public CharSequence f65116z;

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(@NonNull Editable editable) {
            TextInputLayout.this.N0(!r0.f65036D5);
            TextInputLayout textInputLayout = TextInputLayout.this;
            if (textInputLayout.f65087k) {
                textInputLayout.F0(editable.length());
            }
            if (TextInputLayout.this.f65102r) {
                TextInputLayout.this.R0(editable.length());
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            TextInputLayout.this.f65045H1.performClick();
            TextInputLayout.this.f65045H1.jumpDrawablesToCurrentState();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            TextInputLayout.this.f65079f.requestLayout();
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TextInputLayout.this.f65093m4.u0(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class e extends AccessibilityDelegateCompat {

        public final TextInputLayout f65121a;

        public e(@NonNull TextInputLayout textInputLayout) {
            this.f65121a = textInputLayout;
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.f65121a.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f65121a.getHint();
            CharSequence error = this.f65121a.getError();
            CharSequence placeholderText = this.f65121a.getPlaceholderText();
            int counterMaxLength = this.f65121a.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f65121a.getCounterOverflowDescription();
            boolean isEmpty = TextUtils.isEmpty(text);
            boolean isEmpty2 = TextUtils.isEmpty(hint);
            boolean Y10 = this.f65121a.Y();
            boolean isEmpty3 = TextUtils.isEmpty(error);
            boolean z10 = (isEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
            String charSequence = !isEmpty2 ? hint.toString() : "";
            if (!isEmpty) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (!TextUtils.isEmpty(charSequence)) {
                accessibilityNodeInfoCompat.setText(charSequence);
                if (!Y10 && placeholderText != null) {
                    accessibilityNodeInfoCompat.setText(charSequence + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(charSequence)) {
                accessibilityNodeInfoCompat.setHintText(charSequence);
                accessibilityNodeInfoCompat.setShowingHintText(isEmpty);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfoCompat.setMaxTextLength(counterMaxLength);
            if (z10) {
                if (isEmpty3) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.setError(error);
            }
            if (editText != null) {
                editText.setLabelFor(C15879a.h.f123517A5);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface f {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface g {
    }

    public interface h {
        void a(@NonNull TextInputLayout textInputLayout);
    }

    public interface i {
        void a(@NonNull TextInputLayout textInputLayout, int i10);
    }

    public static class j extends AbsSavedState {
        public static final Parcelable.Creator<j> CREATOR = new a();

        @Nullable
        public CharSequence f65122b;

        public boolean f65123c;

        @Nullable
        public CharSequence f65124d;

        @Nullable
        public CharSequence f65125e;

        @Nullable
        public CharSequence f65126f;

        public static class a implements Parcelable.ClassLoaderCreator<j> {
            @Override
            @Nullable
            public j createFromParcel(@NonNull Parcel parcel) {
                return new j(parcel, null);
            }

            @Override
            @NonNull
            public j createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new j(parcel, classLoader);
            }

            @Override
            @NonNull
            public j[] newArray(int i10) {
                return new j[i10];
            }
        }

        public j(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f65122b) + " hint=" + ((Object) this.f65124d) + " helperText=" + ((Object) this.f65125e) + " placeholderText=" + ((Object) this.f65126f) + VectorFormat.DEFAULT_SUFFIX;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            TextUtils.writeToParcel(this.f65122b, parcel, i10);
            parcel.writeInt(this.f65123c ? 1 : 0);
            TextUtils.writeToParcel(this.f65124d, parcel, i10);
            TextUtils.writeToParcel(this.f65125e, parcel, i10);
            TextUtils.writeToParcel(this.f65126f, parcel, i10);
        }

        public j(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            this.f65122b = creator.createFromParcel(parcel);
            this.f65123c = parcel.readInt() == 1;
            this.f65124d = creator.createFromParcel(parcel);
            this.f65125e = creator.createFromParcel(parcel);
            this.f65126f = creator.createFromParcel(parcel);
        }
    }

    public TextInputLayout(@NonNull Context context) {
        this(context, null);
    }

    public static void G0(@NonNull Context context, @NonNull TextView textView, int i10, int i11, boolean z10) {
        textView.setContentDescription(context.getString(z10 ? C15879a.m.f124041F : C15879a.m.f124039E, Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    private g2.c getEndIconDelegate() {
        g2.c cVar = this.f65039F1.get(this.f65115y1);
        return cVar != null ? cVar : this.f65039F1.get(0);
    }

    @Nullable
    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.f65040F2.getVisibility() == 0) {
            return this.f65040F2;
        }
        if (M() && Q()) {
            return this.f65045H1;
        }
        return null;
    }

    public static void i0(@NonNull ViewGroup viewGroup, boolean z10) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            childAt.setEnabled(z10);
            if (childAt instanceof ViewGroup) {
                i0((ViewGroup) childAt, z10);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.f65079f != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.f65115y1 != 3 && !(editText instanceof TextInputEditText)) {
            Log.i(f65017F8, "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f65079f = editText;
        setMinWidth(this.f65081h);
        setMaxWidth(this.f65082i);
        f0();
        setTextInputAccessibilityDelegate(new e(this));
        this.f65093m4.H0(this.f65079f.getTypeface());
        this.f65093m4.r0(this.f65079f.getTextSize());
        int gravity = this.f65079f.getGravity();
        this.f65093m4.g0((gravity & (-113)) | 48);
        this.f65093m4.q0(gravity);
        this.f65079f.addTextChangedListener(new a());
        if (this.f65054L2 == null) {
            this.f65054L2 = this.f65079f.getHintTextColors();
        }
        if (this.f65031D) {
            if (TextUtils.isEmpty(this.f65037E)) {
                CharSequence hint = this.f65079f.getHint();
                this.f65080g = hint;
                setHint(hint);
                this.f65079f.setHint((CharSequence) null);
            }
            this.f65038F = true;
        }
        if (this.f65094n != null) {
            F0(this.f65079f.getText().length());
        }
        K0();
        this.f65086j.e();
        this.f65076c.bringToFront();
        this.f65077d.bringToFront();
        this.f65078e.bringToFront();
        this.f65040F2.bringToFront();
        F();
        S0();
        V0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        O0(false, true);
    }

    private void setErrorIconVisible(boolean z10) {
        this.f65040F2.setVisibility(z10 ? 0 : 8);
        this.f65078e.setVisibility(z10 ? 8 : 0);
        V0();
        if (M()) {
            return;
        }
        J0();
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f65037E)) {
            return;
        }
        this.f65037E = charSequence;
        this.f65093m4.F0(charSequence);
        if (this.f65058M3) {
            return;
        }
        g0();
    }

    private void setPlaceholderTextEnabled(boolean z10) {
        if (this.f65102r == z10) {
            return;
        }
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f65103s = appCompatTextView;
            appCompatTextView.setId(C15879a.h.f123524B5);
            Fade C10 = C();
            this.f65106v = C10;
            C10.setStartDelay(67L);
            this.f65112w = C();
            ViewCompat.setAccessibilityLiveRegion(this.f65103s, 1);
            setPlaceholderTextAppearance(this.f65105u);
            setPlaceholderTextColor(this.f65104t);
            g();
        } else {
            p0();
            this.f65103s = null;
        }
        this.f65102r = z10;
    }

    public static void t0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        boolean hasOnClickListeners = ViewCompat.hasOnClickListeners(checkableImageButton);
        boolean z10 = onLongClickListener != null;
        boolean z11 = hasOnClickListeners || z10;
        checkableImageButton.setFocusable(z11);
        checkableImageButton.setClickable(hasOnClickListeners);
        checkableImageButton.setPressable(hasOnClickListeners);
        checkableImageButton.setLongClickable(z10);
        ViewCompat.setImportantForAccessibility(checkableImageButton, z11 ? 1 : 2);
    }

    public static void u0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnClickListener onClickListener, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        t0(checkableImageButton, onLongClickListener);
    }

    public static void v0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        t0(checkableImageButton, onLongClickListener);
    }

    public final void A() {
        if (D()) {
            ((C13287b) this.f65043G).R0();
        }
    }

    public final void A0() {
        TextView textView = this.f65103s;
        if (textView == null || !this.f65102r) {
            return;
        }
        textView.setText(this.f65097q);
        TransitionManager.beginDelayedTransition(this.f65073b, this.f65106v);
        this.f65103s.setVisibility(0);
        this.f65103s.bringToFront();
    }

    public final void B(boolean z10) {
        ValueAnimator valueAnimator = this.f65042F4;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f65042F4.cancel();
        }
        if (z10 && this.f65035D4) {
            i(1.0f);
        } else {
            this.f65093m4.u0(1.0f);
        }
        this.f65058M3 = false;
        if (D()) {
            g0();
        }
        Q0();
        T0();
        W0();
    }

    public final void B0(boolean z10) {
        if (!z10 || getEndIconDrawable() == null) {
            m();
            return;
        }
        Drawable mutate = DrawableCompat.wrap(getEndIconDrawable()).mutate();
        DrawableCompat.setTint(mutate, this.f65086j.p());
        this.f65045H1.setImageDrawable(mutate);
    }

    public final Fade C() {
        Fade fade = new Fade();
        fade.setDuration(87L);
        fade.setInterpolator(C16046a.f127888a);
        return fade;
    }

    public final void C0() {
        if (this.f65052L == 1) {
            if (X1.c.h(getContext())) {
                this.f65055M = getResources().getDimensionPixelSize(C15879a.f.f123351w2);
            } else if (X1.c.g(getContext())) {
                this.f65055M = getResources().getDimensionPixelSize(C15879a.f.f123343v2);
            }
        }
    }

    public final boolean D() {
        return this.f65031D && !TextUtils.isEmpty(this.f65037E) && (this.f65043G instanceof C13287b);
    }

    public final void D0(@NonNull Rect rect) {
        C3567j c3567j = this.f65044H;
        if (c3567j != null) {
            int i10 = rect.bottom;
            c3567j.setBounds(rect.left, i10 - this.f65061P, rect.right, i10);
        }
    }

    @VisibleForTesting
    public boolean E() {
        return D() && ((C13287b) this.f65043G).O0();
    }

    public final void E0() {
        if (this.f65094n != null) {
            EditText editText = this.f65079f;
            F0(editText == null ? 0 : editText.getText().length());
        }
    }

    public final void F() {
        Iterator<h> it = this.f65108v1.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    public void F0(int i10) {
        boolean z10 = this.f65089m;
        int i11 = this.f65088l;
        if (i11 == -1) {
            this.f65094n.setText(String.valueOf(i10));
            this.f65094n.setContentDescription(null);
            this.f65089m = false;
        } else {
            this.f65089m = i10 > i11;
            G0(getContext(), this.f65094n, i10, this.f65088l, this.f65089m);
            if (z10 != this.f65089m) {
                H0();
            }
            this.f65094n.setText(BidiFormatter.getInstance().unicodeWrap(getContext().getString(C15879a.m.f124043G, Integer.valueOf(i10), Integer.valueOf(this.f65088l))));
        }
        if (this.f65079f == null || z10 == this.f65089m) {
            return;
        }
        N0(false);
        X0();
        K0();
    }

    public final void G(int i10) {
        Iterator<i> it = this.f65053L1.iterator();
        while (it.hasNext()) {
            it.next().a(this, i10);
        }
    }

    public final void H(Canvas canvas) {
        C3567j c3567j = this.f65044H;
        if (c3567j != null) {
            Rect bounds = c3567j.getBounds();
            bounds.top = bounds.bottom - this.f65059N;
            this.f65044H.draw(canvas);
        }
    }

    public final void H0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f65094n;
        if (textView != null) {
            w0(textView, this.f65089m ? this.f65095o : this.f65096p);
            if (!this.f65089m && (colorStateList2 = this.f65113x) != null) {
                this.f65094n.setTextColor(colorStateList2);
            }
            if (!this.f65089m || (colorStateList = this.f65114y) == null) {
                return;
            }
            this.f65094n.setTextColor(colorStateList);
        }
    }

    public final void I(@NonNull Canvas canvas) {
        if (this.f65031D) {
            this.f65093m4.m(canvas);
        }
    }

    public final void I0() {
        if (!D() || this.f65058M3 || this.f65051K == this.f65059N) {
            return;
        }
        A();
        g0();
    }

    public final void J(boolean z10) {
        ValueAnimator valueAnimator = this.f65042F4;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f65042F4.cancel();
        }
        if (z10 && this.f65035D4) {
            i(0.0f);
        } else {
            this.f65093m4.u0(0.0f);
        }
        if (D() && ((C13287b) this.f65043G).O0()) {
            A();
        }
        this.f65058M3 = true;
        N();
        T0();
        W0();
    }

    public final boolean J0() {
        boolean z10;
        if (this.f65079f == null) {
            return false;
        }
        boolean z11 = true;
        if (y0()) {
            int measuredWidth = this.f65076c.getMeasuredWidth() - this.f65079f.getPaddingLeft();
            if (this.f65083i1 == null || this.f65090m1 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f65083i1 = colorDrawable;
                this.f65090m1 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.f65079f);
            Drawable drawable = compoundDrawablesRelative[0];
            Drawable drawable2 = this.f65083i1;
            if (drawable != drawable2) {
                TextViewCompat.setCompoundDrawablesRelative(this.f65079f, drawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                z10 = true;
            }
            z10 = false;
        } else {
            if (this.f65083i1 != null) {
                Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.f65079f);
                TextViewCompat.setCompoundDrawablesRelative(this.f65079f, null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.f65083i1 = null;
                z10 = true;
            }
            z10 = false;
        }
        if (x0()) {
            int measuredWidth2 = this.f65030C.getMeasuredWidth() - this.f65079f.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = measuredWidth2 + endIconToUpdateDummyDrawable.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams());
            }
            Drawable[] compoundDrawablesRelative3 = TextViewCompat.getCompoundDrawablesRelative(this.f65079f);
            Drawable drawable3 = this.f65084i2;
            if (drawable3 == null || this.f65091m2 == measuredWidth2) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.f65084i2 = colorDrawable2;
                    this.f65091m2 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = compoundDrawablesRelative3[2];
                Drawable drawable5 = this.f65084i2;
                if (drawable4 != drawable5) {
                    this.f65100q2 = drawable4;
                    TextViewCompat.setCompoundDrawablesRelative(this.f65079f, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], drawable5, compoundDrawablesRelative3[3]);
                } else {
                    z11 = z10;
                }
            } else {
                this.f65091m2 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                TextViewCompat.setCompoundDrawablesRelative(this.f65079f, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.f65084i2, compoundDrawablesRelative3[3]);
            }
        } else {
            if (this.f65084i2 == null) {
                return z10;
            }
            Drawable[] compoundDrawablesRelative4 = TextViewCompat.getCompoundDrawablesRelative(this.f65079f);
            if (compoundDrawablesRelative4[2] == this.f65084i2) {
                TextViewCompat.setCompoundDrawablesRelative(this.f65079f, compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.f65100q2, compoundDrawablesRelative4[3]);
            } else {
                z11 = z10;
            }
            this.f65084i2 = null;
        }
        return z11;
    }

    public final int K(int i10, boolean z10) {
        int compoundPaddingLeft = i10 + this.f65079f.getCompoundPaddingLeft();
        return (this.f65116z == null || z10) ? compoundPaddingLeft : (compoundPaddingLeft - this.f65028A.getMeasuredWidth()) + this.f65028A.getPaddingLeft();
    }

    public void K0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f65079f;
        if (editText == null || this.f65052L != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        if (this.f65086j.l()) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.f65086j.p(), PorterDuff.Mode.SRC_IN));
        } else if (this.f65089m && (textView = this.f65094n) != null) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            DrawableCompat.clearColorFilter(background);
            this.f65079f.refreshDrawableState();
        }
    }

    public final int L(int i10, boolean z10) {
        int compoundPaddingRight = i10 - this.f65079f.getCompoundPaddingRight();
        return (this.f65116z == null || !z10) ? compoundPaddingRight : compoundPaddingRight + (this.f65028A.getMeasuredWidth() - this.f65028A.getPaddingRight());
    }

    public final boolean L0() {
        int max;
        if (this.f65079f == null || this.f65079f.getMeasuredHeight() >= (max = Math.max(this.f65077d.getMeasuredHeight(), this.f65076c.getMeasuredHeight()))) {
            return false;
        }
        this.f65079f.setMinimumHeight(max);
        return true;
    }

    public final boolean M() {
        return this.f65115y1 != 0;
    }

    public final void M0() {
        if (this.f65052L != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f65073b.getLayoutParams();
            int v10 = v();
            if (v10 != layoutParams.topMargin) {
                layoutParams.topMargin = v10;
                this.f65073b.requestLayout();
            }
        }
    }

    public final void N() {
        TextView textView = this.f65103s;
        if (textView == null || !this.f65102r) {
            return;
        }
        textView.setText((CharSequence) null);
        TransitionManager.beginDelayedTransition(this.f65073b, this.f65112w);
        this.f65103s.setVisibility(4);
    }

    public void N0(boolean z10) {
        O0(z10, false);
    }

    public boolean O() {
        return this.f65087k;
    }

    public final void O0(boolean z10, boolean z11) {
        ColorStateList colorStateList;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f65079f;
        boolean z12 = false;
        boolean z13 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f65079f;
        if (editText2 != null && editText2.hasFocus()) {
            z12 = true;
        }
        boolean l10 = this.f65086j.l();
        ColorStateList colorStateList2 = this.f65054L2;
        if (colorStateList2 != null) {
            this.f65093m4.f0(colorStateList2);
            this.f65093m4.p0(this.f65054L2);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.f65054L2;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f65047H3) : this.f65047H3;
            this.f65093m4.f0(ColorStateList.valueOf(colorForState));
            this.f65093m4.p0(ColorStateList.valueOf(colorForState));
        } else if (l10) {
            this.f65093m4.f0(this.f65086j.q());
        } else if (this.f65089m && (textView = this.f65094n) != null) {
            this.f65093m4.f0(textView.getTextColors());
        } else if (z12 && (colorStateList = this.f65057M2) != null) {
            this.f65093m4.f0(colorStateList);
        }
        if (z13 || !this.f65111v4 || (isEnabled() && z12)) {
            if (z11 || this.f65058M3) {
                B(z10);
                return;
            }
            return;
        }
        if (z11 || !this.f65058M3) {
            J(z10);
        }
    }

    public boolean P() {
        return this.f65045H1.a();
    }

    public final void P0() {
        EditText editText;
        if (this.f65103s == null || (editText = this.f65079f) == null) {
            return;
        }
        this.f65103s.setGravity(editText.getGravity());
        this.f65103s.setPadding(this.f65079f.getCompoundPaddingLeft(), this.f65079f.getCompoundPaddingTop(), this.f65079f.getCompoundPaddingRight(), this.f65079f.getCompoundPaddingBottom());
    }

    public boolean Q() {
        return this.f65078e.getVisibility() == 0 && this.f65045H1.getVisibility() == 0;
    }

    public final void Q0() {
        EditText editText = this.f65079f;
        R0(editText == null ? 0 : editText.getText().length());
    }

    public boolean R() {
        return this.f65086j.C();
    }

    public final void R0(int i10) {
        if (i10 != 0 || this.f65058M3) {
            N();
        } else {
            A0();
        }
    }

    public final boolean S() {
        return this.f65040F2.getVisibility() == 0;
    }

    public final void S0() {
        if (this.f65079f == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f65028A, d0() ? 0 : ViewCompat.getPaddingStart(this.f65079f), this.f65079f.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(C15879a.f.f122961A2), this.f65079f.getCompoundPaddingBottom());
    }

    public boolean T() {
        return this.f65111v4;
    }

    public final void T0() {
        this.f65028A.setVisibility((this.f65116z == null || Y()) ? 8 : 0);
        J0();
    }

    @VisibleForTesting
    public final boolean U() {
        return this.f65086j.v();
    }

    public final void U0(boolean z10, boolean z11) {
        int defaultColor = this.f65092m3.getDefaultColor();
        int colorForState = this.f65092m3.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f65092m3.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z10) {
            this.f65062Q = colorForState2;
        } else if (z11) {
            this.f65062Q = colorForState;
        } else {
            this.f65062Q = defaultColor;
        }
    }

    public boolean V() {
        return this.f65086j.D();
    }

    public final void V0() {
        if (this.f65079f == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f65030C, getContext().getResources().getDimensionPixelSize(C15879a.f.f122961A2), this.f65079f.getPaddingTop(), (Q() || S()) ? 0 : ViewCompat.getPaddingEnd(this.f65079f), this.f65079f.getPaddingBottom());
    }

    public boolean W() {
        return this.f65035D4;
    }

    public final void W0() {
        int visibility = this.f65030C.getVisibility();
        boolean z10 = (this.f65029B == null || Y()) ? false : true;
        this.f65030C.setVisibility(z10 ? 0 : 8);
        if (visibility != this.f65030C.getVisibility()) {
            getEndIconDelegate().c(z10);
        }
        J0();
    }

    public boolean X() {
        return this.f65031D;
    }

    public void X0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.f65043G == null || this.f65052L == 0) {
            return;
        }
        boolean z10 = false;
        boolean z11 = isFocused() || ((editText2 = this.f65079f) != null && editText2.hasFocus());
        boolean z12 = isHovered() || ((editText = this.f65079f) != null && editText.isHovered());
        if (!isEnabled()) {
            this.f65062Q = this.f65047H3;
        } else if (this.f65086j.l()) {
            if (this.f65092m3 != null) {
                U0(z11, z12);
            } else {
                this.f65062Q = this.f65086j.p();
            }
        } else if (!this.f65089m || (textView = this.f65094n) == null) {
            if (z11) {
                this.f65062Q = this.f65085i3;
            } else if (z12) {
                this.f65062Q = this.f65071V2;
            } else {
                this.f65062Q = this.f65065R2;
            }
        } else if (this.f65092m3 != null) {
            U0(z11, z12);
        } else {
            this.f65062Q = textView.getCurrentTextColor();
        }
        if (getErrorIconDrawable() != null && this.f65086j.C() && this.f65086j.l()) {
            z10 = true;
        }
        setErrorIconVisible(z10);
        k0();
        m0();
        j0();
        if (getEndIconDelegate().d()) {
            B0(this.f65086j.l());
        }
        if (z11 && isEnabled()) {
            this.f65059N = this.f65061P;
        } else {
            this.f65059N = this.f65060O;
        }
        if (this.f65052L == 2) {
            I0();
        }
        if (this.f65052L == 1) {
            if (!isEnabled()) {
                this.f65063R = this.f65110v3;
            } else if (z12 && !z11) {
                this.f65063R = this.f65041F3;
            } else if (z11) {
                this.f65063R = this.f65034D3;
            } else {
                this.f65063R = this.f65101q3;
            }
        }
        j();
    }

    @VisibleForTesting
    public final boolean Y() {
        return this.f65058M3;
    }

    @Deprecated
    public boolean Z() {
        return this.f65115y1 == 1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean a0() {
        return this.f65038F;
    }

    @Override
    public void addView(@NonNull View view, int i10, @NonNull ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i10, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f65073b.addView(view, layoutParams2);
        this.f65073b.setLayoutParams(layoutParams);
        M0();
        setEditText((EditText) view);
    }

    public final boolean b0() {
        return this.f65052L == 1 && this.f65079f.getMinLines() <= 1;
    }

    public boolean c0() {
        return this.f65072W.a();
    }

    public boolean d0() {
        return this.f65072W.getVisibility() == 0;
    }

    @Override
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(@NonNull ViewStructure viewStructure, int i10) {
        EditText editText = this.f65079f;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i10);
            return;
        }
        if (this.f65080g != null) {
            boolean z10 = this.f65038F;
            this.f65038F = false;
            CharSequence hint = editText.getHint();
            this.f65079f.setHint(this.f65080g);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i10);
                return;
            } finally {
                this.f65079f.setHint(hint);
                this.f65038F = z10;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i10);
        onProvideAutofillVirtualStructure(viewStructure, i10);
        viewStructure.setChildCount(this.f65073b.getChildCount());
        for (int i11 = 0; i11 < this.f65073b.getChildCount(); i11++) {
            View childAt = this.f65073b.getChildAt(i11);
            ViewStructure newChild = viewStructure.newChild(i11);
            childAt.dispatchProvideAutofillStructure(newChild, i10);
            if (childAt == this.f65079f) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override
    public void dispatchRestoreInstanceState(@NonNull SparseArray<Parcelable> sparseArray) {
        this.f65036D5 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f65036D5 = false;
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        I(canvas);
        H(canvas);
    }

    @Override
    public void drawableStateChanged() {
        if (this.f65048H4) {
            return;
        }
        this.f65048H4 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        C12453a c12453a = this.f65093m4;
        boolean E02 = c12453a != null ? c12453a.E0(drawableState) : false;
        if (this.f65079f != null) {
            N0(ViewCompat.isLaidOut(this) && isEnabled());
        }
        K0();
        X0();
        if (E02) {
            invalidate();
        }
        this.f65048H4 = false;
    }

    public void e(@NonNull h hVar) {
        this.f65108v1.add(hVar);
        if (this.f65079f != null) {
            hVar.a(this);
        }
    }

    public final int[] e0(CheckableImageButton checkableImageButton) {
        int[] drawableState = getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
        return copyOf;
    }

    public void f(@NonNull i iVar) {
        this.f65053L1.add(iVar);
    }

    public final void f0() {
        p();
        s0();
        X0();
        C0();
        h();
        if (this.f65052L != 0) {
            M0();
        }
    }

    public final void g() {
        TextView textView = this.f65103s;
        if (textView != null) {
            this.f65073b.addView(textView);
            this.f65103s.setVisibility(0);
        }
    }

    public final void g0() {
        if (D()) {
            RectF rectF = this.f65068U;
            this.f65093m4.p(rectF, this.f65079f.getWidth(), this.f65079f.getGravity());
            l(rectF);
            int i10 = this.f65059N;
            this.f65051K = i10;
            rectF.top = 0.0f;
            rectF.bottom = i10;
            rectF.offset(-getPaddingLeft(), 0.0f);
            ((C13287b) this.f65043G).U0(rectF);
        }
    }

    @Override
    public int getBaseline() {
        EditText editText = this.f65079f;
        return editText != null ? editText.getBaseline() + getPaddingTop() + v() : super.getBaseline();
    }

    @NonNull
    public C3567j getBoxBackground() {
        int i10 = this.f65052L;
        if (i10 == 1 || i10 == 2) {
            return this.f65043G;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f65063R;
    }

    public int getBoxBackgroundMode() {
        return this.f65052L;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.f65043G.t();
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.f65043G.u();
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.f65043G.S();
    }

    public float getBoxCornerRadiusTopStart() {
        return this.f65043G.R();
    }

    public int getBoxStrokeColor() {
        return this.f65085i3;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.f65092m3;
    }

    public int getBoxStrokeWidth() {
        return this.f65060O;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f65061P;
    }

    public int getCounterMaxLength() {
        return this.f65088l;
    }

    @Nullable
    public CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.f65087k && this.f65089m && (textView = this.f65094n) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.f65113x;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.f65113x;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.f65054L2;
    }

    @Nullable
    public EditText getEditText() {
        return this.f65079f;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.f65045H1.getContentDescription();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.f65045H1.getDrawable();
    }

    public int getEndIconMode() {
        return this.f65115y1;
    }

    @NonNull
    public CheckableImageButton getEndIconView() {
        return this.f65045H1;
    }

    @Nullable
    public CharSequence getError() {
        if (this.f65086j.C()) {
            return this.f65086j.o();
        }
        return null;
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.f65086j.n();
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        return this.f65086j.p();
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.f65040F2.getDrawable();
    }

    @VisibleForTesting
    public final int getErrorTextCurrentColor() {
        return this.f65086j.p();
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.f65086j.D()) {
            return this.f65086j.r();
        }
        return null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        return this.f65086j.t();
    }

    @Nullable
    public CharSequence getHint() {
        if (this.f65031D) {
            return this.f65037E;
        }
        return null;
    }

    @VisibleForTesting
    public final float getHintCollapsedTextHeight() {
        return this.f65093m4.s();
    }

    @VisibleForTesting
    public final int getHintCurrentCollapsedTextColor() {
        return this.f65093m4.x();
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.f65057M2;
    }

    @Px
    public int getMaxWidth() {
        return this.f65082i;
    }

    @Px
    public int getMinWidth() {
        return this.f65081h;
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f65045H1.getContentDescription();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f65045H1.getDrawable();
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.f65102r) {
            return this.f65097q;
        }
        return null;
    }

    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.f65105u;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.f65104t;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.f65116z;
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.f65028A.getTextColors();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.f65028A;
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.f65072W.getContentDescription();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.f65072W.getDrawable();
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.f65029B;
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.f65030C.getTextColors();
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.f65030C;
    }

    @Nullable
    public Typeface getTypeface() {
        return this.f65069V;
    }

    public final void h() {
        if (this.f65079f == null || this.f65052L != 1) {
            return;
        }
        if (X1.c.h(getContext())) {
            EditText editText = this.f65079f;
            ViewCompat.setPaddingRelative(editText, ViewCompat.getPaddingStart(editText), getResources().getDimensionPixelSize(C15879a.f.f123335u2), ViewCompat.getPaddingEnd(this.f65079f), getResources().getDimensionPixelSize(C15879a.f.f123327t2));
        } else if (X1.c.g(getContext())) {
            EditText editText2 = this.f65079f;
            ViewCompat.setPaddingRelative(editText2, ViewCompat.getPaddingStart(editText2), getResources().getDimensionPixelSize(C15879a.f.f123319s2), ViewCompat.getPaddingEnd(this.f65079f), getResources().getDimensionPixelSize(C15879a.f.f123311r2));
        }
    }

    @Deprecated
    public void h0(boolean z10) {
        if (this.f65115y1 == 1) {
            this.f65045H1.performClick();
            if (z10) {
                this.f65045H1.jumpDrawablesToCurrentState();
            }
        }
    }

    @VisibleForTesting
    public void i(float f10) {
        if (this.f65093m4.G() == f10) {
            return;
        }
        if (this.f65042F4 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f65042F4 = valueAnimator;
            valueAnimator.setInterpolator(C16046a.f127889b);
            this.f65042F4.setDuration(167L);
            this.f65042F4.addUpdateListener(new d());
        }
        this.f65042F4.setFloatValues(this.f65093m4.G(), f10);
        this.f65042F4.start();
    }

    public final void j() {
        C3567j c3567j = this.f65043G;
        if (c3567j == null) {
            return;
        }
        c3567j.setShapeAppearanceModel(this.f65049I);
        if (w()) {
            this.f65043G.C0(this.f65059N, this.f65062Q);
        }
        int q10 = q();
        this.f65063R = q10;
        this.f65043G.n0(ColorStateList.valueOf(q10));
        if (this.f65115y1 == 3) {
            this.f65079f.getBackground().invalidateSelf();
        }
        k();
        invalidate();
    }

    public void j0() {
        l0(this.f65045H1, this.f65056M1);
    }

    public final void k() {
        if (this.f65044H == null) {
            return;
        }
        if (x()) {
            this.f65044H.n0(ColorStateList.valueOf(this.f65062Q));
        }
        invalidate();
    }

    public void k0() {
        l0(this.f65040F2, this.f65046H2);
    }

    public final void l(@NonNull RectF rectF) {
        float f10 = rectF.left;
        int i10 = this.f65050J;
        rectF.left = f10 - i10;
        rectF.right += i10;
    }

    public final void l0(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int colorForState = colorStateList.getColorForState(e0(checkableImageButton), colorStateList.getDefaultColor());
        Drawable mutate = DrawableCompat.wrap(drawable).mutate();
        DrawableCompat.setTintList(mutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(mutate);
    }

    public final void m() {
        n(this.f65045H1, this.f65064R1, this.f65056M1, this.f65075b2, this.f65070V1);
    }

    public void m0() {
        l0(this.f65072W, this.f65098q0);
    }

    public final void n(@NonNull CheckableImageButton checkableImageButton, boolean z10, ColorStateList colorStateList, boolean z11, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null && (z10 || z11)) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (z10) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
            if (z11) {
                DrawableCompat.setTintMode(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public void n0(@NonNull h hVar) {
        this.f65108v1.remove(hVar);
    }

    public final void o() {
        n(this.f65072W, this.f65107v0, this.f65098q0, this.f65074b1, this.f65032D0);
    }

    public void o0(@NonNull i iVar) {
        this.f65053L1.remove(iVar);
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        EditText editText = this.f65079f;
        if (editText != null) {
            Rect rect = this.f65066S;
            C12455c.a(this, editText, rect);
            D0(rect);
            if (this.f65031D) {
                this.f65093m4.r0(this.f65079f.getTextSize());
                int gravity = this.f65079f.getGravity();
                this.f65093m4.g0((gravity & (-113)) | 48);
                this.f65093m4.q0(gravity);
                this.f65093m4.c0(r(rect));
                this.f65093m4.m0(u(rect));
                this.f65093m4.Y();
                if (!D() || this.f65058M3) {
                    return;
                }
                g0();
            }
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        boolean L02 = L0();
        boolean J02 = J0();
        if (L02 || J02) {
            this.f65079f.post(new c());
        }
        P0();
        S0();
        V0();
    }

    @Override
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof j)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        j jVar = (j) parcelable;
        super.onRestoreInstanceState(jVar.getSuperState());
        setError(jVar.f65122b);
        if (jVar.f65123c) {
            this.f65045H1.post(new b());
        }
        setHint(jVar.f65124d);
        setHelperText(jVar.f65125e);
        setPlaceholderText(jVar.f65126f);
        requestLayout();
    }

    @Override
    @Nullable
    public Parcelable onSaveInstanceState() {
        j jVar = new j(super.onSaveInstanceState());
        if (this.f65086j.l()) {
            jVar.f65122b = getError();
        }
        jVar.f65123c = M() && this.f65045H1.isChecked();
        jVar.f65124d = getHint();
        jVar.f65125e = getHelperText();
        jVar.f65126f = getPlaceholderText();
        return jVar;
    }

    public final void p() {
        int i10 = this.f65052L;
        if (i10 == 0) {
            this.f65043G = null;
            this.f65044H = null;
            return;
        }
        if (i10 == 1) {
            this.f65043G = new C3567j(this.f65049I);
            this.f65044H = new C3567j();
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException(this.f65052L + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.f65031D || (this.f65043G instanceof C13287b)) {
                this.f65043G = new C3567j(this.f65049I);
            } else {
                this.f65043G = new C13287b(this.f65049I);
            }
            this.f65044H = null;
        }
    }

    public final void p0() {
        TextView textView = this.f65103s;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    public final int q() {
        return this.f65052L == 1 ? J1.a.g(J1.a.e(this, C15879a.c.f122164T2, 0), this.f65063R) : this.f65063R;
    }

    public void q0(float f10, float f11, float f12, float f13) {
        C3567j c3567j = this.f65043G;
        if (c3567j != null && c3567j.R() == f10 && this.f65043G.S() == f11 && this.f65043G.u() == f13 && this.f65043G.t() == f12) {
            return;
        }
        this.f65049I = this.f65049I.v().K(f10).P(f11).C(f13).x(f12).m();
        j();
    }

    @NonNull
    public final Rect r(@NonNull Rect rect) {
        if (this.f65079f == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f65067T;
        boolean z10 = ViewCompat.getLayoutDirection(this) == 1;
        rect2.bottom = rect.bottom;
        int i10 = this.f65052L;
        if (i10 == 1) {
            rect2.left = K(rect.left, z10);
            rect2.top = rect.top + this.f65055M;
            rect2.right = L(rect.right, z10);
            return rect2;
        }
        if (i10 != 2) {
            rect2.left = K(rect.left, z10);
            rect2.top = getPaddingTop();
            rect2.right = L(rect.right, z10);
            return rect2;
        }
        rect2.left = rect.left + this.f65079f.getPaddingLeft();
        rect2.top = rect.top - v();
        rect2.right = rect.right - this.f65079f.getPaddingRight();
        return rect2;
    }

    public void r0(@DimenRes int i10, @DimenRes int i11, @DimenRes int i12, @DimenRes int i13) {
        q0(getContext().getResources().getDimension(i10), getContext().getResources().getDimension(i11), getContext().getResources().getDimension(i13), getContext().getResources().getDimension(i12));
    }

    public final int s(@NonNull Rect rect, @NonNull Rect rect2, float f10) {
        return b0() ? (int) (rect2.top + f10) : rect.bottom - this.f65079f.getCompoundPaddingBottom();
    }

    public final void s0() {
        if (z0()) {
            ViewCompat.setBackground(this.f65079f, this.f65043G);
        }
    }

    public void setBoxBackgroundColor(@ColorInt int i10) {
        if (this.f65063R != i10) {
            this.f65063R = i10;
            this.f65101q3 = i10;
            this.f65034D3 = i10;
            this.f65041F3 = i10;
            j();
        }
    }

    public void setBoxBackgroundColorResource(@ColorRes int i10) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i10));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f65101q3 = defaultColor;
        this.f65063R = defaultColor;
        this.f65110v3 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f65034D3 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.f65041F3 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        j();
    }

    public void setBoxBackgroundMode(int i10) {
        if (i10 == this.f65052L) {
            return;
        }
        this.f65052L = i10;
        if (this.f65079f != null) {
            f0();
        }
    }

    public void setBoxStrokeColor(@ColorInt int i10) {
        if (this.f65085i3 != i10) {
            this.f65085i3 = i10;
            X0();
        }
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f65065R2 = colorStateList.getDefaultColor();
            this.f65047H3 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f65071V2 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.f65085i3 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.f65085i3 != colorStateList.getDefaultColor()) {
            this.f65085i3 = colorStateList.getDefaultColor();
        }
        X0();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.f65092m3 != colorStateList) {
            this.f65092m3 = colorStateList;
            X0();
        }
    }

    public void setBoxStrokeWidth(int i10) {
        this.f65060O = i10;
        X0();
    }

    public void setBoxStrokeWidthFocused(int i10) {
        this.f65061P = i10;
        X0();
    }

    public void setBoxStrokeWidthFocusedResource(@DimenRes int i10) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i10));
    }

    public void setBoxStrokeWidthResource(@DimenRes int i10) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public void setCounterEnabled(boolean z10) {
        if (this.f65087k != z10) {
            if (z10) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f65094n = appCompatTextView;
                appCompatTextView.setId(C15879a.h.f123868y5);
                Typeface typeface = this.f65069V;
                if (typeface != null) {
                    this.f65094n.setTypeface(typeface);
                }
                this.f65094n.setMaxLines(1);
                this.f65086j.d(this.f65094n, 2);
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.f65094n.getLayoutParams(), getResources().getDimensionPixelOffset(C15879a.f.f123267l6));
                H0();
                E0();
            } else {
                this.f65086j.E(this.f65094n, 2);
                this.f65094n = null;
            }
            this.f65087k = z10;
        }
    }

    public void setCounterMaxLength(int i10) {
        if (this.f65088l != i10) {
            if (i10 > 0) {
                this.f65088l = i10;
            } else {
                this.f65088l = -1;
            }
            if (this.f65087k) {
                E0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i10) {
        if (this.f65095o != i10) {
            this.f65095o = i10;
            H0();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f65114y != colorStateList) {
            this.f65114y = colorStateList;
            H0();
        }
    }

    public void setCounterTextAppearance(int i10) {
        if (this.f65096p != i10) {
            this.f65096p = i10;
            H0();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f65113x != colorStateList) {
            this.f65113x = colorStateList;
            H0();
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.f65054L2 = colorStateList;
        this.f65057M2 = colorStateList;
        if (this.f65079f != null) {
            N0(false);
        }
    }

    @Override
    public void setEnabled(boolean z10) {
        i0(this, z10);
        super.setEnabled(z10);
    }

    public void setEndIconActivated(boolean z10) {
        this.f65045H1.setActivated(z10);
    }

    public void setEndIconCheckable(boolean z10) {
        this.f65045H1.setCheckable(z10);
    }

    public void setEndIconContentDescription(@StringRes int i10) {
        setEndIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setEndIconDrawable(@DrawableRes int i10) {
        setEndIconDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    public void setEndIconMode(int i10) {
        int i11 = this.f65115y1;
        this.f65115y1 = i10;
        G(i11);
        setEndIconVisible(i10 != 0);
        if (getEndIconDelegate().b(this.f65052L)) {
            getEndIconDelegate().a();
            m();
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.f65052L + " is not supported by the end icon mode " + i10);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        u0(this.f65045H1, onClickListener, this.f65109v2);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f65109v2 = onLongClickListener;
        v0(this.f65045H1, onLongClickListener);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.f65056M1 != colorStateList) {
            this.f65056M1 = colorStateList;
            this.f65064R1 = true;
            m();
        }
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f65070V1 != mode) {
            this.f65070V1 = mode;
            this.f65075b2 = true;
            m();
        }
    }

    public void setEndIconVisible(boolean z10) {
        if (Q() != z10) {
            this.f65045H1.setVisibility(z10 ? 0 : 8);
            V0();
            J0();
        }
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.f65086j.C()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f65086j.x();
        } else {
            this.f65086j.R(charSequence);
        }
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        this.f65086j.G(charSequence);
    }

    public void setErrorEnabled(boolean z10) {
        this.f65086j.H(z10);
    }

    public void setErrorIconDrawable(@DrawableRes int i10) {
        setErrorIconDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
        k0();
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        u0(this.f65040F2, onClickListener, this.f65033D2);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f65033D2 = onLongClickListener;
        v0(this.f65040F2, onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        this.f65046H2 = colorStateList;
        Drawable drawable = this.f65040F2.getDrawable();
        if (drawable != null) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            DrawableCompat.setTintList(drawable, colorStateList);
        }
        if (this.f65040F2.getDrawable() != drawable) {
            this.f65040F2.setImageDrawable(drawable);
        }
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        Drawable drawable = this.f65040F2.getDrawable();
        if (drawable != null) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            DrawableCompat.setTintMode(drawable, mode);
        }
        if (this.f65040F2.getDrawable() != drawable) {
            this.f65040F2.setImageDrawable(drawable);
        }
    }

    public void setErrorTextAppearance(@StyleRes int i10) {
        this.f65086j.I(i10);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.f65086j.J(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z10) {
        if (this.f65111v4 != z10) {
            this.f65111v4 = z10;
            N0(false);
        }
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (V()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!V()) {
                setHelperTextEnabled(true);
            }
            this.f65086j.S(charSequence);
        }
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.f65086j.M(colorStateList);
    }

    public void setHelperTextEnabled(boolean z10) {
        this.f65086j.L(z10);
    }

    public void setHelperTextTextAppearance(@StyleRes int i10) {
        this.f65086j.K(i10);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.f65031D) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z10) {
        this.f65035D4 = z10;
    }

    public void setHintEnabled(boolean z10) {
        if (z10 != this.f65031D) {
            this.f65031D = z10;
            if (z10) {
                CharSequence hint = this.f65079f.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f65037E)) {
                        setHint(hint);
                    }
                    this.f65079f.setHint((CharSequence) null);
                }
                this.f65038F = true;
            } else {
                this.f65038F = false;
                if (!TextUtils.isEmpty(this.f65037E) && TextUtils.isEmpty(this.f65079f.getHint())) {
                    this.f65079f.setHint(this.f65037E);
                }
                setHintInternal(null);
            }
            if (this.f65079f != null) {
                M0();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int i10) {
        this.f65093m4.d0(i10);
        this.f65057M2 = this.f65093m4.q();
        if (this.f65079f != null) {
            N0(false);
            M0();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f65057M2 != colorStateList) {
            if (this.f65054L2 == null) {
                this.f65093m4.f0(colorStateList);
            }
            this.f65057M2 = colorStateList;
            if (this.f65079f != null) {
                N0(false);
            }
        }
    }

    public void setMaxWidth(@Px int i10) {
        this.f65082i = i10;
        EditText editText = this.f65079f;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxWidth(i10);
    }

    public void setMaxWidthResource(@DimenRes int i10) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    public void setMinWidth(@Px int i10) {
        this.f65081h = i10;
        EditText editText = this.f65079f;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinWidth(i10);
    }

    public void setMinWidthResource(@DimenRes int i10) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i10) {
        setPasswordVisibilityToggleContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i10) {
        setPasswordVisibilityToggleDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z10) {
        if (z10 && this.f65115y1 != 1) {
            setEndIconMode(1);
        } else {
            if (z10) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.f65056M1 = colorStateList;
        this.f65064R1 = true;
        m();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.f65070V1 = mode;
        this.f65075b2 = true;
        m();
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.f65102r && TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f65102r) {
                setPlaceholderTextEnabled(true);
            }
            this.f65097q = charSequence;
        }
        Q0();
    }

    public void setPlaceholderTextAppearance(@StyleRes int i10) {
        this.f65105u = i10;
        TextView textView = this.f65103s;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i10);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f65104t != colorStateList) {
            this.f65104t = colorStateList;
            TextView textView = this.f65103s;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        this.f65116z = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f65028A.setText(charSequence);
        T0();
    }

    public void setPrefixTextAppearance(@StyleRes int i10) {
        TextViewCompat.setTextAppearance(this.f65028A, i10);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.f65028A.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z10) {
        this.f65072W.setCheckable(z10);
    }

    public void setStartIconContentDescription(@StringRes int i10) {
        setStartIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setStartIconDrawable(@DrawableRes int i10) {
        setStartIconDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        u0(this.f65072W, onClickListener, this.f65099q1);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f65099q1 = onLongClickListener;
        v0(this.f65072W, onLongClickListener);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.f65098q0 != colorStateList) {
            this.f65098q0 = colorStateList;
            this.f65107v0 = true;
            o();
        }
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f65032D0 != mode) {
            this.f65032D0 = mode;
            this.f65074b1 = true;
            o();
        }
    }

    public void setStartIconVisible(boolean z10) {
        if (d0() != z10) {
            this.f65072W.setVisibility(z10 ? 0 : 8);
            S0();
            J0();
        }
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        this.f65029B = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f65030C.setText(charSequence);
        W0();
    }

    public void setSuffixTextAppearance(@StyleRes int i10) {
        TextViewCompat.setTextAppearance(this.f65030C, i10);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.f65030C.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable e eVar) {
        EditText editText = this.f65079f;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, eVar);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.f65069V) {
            this.f65069V = typeface;
            this.f65093m4.H0(typeface);
            this.f65086j.O(typeface);
            TextView textView = this.f65094n;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    public final int t(@NonNull Rect rect, float f10) {
        return b0() ? (int) (rect.centerY() - (f10 / 2.0f)) : rect.top + this.f65079f.getCompoundPaddingTop();
    }

    @NonNull
    public final Rect u(@NonNull Rect rect) {
        if (this.f65079f == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f65067T;
        float D10 = this.f65093m4.D();
        rect2.left = rect.left + this.f65079f.getCompoundPaddingLeft();
        rect2.top = t(rect, D10);
        rect2.right = rect.right - this.f65079f.getCompoundPaddingRight();
        rect2.bottom = s(rect, rect2, D10);
        return rect2;
    }

    public final int v() {
        float s10;
        if (!this.f65031D) {
            return 0;
        }
        int i10 = this.f65052L;
        if (i10 == 0 || i10 == 1) {
            s10 = this.f65093m4.s();
        } else {
            if (i10 != 2) {
                return 0;
            }
            s10 = this.f65093m4.s() / 2.0f;
        }
        return (int) s10;
    }

    public final boolean w() {
        return this.f65052L == 2 && x();
    }

    public void w0(@NonNull TextView textView, @StyleRes int i10) {
        try {
            TextViewCompat.setTextAppearance(textView, i10);
            if (textView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        TextViewCompat.setTextAppearance(textView, C15879a.n.f124462X4);
        textView.setTextColor(ContextCompat.getColor(getContext(), C15879a.e.f122943w0));
    }

    public final boolean x() {
        return this.f65059N > -1 && this.f65062Q != 0;
    }

    public final boolean x0() {
        return (this.f65040F2.getVisibility() == 0 || ((M() && Q()) || this.f65029B != null)) && this.f65077d.getMeasuredWidth() > 0;
    }

    public void y() {
        this.f65108v1.clear();
    }

    public final boolean y0() {
        return !(getStartIconDrawable() == null && this.f65116z == null) && this.f65076c.getMeasuredWidth() > 0;
    }

    public void z() {
        this.f65053L1.clear();
    }

    public final boolean z0() {
        EditText editText = this.f65079f;
        return (editText == null || this.f65043G == null || editText.getBackground() != null || this.f65052L == 0) ? false : true;
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122332cf);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f65045H1.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        this.f65045H1.setImageDrawable(drawable);
        if (drawable != null) {
            m();
            j0();
        }
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.f65072W.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.f65072W.setImageDrawable(drawable);
        if (drawable != null) {
            o();
            setStartIconVisible(true);
            m0();
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription((CharSequence) null);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v48, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v91 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r9), attributeSet, i10);
        int i11;
        ?? r22;
        boolean z10;
        int i12;
        int i13 = f65014F5;
        this.f65081h = -1;
        this.f65082i = -1;
        this.f65086j = new g2.d(this);
        this.f65066S = new Rect();
        this.f65067T = new Rect();
        this.f65068U = new RectF();
        this.f65108v1 = new LinkedHashSet<>();
        this.f65115y1 = 0;
        SparseArray<g2.c> sparseArray = new SparseArray<>();
        this.f65039F1 = sparseArray;
        this.f65053L1 = new LinkedHashSet<>();
        C12453a c12453a = new C12453a(this);
        this.f65093m4 = c12453a;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f65073b = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(frameLayout);
        LinearLayout linearLayout = new LinearLayout(context2);
        this.f65076c = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        frameLayout.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.f65077d = linearLayout2;
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        frameLayout.addView(linearLayout2);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.f65078e = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        TimeInterpolator timeInterpolator = C16046a.f127888a;
        c12453a.G0(timeInterpolator);
        c12453a.C0(timeInterpolator);
        c12453a.g0(C16241a.f130539s);
        int[] iArr = C15879a.o.et;
        int i14 = C15879a.o.At;
        int i15 = C15879a.o.yt;
        int i16 = C15879a.o.Nt;
        int i17 = C15879a.o.St;
        int i18 = C15879a.o.Wt;
        TintTypedArray k10 = s.k(context2, attributeSet, iArr, i10, i13, i14, i15, i16, i17, i18);
        this.f65031D = k10.getBoolean(C15879a.o.Vt, true);
        setHint(k10.getText(C15879a.o.kt));
        this.f65035D4 = k10.getBoolean(C15879a.o.Ut, true);
        this.f65111v4 = k10.getBoolean(C15879a.o.Pt, true);
        int i19 = C15879a.o.jt;
        if (k10.hasValue(i19)) {
            i11 = -1;
            setMinWidth(k10.getDimensionPixelSize(i19, -1));
        } else {
            i11 = -1;
        }
        int i20 = C15879a.o.ht;
        if (k10.hasValue(i20)) {
            setMaxWidth(k10.getDimensionPixelSize(i20, i11));
        }
        this.f65049I = C3572o.e(context2, attributeSet, i10, i13).m();
        this.f65050J = context2.getResources().getDimensionPixelOffset(C15879a.f.f123243i6);
        this.f65055M = k10.getDimensionPixelOffset(C15879a.o.nt, 0);
        this.f65060O = k10.getDimensionPixelSize(C15879a.o.ut, context2.getResources().getDimensionPixelSize(C15879a.f.f123251j6));
        this.f65061P = k10.getDimensionPixelSize(C15879a.o.vt, context2.getResources().getDimensionPixelSize(C15879a.f.f123259k6));
        this.f65059N = this.f65060O;
        float dimension = k10.getDimension(C15879a.o.rt, -1.0f);
        float dimension2 = k10.getDimension(C15879a.o.qt, -1.0f);
        float dimension3 = k10.getDimension(C15879a.o.ot, -1.0f);
        float dimension4 = k10.getDimension(C15879a.o.pt, -1.0f);
        C3572o.b v10 = this.f65049I.v();
        if (dimension >= 0.0f) {
            v10.K(dimension);
        }
        if (dimension2 >= 0.0f) {
            v10.P(dimension2);
        }
        if (dimension3 >= 0.0f) {
            v10.C(dimension3);
        }
        if (dimension4 >= 0.0f) {
            v10.x(dimension4);
        }
        this.f65049I = v10.m();
        ColorStateList b10 = X1.c.b(context2, k10, C15879a.o.lt);
        if (b10 != null) {
            int defaultColor = b10.getDefaultColor();
            this.f65101q3 = defaultColor;
            this.f65063R = defaultColor;
            if (b10.isStateful()) {
                this.f65110v3 = b10.getColorForState(new int[]{-16842910}, -1);
                this.f65034D3 = b10.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.f65041F3 = b10.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.f65034D3 = this.f65101q3;
                ColorStateList colorStateList = AppCompatResources.getColorStateList(context2, C15879a.e.f122840W1);
                this.f65110v3 = colorStateList.getColorForState(new int[]{-16842910}, -1);
                this.f65041F3 = colorStateList.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.f65063R = 0;
            this.f65101q3 = 0;
            this.f65110v3 = 0;
            this.f65034D3 = 0;
            this.f65041F3 = 0;
        }
        int i21 = C15879a.o.gt;
        if (k10.hasValue(i21)) {
            ColorStateList colorStateList2 = k10.getColorStateList(i21);
            this.f65057M2 = colorStateList2;
            this.f65054L2 = colorStateList2;
        }
        int i22 = C15879a.o.st;
        ColorStateList b11 = X1.c.b(context2, k10, i22);
        this.f65085i3 = k10.getColor(i22, 0);
        this.f65065R2 = ContextCompat.getColor(context2, C15879a.e.f122933t2);
        this.f65047H3 = ContextCompat.getColor(context2, C15879a.e.f122937u2);
        this.f65071V2 = ContextCompat.getColor(context2, C15879a.e.f122949x2);
        if (b11 != null) {
            setBoxStrokeColorStateList(b11);
        }
        int i23 = C15879a.o.tt;
        if (k10.hasValue(i23)) {
            setBoxStrokeErrorColor(X1.c.b(context2, k10, i23));
        }
        if (k10.getResourceId(i18, -1) != -1) {
            r22 = 0;
            setHintTextAppearance(k10.getResourceId(i18, 0));
        } else {
            r22 = 0;
        }
        int resourceId = k10.getResourceId(i16, r22);
        CharSequence text = k10.getText(C15879a.o.It);
        boolean z11 = k10.getBoolean(C15879a.o.Jt, r22);
        LayoutInflater from = LayoutInflater.from(getContext());
        int i24 = C15879a.k.f123950Q;
        CheckableImageButton checkableImageButton = (CheckableImageButton) from.inflate(i24, linearLayout2, (boolean) r22);
        this.f65040F2 = checkableImageButton;
        checkableImageButton.setId(C15879a.h.f123854w5);
        checkableImageButton.setVisibility(8);
        if (X1.c.g(context2)) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), r22);
        }
        int i25 = C15879a.o.Kt;
        if (k10.hasValue(i25)) {
            setErrorIconDrawable(k10.getDrawable(i25));
        }
        int i26 = C15879a.o.Lt;
        if (k10.hasValue(i26)) {
            setErrorIconTintList(X1.c.b(context2, k10, i26));
        }
        int i27 = C15879a.o.Mt;
        if (k10.hasValue(i27)) {
            setErrorIconTintMode(A.k(k10.getInt(i27, -1), null));
        }
        checkableImageButton.setContentDescription(getResources().getText(C15879a.m.f124049J));
        ViewCompat.setImportantForAccessibility(checkableImageButton, 2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int resourceId2 = k10.getResourceId(i17, 0);
        boolean z12 = k10.getBoolean(C15879a.o.Rt, false);
        CharSequence text2 = k10.getText(C15879a.o.Qt);
        int resourceId3 = k10.getResourceId(C15879a.o.eu, 0);
        CharSequence text3 = k10.getText(C15879a.o.du);
        int resourceId4 = k10.getResourceId(C15879a.o.hu, 0);
        CharSequence text4 = k10.getText(C15879a.o.gu);
        int resourceId5 = k10.getResourceId(C15879a.o.ru, 0);
        CharSequence text5 = k10.getText(C15879a.o.qu);
        boolean z13 = k10.getBoolean(C15879a.o.wt, false);
        setCounterMaxLength(k10.getInt(C15879a.o.xt, -1));
        this.f65096p = k10.getResourceId(i14, 0);
        this.f65095o = k10.getResourceId(i15, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C15879a.k.f123952R, (ViewGroup) linearLayout, false);
        this.f65072W = checkableImageButton2;
        checkableImageButton2.setVisibility(8);
        if (X1.c.g(context2)) {
            MarginLayoutParamsCompat.setMarginEnd((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams(), 0);
        }
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        int i28 = C15879a.o.nu;
        if (k10.hasValue(i28)) {
            setStartIconDrawable(k10.getDrawable(i28));
            int i29 = C15879a.o.mu;
            if (k10.hasValue(i29)) {
                setStartIconContentDescription(k10.getText(i29));
            }
            setStartIconCheckable(k10.getBoolean(C15879a.o.lu, true));
        }
        int i30 = C15879a.o.ou;
        if (k10.hasValue(i30)) {
            setStartIconTintList(X1.c.b(context2, k10, i30));
        }
        int i31 = C15879a.o.pu;
        if (k10.hasValue(i31)) {
            setStartIconTintMode(A.k(k10.getInt(i31, -1), null));
        }
        setBoxBackgroundMode(k10.getInt(C15879a.o.mt, 0));
        CheckableImageButton checkableImageButton3 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(i24, (ViewGroup) frameLayout2, false);
        this.f65045H1 = checkableImageButton3;
        frameLayout2.addView(checkableImageButton3);
        checkableImageButton3.setVisibility(8);
        if (X1.c.g(context2)) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton3.getLayoutParams(), 0);
        }
        int resourceId6 = k10.getResourceId(C15879a.o.Et, 0);
        sparseArray.append(-1, new C13286a(this, resourceId6));
        sparseArray.append(0, new g2.f(this));
        if (resourceId6 == 0) {
            z10 = z11;
            i12 = k10.getResourceId(C15879a.o.Zt, 0);
        } else {
            z10 = z11;
            i12 = resourceId6;
        }
        sparseArray.append(1, new com.google.android.material.textfield.c(this, i12));
        sparseArray.append(2, new com.google.android.material.textfield.a(this, resourceId6));
        sparseArray.append(3, new com.google.android.material.textfield.b(this, resourceId6));
        int i32 = C15879a.o.Ft;
        if (k10.hasValue(i32)) {
            setEndIconMode(k10.getInt(i32, 0));
            int i33 = C15879a.o.Dt;
            if (k10.hasValue(i33)) {
                setEndIconContentDescription(k10.getText(i33));
            }
            setEndIconCheckable(k10.getBoolean(C15879a.o.Ct, true));
        } else {
            int i34 = C15879a.o.au;
            if (k10.hasValue(i34)) {
                setEndIconMode(k10.getBoolean(i34, false) ? 1 : 0);
                setEndIconContentDescription(k10.getText(C15879a.o.Yt));
                int i35 = C15879a.o.bu;
                if (k10.hasValue(i35)) {
                    setEndIconTintList(X1.c.b(context2, k10, i35));
                }
                int i36 = C15879a.o.cu;
                if (k10.hasValue(i36)) {
                    setEndIconTintMode(A.k(k10.getInt(i36, -1), null));
                }
            }
        }
        if (!k10.hasValue(C15879a.o.au)) {
            int i37 = C15879a.o.Gt;
            if (k10.hasValue(i37)) {
                setEndIconTintList(X1.c.b(context2, k10, i37));
            }
            int i38 = C15879a.o.Ht;
            if (k10.hasValue(i38)) {
                setEndIconTintMode(A.k(k10.getInt(i38, -1), null));
            }
        }
        AppCompatTextView appCompatTextView = new AppCompatTextView(context2);
        this.f65028A = appCompatTextView;
        appCompatTextView.setId(C15879a.h.f123531C5);
        appCompatTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        ViewCompat.setAccessibilityLiveRegion(appCompatTextView, 1);
        linearLayout.addView(checkableImageButton2);
        linearLayout.addView(appCompatTextView);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context2);
        this.f65030C = appCompatTextView2;
        appCompatTextView2.setId(C15879a.h.f123538D5);
        appCompatTextView2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        ViewCompat.setAccessibilityLiveRegion(appCompatTextView2, 1);
        linearLayout2.addView(appCompatTextView2);
        linearLayout2.addView(checkableImageButton);
        linearLayout2.addView(frameLayout2);
        setHelperTextEnabled(z12);
        setHelperText(text2);
        setHelperTextTextAppearance(resourceId2);
        setErrorEnabled(z10);
        setErrorTextAppearance(resourceId);
        setErrorContentDescription(text);
        setCounterTextAppearance(this.f65096p);
        setCounterOverflowTextAppearance(this.f65095o);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        setPrefixText(text4);
        setPrefixTextAppearance(resourceId4);
        setSuffixText(text5);
        setSuffixTextAppearance(resourceId5);
        int i39 = C15879a.o.Ot;
        if (k10.hasValue(i39)) {
            setErrorTextColor(k10.getColorStateList(i39));
        }
        int i40 = C15879a.o.Tt;
        if (k10.hasValue(i40)) {
            setHelperTextColor(k10.getColorStateList(i40));
        }
        int i41 = C15879a.o.Xt;
        if (k10.hasValue(i41)) {
            setHintTextColor(k10.getColorStateList(i41));
        }
        int i42 = C15879a.o.Bt;
        if (k10.hasValue(i42)) {
            setCounterTextColor(k10.getColorStateList(i42));
        }
        int i43 = C15879a.o.zt;
        if (k10.hasValue(i43)) {
            setCounterOverflowTextColor(k10.getColorStateList(i43));
        }
        int i44 = C15879a.o.fu;
        if (k10.hasValue(i44)) {
            setPlaceholderTextColor(k10.getColorStateList(i44));
        }
        int i45 = C15879a.o.iu;
        if (k10.hasValue(i45)) {
            setPrefixTextColor(k10.getColorStateList(i45));
        }
        int i46 = C15879a.o.su;
        if (k10.hasValue(i46)) {
            setSuffixTextColor(k10.getColorStateList(i46));
        }
        setCounterEnabled(z13);
        setEnabled(k10.getBoolean(C15879a.o.ft, true));
        k10.recycle();
        ViewCompat.setImportantForAccessibility(this, 2);
        ViewCompat.setImportantForAutofill(this, 1);
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.f65040F2.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.f65086j.C());
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.f65045H1.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.f65045H1.setImageDrawable(drawable);
    }

    public void setHint(@StringRes int i10) {
        setHint(i10 != 0 ? getResources().getText(i10) : null);
    }
}

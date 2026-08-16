package z1;

import X1.d;
import a2.C3567j;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.annotation.XmlRes;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.p;
import com.google.android.material.internal.s;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import w1.C15879a;

public class C16241a extends Drawable implements p.b {

    public static final String f130537A = "+";

    public static final int f130538r = 8388661;

    public static final int f130539s = 8388659;

    public static final int f130540t = 8388693;

    public static final int f130541u = 8388691;

    public static final int f130542v = 4;

    public static final int f130543w = -1;

    public static final int f130544x = 9;

    @StyleRes
    public static final int f130545y = C15879a.n.f124356Pa;

    @AttrRes
    public static final int f130546z = C15879a.c.f122604s0;

    @NonNull
    public final WeakReference<Context> f130547b;

    @NonNull
    public final C3567j f130548c;

    @NonNull
    public final p f130549d;

    @NonNull
    public final Rect f130550e;

    public float f130551f;

    public float f130552g;

    public float f130553h;

    @NonNull
    public final c f130554i;

    public float f130555j;

    public float f130556k;

    public int f130557l;

    public float f130558m;

    public float f130559n;

    public float f130560o;

    @Nullable
    public WeakReference<View> f130561p;

    @Nullable
    public WeakReference<FrameLayout> f130562q;

    public class RunnableC2228a implements Runnable {

        public final View f130563b;

        public final FrameLayout f130564c;

        public RunnableC2228a(View view, FrameLayout frameLayout) {
            this.f130563b = view;
            this.f130564c = frameLayout;
        }

        @Override
        public void run() {
            C16241a.this.c0(this.f130563b, this.f130564c);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    public C16241a(@NonNull Context context) {
        this.f130547b = new WeakReference<>(context);
        s.c(context);
        Resources resources = context.getResources();
        this.f130550e = new Rect();
        this.f130548c = new C3567j();
        this.f130551f = resources.getDimensionPixelSize(C15879a.f.f123089Q2);
        this.f130553h = resources.getDimensionPixelSize(C15879a.f.f123081P2);
        this.f130552g = resources.getDimensionPixelSize(C15879a.f.f123129V2);
        p pVar = new p(this);
        this.f130549d = pVar;
        pVar.e().setTextAlign(Paint.Align.CENTER);
        this.f130554i = new c(context);
        T(C15879a.n.f124575f6);
    }

    public static int D(Context context, @NonNull TypedArray typedArray, @StyleableRes int i10) {
        return X1.c.a(context, typedArray, i10).getDefaultColor();
    }

    private void S(@Nullable d dVar) {
        Context context;
        if (this.f130549d.d() == dVar || (context = this.f130547b.get()) == null) {
            return;
        }
        this.f130549d.i(dVar, context);
        d0();
    }

    private void T(@StyleRes int i10) {
        Context context = this.f130547b.get();
        if (context == null) {
            return;
        }
        S(new d(context, i10));
    }

    public static void Z(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    @NonNull
    public static C16241a d(@NonNull Context context) {
        return e(context, null, f130546z, f130545y);
    }

    @NonNull
    public static C16241a e(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        C16241a c16241a = new C16241a(context);
        c16241a.C(context, attributeSet, i10, i11);
        return c16241a;
    }

    @NonNull
    public static C16241a f(@NonNull Context context, @XmlRes int i10) {
        AttributeSet a10 = M1.a.a(context, i10, "badge");
        int styleAttribute = a10.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = f130545y;
        }
        return e(context, a10, f130546z, styleAttribute);
    }

    @NonNull
    public static C16241a g(@NonNull Context context, @NonNull c cVar) {
        C16241a c16241a = new C16241a(context);
        c16241a.E(cVar);
        return c16241a;
    }

    private void h(Canvas canvas) {
        Rect rect = new Rect();
        String m10 = m();
        this.f130549d.e().getTextBounds(m10, 0, m10.length(), rect);
        canvas.drawText(m10, this.f130555j, this.f130556k + (rect.height() / 2), this.f130549d.e());
    }

    @Px
    public int A() {
        return this.f130554i.f130577m;
    }

    public boolean B() {
        return this.f130554i.f130569e != -1;
    }

    public final void C(Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        TypedArray j10 = s.j(context, attributeSet, C15879a.o.f125394W3, i10, i11, new int[0]);
        Q(j10.getInt(C15879a.o.f125616f4, 4));
        int i12 = C15879a.o.f125641g4;
        if (j10.hasValue(i12)) {
            R(j10.getInt(i12, 0));
        }
        H(D(context, j10, C15879a.o.f125418X3));
        int i13 = C15879a.o.f125491a4;
        if (j10.hasValue(i13)) {
            J(D(context, j10, i13));
        }
        I(j10.getInt(C15879a.o.f125442Y3, f130538r));
        P(j10.getDimensionPixelOffset(C15879a.o.f125566d4, 0));
        W(j10.getDimensionPixelOffset(C15879a.o.f125666h4, 0));
        O(j10.getDimensionPixelOffset(C15879a.o.f125591e4, s()));
        V(j10.getDimensionPixelOffset(C15879a.o.f125691i4, A()));
        if (j10.hasValue(C15879a.o.f125466Z3)) {
            this.f130551f = j10.getDimensionPixelSize(r8, (int) this.f130551f);
        }
        if (j10.hasValue(C15879a.o.f125516b4)) {
            this.f130553h = j10.getDimensionPixelSize(r8, (int) this.f130553h);
        }
        if (j10.hasValue(C15879a.o.f125541c4)) {
            this.f130552g = j10.getDimensionPixelSize(r8, (int) this.f130552g);
        }
        j10.recycle();
    }

    public final void E(@NonNull c cVar) {
        Q(cVar.f130570f);
        if (cVar.f130569e != -1) {
            R(cVar.f130569e);
        }
        H(cVar.f130566b);
        J(cVar.f130567c);
        I(cVar.f130574j);
        P(cVar.f130576l);
        W(cVar.f130577m);
        O(cVar.f130578n);
        V(cVar.f130579o);
        F(cVar.f130580p);
        G(cVar.f130581q);
        X(cVar.f130575k);
    }

    public void F(int i10) {
        this.f130554i.f130580p = i10;
        d0();
    }

    public void G(int i10) {
        this.f130554i.f130581q = i10;
        d0();
    }

    public void H(@ColorInt int i10) {
        this.f130554i.f130566b = i10;
        ColorStateList valueOf = ColorStateList.valueOf(i10);
        if (this.f130548c.y() != valueOf) {
            this.f130548c.n0(valueOf);
            invalidateSelf();
        }
    }

    public void I(int i10) {
        if (this.f130554i.f130574j != i10) {
            this.f130554i.f130574j = i10;
            WeakReference<View> weakReference = this.f130561p;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            View view = this.f130561p.get();
            WeakReference<FrameLayout> weakReference2 = this.f130562q;
            c0(view, weakReference2 != null ? weakReference2.get() : null);
        }
    }

    public void J(@ColorInt int i10) {
        this.f130554i.f130567c = i10;
        if (this.f130549d.e().getColor() != i10) {
            this.f130549d.e().setColor(i10);
            invalidateSelf();
        }
    }

    public void K(@StringRes int i10) {
        this.f130554i.f130573i = i10;
    }

    public void L(CharSequence charSequence) {
        this.f130554i.f130571g = charSequence;
    }

    public void M(@PluralsRes int i10) {
        this.f130554i.f130572h = i10;
    }

    public void N(int i10) {
        P(i10);
        O(i10);
    }

    public void O(@Px int i10) {
        this.f130554i.f130578n = i10;
        d0();
    }

    public void P(@Px int i10) {
        this.f130554i.f130576l = i10;
        d0();
    }

    public void Q(int i10) {
        if (this.f130554i.f130570f != i10) {
            this.f130554i.f130570f = i10;
            e0();
            this.f130549d.j(true);
            d0();
            invalidateSelf();
        }
    }

    public void R(int i10) {
        int max = Math.max(0, i10);
        if (this.f130554i.f130569e != max) {
            this.f130554i.f130569e = max;
            this.f130549d.j(true);
            d0();
            invalidateSelf();
        }
    }

    public void U(int i10) {
        W(i10);
        V(i10);
    }

    public void V(@Px int i10) {
        this.f130554i.f130579o = i10;
        d0();
    }

    public void W(@Px int i10) {
        this.f130554i.f130577m = i10;
        d0();
    }

    public void X(boolean z10) {
        setVisible(z10, false);
        this.f130554i.f130575k = z10;
        if (!C16242b.f130582a || p() == null || z10) {
            return;
        }
        ((ViewGroup) p().getParent()).invalidate();
    }

    public final void Y(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != C15879a.h.f123640S2) {
            WeakReference<FrameLayout> weakReference = this.f130562q;
            if (weakReference == null || weakReference.get() != viewGroup) {
                Z(view);
                FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(C15879a.h.f123640S2);
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                frameLayout.setLayoutParams(view.getLayoutParams());
                frameLayout.setMinimumWidth(view.getWidth());
                frameLayout.setMinimumHeight(view.getHeight());
                int indexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(indexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(view);
                viewGroup.addView(frameLayout, indexOfChild);
                this.f130562q = new WeakReference<>(frameLayout);
                frameLayout.post(new RunnableC2228a(view, frameLayout));
            }
        }
    }

    @Override
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void a() {
        invalidateSelf();
    }

    public void a0(@NonNull View view) {
        c0(view, null);
    }

    public final void b(@NonNull Context context, @NonNull Rect rect, @NonNull View view) {
        int x10 = x();
        int i10 = this.f130554i.f130574j;
        if (i10 == 8388691 || i10 == 8388693) {
            this.f130556k = rect.bottom - x10;
        } else {
            this.f130556k = rect.top + x10;
        }
        if (u() <= 9) {
            float f10 = !B() ? this.f130551f : this.f130552g;
            this.f130558m = f10;
            this.f130560o = f10;
            this.f130559n = f10;
        } else {
            float f11 = this.f130552g;
            this.f130558m = f11;
            this.f130560o = f11;
            this.f130559n = (this.f130549d.f(m()) / 2.0f) + this.f130553h;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(B() ? C15879a.f.f123097R2 : C15879a.f.f123073O2);
        int w10 = w();
        int i11 = this.f130554i.f130574j;
        if (i11 == 8388659 || i11 == 8388691) {
            this.f130555j = ViewCompat.getLayoutDirection(view) == 0 ? (rect.left - this.f130559n) + dimensionPixelSize + w10 : ((rect.right + this.f130559n) - dimensionPixelSize) - w10;
        } else {
            this.f130555j = ViewCompat.getLayoutDirection(view) == 0 ? ((rect.right + this.f130559n) - dimensionPixelSize) - w10 : (rect.left - this.f130559n) + dimensionPixelSize + w10;
        }
    }

    @Deprecated
    public void b0(@NonNull View view, @Nullable ViewGroup viewGroup) {
        if (!(viewGroup instanceof FrameLayout)) {
            throw new IllegalArgumentException("customBadgeParent must be a FrameLayout");
        }
        c0(view, (FrameLayout) viewGroup);
    }

    public void c() {
        this.f130554i.f130569e = -1;
        d0();
        invalidateSelf();
    }

    public void c0(@NonNull View view, @Nullable FrameLayout frameLayout) {
        this.f130561p = new WeakReference<>(view);
        boolean z10 = C16242b.f130582a;
        if (z10 && frameLayout == null) {
            Y(view);
        } else {
            this.f130562q = new WeakReference<>(frameLayout);
        }
        if (!z10) {
            Z(view);
        }
        d0();
        invalidateSelf();
    }

    public final void d0() {
        Context context = this.f130547b.get();
        WeakReference<View> weakReference = this.f130561p;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f130550e);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.f130562q;
        FrameLayout frameLayout = weakReference2 != null ? weakReference2.get() : null;
        if (frameLayout != null || C16242b.f130582a) {
            if (frameLayout == null) {
                frameLayout = (ViewGroup) view.getParent();
            }
            frameLayout.offsetDescendantRectToMyCoords(view, rect2);
        }
        b(context, rect2, view);
        C16242b.l(this.f130550e, this.f130555j, this.f130556k, this.f130559n, this.f130560o);
        this.f130548c.j0(this.f130558m);
        if (rect.equals(this.f130550e)) {
            return;
        }
        this.f130548c.setBounds(this.f130550e);
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f130548c.draw(canvas);
        if (B()) {
            h(canvas);
        }
    }

    public final void e0() {
        this.f130557l = ((int) Math.pow(10.0d, t() - 1.0d)) - 1;
    }

    @Override
    public int getAlpha() {
        return this.f130554i.f130568d;
    }

    @Override
    public int getIntrinsicHeight() {
        return this.f130550e.height();
    }

    @Override
    public int getIntrinsicWidth() {
        return this.f130550e.width();
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    public int i() {
        return this.f130554i.f130580p;
    }

    @Override
    public boolean isStateful() {
        return false;
    }

    public int j() {
        return this.f130554i.f130581q;
    }

    @ColorInt
    public int k() {
        return this.f130548c.y().getDefaultColor();
    }

    public int l() {
        return this.f130554i.f130574j;
    }

    @NonNull
    public final String m() {
        if (u() <= this.f130557l) {
            return NumberFormat.getInstance().format(u());
        }
        Context context = this.f130547b.get();
        return context == null ? "" : context.getString(C15879a.m.f124110n0, Integer.valueOf(this.f130557l), "+");
    }

    @ColorInt
    public int n() {
        return this.f130549d.e().getColor();
    }

    @Nullable
    public CharSequence o() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        if (!B()) {
            return this.f130554i.f130571g;
        }
        if (this.f130554i.f130572h <= 0 || (context = this.f130547b.get()) == null) {
            return null;
        }
        return u() <= this.f130557l ? context.getResources().getQuantityString(this.f130554i.f130572h, u(), Integer.valueOf(u())) : context.getString(this.f130554i.f130573i, Integer.valueOf(this.f130557l));
    }

    @Override
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Nullable
    public FrameLayout p() {
        WeakReference<FrameLayout> weakReference = this.f130562q;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public int q() {
        return this.f130554i.f130576l;
    }

    @Px
    public int r() {
        return this.f130554i.f130578n;
    }

    @Px
    public int s() {
        return this.f130554i.f130576l;
    }

    @Override
    public void setAlpha(int i10) {
        this.f130554i.f130568d = i10;
        this.f130549d.e().setAlpha(i10);
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int t() {
        return this.f130554i.f130570f;
    }

    public int u() {
        if (B()) {
            return this.f130554i.f130569e;
        }
        return 0;
    }

    @NonNull
    public c v() {
        return this.f130554i;
    }

    public final int w() {
        return (B() ? this.f130554i.f130578n : this.f130554i.f130576l) + this.f130554i.f130580p;
    }

    public final int x() {
        return (B() ? this.f130554i.f130579o : this.f130554i.f130577m) + this.f130554i.f130581q;
    }

    public int y() {
        return this.f130554i.f130577m;
    }

    @Px
    public int z() {
        return this.f130554i.f130579o;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final class c implements Parcelable {
        public static final Parcelable.Creator<c> CREATOR = new C2229a();

        @ColorInt
        public int f130566b;

        @ColorInt
        public int f130567c;

        public int f130568d;

        public int f130569e;

        public int f130570f;

        @Nullable
        public CharSequence f130571g;

        @PluralsRes
        public int f130572h;

        @StringRes
        public int f130573i;

        public int f130574j;

        public boolean f130575k;

        @Dimension(unit = 1)
        public int f130576l;

        @Dimension(unit = 1)
        public int f130577m;

        @Dimension(unit = 1)
        public int f130578n;

        @Dimension(unit = 1)
        public int f130579o;

        @Dimension(unit = 1)
        public int f130580p;

        @Dimension(unit = 1)
        public int f130581q;

        public static class C2229a implements Parcelable.Creator<c> {
            @Override
            @NonNull
            public c createFromParcel(@NonNull Parcel parcel) {
                return new c(parcel);
            }

            @Override
            @NonNull
            public c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(@NonNull Context context) {
            this.f130568d = 255;
            this.f130569e = -1;
            this.f130567c = new d(context, C15879a.n.f124575f6).i().getDefaultColor();
            this.f130571g = context.getString(C15879a.m.f124104k0);
            this.f130572h = C15879a.l.f124030a;
            this.f130573i = C15879a.m.f124108m0;
            this.f130575k = true;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            parcel.writeInt(this.f130566b);
            parcel.writeInt(this.f130567c);
            parcel.writeInt(this.f130568d);
            parcel.writeInt(this.f130569e);
            parcel.writeInt(this.f130570f);
            parcel.writeString(this.f130571g.toString());
            parcel.writeInt(this.f130572h);
            parcel.writeInt(this.f130574j);
            parcel.writeInt(this.f130576l);
            parcel.writeInt(this.f130577m);
            parcel.writeInt(this.f130578n);
            parcel.writeInt(this.f130579o);
            parcel.writeInt(this.f130580p);
            parcel.writeInt(this.f130581q);
            parcel.writeInt(this.f130575k ? 1 : 0);
        }

        public c(@NonNull Parcel parcel) {
            this.f130568d = 255;
            this.f130569e = -1;
            this.f130566b = parcel.readInt();
            this.f130567c = parcel.readInt();
            this.f130568d = parcel.readInt();
            this.f130569e = parcel.readInt();
            this.f130570f = parcel.readInt();
            this.f130571g = parcel.readString();
            this.f130572h = parcel.readInt();
            this.f130574j = parcel.readInt();
            this.f130576l = parcel.readInt();
            this.f130577m = parcel.readInt();
            this.f130578n = parcel.readInt();
            this.f130579o = parcel.readInt();
            this.f130580p = parcel.readInt();
            this.f130581q = parcel.readInt();
            this.f130575k = parcel.readInt() != 0;
        }
    }
}

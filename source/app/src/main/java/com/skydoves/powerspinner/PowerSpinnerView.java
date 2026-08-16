package com.skydoves.powerspinner;

import Mf.r;
import Od.k;
import Od.l;
import Od.m;
import Od.n;
import Od.o;
import Od.p;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import androidx.annotation.ArrayRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.MainThread;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14960A;

public final class PowerSpinnerView extends AppCompatTextView implements LifecycleObserver {

    @Nullable
    public Od.h f83564A;

    @Nullable
    public Od.f f83565B;

    @NotNull
    public o f83566C;

    @Nullable
    public String f83567D;

    @Nullable
    public LifecycleOwner f83568E;

    public final Pd.b f83569b;

    public final PopupWindow f83570c;

    public boolean f83571d;

    public int f83572e;

    public k<?> f83573f;

    public boolean f83574g;

    public long f83575h;

    @Nullable
    public Drawable f83576i;

    public long f83577j;

    public boolean f83578k;

    public long f83579l;

    @DrawableRes
    public int f83580m;

    public boolean f83581n;

    public p f83582o;

    @Px
    public int f83583p;

    @ColorInt
    public int f83584q;

    public boolean f83585r;

    @Px
    public int f83586s;

    @ColorInt
    public int f83587t;

    @ColorInt
    public int f83588u;

    @Px
    public int f83589v;

    @StyleRes
    public int f83590w;

    public int f83591x;

    public int f83592y;

    public boolean f83593z;

    public static final class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public final void onClick(View view) {
            PowerSpinnerView.A(PowerSpinnerView.this, 0, 0, 3, null);
        }
    }

    @Od.i
    public static final class b {

        @NotNull
        public final PowerSpinnerView f83595a;

        public static final class a implements Od.f {

            public final Mf.a f83596a;

            public a(Mf.a aVar) {
                this.f83596a = aVar;
            }

            @Override
            public final void onDismiss() {
                this.f83596a.invoke();
            }
        }

        public static final class C1500b<T> implements Od.g<T> {

            public final r f83597a;

            public C1500b(r rVar) {
                this.f83597a = rVar;
            }

            @Override
            public final void a(int i10, @Nullable T t10, int i11, T t11) {
                this.f83597a.invoke(Integer.valueOf(i10), t10, Integer.valueOf(i11), t11);
            }
        }

        public static final class c implements Od.h {

            public final Mf.p f83598a;

            public c(Mf.p pVar) {
                this.f83598a = pVar;
            }

            @Override
            public final void a(@NotNull View view, @NotNull MotionEvent event) {
                M.p(view, "view");
                M.p(event, "event");
                this.f83598a.invoke(view, event);
            }
        }

        public b(@NotNull Context context) {
            M.p(context, "context");
            this.f83595a = new PowerSpinnerView(context);
        }

        @NotNull
        public final b A(@Px int i10) {
            this.f83595a.setSpinnerPopupWidth(i10);
            return this;
        }

        @NotNull
        public final PowerSpinnerView a() {
            return this.f83595a;
        }

        @NotNull
        public final PowerSpinnerView b() {
            return this.f83595a;
        }

        @NotNull
        public final b c(boolean z10) {
            this.f83595a.setArrowAnimate(z10);
            return this;
        }

        @NotNull
        public final b d(long j10) {
            this.f83595a.setArrowAnimationDuration(j10);
            return this;
        }

        @NotNull
        public final b e(@DrawableRes int i10) {
            this.f83595a.setArrowResource(i10);
            return this;
        }

        @NotNull
        public final b f(@NotNull p value) {
            M.p(value, "value");
            this.f83595a.setArrowGravity(value);
            return this;
        }

        @NotNull
        public final b g(@Px int i10) {
            this.f83595a.setArrowPadding(i10);
            return this;
        }

        @NotNull
        public final b h(@ColorInt int i10) {
            this.f83595a.setArrowTint(i10);
            return this;
        }

        @NotNull
        public final b i(boolean z10) {
            this.f83595a.setDisableChangeTextWhenNotified(z10);
            return this;
        }

        @NotNull
        public final b j(boolean z10) {
            this.f83595a.setDismissWhenNotifiedItemSelected(z10);
            return this;
        }

        @NotNull
        public final b k(@ColorInt int i10) {
            this.f83595a.setDividerColor(i10);
            return this;
        }

        @NotNull
        public final b l(@Px int i10) {
            this.f83595a.setDividerSize(i10);
            return this;
        }

        @NotNull
        public final b m(@NotNull LifecycleOwner value) {
            M.p(value, "value");
            this.f83595a.setLifecycleOwner(value);
            return this;
        }

        public final b n(Mf.a<P0> block) {
            M.p(block, "block");
            this.f83595a.setOnSpinnerDismissListener(new a(block));
            return this;
        }

        @NotNull
        public final b o(@NotNull Od.f value) {
            M.p(value, "value");
            this.f83595a.setOnSpinnerDismissListener(value);
            return this;
        }

        public final <T> b p(r<? super Integer, ? super T, ? super Integer, ? super T, P0> block) {
            M.p(block, "block");
            k kVar = this.f83595a.f83573f;
            if (kVar == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>");
            }
            kVar.c(new C1500b(block));
            return this;
        }

        @NotNull
        public final <T> b q(@NotNull Od.g<T> onSpinnerItemSelectedListener) {
            M.p(onSpinnerItemSelectedListener, "onSpinnerItemSelectedListener");
            k kVar = this.f83595a.f83573f;
            if (kVar == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>");
            }
            kVar.c(onSpinnerItemSelectedListener);
            return this;
        }

        public final b r(Mf.p<? super View, ? super MotionEvent, P0> unit) {
            M.p(unit, "unit");
            this.f83595a.setSpinnerOutsideTouchListener(new c(unit));
            return this;
        }

        @NotNull
        public final b s(@NotNull Od.h value) {
            M.p(value, "value");
            this.f83595a.setSpinnerOutsideTouchListener(value);
            return this;
        }

        @NotNull
        public final b t(@NotNull String value) {
            M.p(value, "value");
            this.f83595a.setPreferenceName(value);
            return this;
        }

        @NotNull
        public final b u(boolean z10) {
            this.f83595a.setShowArrow(z10);
            return this;
        }

        @NotNull
        public final b v(boolean z10) {
            this.f83595a.setShowDivider(z10);
            return this;
        }

        @NotNull
        public final b w(@NotNull o value) {
            M.p(value, "value");
            this.f83595a.setSpinnerPopupAnimation(value);
            return this;
        }

        @NotNull
        public final b x(@StyleRes int i10) {
            this.f83595a.setSpinnerPopupAnimationStyle(i10);
            return this;
        }

        @NotNull
        public final b y(@ColorInt int i10) {
            this.f83595a.setSpinnerPopupBackgroundColor(i10);
            return this;
        }

        @NotNull
        public final b z(@Px int i10) {
            this.f83595a.setSpinnerPopupHeight(i10);
            return this;
        }
    }

    public static final class c extends O implements Mf.a<P0> {
        public c() {
            super(0);
        }

        @Override
        public P0 invoke() {
            invoke2();
            return P0.f98194a;
        }

        public final void invoke2() {
            if (PowerSpinnerView.this.p()) {
                PowerSpinnerView.this.i(false);
                PowerSpinnerView.this.f83570c.dismiss();
                PowerSpinnerView.this.f83571d = false;
            }
        }
    }

    public static final class d implements Od.f {
        public d() {
        }

        @Override
        public final void onDismiss() {
            PowerSpinnerView.this.m();
        }
    }

    public static final class e implements Od.f {

        public final Mf.a f83601a;

        public e(Mf.a aVar) {
            this.f83601a = aVar;
        }

        @Override
        public final void onDismiss() {
            this.f83601a.invoke();
        }
    }

    public static final class f<T> implements Od.g<T> {

        public final r f83602a;

        public f(r rVar) {
            this.f83602a = rVar;
        }

        @Override
        public final void a(int i10, @Nullable T t10, int i11, T t11) {
            this.f83602a.invoke(Integer.valueOf(i10), t10, Integer.valueOf(i11), t11);
        }
    }

    public static final class g implements Od.h {

        public final Mf.p f83603a;

        public g(Mf.p pVar) {
            this.f83603a = pVar;
        }

        @Override
        public final void a(@NotNull View view, @NotNull MotionEvent event) {
            M.p(view, "view");
            M.p(event, "event");
            this.f83603a.invoke(view, event);
        }
    }

    public static final class h extends O implements Mf.a<P0> {

        public final int f83605c;

        public final int f83606d;

        public static final class a implements Runnable {
            public a() {
            }

            @Override
            public final void run() {
                PowerSpinnerView.this.f83570c.update(PowerSpinnerView.this.getSpinnerPopupWidth() != Integer.MIN_VALUE ? PowerSpinnerView.this.getSpinnerPopupWidth() : PowerSpinnerView.this.getWidth(), PowerSpinnerView.this.getSpinnerPopupHeight() != Integer.MIN_VALUE ? PowerSpinnerView.this.getSpinnerPopupHeight() : PowerSpinnerView.this.getSpinnerRecyclerView().getHeight());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(int i10, int i11) {
            super(0);
            this.f83605c = i10;
            this.f83606d = i11;
        }

        @Override
        public P0 invoke() {
            invoke2();
            return P0.f98194a;
        }

        public final void invoke2() {
            if (PowerSpinnerView.this.p()) {
                return;
            }
            PowerSpinnerView.this.f83571d = true;
            PowerSpinnerView.this.i(true);
            PowerSpinnerView.this.j();
            PowerSpinnerView.this.f83570c.showAsDropDown(PowerSpinnerView.this, this.f83605c, this.f83606d);
            PowerSpinnerView.this.post(new a());
        }
    }

    public static final class i implements Runnable {

        public static final class a implements PopupWindow.OnDismissListener {
            public a() {
            }

            @Override
            public final void onDismiss() {
                Od.f onSpinnerDismissListener = PowerSpinnerView.this.getOnSpinnerDismissListener();
                if (onSpinnerDismissListener != null) {
                    onSpinnerDismissListener.onDismiss();
                }
            }
        }

        public static final class b implements View.OnTouchListener {
            public b() {
            }

            @Override
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(@NotNull View view, @NotNull MotionEvent event) {
                M.p(view, "view");
                M.p(event, "event");
                if (event.getAction() != 4) {
                    return false;
                }
                Od.h spinnerOutsideTouchListener = PowerSpinnerView.this.getSpinnerOutsideTouchListener();
                if (spinnerOutsideTouchListener == null) {
                    return true;
                }
                spinnerOutsideTouchListener.a(view, event);
                return true;
            }
        }

        public i() {
        }

        @Override
        public final void run() {
            PopupWindow popupWindow = PowerSpinnerView.this.f83570c;
            popupWindow.setWidth(PowerSpinnerView.this.getWidth());
            popupWindow.setOutsideTouchable(true);
            popupWindow.setOnDismissListener(new a());
            popupWindow.setTouchInterceptor(new b());
            popupWindow.setElevation(PowerSpinnerView.this.getSpinnerPopupElevation());
            FrameLayout frameLayout = PowerSpinnerView.this.f83569b.f21264b;
            if (PowerSpinnerView.this.getSpinnerPopupBackgroundColor() == 65555) {
                frameLayout.setBackground(PowerSpinnerView.this.getBackground());
            } else {
                frameLayout.setBackgroundColor(PowerSpinnerView.this.getSpinnerPopupBackgroundColor());
            }
            M.o(frameLayout, "this");
            frameLayout.setPadding(frameLayout.getPaddingLeft(), frameLayout.getPaddingTop(), frameLayout.getPaddingRight(), frameLayout.getPaddingBottom());
            if (PowerSpinnerView.this.getShowDivider()) {
                DividerItemDecoration dividerItemDecoration = new DividerItemDecoration(frameLayout.getContext(), 1);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setSize(frameLayout.getWidth(), PowerSpinnerView.this.getDividerSize());
                gradientDrawable.setColor(PowerSpinnerView.this.getDividerColor());
                dividerItemDecoration.setDrawable(gradientDrawable);
                PowerSpinnerView.this.getSpinnerRecyclerView().addItemDecoration(dividerItemDecoration);
            }
            if (PowerSpinnerView.this.getSpinnerPopupWidth() != Integer.MIN_VALUE) {
                PowerSpinnerView.this.f83570c.setWidth(PowerSpinnerView.this.getSpinnerPopupWidth());
            }
            if (PowerSpinnerView.this.getSpinnerPopupHeight() != Integer.MIN_VALUE) {
                PowerSpinnerView.this.f83570c.setHeight(PowerSpinnerView.this.getSpinnerPopupHeight());
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PowerSpinnerView(@NotNull Context context) {
        super(context);
        M.p(context, "context");
        Pd.b d10 = Pd.b.d(LayoutInflater.from(getContext()), null, false);
        M.o(d10, "LayoutBodyPowerSpinnerLi\u2026om(context), null, false)");
        this.f83569b = d10;
        this.f83572e = -1;
        this.f83573f = new Od.b(this);
        this.f83574g = true;
        this.f83575h = 250L;
        Context context2 = getContext();
        M.o(context2, "context");
        Drawable a10 = Od.a.a(context2, n.f.f17357w0);
        this.f83576i = a10 != null ? a10.mutate() : null;
        this.f83577j = 150L;
        this.f83580m = Integer.MIN_VALUE;
        this.f83581n = true;
        this.f83582o = p.END;
        this.f83584q = -1;
        this.f83586s = Od.a.d(this, 0.5f);
        this.f83587t = -1;
        this.f83588u = Od.a.f16604a;
        this.f83589v = Od.a.e(this, 4);
        this.f83590w = Integer.MIN_VALUE;
        this.f83591x = Integer.MIN_VALUE;
        this.f83592y = Integer.MIN_VALUE;
        this.f83593z = true;
        this.f83566C = o.NORMAL;
        if (this.f83573f instanceof RecyclerView.Adapter) {
            RecyclerView spinnerRecyclerView = getSpinnerRecyclerView();
            Object obj = this.f83573f;
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>");
            }
            spinnerRecyclerView.setAdapter((RecyclerView.Adapter) obj);
        }
        this.f83570c = new PopupWindow(d10.f21264b, -1, -2);
        setOnClickListener(new a());
        if (getGravity() == 0) {
            setGravity(16);
        }
        Object context3 = getContext();
        if (context3 instanceof LifecycleOwner) {
            setLifecycleOwner((LifecycleOwner) context3);
        }
    }

    public static void A(PowerSpinnerView powerSpinnerView, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        powerSpinnerView.z(i10, i11);
    }

    private final void setTypeArray(TypedArray typedArray) {
        int resourceId;
        int i10 = n.m.f18369b7;
        if (typedArray.hasValue(i10)) {
            this.f83580m = typedArray.getResourceId(i10, this.f83580m);
        }
        int i11 = n.m.f18408e7;
        if (typedArray.hasValue(i11)) {
            this.f83581n = typedArray.getBoolean(i11, this.f83581n);
        }
        int i12 = n.m.f18382c7;
        if (typedArray.hasValue(i12)) {
            int integer = typedArray.getInteger(i12, this.f83582o.a());
            p pVar = p.START;
            if (integer != pVar.a()) {
                pVar = p.TOP;
                if (integer != pVar.a()) {
                    pVar = p.END;
                    if (integer != pVar.a()) {
                        pVar = p.BOTTOM;
                        if (integer != pVar.a()) {
                            throw new IllegalArgumentException("unknown argument: spinner_arrow_gravity");
                        }
                    }
                }
            }
            this.f83582o = pVar;
        }
        int i13 = n.m.f18395d7;
        if (typedArray.hasValue(i13)) {
            this.f83583p = typedArray.getDimensionPixelSize(i13, this.f83583p);
        }
        int i14 = n.m.f18421f7;
        if (typedArray.hasValue(i14)) {
            this.f83584q = typedArray.getColor(i14, this.f83584q);
        }
        int i15 = n.m.f18343Z6;
        if (typedArray.hasValue(i15)) {
            this.f83574g = typedArray.getBoolean(i15, this.f83574g);
        }
        if (typedArray.hasValue(n.m.f18356a7)) {
            this.f83575h = typedArray.getInteger(r0, (int) this.f83575h);
        }
        int i16 = n.m.f18473j7;
        if (typedArray.hasValue(i16)) {
            this.f83585r = typedArray.getBoolean(i16, this.f83585r);
        }
        int i17 = n.m.f18486k7;
        if (typedArray.hasValue(i17)) {
            this.f83586s = typedArray.getDimensionPixelSize(i17, this.f83586s);
        }
        int i18 = n.m.f18460i7;
        if (typedArray.hasValue(i18)) {
            this.f83587t = typedArray.getColor(i18, this.f83587t);
        }
        int i19 = n.m.f18538o7;
        if (typedArray.hasValue(i19)) {
            this.f83588u = typedArray.getColor(i19, this.f83588u);
        }
        int i20 = n.m.f18512m7;
        if (typedArray.hasValue(i20)) {
            int integer2 = typedArray.getInteger(i20, this.f83566C.a());
            o oVar = o.DROPDOWN;
            if (integer2 != oVar.a()) {
                oVar = o.FADE;
                if (integer2 != oVar.a()) {
                    oVar = o.BOUNCE;
                    if (integer2 != oVar.a()) {
                        oVar = o.NORMAL;
                        if (integer2 != oVar.a()) {
                            throw new IllegalArgumentException("unknown argument: spinner_popup_animation");
                        }
                    }
                }
            }
            this.f83566C = oVar;
        }
        int i21 = n.m.f18525n7;
        if (typedArray.hasValue(i21)) {
            this.f83590w = typedArray.getResourceId(i21, this.f83590w);
        }
        int i22 = n.m.f18577r7;
        if (typedArray.hasValue(i22)) {
            this.f83591x = typedArray.getDimensionPixelSize(i22, this.f83591x);
        }
        int i23 = n.m.f18564q7;
        if (typedArray.hasValue(i23)) {
            this.f83592y = typedArray.getDimensionPixelSize(i23, this.f83592y);
        }
        int i24 = n.m.f18551p7;
        if (typedArray.hasValue(i24)) {
            this.f83589v = typedArray.getDimensionPixelSize(i24, this.f83589v);
        }
        int i25 = n.m.f18499l7;
        if (typedArray.hasValue(i25) && (resourceId = typedArray.getResourceId(i25, Integer.MIN_VALUE)) != Integer.MIN_VALUE) {
            setItems(resourceId);
        }
        int i26 = n.m.f18447h7;
        if (typedArray.hasValue(i26)) {
            this.f83593z = typedArray.getBoolean(i26, this.f83593z);
        }
        if (typedArray.hasValue(n.m.f18434g7)) {
            this.f83577j = typedArray.getInteger(r0, (int) this.f83577j);
        }
        int i27 = n.m.f18590s7;
        if (typedArray.hasValue(i27)) {
            setPreferenceName(typedArray.getString(i27));
        }
    }

    public static void w(PowerSpinnerView powerSpinnerView, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        powerSpinnerView.v(i10, i11);
    }

    public final void B(Drawable drawable) {
        if (!getShowArrow()) {
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        if (drawable != null) {
            Drawable mutate = DrawableCompat.wrap(drawable).mutate();
            M.o(mutate, "DrawableCompat.wrap(it).mutate()");
            DrawableCompat.setTint(mutate, getArrowTint());
            mutate.invalidateSelf();
        }
        int i10 = m.f16637a[getArrowGravity().ordinal()];
        if (i10 == 1) {
            setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        if (i10 == 2) {
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, drawable, (Drawable) null, (Drawable) null);
        } else if (i10 == 3) {
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
        } else {
            if (i10 != 4) {
                return;
            }
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, drawable);
        }
    }

    public final void C() {
        if (getArrowResource() != Integer.MIN_VALUE) {
            Context context = getContext();
            M.o(context, "context");
            Drawable a10 = Od.a.a(context, getArrowResource());
            this.f83576i = a10 != null ? a10.mutate() : null;
        }
        setCompoundDrawablePadding(getArrowPadding());
        B(this.f83576i);
    }

    public final void D() {
        String str;
        if (this.f83573f.getItemCount() <= 0 || (str = this.f83567D) == null || str.length() == 0) {
            return;
        }
        l.a aVar = l.f16636d;
        Context context = getContext();
        M.o(context, "context");
        if (aVar.a(context).g(str) != -1) {
            k<?> kVar = this.f83573f;
            Context context2 = getContext();
            M.o(context2, "context");
            kVar.b(aVar.a(context2).g(str));
        }
    }

    public final void E() {
        post(new i());
    }

    public final boolean getArrowAnimate() {
        return this.f83574g;
    }

    public final long getArrowAnimationDuration() {
        return this.f83575h;
    }

    @Nullable
    public final Drawable getArrowDrawable() {
        return this.f83576i;
    }

    @NotNull
    public final p getArrowGravity() {
        return this.f83582o;
    }

    @Px
    public final int getArrowPadding() {
        return this.f83583p;
    }

    @DrawableRes
    public final int getArrowResource() {
        return this.f83580m;
    }

    @ColorInt
    public final int getArrowTint() {
        return this.f83584q;
    }

    public final long getDebounceDuration() {
        return this.f83577j;
    }

    public final boolean getDisableChangeTextWhenNotified() {
        return this.f83578k;
    }

    public final boolean getDismissWhenNotifiedItemSelected() {
        return this.f83593z;
    }

    @ColorInt
    public final int getDividerColor() {
        return this.f83587t;
    }

    @Px
    public final int getDividerSize() {
        return this.f83586s;
    }

    @Nullable
    public final LifecycleOwner getLifecycleOwner() {
        return this.f83568E;
    }

    @Nullable
    public final Od.f getOnSpinnerDismissListener() {
        return this.f83565B;
    }

    @Nullable
    public final String getPreferenceName() {
        return this.f83567D;
    }

    public final int getSelectedIndex() {
        return this.f83572e;
    }

    public final boolean getShowArrow() {
        return this.f83581n;
    }

    public final boolean getShowDivider() {
        return this.f83585r;
    }

    @NotNull
    public final <T> k<T> getSpinnerAdapter() {
        k<T> kVar = (k<T>) this.f83573f;
        if (kVar != null) {
            return kVar;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>");
    }

    @NotNull
    public final FrameLayout getSpinnerBodyView() {
        FrameLayout frameLayout = this.f83569b.f21264b;
        M.o(frameLayout, "binding.body");
        return frameLayout;
    }

    @Nullable
    public final Od.h getSpinnerOutsideTouchListener() {
        return this.f83564A;
    }

    @NotNull
    public final o getSpinnerPopupAnimation() {
        return this.f83566C;
    }

    public final int getSpinnerPopupAnimationStyle() {
        return this.f83590w;
    }

    @ColorInt
    public final int getSpinnerPopupBackgroundColor() {
        return this.f83588u;
    }

    @Px
    public final int getSpinnerPopupElevation() {
        return this.f83589v;
    }

    public final int getSpinnerPopupHeight() {
        return this.f83592y;
    }

    public final int getSpinnerPopupWidth() {
        return this.f83591x;
    }

    @NotNull
    public final RecyclerView getSpinnerRecyclerView() {
        RecyclerView recyclerView = this.f83569b.f21265c;
        M.o(recyclerView, "binding.recyclerView");
        return recyclerView;
    }

    public final void i(boolean z10) {
        if (this.f83574g) {
            ObjectAnimator ofInt = ObjectAnimator.ofInt(this.f83576i, "level", z10 ? 0 : 10000, z10 ? 10000 : 0);
            ofInt.setDuration(this.f83575h);
            ofInt.start();
        }
    }

    public final void j() {
        int i10 = this.f83590w;
        if (i10 != Integer.MIN_VALUE) {
            this.f83570c.setAnimationStyle(i10);
            return;
        }
        int i11 = m.f16638b[this.f83566C.ordinal()];
        if (i11 == 1) {
            this.f83570c.setAnimationStyle(n.l.f17862f2);
        } else if (i11 == 2) {
            this.f83570c.setAnimationStyle(n.l.f17878h2);
        } else {
            if (i11 != 3) {
                return;
            }
            this.f83570c.setAnimationStyle(n.l.f17870g2);
        }
    }

    public final void k() {
        q(-1, "");
    }

    public final void l(Mf.a<P0> aVar) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f83579l > this.f83577j) {
            this.f83579l = currentTimeMillis;
            aVar.invoke();
        }
    }

    @MainThread
    public final void m() {
        l(new c());
    }

    public final void n(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, n.m.f18331Y6);
        M.o(obtainStyledAttributes, "context.obtainStyledAttr\u2026yleable.PowerSpinnerView)");
        try {
            setTypeArray(obtainStyledAttributes);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final void o(AttributeSet attributeSet, int i10) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, n.m.f18331Y6, i10, 0);
        M.o(obtainStyledAttributes, "context.obtainStyledAttr\u2026fStyleAttr,\n      0\n    )");
        try {
            setTypeArray(obtainStyledAttributes);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public final void onDestroy() {
        m();
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        E();
        C();
        D();
    }

    public final boolean p() {
        return this.f83571d;
    }

    public final void q(int i10, @NotNull CharSequence changedText) {
        M.p(changedText, "changedText");
        this.f83572e = i10;
        if (!this.f83578k) {
            setText(changedText);
        }
        if (this.f83593z) {
            m();
        }
        String str = this.f83567D;
        if (str == null || str.length() == 0) {
            return;
        }
        l.a aVar = l.f16636d;
        Context context = getContext();
        M.o(context, "context");
        aVar.a(context).h(str, this.f83572e);
    }

    public final void r(int i10) {
        this.f83573f.b(i10);
    }

    @NotNull
    public final PowerSpinnerView s(boolean z10) {
        this.f83578k = z10;
        return this;
    }

    public final void setArrowAnimate(boolean z10) {
        this.f83574g = z10;
    }

    public final void setArrowAnimationDuration(long j10) {
        this.f83575h = j10;
    }

    public final void setArrowDrawable(@Nullable Drawable drawable) {
        this.f83576i = drawable;
    }

    public final void setArrowGravity(@NotNull p value) {
        M.p(value, "value");
        this.f83582o = value;
        C();
    }

    public final void setArrowPadding(@Px int i10) {
        this.f83583p = i10;
        C();
    }

    public final void setArrowResource(@DrawableRes int i10) {
        this.f83580m = i10;
        C();
    }

    public final void setArrowTint(@ColorInt int i10) {
        this.f83584q = i10;
        C();
    }

    public final void setDisableChangeTextWhenNotified(boolean z10) {
        this.f83578k = z10;
    }

    public final void setDismissWhenNotifiedItemSelected(boolean z10) {
        this.f83593z = z10;
    }

    public final void setDividerColor(@ColorInt int i10) {
        this.f83587t = i10;
        E();
    }

    public final void setDividerSize(@Px int i10) {
        this.f83586s = i10;
        E();
    }

    public final void setIsFocusable(boolean z10) {
        this.f83570c.setFocusable(z10);
        this.f83565B = new d();
    }

    public final <T> void setItems(@NotNull List<? extends T> itemList) {
        M.p(itemList, "itemList");
        k<?> kVar = this.f83573f;
        if (kVar == null) {
            throw new NullPointerException("null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>");
        }
        kVar.f(itemList);
    }

    public final void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        Lifecycle lifecycle;
        this.f83568E = lifecycleOwner;
        if (lifecycleOwner == null || (lifecycle = lifecycleOwner.getLifecycle()) == null) {
            return;
        }
        lifecycle.addObserver(this);
    }

    public final void setOnSpinnerDismissListener(@Nullable Od.f fVar) {
        this.f83565B = fVar;
    }

    public final <T> void setOnSpinnerItemSelectedListener(@NotNull Od.g<T> onSpinnerItemSelectedListener) {
        M.p(onSpinnerItemSelectedListener, "onSpinnerItemSelectedListener");
        k<?> kVar = this.f83573f;
        if (kVar != null) {
            kVar.c(onSpinnerItemSelectedListener);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>");
    }

    public final void setOnSpinnerOutsideTouchListener(Mf.p<? super View, ? super MotionEvent, P0> block) {
        M.p(block, "block");
        this.f83564A = new g(block);
    }

    public final void setPreferenceName(@Nullable String str) {
        this.f83567D = str;
        D();
    }

    public final void setShowArrow(boolean z10) {
        this.f83581n = z10;
        C();
    }

    public final void setShowDivider(boolean z10) {
        this.f83585r = z10;
        E();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> void setSpinnerAdapter(@NotNull k<T> powerSpinnerInterface) {
        M.p(powerSpinnerInterface, "powerSpinnerInterface");
        this.f83573f = powerSpinnerInterface;
        if (powerSpinnerInterface instanceof RecyclerView.Adapter) {
            RecyclerView spinnerRecyclerView = getSpinnerRecyclerView();
            Object obj = this.f83573f;
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>");
            }
            spinnerRecyclerView.setAdapter((RecyclerView.Adapter) obj);
        }
    }

    public final void setSpinnerOutsideTouchListener(@Nullable Od.h hVar) {
        this.f83564A = hVar;
    }

    public final void setSpinnerPopupAnimation(@NotNull o oVar) {
        M.p(oVar, "<set-?>");
        this.f83566C = oVar;
    }

    public final void setSpinnerPopupAnimationStyle(int i10) {
        this.f83590w = i10;
    }

    public final void setSpinnerPopupBackgroundColor(@ColorInt int i10) {
        this.f83588u = i10;
        E();
    }

    public final void setSpinnerPopupElevation(@Px int i10) {
        this.f83589v = i10;
        E();
    }

    public final void setSpinnerPopupHeight(int i10) {
        this.f83592y = i10;
    }

    public final void setSpinnerPopupWidth(int i10) {
        this.f83591x = i10;
    }

    @Lf.k
    @MainThread
    public final void t() {
        w(this, 0, 0, 3, null);
    }

    @Lf.k
    @MainThread
    public final void u(int i10) {
        w(this, i10, 0, 2, null);
    }

    @Lf.k
    @MainThread
    public final void v(int i10, int i11) {
        l(new h(i10, i11));
    }

    @Lf.k
    @MainThread
    public final void x() {
        A(this, 0, 0, 3, null);
    }

    @Lf.k
    @MainThread
    public final void y(int i10) {
        A(this, i10, 0, 2, null);
    }

    @Lf.k
    @MainThread
    public final void z(int i10, int i11) {
        RecyclerView.Adapter adapter = getSpinnerRecyclerView().getAdapter();
        if (adapter != null) {
            M.o(adapter, "getSpinnerRecyclerView().adapter ?: return");
            if (this.f83571d || adapter.getItemCount() <= 0) {
                m();
            } else {
                v(i10, i11);
            }
        }
    }

    public final void setItems(@ArrayRes int i10) {
        if (this.f83573f instanceof Od.b) {
            Context context = getContext();
            M.o(context, "context");
            String[] stringArray = context.getResources().getStringArray(i10);
            M.o(stringArray, "context.resources.getStringArray(resource)");
            setItems(C14960A.cz(stringArray));
        }
    }

    public final void setOnSpinnerDismissListener(Mf.a<P0> block) {
        M.p(block, "block");
        this.f83565B = new e(block);
    }

    public final <T> void setOnSpinnerItemSelectedListener(r<? super Integer, ? super T, ? super Integer, ? super T, P0> block) {
        M.p(block, "block");
        k<?> kVar = this.f83573f;
        if (kVar != null) {
            kVar.c(new f(block));
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PowerSpinnerView(@NotNull Context context, @NotNull AttributeSet attributeSet) {
        super(context, attributeSet);
        M.p(context, "context");
        M.p(attributeSet, "attributeSet");
        Pd.b d10 = Pd.b.d(LayoutInflater.from(getContext()), null, false);
        M.o(d10, "LayoutBodyPowerSpinnerLi\u2026om(context), null, false)");
        this.f83569b = d10;
        this.f83572e = -1;
        this.f83573f = new Od.b(this);
        this.f83574g = true;
        this.f83575h = 250L;
        Context context2 = getContext();
        M.o(context2, "context");
        Drawable a10 = Od.a.a(context2, n.f.f17357w0);
        this.f83576i = a10 != null ? a10.mutate() : null;
        this.f83577j = 150L;
        this.f83580m = Integer.MIN_VALUE;
        this.f83581n = true;
        this.f83582o = p.END;
        this.f83584q = -1;
        this.f83586s = Od.a.d(this, 0.5f);
        this.f83587t = -1;
        this.f83588u = Od.a.f16604a;
        this.f83589v = Od.a.e(this, 4);
        this.f83590w = Integer.MIN_VALUE;
        this.f83591x = Integer.MIN_VALUE;
        this.f83592y = Integer.MIN_VALUE;
        this.f83593z = true;
        this.f83566C = o.NORMAL;
        if (this.f83573f instanceof RecyclerView.Adapter) {
            RecyclerView spinnerRecyclerView = getSpinnerRecyclerView();
            Object obj = this.f83573f;
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>");
            }
            spinnerRecyclerView.setAdapter((RecyclerView.Adapter) obj);
        }
        this.f83570c = new PopupWindow(d10.f21264b, -1, -2);
        setOnClickListener(new a());
        if (getGravity() == 0) {
            setGravity(16);
        }
        Object context3 = getContext();
        if (context3 instanceof LifecycleOwner) {
            setLifecycleOwner((LifecycleOwner) context3);
        }
        n(attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PowerSpinnerView(@NotNull Context context, @NotNull AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        M.p(attributeSet, "attributeSet");
        Pd.b d10 = Pd.b.d(LayoutInflater.from(getContext()), null, false);
        M.o(d10, "LayoutBodyPowerSpinnerLi\u2026om(context), null, false)");
        this.f83569b = d10;
        this.f83572e = -1;
        this.f83573f = new Od.b(this);
        this.f83574g = true;
        this.f83575h = 250L;
        Context context2 = getContext();
        M.o(context2, "context");
        Drawable a10 = Od.a.a(context2, n.f.f17357w0);
        this.f83576i = a10 != null ? a10.mutate() : null;
        this.f83577j = 150L;
        this.f83580m = Integer.MIN_VALUE;
        this.f83581n = true;
        this.f83582o = p.END;
        this.f83584q = -1;
        this.f83586s = Od.a.d(this, 0.5f);
        this.f83587t = -1;
        this.f83588u = Od.a.f16604a;
        this.f83589v = Od.a.e(this, 4);
        this.f83590w = Integer.MIN_VALUE;
        this.f83591x = Integer.MIN_VALUE;
        this.f83592y = Integer.MIN_VALUE;
        this.f83593z = true;
        this.f83566C = o.NORMAL;
        if (this.f83573f instanceof RecyclerView.Adapter) {
            RecyclerView spinnerRecyclerView = getSpinnerRecyclerView();
            Object obj = this.f83573f;
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>");
            }
            spinnerRecyclerView.setAdapter((RecyclerView.Adapter) obj);
        }
        this.f83570c = new PopupWindow(d10.f21264b, -1, -2);
        setOnClickListener(new a());
        if (getGravity() == 0) {
            setGravity(16);
        }
        Object context3 = getContext();
        if (context3 instanceof LifecycleOwner) {
            setLifecycleOwner((LifecycleOwner) context3);
        }
        o(attributeSet, i10);
    }
}

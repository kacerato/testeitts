package P1;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.BatteryManager;
import android.util.Property;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.ArrayList;
import java.util.List;
import x1.C16046a;
import x1.C16047b;
import x1.h;

public abstract class b implements com.google.android.material.floatingactionbutton.b {

    public final Context f20628a;

    @NonNull
    public final ExtendedFloatingActionButton f20629b;

    public final ArrayList<Animator.AnimatorListener> f20630c = new ArrayList<>();

    public final P1.a f20631d;

    @Nullable
    public h f20632e;

    @Nullable
    public h f20633f;

    public class a extends Property<ExtendedFloatingActionButton, Float> {
        public a(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            return Float.valueOf(C16046a.a(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.f64434L.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f20629b.f64434L.getDefaultColor()))));
        }

        @Override
        public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f10) {
            int colorForState = extendedFloatingActionButton.f64434L.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f20629b.f64434L.getDefaultColor());
            ColorStateList valueOf = ColorStateList.valueOf(Color.argb((int) (C16046a.a(0.0f, Color.alpha(colorForState) / 255.0f, f10.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f10.floatValue() == 1.0f) {
                extendedFloatingActionButton.V(extendedFloatingActionButton.f64434L);
            } else {
                extendedFloatingActionButton.V(valueOf);
            }
        }
    }

    public b(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton, P1.a aVar) {
        this.f20629b = extendedFloatingActionButton;
        this.f20628a = extendedFloatingActionButton.getContext();
        this.f20631d = aVar;
    }

    @Override
    public final h a() {
        h hVar = this.f20633f;
        if (hVar != null) {
            return hVar;
        }
        if (this.f20632e == null) {
            this.f20632e = h.d(this.f20628a, e());
        }
        return (h) Preconditions.checkNotNull(this.f20632e);
    }

    @Override
    @Nullable
    public h b() {
        return this.f20633f;
    }

    @Override
    public final void d(@NonNull Animator.AnimatorListener animatorListener) {
        this.f20630c.remove(animatorListener);
    }

    @Override
    public AnimatorSet f() {
        return n(a());
    }

    @Override
    @NonNull
    public final List<Animator.AnimatorListener> getListeners() {
        return this.f20630c;
    }

    @Override
    @CallSuper
    public void i() {
        this.f20631d.b();
    }

    @Override
    public final void j(@NonNull Animator.AnimatorListener animatorListener) {
        this.f20630c.add(animatorListener);
    }

    @Override
    @CallSuper
    public void k() {
        this.f20631d.b();
    }

    @Override
    public final void l(@Nullable h hVar) {
        this.f20633f = hVar;
    }

    @NonNull
    public AnimatorSet n(@NonNull h hVar) {
        ArrayList arrayList = new ArrayList();
        if (hVar.j("opacity")) {
            arrayList.add(hVar.f("opacity", this.f20629b, View.ALPHA));
        }
        if (hVar.j(BatteryManager.EXTRA_SCALE)) {
            arrayList.add(hVar.f(BatteryManager.EXTRA_SCALE, this.f20629b, View.SCALE_Y));
            arrayList.add(hVar.f(BatteryManager.EXTRA_SCALE, this.f20629b, View.SCALE_X));
        }
        if (hVar.j("width")) {
            arrayList.add(hVar.f("width", this.f20629b, ExtendedFloatingActionButton.f64419Q));
        }
        if (hVar.j("height")) {
            arrayList.add(hVar.f("height", this.f20629b, ExtendedFloatingActionButton.f64420R));
        }
        if (hVar.j("paddingStart")) {
            arrayList.add(hVar.f("paddingStart", this.f20629b, ExtendedFloatingActionButton.f64421S));
        }
        if (hVar.j("paddingEnd")) {
            arrayList.add(hVar.f("paddingEnd", this.f20629b, ExtendedFloatingActionButton.f64422T));
        }
        if (hVar.j("labelOpacity")) {
            arrayList.add(hVar.f("labelOpacity", this.f20629b, new a(Float.class, "LABEL_OPACITY_PROPERTY")));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        C16047b.a(animatorSet, arrayList);
        return animatorSet;
    }

    @Override
    @CallSuper
    public void onAnimationStart(Animator animator) {
        this.f20631d.c(animator);
    }
}

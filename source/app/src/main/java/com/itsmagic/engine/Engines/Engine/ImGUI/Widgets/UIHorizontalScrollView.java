package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import JAVARuntime.Component;
import K8.d;
import V9.r;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiLayoutComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;
import tc.h;

public class UIHorizontalScrollView extends ImGuiLayoutComponent {

    public static final String f78504X = "UIHorizontalScrollView";

    public static final Class f78505Y = UIHorizontalScrollView.class;

    public float f78506P;

    public int f78507Q;

    public float f78508R;

    public float f78509S;

    public h f78510T;

    public boolean f78511U;

    public float f78512V;

    public Component f78513W;

    @Expose
    @f
    public int scroll;

    @Expose
    @f
    private float sensitivity;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIHorizontalScrollView.f78505Y;
        }

        @Override
        public String c() {
            return UIHorizontalScrollView.f78504X;
        }

        @Override
        public String e() {
            return "UI/ScrollView";
        }

        @Override
        public String h(boolean translate) {
            return "HorizontalScrollView";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIHorizontalScrollView.this.scroll + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIHorizontalScrollView.this.setScroll(variable.int_value);
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIHorizontalScrollView.this.sensitivity + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIHorizontalScrollView.this.setSensitivity(variable.float_value);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIHorizontalScrollView() {
        super(f78504X);
        this.scroll = 0;
        this.sensitivity = 1.0f;
        this.f78506P = 0.0f;
        this.f78509S = 0.0f;
    }

    private float getTouchAxisOnUI(h touch) {
        if (getUIControllerComponent() == null) {
            return 0.0f;
        }
        return touch instanceof r ? touch.g().getX() : r0.getTouchPos(touch).e();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void afterTouchUpdate() {
        int i10;
        super.afterTouchUpdate();
        if (getUIRectComponent() == null) {
            return;
        }
        int i11 = this.scroll;
        try {
            int H10 = Nc.b.H(getUIRectComponent().getGlobalSize().e() - dp(getUIRectComponent().getPadding().d()));
            if (this.f79250n.D() > 0) {
                UIRect uIRect = (UIRect) this.f79250n.C(0).c0(Component.e.UIRect);
                if (uIRect != null) {
                    int e10 = uIRect.getGlobalSize().e() - H10;
                    this.f78507Q = e10;
                    this.f78507Q = Nc.b.H(e10);
                } else {
                    this.f78507Q = 0;
                }
            } else {
                this.f78507Q = 0;
            }
            if (Nc.b.k(this.f78509S - this.scroll) > 1.0f) {
                this.f78509S = this.scroll;
            }
            h selectedTouch = getTouchTrigger() != null ? getTouchTrigger().getSelectedTouch() : null;
            if (selectedTouch == null || !getTouchTrigger().isPressed()) {
                this.f78510T = null;
                this.f78511U = false;
            } else {
                if (this.f78510T != selectedTouch) {
                    this.f78510T = selectedTouch;
                    this.f78511U = false;
                }
                float touchAxisOnUI = getTouchAxisOnUI(selectedTouch);
                if (!this.f78511U) {
                    this.f78511U = true;
                    this.f78512V = touchAxisOnUI;
                }
                float f10 = touchAxisOnUI - this.f78512V;
                this.f78512V = touchAxisOnUI;
                if (selectedTouch.f117309e) {
                    float e11 = d.e();
                    if (H10 > 0 && e11 > 0.0f) {
                        float f11 = H10;
                        float f12 = (((-f10) / f11) / e11) * this.sensitivity;
                        this.f78506P = f12;
                        this.f78509S += f12 * f11 * e11;
                    }
                    float E10 = Nc.b.E(0.0f, this.f78509S, this.f78507Q);
                    this.f78509S = E10;
                    i10 = (int) E10;
                    this.scroll = i10;
                    if (i11 == i10) {
                        markLayoutDirty();
                        requestUIDirty();
                        return;
                    }
                    return;
                }
            }
            float e12 = d.e();
            if (e12 > 0.0f) {
                float f13 = this.f78506P;
                float f14 = f13 - ((f13 * e12) * 3.0f);
                this.f78506P = f14;
                this.f78509S += f14 * H10 * e12;
            } else {
                this.f78506P = 0.0f;
            }
            float E102 = Nc.b.E(0.0f, this.f78509S, this.f78507Q);
            this.f78509S = E102;
            i10 = (int) E102;
            this.scroll = i10;
            if (i11 == i10) {
            }
        } catch (Throwable th2) {
            if (i11 != this.scroll) {
                markLayoutDirty();
                requestUIDirty();
            }
            throw th2;
        }
    }

    @Override
    public int getIconResource() {
        return R.drawable.scroll_h;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        List<C5.b> inspectorEntries = super.getInspectorEntries(context);
        if (inspectorEntries == null) {
            inspectorEntries = new SteppedArrayList<>();
        }
        if (context == null) {
            return inspectorEntries;
        }
        inspectorEntries.add(new C5.b(new b(), "scroll", b.a.SLInt).d(this.f79250n, this, "scroll", com.itsmagic.engine.Engines.Engine.Animation.c.INT));
        inspectorEntries.add(new C5.b(new c(), "Sensitivity", b.a.SLFloat));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public int getScroll() {
        return this.scroll;
    }

    @InterfaceC15237a
    public float getSensitivity() {
        return this.sensitivity;
    }

    @Override
    public String getTitle() {
        return "HorizontalScrollView";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIHorizontalScrollView;
    }

    @Override
    public int iconPriority() {
        return 4;
    }

    @Override
    public void onChildInfluence(UIController controller, UIRect child) {
        super.onChildInfluence(controller, child);
        this.scroll = Nc.b.F(0, this.scroll, this.f78507Q);
        child.setGlobalPosition(child.getGlobalPosition().f() + ((int) this.f78508R), child.getGlobalPosition().g(), false);
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        this.scroll = Nc.b.F(0, this.scroll, this.f78507Q);
        float E10 = Nc.b.E(0.0f, this.f78509S, this.f78507Q);
        this.f78509S = E10;
        if (Nc.b.k(E10 - this.scroll) > 1.0f) {
            this.f78509S = this.scroll;
        } else {
            this.scroll = (int) this.f78509S;
        }
        this.f78508R = this.scroll;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78513W = run;
    }

    @InterfaceC15237a
    public void setScroll(int scroll) {
        if (this.scroll == scroll) {
            return;
        }
        this.scroll = scroll;
        this.f78509S = scroll;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setSensitivity(float sensitivity) {
        float G10 = Nc.b.G(sensitivity);
        if (this.sensitivity == G10) {
            return;
        }
        this.sensitivity = G10;
        markLayoutDirty();
        requestUIDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public void startChildInfluence(UIController controller) {
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78513W;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIHorizontalScrollView uIHorizontalScrollView = new JAVARuntime.UIHorizontalScrollView(this);
        this.f78513W = uIHorizontalScrollView;
        return uIHorizontalScrollView;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIHorizontalScrollView uIHorizontalScrollView = new UIHorizontalScrollView();
        uIHorizontalScrollView.scroll = this.scroll;
        uIHorizontalScrollView.sensitivity = this.sensitivity;
        return uIHorizontalScrollView;
    }
}

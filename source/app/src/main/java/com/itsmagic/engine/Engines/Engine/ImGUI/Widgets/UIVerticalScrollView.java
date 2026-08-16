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

public class UIVerticalScrollView extends ImGuiLayoutComponent {

    public static final String f78850X = "UIVerticalScrollView";

    public static final Class f78851Y = UIVerticalScrollView.class;

    public float f78852P;

    public int f78853Q;

    public float f78854R;

    public float f78855S;

    public h f78856T;

    public boolean f78857U;

    public float f78858V;

    public Component f78859W;

    @Expose
    @f
    public int scroll;

    @Expose
    @f
    private float sensitivity;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIVerticalScrollView.f78851Y;
        }

        @Override
        public String c() {
            return UIVerticalScrollView.f78850X;
        }

        @Override
        public String e() {
            return "UI/ScrollView";
        }

        @Override
        public String h(boolean translate) {
            return "VerticalScrollView";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVerticalScrollView.this.scroll + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIVerticalScrollView.this.setScroll(variable.int_value);
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVerticalScrollView.this.sensitivity + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIVerticalScrollView.this.setSensitivity(variable.float_value);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIVerticalScrollView() {
        super(f78850X);
        this.scroll = 0;
        this.sensitivity = 1.0f;
        this.f78852P = 0.0f;
        this.f78855S = 0.0f;
    }

    private float getTouchAxisOnUI(h touch) {
        if (getUIControllerComponent() == null) {
            return 0.0f;
        }
        return touch instanceof r ? touch.g().getY() : r0.getTouchPos(touch).f();
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
            int H10 = Nc.b.H(getUIRectComponent().getGlobalSize().f() - dp(getUIRectComponent().getPadding().h()));
            if (this.f79250n.D() > 0) {
                UIRect uIRect = (UIRect) this.f79250n.C(0).c0(Component.e.UIRect);
                if (uIRect != null) {
                    int f10 = uIRect.getGlobalSize().f() - H10;
                    this.f78853Q = f10;
                    this.f78853Q = Nc.b.H(f10);
                } else {
                    this.f78853Q = 0;
                }
            } else {
                this.f78853Q = 0;
            }
            if (Nc.b.k(this.f78855S - this.scroll) > 1.0f) {
                this.f78855S = this.scroll;
            }
            h selectedTouch = getTouchTrigger() != null ? getTouchTrigger().getSelectedTouch() : null;
            if (selectedTouch == null || !getTouchTrigger().isPressed()) {
                this.f78856T = null;
                this.f78857U = false;
            } else {
                if (this.f78856T != selectedTouch) {
                    this.f78856T = selectedTouch;
                    this.f78857U = false;
                }
                float touchAxisOnUI = getTouchAxisOnUI(selectedTouch);
                if (!this.f78857U) {
                    this.f78857U = true;
                    this.f78858V = touchAxisOnUI;
                }
                float f11 = touchAxisOnUI - this.f78858V;
                this.f78858V = touchAxisOnUI;
                if (selectedTouch.f117309e) {
                    float e10 = d.e();
                    if (H10 > 0 && e10 > 0.0f) {
                        float f12 = H10;
                        float f13 = (((-f11) / f12) / e10) * this.sensitivity;
                        this.f78852P = f13;
                        this.f78855S += f13 * f12 * e10;
                    }
                    float E10 = Nc.b.E(0.0f, this.f78855S, this.f78853Q);
                    this.f78855S = E10;
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
            float e11 = d.e();
            if (e11 > 0.0f) {
                float f14 = this.f78852P;
                float f15 = f14 - ((f14 * e11) * 3.0f);
                this.f78852P = f15;
                this.f78855S += f15 * H10 * e11;
            } else {
                this.f78852P = 0.0f;
            }
            float E102 = Nc.b.E(0.0f, this.f78855S, this.f78853Q);
            this.f78855S = E102;
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
        return R.drawable.scroll_v;
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
        return "VerticalScrollView";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIVerticalScrollView;
    }

    @Override
    public int iconPriority() {
        return 4;
    }

    @Override
    public void onChildInfluence(UIController controller, UIRect child) {
        super.onChildInfluence(controller, child);
        this.scroll = Nc.b.F(0, this.scroll, this.f78853Q);
        child.setGlobalPosition(child.getGlobalPosition().f(), child.getGlobalPosition().g() + ((int) (-this.f78854R)), false);
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        this.scroll = Nc.b.F(0, this.scroll, this.f78853Q);
        float E10 = Nc.b.E(0.0f, this.f78855S, this.f78853Q);
        this.f78855S = E10;
        if (Nc.b.k(E10 - this.scroll) > 1.0f) {
            this.f78855S = this.scroll;
        } else {
            this.scroll = (int) this.f78855S;
        }
        this.f78854R = this.scroll;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78859W = run;
    }

    @InterfaceC15237a
    public void setScroll(int scroll) {
        if (this.scroll == scroll) {
            return;
        }
        this.scroll = scroll;
        this.f78855S = scroll;
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
        JAVARuntime.Component component = this.f78859W;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIVerticalScrollView uIVerticalScrollView = new JAVARuntime.UIVerticalScrollView(this);
        this.f78859W = uIVerticalScrollView;
        return uIVerticalScrollView;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIVerticalScrollView uIVerticalScrollView = new UIVerticalScrollView();
        uIVerticalScrollView.scroll = this.scroll;
        uIVerticalScrollView.sensitivity = this.sensitivity;
        return uIVerticalScrollView;
    }
}

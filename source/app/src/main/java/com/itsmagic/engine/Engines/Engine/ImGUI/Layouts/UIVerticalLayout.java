package com.itsmagic.engine.Engines.Engine.ImGUI.Layouts;

import C5.b;
import D5.h;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Animation.c;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiLayoutComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;

public class UIVerticalLayout extends ImGuiLayoutComponent {

    public static final String f78174W = "UIVerticalLayout";

    public static final Class f78175X = UIVerticalLayout.class;

    public int f78176P;

    public int f78177Q;

    public int f78178R;

    public float f78179S;

    public int f78180T;

    public int f78181U;

    public Component f78182V;

    @Expose
    @f
    private int spacing;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIVerticalLayout.f78175X;
        }

        @Override
        public String c() {
            return UIVerticalLayout.f78174W;
        }

        @Override
        public String e() {
            return "UI/Layouts";
        }

        @Override
        public String h(boolean translate) {
            return "VerticalLayout";
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(UIVerticalLayout.this.spacing);
            sb2.append("");
            return new Variable("", sb2.toString());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIVerticalLayout.this.setSpacing(variable.int_value);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIVerticalLayout() {
        super(f78174W);
        this.spacing = 8;
        this.f78176P = 0;
        this.f78177Q = 0;
        this.f78178R = 0;
        this.f78179S = 0.0f;
        this.f78180T = 0;
        this.f78181U = 0;
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_linear_ver;
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
        inspectorEntries.add(new C5.b(new b(), "spacing", b.a.SLInt).d(this.f79250n, this, "spacing", c.INT));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public int getSpacing() {
        return this.spacing;
    }

    @Override
    public String getTitle() {
        return "VerticalLayout";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIVerticalLayout;
    }

    @Override
    public int iconPriority() {
        return 4;
    }

    @Override
    public void measureChildInfluence(UIController controller, UIRect child) {
        super.measureChildInfluence(controller, child);
        if (getUIRectComponent() == null) {
            return;
        }
        int f10 = child.getGlobalSize().f();
        int e10 = child.getGlobalSize().e();
        UIWeight uIWeight = (UIWeight) child.f79250n.c0(Component.e.UIWeight);
        if (uIWeight != null && uIWeight.isHierarchyActive() && uIWeight.getWeight() > 0.0f && this.f78179S > 0.0f && this.f78178R > 0) {
            float weight = uIWeight.getWeight();
            int round = Math.round(this.f78178R * (weight / this.f78179S));
            this.f78178R -= round;
            this.f78179S -= weight;
            if (round != 0) {
                f10 += round;
                child.setGlobalHeight(f10);
            }
        }
        this.f78177Q += f10 + this.spacing;
        this.f78180T++;
        if (e10 > this.f78181U) {
            this.f78181U = e10;
        }
        if (getUIRectComponent().isAutoSH()) {
            getUIRectComponent().setGlobalHeight((this.f78177Q - (this.f78180T > 0 ? this.spacing : 0)) + dp(getUIRectComponent().getPadding().h()));
        }
        if (getUIRectComponent().isAutoSW()) {
            getUIRectComponent().setGlobalWidth(this.f78181U + dp(getUIRectComponent().getPadding().d()));
        }
    }

    @Override
    public void onChildInfluence(UIController controller, UIRect child) {
        super.onChildInfluence(controller, child);
        if (getUIRectComponent() == null) {
            return;
        }
        int f10 = child.getGlobalSize().f();
        int e10 = child.getGlobalSize().e();
        UIWeight uIWeight = (UIWeight) child.f79250n.c0(Component.e.UIWeight);
        if (uIWeight != null && uIWeight.isHierarchyActive() && uIWeight.getWeight() > 0.0f && this.f78179S > 0.0f && this.f78178R > 0) {
            float weight = uIWeight.getWeight();
            int round = Math.round(this.f78178R * (weight / this.f78179S));
            this.f78178R -= round;
            this.f78179S -= weight;
            if (round != 0) {
                f10 += round;
                child.setGlobalHeight(f10);
            }
        }
        child.setGlobalPosition(child.getGlobalPosition().f(), child.getGlobalPosition().g() + this.f78176P, false);
        int i10 = this.f78176P;
        int i11 = this.spacing;
        this.f78176P = i10 + f10 + i11;
        this.f78177Q += f10 + i11;
        this.f78180T++;
        if (e10 > this.f78181U) {
            this.f78181U = e10;
        }
        if (getUIRectComponent().isAutoSH()) {
            getUIRectComponent().setGlobalHeight((this.f78177Q - (this.f78180T > 0 ? this.spacing : 0)) + dp(getUIRectComponent().getPadding().h()));
        }
        if (getUIRectComponent().isAutoSW()) {
            getUIRectComponent().setGlobalWidth(this.f78181U + dp(getUIRectComponent().getPadding().d()));
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78182V = run;
    }

    @InterfaceC15237a
    public void setSpacing(int spacing) {
        if (this.spacing == spacing) {
            return;
        }
        this.spacing = spacing;
        markLayoutDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public void startChildInfluence(UIController controller) {
        UIRect uIRect;
        this.f78176P = 0;
        this.f78177Q = 0;
        this.f78178R = 0;
        this.f78179S = 0.0f;
        this.f78181U = 0;
        this.f78180T = 0;
        UIRect uIRectComponent = getUIRectComponent();
        if (uIRectComponent == null || uIRectComponent.isAutoSH() || this.f79250n == null) {
            return;
        }
        int i10 = 0;
        int i11 = 0;
        float f10 = 0.0f;
        for (int i12 = 0; i12 < this.f79250n.D(); i12++) {
            GameObject C10 = this.f79250n.C(i12);
            if (C10 != null && C10.isEnabled() && (uIRect = (UIRect) C10.c0(Component.e.UIRect)) != null) {
                i10++;
                i11 += uIRect.isAutoSH() ? uIRect.getGlobalSize().f() : dp(uIRect.getLocalSize().f());
                UIWeight uIWeight = (UIWeight) C10.c0(Component.e.UIWeight);
                if (uIWeight != null && uIWeight.isHierarchyActive() && uIWeight.getWeight() > 0.0f) {
                    f10 += uIWeight.getWeight();
                }
            }
        }
        if (i10 == 0 || f10 <= 0.0f) {
            return;
        }
        int f11 = ((uIRectComponent.getGlobalSize().f() - dp(uIRectComponent.getPadding().h())) - i11) - (i10 * this.spacing);
        if (f11 > 0) {
            this.f78178R = f11;
            this.f78179S = f10;
        }
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78182V;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIVerticalLayout uIVerticalLayout = new JAVARuntime.UIVerticalLayout(this);
        this.f78182V = uIVerticalLayout;
        return uIVerticalLayout;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIVerticalLayout uIVerticalLayout = new UIVerticalLayout();
        uIVerticalLayout.spacing = this.spacing;
        return uIVerticalLayout;
    }
}

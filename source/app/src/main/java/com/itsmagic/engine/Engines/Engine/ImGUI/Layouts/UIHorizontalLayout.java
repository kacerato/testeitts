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

public class UIHorizontalLayout extends ImGuiLayoutComponent {

    public static final String f78164W = "UIHorizontalLayout";

    public static final Class f78165X = UIHorizontalLayout.class;

    public int f78166P;

    public int f78167Q;

    public int f78168R;

    public float f78169S;

    public int f78170T;

    public int f78171U;

    public Component f78172V;

    @Expose
    @f
    private int spacing;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIHorizontalLayout.f78165X;
        }

        @Override
        public String c() {
            return UIHorizontalLayout.f78164W;
        }

        @Override
        public String e() {
            return "UI/Layouts";
        }

        @Override
        public String h(boolean translate) {
            return "HorizontalLayout";
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(UIHorizontalLayout.this.spacing);
            sb2.append("");
            return new Variable("", sb2.toString());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIHorizontalLayout.this.setSpacing(variable.int_value);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIHorizontalLayout() {
        super(f78164W);
        this.spacing = 8;
        this.f78166P = 0;
        this.f78167Q = 0;
        this.f78168R = 0;
        this.f78169S = 0.0f;
        this.f78170T = 0;
        this.f78171U = 0;
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
        return "HorizontalLayout";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIHorizontalLayout;
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
        int e10 = child.getGlobalSize().e();
        int f10 = child.getGlobalSize().f();
        UIWeight uIWeight = (UIWeight) child.f79250n.c0(Component.e.UIWeight);
        if (uIWeight != null && uIWeight.isHierarchyActive() && uIWeight.getWeight() > 0.0f && this.f78169S > 0.0f && this.f78168R > 0) {
            float weight = uIWeight.getWeight();
            int round = Math.round(this.f78168R * (weight / this.f78169S));
            this.f78168R -= round;
            this.f78169S -= weight;
            if (round != 0) {
                e10 += round;
                child.setGlobalWidth(e10);
            }
        }
        int i10 = this.f78166P;
        int i11 = this.spacing;
        this.f78166P = i10 + e10 + i11;
        this.f78167Q += e10 + i11;
        this.f78170T++;
        if (f10 > this.f78171U) {
            this.f78171U = f10;
        }
        if (getUIRectComponent().isAutoSW()) {
            getUIRectComponent().setGlobalWidth((this.f78167Q - (this.f78170T > 0 ? this.spacing : 0)) + dp(getUIRectComponent().getPadding().d()));
        }
        if (getUIRectComponent().isAutoSH()) {
            getUIRectComponent().setGlobalHeight(this.f78171U + dp(getUIRectComponent().getPadding().h()));
        }
    }

    @Override
    public void onChildInfluence(UIController controller, UIRect child) {
        super.onChildInfluence(controller, child);
        if (getUIRectComponent() == null) {
            return;
        }
        int e10 = child.getGlobalSize().e();
        int f10 = child.getGlobalSize().f();
        UIWeight uIWeight = (UIWeight) child.f79250n.c0(Component.e.UIWeight);
        if (uIWeight != null && uIWeight.isHierarchyActive() && uIWeight.getWeight() > 0.0f && this.f78169S > 0.0f && this.f78168R > 0) {
            float weight = uIWeight.getWeight();
            int round = Math.round(this.f78168R * (weight / this.f78169S));
            this.f78168R -= round;
            this.f78169S -= weight;
            if (round != 0) {
                e10 += round;
                child.setGlobalWidth(e10);
            }
        }
        child.setGlobalPosition(child.getGlobalPosition().f() + this.f78166P, child.getGlobalPosition().g(), false);
        int i10 = this.f78166P;
        int i11 = this.spacing;
        this.f78166P = i10 + e10 + i11;
        this.f78167Q += e10 + i11;
        this.f78170T++;
        if (f10 > this.f78171U) {
            this.f78171U = f10;
        }
        if (getUIRectComponent().isAutoSW()) {
            getUIRectComponent().setGlobalWidth((this.f78167Q - (this.f78170T > 0 ? this.spacing : 0)) + dp(getUIRectComponent().getPadding().d()));
        }
        if (getUIRectComponent().isAutoSH()) {
            getUIRectComponent().setGlobalHeight(this.f78171U + dp(getUIRectComponent().getPadding().h()));
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78172V = run;
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
        this.f78166P = 0;
        this.f78167Q = 0;
        this.f78168R = 0;
        this.f78169S = 0.0f;
        this.f78171U = 0;
        this.f78170T = 0;
        UIRect uIRectComponent = getUIRectComponent();
        if (uIRectComponent == null || uIRectComponent.isAutoSW() || this.f79250n == null) {
            return;
        }
        int i10 = 0;
        int i11 = 0;
        float f10 = 0.0f;
        for (int i12 = 0; i12 < this.f79250n.D(); i12++) {
            GameObject C10 = this.f79250n.C(i12);
            if (C10 != null && C10.isEnabled() && (uIRect = (UIRect) C10.c0(Component.e.UIRect)) != null) {
                i10++;
                i11 += uIRect.isAutoSW() ? uIRect.getGlobalSize().e() : dp(uIRect.getLocalSize().e());
                UIWeight uIWeight = (UIWeight) C10.c0(Component.e.UIWeight);
                if (uIWeight != null && uIWeight.isHierarchyActive() && uIWeight.getWeight() > 0.0f) {
                    f10 += uIWeight.getWeight();
                }
            }
        }
        if (i10 == 0 || f10 <= 0.0f) {
            return;
        }
        int e10 = ((uIRectComponent.getGlobalSize().e() - dp(uIRectComponent.getPadding().d())) - i11) - (i10 * this.spacing);
        if (e10 > 0) {
            this.f78168R = e10;
            this.f78169S = f10;
        }
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78172V;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIHorizontalLayout uIHorizontalLayout = new JAVARuntime.UIHorizontalLayout(this);
        this.f78172V = uIHorizontalLayout;
        return uIHorizontalLayout;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIHorizontalLayout uIHorizontalLayout = new UIHorizontalLayout();
        uIHorizontalLayout.spacing = this.spacing;
        return uIHorizontalLayout;
    }
}

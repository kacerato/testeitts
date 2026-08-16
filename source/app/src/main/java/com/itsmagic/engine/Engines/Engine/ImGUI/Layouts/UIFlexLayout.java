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

public class UIFlexLayout extends ImGuiLayoutComponent {

    public static final String f78141X = "UIFlexLayout";

    public static final Class f78142Y = UIFlexLayout.class;

    public int f78143P;

    public int f78144Q;

    public int f78145R;

    public int f78146S;

    public int f78147T;

    public int f78148U;

    public int f78149V;

    public Component f78150W;

    @Expose
    @f
    private int spacing;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIFlexLayout.f78142Y;
        }

        @Override
        public String c() {
            return UIFlexLayout.f78141X;
        }

        @Override
        public String e() {
            return "UI/Layouts";
        }

        @Override
        public String h(boolean translate) {
            return "FlexLayout";
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(UIFlexLayout.this.spacing);
            sb2.append("");
            return new Variable("", sb2.toString());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIFlexLayout.this.setSpacing(variable.int_value);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIFlexLayout() {
        super(f78141X);
        this.spacing = 8;
        this.f78143P = 0;
        this.f78144Q = 0;
        this.f78145R = 0;
        this.f78146S = 0;
        this.f78147T = 0;
        this.f78148U = 0;
        this.f78149V = 1073741823;
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
        return "FlexLayout";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIFlexLayout;
    }

    @Override
    public int iconPriority() {
        return 4;
    }

    @Override
    public void onChildInfluence(UIController controller, UIRect child) {
        int i10;
        super.onChildInfluence(controller, child);
        int e10 = child.getGlobalSize().e();
        int f10 = child.getGlobalSize().f();
        if (this.f78143P > 0 && (i10 = this.f78149V) > 0) {
            int i11 = this.f78145R;
            if (i11 + e10 > i10) {
                this.f78148U = Math.max(this.f78148U, Math.max(0, i11 - this.spacing));
                this.f78145R = 0;
                this.f78146S += this.f78147T + this.spacing;
                this.f78147T = 0;
            }
        }
        child.setGlobalPosition(child.getGlobalPosition().f() + this.f78145R, child.getGlobalPosition().g() + this.f78146S, false);
        this.f78145R += e10 + this.spacing;
        this.f78147T = Math.max(this.f78147T, f10);
        int i12 = this.f78143P + 1;
        this.f78143P = i12;
        if (i12 >= this.f78144Q) {
            this.f78148U = Math.max(this.f78148U, Math.max(0, this.f78145R - this.spacing));
            int i13 = this.f78146S + this.f78147T;
            UIRect uIRectComponent = getUIRectComponent();
            if (uIRectComponent != null) {
                if (uIRectComponent.isAutoSW()) {
                    uIRectComponent.setGlobalWidth(this.f78148U + dp(uIRectComponent.getPadding().d()));
                }
                if (uIRectComponent.isAutoSH()) {
                    uIRectComponent.setGlobalHeight(i13 + dp(uIRectComponent.getPadding().h()));
                }
            }
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78150W = run;
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
        this.f78143P = 0;
        this.f78144Q = 0;
        this.f78145R = 0;
        this.f78146S = 0;
        this.f78147T = 0;
        this.f78148U = 0;
        this.f78149V = 1073741823;
        UIRect uIRectComponent = getUIRectComponent();
        if (this.f79250n == null || uIRectComponent == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f79250n.D(); i10++) {
            GameObject C10 = this.f79250n.C(i10);
            if (C10 != null && C10.isEnabled() && C10.c0(Component.e.UIRect) != null) {
                this.f78144Q++;
            }
        }
        if (uIRectComponent.isAutoSW()) {
            return;
        }
        int e10 = uIRectComponent.getGlobalSize().e() - dp(uIRectComponent.getPadding().d());
        this.f78149V = e10;
        if (e10 < 0) {
            this.f78149V = 0;
        }
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78150W;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIFlexLayout uIFlexLayout = new JAVARuntime.UIFlexLayout(this);
        this.f78150W = uIFlexLayout;
        return uIFlexLayout;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIFlexLayout uIFlexLayout = new UIFlexLayout();
        uIFlexLayout.spacing = this.spacing;
        return uIFlexLayout;
    }
}

package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import D5.h;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiLayoutComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import fb.d;
import java.util.List;
import s8.InterfaceC15237a;

public class UIFitParent extends ImGuiLayoutComponent {

    public static final String f78495Q = "UIFitParent";

    public static final Class f78496R = UIFitParent.class;

    public Component f78497P;

    @Expose
    private boolean f78498h;

    @Expose
    private boolean f78499w;

    public class a extends AbstractC13203c {

        public class C1316a implements d {
            public C1316a() {
            }

            @Override
            public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component a(GameObject destination) {
                return new UIFitParent(true, false);
            }

            @Override
            public String getTittle() {
                return "Fit width";
            }
        }

        public class b implements d {
            public b() {
            }

            @Override
            public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component a(GameObject destination) {
                return new UIFitParent(false, true);
            }

            @Override
            public String getTittle() {
                return "Fit height";
            }
        }

        @Override
        public Class b() {
            return UIFitParent.f78496R;
        }

        @Override
        public String c() {
            return UIFitParent.f78495Q;
        }

        @Override
        public String e() {
            return "UI/Fit";
        }

        @Override
        public String h(boolean translate) {
            return "Fit parent";
        }

        @Override
        public List<d> i() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C1316a());
            steppedArrayList.add(new b());
            return steppedArrayList;
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIFitParent.this.f78499w + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIFitParent.this.setFitWidth(variable.booolean_value.booleanValue());
            }
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIFitParent.this.f78498h + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIFitParent.this.setFitHeight(variable.booolean_value.booleanValue());
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIFitParent() {
        super(f78495Q);
        this.f78499w = true;
        this.f78498h = true;
    }

    @Override
    public int getIconResource() {
        return R.drawable.alignment_left_view;
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
        b bVar = new b();
        b.a aVar = b.a.SLBoolean;
        inspectorEntries.add(new C5.b(bVar, "Fit width", aVar));
        inspectorEntries.add(new C5.b(new c(), "Fit height", aVar));
        return inspectorEntries;
    }

    @Override
    public String getTitle() {
        return "FitParent";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIFitParent;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public boolean isFitHeight() {
        return this.f78498h;
    }

    @InterfaceC15237a
    public boolean isFitWidth() {
        return this.f78499w;
    }

    @Override
    public void onLayout(UIController controller) {
        float f10;
        float f11;
        int i10;
        int i11;
        float M10;
        float M11;
        if (getUIRectComponent() == null) {
            return;
        }
        UIRect uIRectComponent = super.getUIRectComponent();
        W9.c uIControllerScreenRect = super.getUIControllerScreenRect();
        UIRect parent = super.getUIRectComponent().getParent();
        Square5I parentPadding = uIRectComponent.getParentPadding();
        if (parentPadding == null) {
            return;
        }
        float c10 = uIControllerScreenRect.c();
        float b10 = uIControllerScreenRect.b();
        if (parent != null) {
            i10 = parent.getGlobalPosition().f();
            i11 = parent.getGlobalPosition().g();
            f11 = parent.getGlobalSize().e();
            f10 = parent.getGlobalSize().f();
        } else {
            f10 = b10;
            f11 = c10;
            i10 = 0;
            i11 = 0;
        }
        float e10 = uIRectComponent.getGlobalSize().e();
        float f12 = uIRectComponent.getGlobalSize().f();
        int dp = dp(parentPadding.e());
        int dp2 = dp(parentPadding.f());
        int dp3 = dp(parentPadding.g());
        int dp4 = dp(parentPadding.c());
        int dp5 = dp(uIRectComponent.getMargin().e()) + dp;
        int dp6 = dp(uIRectComponent.getMargin().f()) + dp2;
        int dp7 = dp(uIRectComponent.getMargin().g()) + dp3;
        int dp8 = dp(uIRectComponent.getMargin().c()) + dp4;
        float f13 = i10;
        float f14 = i11;
        boolean z10 = this.f78499w;
        if (z10 && z10) {
            M10 = i10 + dp5;
            uIRectComponent.setGlobalWidth((int) ((f11 - dp5) - dp6));
        } else {
            M10 = (!z10 && z10) ? (f13 + Nc.b.M(0.0f, f11 - e10)) - dp6 : i10 + dp5;
        }
        boolean z11 = this.f78498h;
        if (z11 && z11) {
            M11 = i11 + dp7;
            uIRectComponent.setGlobalHeight((int) ((f10 - dp7) - dp8));
        } else {
            M11 = (!z11 && z11) ? (f14 + Nc.b.M(0.0f, f10 - f12)) - dp8 : i11 + dp7;
        }
        uIRectComponent.setGlobalPosition((int) Nc.b.j1(M10), (int) Nc.b.j1(M11), false);
    }

    @InterfaceC15237a
    public void setFitHeight(boolean h10) {
        if (this.f78498h == h10) {
            return;
        }
        this.f78498h = h10;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setFitWidth(boolean w10) {
        if (this.f78499w == w10) {
            return;
        }
        this.f78499w = w10;
        markLayoutDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78497P = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78497P;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIFitParent uIFitParent = new JAVARuntime.UIFitParent(this);
        this.f78497P = uIFitParent;
        return uIFitParent;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIFitParent uIFitParent = new UIFitParent();
        uIFitParent.f78499w = this.f78499w;
        uIFitParent.f78498h = this.f78498h;
        return uIFitParent;
    }

    public UIFitParent(boolean w10, boolean h10) {
        super(f78495Q);
        this.f78499w = w10;
        this.f78498h = h10;
    }
}

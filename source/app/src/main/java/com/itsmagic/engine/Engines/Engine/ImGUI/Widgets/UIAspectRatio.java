package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import D5.h;
import F5.c;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiLayoutComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;

public class UIAspectRatio extends ImGuiLayoutComponent {

    public static final String f78396Q = "UIAspectRatio";

    public static final Class f78397R = UIAspectRatio.class;

    public Component f78398P;

    @Expose
    private d mode;

    @Expose
    @f
    private float proportion;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIAspectRatio.f78397R;
        }

        @Override
        public String c() {
            return UIAspectRatio.f78396Q;
        }

        @Override
        public String e() {
            return "UI/Utils";
        }

        @Override
        public String h(boolean translate) {
            return "AspectRatio";
        }
    }

    public class b extends c.n0<d> {
        public b() {
        }

        @Override
        public void a() {
            UIAspectRatio.this.reloadInspector();
        }

        @Override
        public void set(d value) {
            UIAspectRatio.this.setMode(value);
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIAspectRatio.this.proportion + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIAspectRatio.this.setProportion(variable.float_value);
            }
        }
    }

    public enum d {
        None,
        WidthControlsHeight,
        HeightControlsWidth
    }

    static {
        C13201a.b(new a());
    }

    public UIAspectRatio() {
        super(f78396Q);
        this.mode = d.HeightControlsWidth;
        this.proportion = 1.0f;
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_ratio;
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
        inspectorEntries.add(F5.c.i("Mode", d.class, this.mode, new b()));
        inspectorEntries.add(new C5.b(new c(), "Proportion", b.a.SLFloat).d(this.f79250n, this, "proportion", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        return inspectorEntries;
    }

    @Override
    public int getLayoutLayer() {
        return 0;
    }

    @InterfaceC15237a
    public d getMode() {
        return this.mode;
    }

    @InterfaceC15237a
    public float getProportion() {
        return this.proportion;
    }

    @Override
    public String getTitle() {
        return "AspectRatio";
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void onLayout(UIController controller) {
        UIRect uIRectComponent = super.getUIRectComponent();
        if (uIRectComponent == null) {
            return;
        }
        super.getUIControllerScreenRect();
        super.getUIRectComponent().getParent();
        if (uIRectComponent.getParentPadding() == null) {
            return;
        }
        int ordinal = this.mode.ordinal();
        if (ordinal == 1) {
            uIRectComponent.setGlobalHeight((int) (uIRectComponent.getGlobalSize().e() * this.proportion));
        } else {
            if (ordinal != 2) {
                return;
            }
            uIRectComponent.setGlobalWidth((int) (uIRectComponent.getGlobalSize().f() * this.proportion));
        }
    }

    @InterfaceC15237a
    public void setMode(d mode) {
        if (mode == null) {
            throw new NullPointerException("mode can't be null");
        }
        if (this.mode == mode) {
            return;
        }
        this.mode = mode;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setProportion(float proportion) {
        if (this.proportion == proportion) {
            return;
        }
        this.proportion = proportion;
        markLayoutDirty();
    }

    @Override
    public void setRuntime(Component run) {
        this.f78398P = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f78398P;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIAspectRatio uIAspectRatio = new JAVARuntime.UIAspectRatio(this);
        this.f78398P = uIAspectRatio;
        return uIAspectRatio;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIAspectRatio uIAspectRatio = new UIAspectRatio();
        uIAspectRatio.mode = this.mode;
        uIAspectRatio.proportion = this.proportion;
        return uIAspectRatio;
    }
}

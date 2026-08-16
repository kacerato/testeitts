package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.ImGui;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;

public class UIRectangularMask extends ImGuiRenderableComponent {

    public static final String f78684Q = "UIRectangularMask";

    public static final Class f78685R = UIRectangularMask.class;

    public Component f78686P;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIRectangularMask.f78685R;
        }

        @Override
        public String c() {
            return UIRectangularMask.f78684Q;
        }

        @Override
        public String e() {
            return "UI/Mask";
        }

        @Override
        public String h(boolean translate) {
            return "RectangularMask";
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIRectangularMask() {
        super(f78684Q);
    }

    @Override
    public void calculateInternalSizeEnd(UIController controller) {
    }

    @Override
    public void calculateInternalSizeStart(UIController controller) {
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_mask;
    }

    @Override
    public List<b> getInspectorEntries(Context context) {
        List<b> inspectorEntries = super.getInspectorEntries(context);
        return inspectorEntries == null ? new SteppedArrayList() : inspectorEntries;
    }

    @Override
    public String getTitle() {
        return "RectangularMask";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIRectangularMask;
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    @Override
    public void onGuiEnd(UIController controller) {
        ImGui.nativePopClipRect();
    }

    @Override
    public void onGuiStart(UIController controller) {
        if (getUIRectComponent() == null) {
            return;
        }
        UIRect uIRectComponent = getUIRectComponent();
        float f10 = getUIRectComponent().getGlobalPosition().f();
        float g10 = getUIRectComponent().getGlobalPosition().g();
        float e10 = getUIRectComponent().getGlobalSize().e();
        float dp = f10 + dp(getUIRectComponent().getPadding().e());
        float dp2 = g10 + dp(getUIRectComponent().getPadding().g());
        float f11 = getUIRectComponent().getGlobalSize().f() - dp(getUIRectComponent().getPadding().h());
        uIRectComponent.getScreenRect();
        ImGui.nativePushClipRect(dp, dp2, (e10 - dp(getUIRectComponent().getPadding().d())) + dp, f11 + dp2, true);
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78686P = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78686P;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIRectangularMask uIRectangularMask = new JAVARuntime.UIRectangularMask(this);
        this.f78686P = uIRectangularMask;
        return uIRectangularMask;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        return new UIRectangularMask();
    }
}

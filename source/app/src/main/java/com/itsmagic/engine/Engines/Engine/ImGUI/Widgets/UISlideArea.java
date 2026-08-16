package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import JAVARuntime.Component;
import K8.d;
import V9.r;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;
import tc.h;

public class UISlideArea extends ImGuiRenderableComponent {

    public static final String f78757V = "UISlideArea";

    public static final Class f78758W = UISlideArea.class;

    public static final float f78759X = 5.0f;

    public final Vector2 f78760P;

    public final Vector2 f78761Q;

    public h f78762R;

    public boolean f78763S;

    public UIAxisEventListener f78764T;

    public Component f78765U;

    @Expose
    @f
    private float deadzone;

    @Expose
    @f
    private float intensityMultiplier;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UISlideArea.f78758W;
        }

        @Override
        public String c() {
            return UISlideArea.f78757V;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "SlideArea";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UISlideArea.this.deadzone + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UISlideArea.this.deadzone = Nc.b.E(0.0f, variable.float_value, 0.1f);
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UISlideArea.this.intensityMultiplier + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UISlideArea.this.intensityMultiplier = Nc.b.G(variable.float_value);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UISlideArea() {
        super(f78757V);
        this.deadzone = 0.01f;
        this.intensityMultiplier = 15.0f;
        this.f78760P = new Vector2();
        this.f78761Q = new Vector2();
    }

    private UIAxisEventListener getAxisEventListener() {
        UIAxisEventListener uIAxisEventListener = this.f78764T;
        if (uIAxisEventListener != null && uIAxisEventListener.f79250n != this.f79250n) {
            this.f78764T = null;
        }
        UIAxisEventListener uIAxisEventListener2 = this.f78764T;
        if (uIAxisEventListener2 == null || uIAxisEventListener2.f79250n == null) {
            GameObject gameObject = this.f79250n;
            Component.e eVar = Component.e.UIAxisEventListener;
            if (gameObject.c0(eVar) == null) {
                this.f79250n.r(new UIAxisEventListener());
            }
            UIAxisEventListener uIAxisEventListener3 = this.f78764T;
            if (uIAxisEventListener3 == null || uIAxisEventListener3.f79250n == null) {
                this.f78764T = (UIAxisEventListener) this.f79250n.c0(eVar);
            }
        }
        return this.f78764T;
    }

    private float getTouchPosXOnUI(h touch) {
        if (getUIControllerComponent() == null) {
            return 0.0f;
        }
        return touch instanceof r ? touch.g().getX() : r0.getTouchPos(touch).e();
    }

    private float getTouchPosYOnUI(h touch) {
        if (getUIControllerComponent() == null) {
            return 0.0f;
        }
        return touch instanceof r ? touch.g().getY() : r0.getTouchPos(touch).f();
    }

    @Override
    public void afterTouchUpdate() {
        super.afterTouchUpdate();
        if (getUIRectComponent() == null) {
            return;
        }
        float S02 = Nc.b.S0(getUIRectComponent().getGlobalSize().e(), getUIRectComponent().getGlobalSize().f());
        UITouchTrigger touchTrigger = getTouchTrigger();
        if (touchTrigger == null || touchTrigger.getSelectedTouchCount() >= 2) {
            this.f78762R = null;
            this.f78763S = false;
            this.f78760P.w0(0.0f, 0.0f);
            if (this.f79250n != null) {
                getAxisEventListener().setValue(this.f78760P);
                return;
            }
            return;
        }
        h selectedTouch = getTouchTrigger() != null ? getTouchTrigger().getSelectedTouch() : null;
        if (this.f79250n == null || selectedTouch == null || !getTouchTrigger().isPressed()) {
            this.f78762R = null;
            this.f78763S = false;
            this.f78760P.w0(0.0f, 0.0f);
            if (this.f79250n != null) {
                getAxisEventListener().setValue(this.f78760P);
                return;
            }
            return;
        }
        if (this.f78762R != selectedTouch) {
            this.f78762R = selectedTouch;
            this.f78763S = false;
        }
        float touchPosXOnUI = getTouchPosXOnUI(selectedTouch);
        float touchPosYOnUI = getTouchPosYOnUI(selectedTouch);
        if (this.f78763S) {
            this.f78760P.f79838x = touchPosXOnUI - this.f78761Q.getX();
            this.f78760P.f79839y = touchPosYOnUI - this.f78761Q.getY();
            this.f78761Q.w0(touchPosXOnUI, touchPosYOnUI);
        } else {
            this.f78763S = true;
            this.f78761Q.w0(touchPosXOnUI, touchPosYOnUI);
            this.f78760P.w0(0.0f, 0.0f);
        }
        if (selectedTouch.f117309e) {
            if (S02 > 0.0f) {
                this.f78760P.f79838x /= S02;
            } else {
                this.f78760P.f79838x = 0.0f;
            }
            if (S02 > 0.0f) {
                this.f78760P.f79839y /= S02;
            } else {
                this.f78760P.f79839y = 0.0f;
            }
            float e10 = d.e();
            if (e10 > 0.0f) {
                Vector2 vector2 = this.f78760P;
                vector2.f79838x /= e10;
                vector2.f79839y /= e10;
            } else {
                this.f78760P.w0(0.0f, 0.0f);
            }
            Vector2 vector22 = this.f78760P;
            vector22.f79838x = Nc.b.E(-5.0f, vector22.f79838x, 5.0f);
            Vector2 vector23 = this.f78760P;
            vector23.f79839y = Nc.b.E(-5.0f, vector23.f79839y, 5.0f);
            Vector2 vector24 = this.f78760P;
            vector24.f79838x = Nc.b.j0(vector24.f79838x, this.deadzone);
            Vector2 vector25 = this.f78760P;
            vector25.f79839y = Nc.b.j0(vector25.f79839y, this.deadzone);
            this.f78760P.Z(this.intensityMultiplier);
        } else {
            this.f78760P.w0(0.0f, 0.0f);
        }
        if (this.f79250n != null) {
            getAxisEventListener().setValue(this.f78760P);
        }
    }

    @Override
    public void calculateInternalSizeEnd(UIController controller) {
    }

    @Override
    public void calculateInternalSizeStart(UIController controller) {
        if (getUIRectComponent() == null) {
            return;
        }
        setInternalWidgetRect(0, 0, r6, r7, r6, r7);
    }

    @InterfaceC15237a
    public float getDeadzone() {
        return this.deadzone;
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_eventlistener;
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
        b.a aVar = b.a.SLFloat;
        inspectorEntries.add(new C5.b(bVar, "Deadzone", aVar));
        inspectorEntries.add(new C5.b(new c(), "Intensity", aVar));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public float getIntensityMultiplier() {
        return this.intensityMultiplier;
    }

    @Override
    public String getTitle() {
        return "SlideArea";
    }

    @Override
    public Component.e getType() {
        return Component.e.UISlideArea;
    }

    @InterfaceC15237a
    public Vector2 getValue() {
        return this.f78760P;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public void onGuiEnd(UIController controller) {
    }

    @Override
    public void onGuiStart(UIController controller) {
    }

    @InterfaceC15237a
    public void setDeadzone(float deadzone) {
        float E10 = Nc.b.E(0.0f, deadzone, 0.1f);
        if (this.deadzone == E10) {
            return;
        }
        this.deadzone = E10;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setIntensityMultiplier(float intensityMultiplier) {
        float G10 = Nc.b.G(intensityMultiplier);
        if (this.intensityMultiplier == G10) {
            return;
        }
        this.intensityMultiplier = G10;
        requestUIDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78765U = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78765U;
        if (component != null) {
            return component;
        }
        JAVARuntime.UISlideArea uISlideArea = new JAVARuntime.UISlideArea(this);
        this.f78765U = uISlideArea;
        return uISlideArea;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UISlideArea uISlideArea = new UISlideArea();
        uISlideArea.deadzone = this.deadzone;
        uISlideArea.intensityMultiplier = this.intensityMultiplier;
        return uISlideArea;
    }
}

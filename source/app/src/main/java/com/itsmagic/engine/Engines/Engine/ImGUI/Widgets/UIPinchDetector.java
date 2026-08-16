package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import JAVARuntime.Component;
import K8.c;
import K8.d;
import Nc.b;
import V9.r;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;
import tc.h;

public class UIPinchDetector extends ImGuiRenderableComponent {

    public static final float f78625F1 = 5.0f;

    public static final String f78626H1 = "UIPinchDetector";

    public static final Class f78627L1 = UIPinchDetector.class;

    public h f78628D0;

    public boolean f78629P;

    public float f78630Q;

    public boolean f78631R;

    public final Vector2 f78632S;

    public final Vector2 f78633T;

    public final Vector2 f78634U;

    public final Vector2 f78635V;

    public final Vector2 f78636W;

    public final Vector2 f78637X;

    public final Vector2 f78638Y;

    public final Vector2 f78639Z;

    public boolean f78640b1;

    public boolean f78641i1;

    public float f78642m1;

    public final Vector2 f78643q0;

    public float f78644q1;

    public h f78645v0;

    public float f78646v1;

    public Component f78647y1;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIPinchDetector.f78627L1;
        }

        @Override
        public String c() {
            return UIPinchDetector.f78626H1;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "PinchDetector";
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIPinchDetector() {
        super(f78626H1);
        this.f78632S = new Vector2();
        this.f78633T = new Vector2();
        this.f78634U = new Vector2();
        this.f78635V = new Vector2();
        this.f78636W = new Vector2();
        this.f78637X = new Vector2();
        this.f78638Y = new Vector2();
        this.f78639Z = new Vector2();
        this.f78643q0 = new Vector2();
        this.f78642m1 = 0.01f;
        this.f78644q1 = 15.0f;
    }

    private void calculate(h t02, h t12) {
        t02.h(this.f78633T);
        t12.h(this.f78634U);
        calculateTouchSlide(t02, true, this.f78637X, this.f78635V, this.f78639Z);
        calculateTouchSlide(t12, false, this.f78638Y, this.f78636W, this.f78643q0);
        this.f78632S.B0((this.f78637X.getX() + this.f78638Y.getX()) / 2.0f);
        this.f78632S.C0((this.f78637X.getY() + this.f78638Y.getY()) / 2.0f);
        Vector2 vector2 = this.f78633T;
        vector2.B0(vector2.getX() / c.b());
        Vector2 vector22 = this.f78633T;
        vector22.C0(vector22.getY() / c.a());
        Vector2 vector23 = this.f78634U;
        vector23.B0(vector23.getX() / c.b());
        Vector2 vector24 = this.f78634U;
        vector24.C0(vector24.getY() / c.a());
        float distance = this.f78633T.distance(this.f78634U);
        float f10 = this.f78646v1;
        if (f10 > 0.0f) {
            this.f78630Q = distance - f10;
        } else {
            this.f78630Q = 0.0f;
        }
        this.f78646v1 = distance;
    }

    private void calculateTouchSlide(h touch, boolean firstTouch, Vector2 axisValue, Vector2 currentPos, Vector2 lastPos) {
        float touchPosXOnUI = getTouchPosXOnUI(touch);
        float touchPosYOnUI = getTouchPosYOnUI(touch);
        float S02 = b.S0(getUIRectComponent().getGlobalSize().e(), getUIRectComponent().getGlobalSize().f());
        if (firstTouch) {
            if (this.f78645v0 != touch) {
                this.f78645v0 = touch;
                this.f78640b1 = false;
            }
            currentPos.w0(touchPosXOnUI, touchPosYOnUI);
            if (!this.f78640b1) {
                this.f78640b1 = true;
                lastPos.w0(touchPosXOnUI, touchPosYOnUI);
                axisValue.w0(0.0f, 0.0f);
                return;
            } else {
                axisValue.B0(touchPosXOnUI - lastPos.getX());
                axisValue.C0(touchPosYOnUI - lastPos.getY());
                lastPos.w0(touchPosXOnUI, touchPosYOnUI);
            }
        } else {
            if (this.f78628D0 != touch) {
                this.f78628D0 = touch;
                this.f78641i1 = false;
            }
            currentPos.w0(touchPosXOnUI, touchPosYOnUI);
            if (!this.f78641i1) {
                this.f78641i1 = true;
                lastPos.w0(touchPosXOnUI, touchPosYOnUI);
                axisValue.w0(0.0f, 0.0f);
                return;
            } else {
                axisValue.B0(touchPosXOnUI - lastPos.getX());
                axisValue.C0(touchPosYOnUI - lastPos.getY());
                lastPos.w0(touchPosXOnUI, touchPosYOnUI);
            }
        }
        if (!touch.s()) {
            axisValue.w0(0.0f, 0.0f);
            return;
        }
        if (S02 <= 0.0f) {
            axisValue.w0(0.0f, 0.0f);
            return;
        }
        axisValue.f79838x /= S02;
        axisValue.f79839y /= S02;
        float e10 = d.e();
        if (e10 <= 0.0f) {
            axisValue.w0(0.0f, 0.0f);
            return;
        }
        float f10 = axisValue.f79838x / e10;
        axisValue.f79838x = f10;
        axisValue.f79839y /= e10;
        axisValue.f79838x = b.E(-5.0f, f10, 5.0f);
        axisValue.f79839y = b.E(-5.0f, axisValue.f79839y, 5.0f);
        axisValue.f79838x = b.j0(axisValue.f79838x, this.f78642m1);
        axisValue.f79839y = b.j0(axisValue.f79839y, this.f78642m1);
        axisValue.Z(this.f78644q1);
    }

    private h getTouchAt(int index) {
        UITouchTrigger touchTrigger = getTouchTrigger();
        if (touchTrigger == null) {
            return null;
        }
        int selectedTouchCount = touchTrigger.getSelectedTouchCount();
        int i10 = 0;
        for (int i11 = 0; i11 < selectedTouchCount; i11++) {
            h selectedTouchAt = touchTrigger.getSelectedTouchAt(i11);
            if (selectedTouchAt != null) {
                if (i10 == index) {
                    return selectedTouchAt;
                }
                i10++;
            }
        }
        return null;
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

    private void resetPinch() {
        this.f78629P = false;
        this.f78631R = false;
        this.f78630Q = 0.0f;
        this.f78632S.w0(0.0f, 0.0f);
        this.f78645v0 = null;
        this.f78628D0 = null;
        this.f78640b1 = false;
        this.f78641i1 = false;
        this.f78646v1 = 0.0f;
    }

    @Override
    public void afterTouchUpdate() {
        super.afterTouchUpdate();
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
        return this.f78642m1;
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_eventlistener;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        List<C5.b> inspectorEntries = super.getInspectorEntries(context);
        return inspectorEntries == null ? new SteppedArrayList() : inspectorEntries;
    }

    @InterfaceC15237a
    public float getIntensityMultiplier() {
        return this.f78644q1;
    }

    @InterfaceC15237a
    public Vector2 getSlide() {
        return this.f78632S;
    }

    @Override
    public String getTitle() {
        return "PinchDetector";
    }

    @InterfaceC15237a
    public float getValue() {
        return this.f78630Q;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isPinchingIn() {
        return this.f78631R;
    }

    @Override
    public void onGuiEnd(UIController controller) {
    }

    @Override
    public void onGuiStart(UIController controller) {
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (getUIRectComponent() == null || getUIControllerComponent() == null) {
            return;
        }
        UITouchTrigger touchTrigger = getTouchTrigger();
        if (touchTrigger == null) {
            resetPinch();
            return;
        }
        touchTrigger.setMultiTouch(true);
        if (!touchTrigger.isPressed() || touchTrigger.getSelectedTouchCount() < 2) {
            resetPinch();
            return;
        }
        h touchAt = getTouchAt(0);
        h touchAt2 = getTouchAt(1);
        if (touchAt == null || touchAt2 == null || !touchAt.q() || !touchAt2.q() || touchAt == touchAt2) {
            resetPinch();
            return;
        }
        if (!touchAt.s() || !touchAt2.s()) {
            resetPinch();
            return;
        }
        calculate(touchAt, touchAt2);
        this.f78629P = true;
        this.f78631R = this.f78630Q != 0.0f;
    }

    @InterfaceC15237a
    public void setDeadzone(float deadzone) {
        this.f78642m1 = b.E(0.0f, deadzone, 0.1f);
    }

    @InterfaceC15237a
    public void setIntensityMultiplier(float intensityMultiplier) {
        this.f78644q1 = b.G(intensityMultiplier);
    }

    @Override
    public void setRuntime(Component run) {
        this.f78647y1 = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f78647y1;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIPinchDetector uIPinchDetector = new JAVARuntime.UIPinchDetector(this);
        this.f78647y1 = uIPinchDetector;
        return uIPinchDetector;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        return new UIPinchDetector();
    }
}

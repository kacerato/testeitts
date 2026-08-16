package com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents;

import W9.c;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UITouchTrigger;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;

public abstract class ImGuiLayoutComponent extends ImGuiBaseComponent {

    public UIRect f77998L;

    public final c f77999M;

    public final c f78000N;

    public UITouchTrigger f78001O;

    public ImGuiLayoutComponent(String serializedComponentType) {
        super(serializedComponentType);
        this.f77999M = new c();
        this.f78000N = new c();
    }

    public int getLayoutDependencyStamp() {
        return 0;
    }

    public int getLayoutLayer() {
        return 0;
    }

    public UITouchTrigger getTouchTrigger() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return null;
        }
        UITouchTrigger uITouchTrigger = this.f78001O;
        if (uITouchTrigger != null && uITouchTrigger.f79250n != gameObject) {
            this.f78001O = null;
        }
        UITouchTrigger uITouchTrigger2 = this.f78001O;
        if (uITouchTrigger2 == null || uITouchTrigger2.f79250n == null) {
            Component.e eVar = Component.e.UITouchTrigger;
            if (gameObject.c0(eVar) == null) {
                UITouchTrigger uITouchTrigger3 = new UITouchTrigger();
                this.f78001O = uITouchTrigger3;
                this.f79250n.r(uITouchTrigger3);
            }
            UITouchTrigger uITouchTrigger4 = this.f78001O;
            if (uITouchTrigger4 == null || uITouchTrigger4.f79250n == null) {
                this.f78001O = (UITouchTrigger) this.f79250n.c0(eVar);
            }
        }
        return this.f78001O;
    }

    public final void internalOnLayout(UIController controller) {
        this.f78000N.h(0, 0, controller.getFrameBufferW(), controller.getFrameBufferH(), controller.getFrameBufferW(), controller.getFrameBufferH());
    }

    public void measureChildInfluence(UIController controller, UIRect child) {
    }

    public void onChildInfluence(UIController controller, UIRect child) {
    }

    public void onLayout(UIController controller) {
    }

    public void postRender(UIController controller) {
    }

    public void setScreenRect(c r10) {
        this.f77999M.i(r10);
    }

    public void startChildInfluence(UIController controller) {
    }

    public void setScreenRect(int x10, int y10, int xe2, int ye2, int w10, int h10) {
        this.f77999M.h(x10, y10, xe2, ye2, w10, h10);
    }
}

package com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents;

import C5.b;
import D5.h;
import JAVARuntime.Runnable;
import W9.c;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.UIImageHandler;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.util.IdentityHashMap;
import java.util.LinkedList;
import java.util.List;
import ub.p;

public abstract class ImGuiBaseComponent extends ImGuiComponent {

    public static final c f77988K = new c();

    public UIRect f77989E;

    public UIController f77990F;

    public final c f77991G;

    public final Runnable f77992H;

    public transient IdentityHashMap<Object, Boolean> f77993I;

    public boolean f77994J;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            ImGuiBaseComponent.this.requestUIDirty();
        }
    }

    public class b implements h {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                ImGuiBaseComponent.this.f77989E = new UIRect();
                ImGuiBaseComponent imGuiBaseComponent = ImGuiBaseComponent.this;
                imGuiBaseComponent.f79250n.r(imGuiBaseComponent.f77989E);
                ImGuiBaseComponent.this.reloadInspector();
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            K8.a.I(new a());
        }
    }

    public ImGuiBaseComponent(String serializedComponentType) {
        super(serializedComponentType);
        this.f77991G = new c();
        this.f77992H = new a();
        this.f77994J = false;
    }

    public void afterTouchUpdate() {
    }

    public final int dp(int v10) {
        if (getUIRectComponent() == null) {
            return 0;
        }
        return getUIRectComponent().getUIController().dpToPx(v10);
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context != null && this.f77994J && getUIRectComponent() == null) {
            linkedList.add(new C5.b("Missing rect component", 12, R.color.theme_accent));
            linkedList.add(new C5.b(new b(), "Add rect", b.a.Button));
        }
        return linkedList;
    }

    public final c getInternalWidgetRect() {
        return this.f77991G;
    }

    public Runnable getRequestUIDirtyRunnable() {
        return this.f77992H;
    }

    public final UIController getUIControllerComponent() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return null;
        }
        UIController uIController = this.f77990F;
        if (uIController == null || uIController.f79250n == null) {
            this.f77990F = (UIController) gameObject.i0(UIController.class);
        }
        return this.f77990F;
    }

    public final c getUIControllerScreenRect() {
        UIController uIControllerComponent = getUIControllerComponent();
        return uIControllerComponent == null ? f77988K : uIControllerComponent.getControllerScreenRect();
    }

    public final UIRect getUIRectComponent() {
        this.f77994J = true;
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return null;
        }
        UIRect uIRect = this.f77989E;
        if (uIRect == null || uIRect.f79250n == null) {
            this.f77989E = (UIRect) gameObject.c0(Component.e.UIRect);
        }
        return this.f77989E;
    }

    public void markLayoutDirty() {
        if (!P9.a.k()) {
            requestUIDirty();
        }
        UIRect uIRectComponent = getUIRectComponent();
        if (uIRectComponent != null) {
            uIRectComponent.markLayoutDirty();
        }
        P9.a.v();
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f77989E = null;
        this.f77990F = null;
        requestUIDirty();
        markLayoutDirty();
    }

    @Override
    public void onDetach() {
        requestUIDirty();
        markLayoutDirty();
        this.f77989E = null;
        this.f77990F = null;
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        requestUIDirty();
        markLayoutDirty();
    }

    public void onUIDirtyCalled() {
    }

    public final p or(p a10, p b10) {
        return a10 != null ? a10 : b10;
    }

    public final boolean or9p(UIImageHandler handler, p b10) {
        return handler.n() != null ? handler.o() : b10.B();
    }

    public final void requestUIDirty() {
        UIController uIControllerComponent = getUIControllerComponent();
        if (uIControllerComponent != null && !P9.a.k()) {
            uIControllerComponent.markUIDirty();
        }
        onUIDirtyCalled();
    }

    public void setInternalWidgetRect(c r10) {
        this.f77991G.i(r10);
    }

    public void setInternalWidgetRectFromSize(float w10, float h10) {
        if (getUIRectComponent() == null) {
            return;
        }
        float f10 = getUIRectComponent().getGlobalPosition().f();
        float g10 = getUIRectComponent().getGlobalPosition().g();
        setInternalWidgetRect((int) f10, (int) g10, (int) (f10 + w10), (int) (g10 + h10), (int) w10, (int) h10);
    }

    public void setInternalWidgetRect(int x10, int y10, int xe2, int ye2, int w10, int h10) {
        this.f77991G.h(x10, y10, xe2, ye2, w10, h10);
    }

    public final float dp(float v10) {
        if (getUIRectComponent() == null) {
            return 0.0f;
        }
        return getUIRectComponent().getUIController().dpToPx(v10);
    }
}

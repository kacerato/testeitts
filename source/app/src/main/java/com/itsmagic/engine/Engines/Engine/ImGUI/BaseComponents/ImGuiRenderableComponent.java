package com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents;

import C5.b;
import D5.h;
import JAVARuntime.Runnable;
import W9.c;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UITouchTrigger;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.util.List;

public abstract class ImGuiRenderableComponent extends ImGuiBaseComponent {

    public boolean f78002L;

    public final c f78003M;

    public UITouchTrigger f78004N;

    public boolean f78005O;

    public class a implements h {

        public class C1305a implements Runnable {
            public C1305a() {
            }

            @Override
            public void run() {
                ImGuiRenderableComponent.this.f78004N = new UITouchTrigger();
                ImGuiRenderableComponent imGuiRenderableComponent = ImGuiRenderableComponent.this;
                imGuiRenderableComponent.f79250n.r(imGuiRenderableComponent.f78004N);
                ImGuiRenderableComponent.this.reloadInspector();
            }
        }

        public a() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            K8.a.I(new C1305a());
        }
    }

    public ImGuiRenderableComponent(String serializedComponentType) {
        super(serializedComponentType);
        this.f78002L = true;
        this.f78003M = new c();
        this.f78005O = false;
    }

    public abstract void calculateInternalSizeEnd(UIController controller);

    public abstract void calculateInternalSizeStart(UIController controller);

    @Override
    public List<b> getInspectorEntries(Context context) {
        List<b> inspectorEntries = super.getInspectorEntries(context);
        if (inspectorEntries == null) {
            inspectorEntries = new SteppedArrayList<>();
        }
        if (context != null && this.f78005O && getTouchTrigger() == null) {
            inspectorEntries.add(new b("Missing touch trigger component", 12, R.color.theme_accent));
            inspectorEntries.add(new b(new a(), "Add touch trigger", b.a.Button));
        }
        return inspectorEntries;
    }

    public UITouchTrigger getTouchTrigger() {
        this.f78005O = true;
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return null;
        }
        UITouchTrigger uITouchTrigger = this.f78004N;
        if (uITouchTrigger != null && uITouchTrigger.f79250n != gameObject) {
            this.f78004N = null;
        }
        UITouchTrigger uITouchTrigger2 = this.f78004N;
        if (uITouchTrigger2 == null || uITouchTrigger2.f79250n == null) {
            this.f78004N = (UITouchTrigger) gameObject.c0(Component.e.UITouchTrigger);
        }
        return this.f78004N;
    }

    public boolean isAllowRectGizmo() {
        return this.f78002L;
    }

    public abstract void onGuiEnd(UIController controller);

    public abstract void onGuiStart(UIController controller);

    public void onSelectedTouchChanged(tc.h touch) {
    }

    public void setAllowRectGizmo(boolean allowRectGizmo) {
        this.f78002L = allowRectGizmo;
    }
}

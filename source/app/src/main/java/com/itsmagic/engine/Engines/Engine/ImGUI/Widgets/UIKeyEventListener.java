package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import D5.h;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Input.Key;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import rc.C15169a;
import s8.InterfaceC15237a;

public class UIKeyEventListener extends ImGuiRenderableComponent {

    public static final String f78620R = "UIKeyEventListener";

    public static final Class f78621S = UIKeyEventListener.class;

    public Key f78622P;

    public Component f78623Q;

    @Expose
    private String keyName;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIKeyEventListener.f78621S;
        }

        @Override
        public String c() {
            return UIKeyEventListener.f78620R;
        }

        @Override
        public String e() {
            return "UI/Utils";
        }

        @Override
        public String h(boolean translate) {
            return "KeyEventListener";
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return UIKeyEventListener.this.keyName != null ? new Variable("", UIKeyEventListener.this.keyName) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIKeyEventListener.this.keyName = variable.str_value;
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIKeyEventListener() {
        super(f78620R);
        this.keyName = "KeyName";
    }

    @Override
    public void afterTouchUpdate() {
        super.afterTouchUpdate();
        Key G10 = C15169a.G(this.keyName);
        this.f78622P = G10;
        if (G10 != null) {
            if (getTouchTrigger().isPressed()) {
                G10.a(this);
            } else {
                G10.i(this);
            }
        }
    }

    @Override
    public boolean allowOncePerObject() {
        return true;
    }

    @Override
    public void calculateInternalSizeEnd(UIController controller) {
    }

    @Override
    public void calculateInternalSizeStart(UIController controller) {
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
        inspectorEntries.add(new C5.b(new b(), "Key name", b.a.SLString, context));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public String getKeyName() {
        return this.keyName;
    }

    @Override
    public String getTitle() {
        return "KeyEventListener";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIKeyEventListener;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        Key key = this.f78622P;
        if (key != null) {
            key.i(this);
        }
    }

    @Override
    public void onGuiEnd(UIController controller) {
    }

    @Override
    public void onGuiStart(UIController controller) {
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        Key key;
        super.onHierarchyActiveChanged(enabled);
        if (enabled || (key = this.f78622P) == null) {
            return;
        }
        key.i(this);
    }

    @InterfaceC15237a
    public void setKeyName(String keyName) {
        String str = this.keyName;
        if (str == null) {
            if (keyName == null) {
                return;
            }
        } else if (str.equals(keyName)) {
            return;
        }
        this.keyName = keyName;
        requestUIDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78623Q = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78623Q;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIKeyEventListener uIKeyEventListener = new JAVARuntime.UIKeyEventListener(this);
        this.f78623Q = uIKeyEventListener;
        return uIKeyEventListener;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIKeyEventListener uIKeyEventListener = new UIKeyEventListener();
        uIKeyEventListener.keyName = this.keyName;
        return uIKeyEventListener;
    }
}

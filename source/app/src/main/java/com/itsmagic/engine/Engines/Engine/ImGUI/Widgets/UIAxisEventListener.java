package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import D5.h;
import JAVARuntime.Component;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Input.Axis;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import rc.C15169a;
import s8.InterfaceC15237a;

public class UIAxisEventListener extends ImGuiRenderableComponent {

    public static final String f78401S = "UIAxisEventListener";

    public static final Class f78402T = UIAxisEventListener.class;

    public final Vector2 f78403P;

    public Axis f78404Q;

    public Component f78405R;

    @Expose
    private String axisName;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIAxisEventListener.f78402T;
        }

        @Override
        public String c() {
            return UIAxisEventListener.f78401S;
        }

        @Override
        public String e() {
            return "UI/Utils";
        }

        @Override
        public String h(boolean translate) {
            return "AxisEventListener";
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return UIAxisEventListener.this.axisName != null ? new Variable("", UIAxisEventListener.this.axisName) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIAxisEventListener.this.axisName = variable.str_value;
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIAxisEventListener() {
        super(f78401S);
        this.axisName = "axisName";
        this.f78403P = new Vector2();
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

    @InterfaceC15237a
    public String getAxisName() {
        return this.axisName;
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
        inspectorEntries.add(new C5.b(new b(), "Axis name", b.a.SLString, context));
        return inspectorEntries;
    }

    @Override
    public String getTitle() {
        return "AxisEventListener";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIAxisEventListener;
    }

    @InterfaceC15237a
    public Vector2 getValue() {
        return this.f78403P.clone();
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        Axis axis = this.f78404Q;
        if (axis != null) {
            axis.e(this);
            this.f78404Q = null;
        }
    }

    @Override
    public void onGuiEnd(UIController controller) {
    }

    @Override
    public void onGuiStart(UIController controller) {
        String str;
        String str2 = this.axisName;
        if (str2 == null || str2.isEmpty()) {
            Axis axis = this.f78404Q;
            if (axis != null) {
                axis.e(this);
                this.f78404Q = null;
                return;
            }
            return;
        }
        if (this.f78404Q != null && (str = this.axisName) != null && !str.isEmpty() && !this.f78404Q.c(this.axisName)) {
            this.f78404Q.e(this);
            this.f78404Q = null;
        }
        Axis D10 = C15169a.D(this.axisName);
        this.f78404Q = D10;
        if (D10 != null) {
            D10.a(this, this.f78403P);
        }
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        Axis axis;
        super.onHierarchyActiveChanged(enabled);
        if (enabled || (axis = this.f78404Q) == null) {
            return;
        }
        axis.e(this);
        this.f78404Q = null;
    }

    @InterfaceC15237a
    public void setAxisName(String axisName) {
        String str = this.axisName;
        if (str == null) {
            if (axisName == null) {
                return;
            }
        } else if (str.equals(axisName)) {
            return;
        }
        this.axisName = axisName;
        requestUIDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78405R = run;
    }

    @InterfaceC15237a
    public void setValue(float x10, float y10) {
        if (this.f78403P.getX() == x10 && this.f78403P.getY() == y10) {
            return;
        }
        this.f78403P.w0(x10, y10);
        requestUIDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78405R;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIAxisEventListener uIAxisEventListener = new JAVARuntime.UIAxisEventListener(this);
        this.f78405R = uIAxisEventListener;
        return uIAxisEventListener;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIAxisEventListener uIAxisEventListener = new UIAxisEventListener();
        uIAxisEventListener.axisName = this.axisName;
        return uIAxisEventListener;
    }

    @InterfaceC15237a
    public void setValue(Vector2 value) {
        if (value == null || !this.f78403P.equally(value)) {
            this.f78403P.x0(value);
            requestUIDirty();
        }
    }
}

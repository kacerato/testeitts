package com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers;

import C5.b;
import D5.h;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Input.Axis;
import com.itsmagic.engine.Engines.Utils.Variable;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import rc.C15169a;
import s8.InterfaceC15237a;

public class MouseAxisMapper extends Component {

    public static final String f73358H = "MouseAxisMapper";

    public static final Class f73359I = MouseAxisMapper.class;

    public Axis f73360E;

    public boolean f73361F;

    public JAVARuntime.Component f73362G;

    @Expose
    private String outputAxis;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return MouseAxisMapper.f73359I;
        }

        @Override
        public String c() {
            return MouseAxisMapper.f73358H;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.KEYBOARD_AND_MOUSE);
        }

        @Override
        public String f() {
            return MouseAxisMapper.f73358H;
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", MouseAxisMapper.this.outputAxis + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                MouseAxisMapper.this.outputAxis = variable.str_value;
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public MouseAxisMapper() {
        super(f73358H);
        this.outputAxis = "axisName";
        this.f73361F = false;
    }

    private void releaseAxis() {
        Axis axis = this.f73360E;
        if (axis != null) {
            axis.e(this);
            this.f73360E = null;
        }
    }

    private void setAxisValue(float x10, float y10) {
        Axis axis = this.f73360E;
        if (axis == null) {
            return;
        }
        axis.a(this, new Vector2(x10, y10));
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new b(), "Output axis", b.a.SLString));
        return linkedList;
    }

    @InterfaceC15237a
    public String getOutputAxis() {
        return this.outputAxis;
    }

    @Override
    public String getTitle() {
        return f73358H;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        releaseAxis();
    }

    @Override
    public void parallelDisabledUpdate() {
        super.parallelDisabledUpdate();
        if (this.f73361F) {
            return;
        }
        releaseAxis();
        this.f73361F = true;
    }

    @Override
    public void parallelUpdate() {
        String str;
        super.parallelUpdate();
        String str2 = this.outputAxis;
        if (str2 == null || str2.isEmpty()) {
            releaseAxis();
        }
        if (this.f73360E != null) {
            String str3 = this.outputAxis;
            if (str3 == null || str3.isEmpty()) {
                releaseAxis();
            } else {
                try {
                    if (!this.f73360E.c(this.outputAxis)) {
                        releaseAxis();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    releaseAxis();
                }
            }
        }
        if (this.f73360E == null && (str = this.outputAxis) != null && !str.isEmpty()) {
            this.f73360E = C15169a.D(this.outputAxis);
        }
        if (this.f73360E != null) {
            C15169a.g gVar = C15169a.f108812u;
            if (gVar.r()) {
                setAxisValue(gVar.f(), gVar.g());
            } else {
                setAxisValue(0.0f, 0.0f);
            }
        }
        this.f73361F = false;
    }

    @InterfaceC15237a
    public void setOutputAxis(String outputAxis) {
        this.outputAxis = outputAxis;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73362G = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73362G;
        if (component != null) {
            return component;
        }
        JAVARuntime.MouseAxisMapper mouseAxisMapper = new JAVARuntime.MouseAxisMapper(this);
        this.f73362G = mouseAxisMapper;
        return mouseAxisMapper;
    }

    @Override
    public Component mo1248clone() {
        MouseAxisMapper mouseAxisMapper = new MouseAxisMapper();
        mouseAxisMapper.outputAxis = this.outputAxis;
        return mouseAxisMapper;
    }
}

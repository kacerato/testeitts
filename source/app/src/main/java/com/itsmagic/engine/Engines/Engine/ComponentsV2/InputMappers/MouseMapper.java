package com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers;

import C5.b;
import D5.h;
import F5.c;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Input.Key;
import com.itsmagic.engine.Engines.Utils.Variable;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import rc.C15169a;
import s8.InterfaceC15237a;

public class MouseMapper extends Component {

    public static final String f73364H = "MouseMapper";

    public static final Class f73365I = MouseMapper.class;

    public Key f73366E;

    public boolean f73367F;

    public JAVARuntime.Component f73368G;

    @Expose
    private d mouseButton;

    @Expose
    private String outputKey;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return MouseMapper.f73365I;
        }

        @Override
        public String c() {
            return MouseMapper.f73364H;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.KEYBOARD_AND_MOUSE);
        }

        @Override
        public String f() {
            return MouseMapper.f73364H;
        }
    }

    public class b extends c.n0<d> {
        public b() {
        }

        @Override
        public void set(d value) {
            MouseMapper.this.mouseButton = value;
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", MouseMapper.this.outputKey + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                MouseMapper.this.outputKey = variable.str_value;
            }
        }
    }

    public enum d {
        LEFT,
        RIGHT,
        MIDDLE,
        BACK,
        FORWARD
    }

    static {
        C13201a.b(new a());
    }

    public MouseMapper() {
        super(f73364H);
        this.mouseButton = d.LEFT;
        this.outputKey = "throttle";
        this.f73367F = false;
    }

    private boolean isMouseButtonPressed() {
        d dVar = this.mouseButton;
        if (dVar == null) {
            return false;
        }
        int ordinal = dVar.ordinal();
        if (ordinal == 0) {
            return C15169a.f108812u.A();
        }
        if (ordinal == 1) {
            return C15169a.f108812u.K();
        }
        if (ordinal == 2) {
            return C15169a.f108812u.F();
        }
        if (ordinal == 3) {
            return C15169a.f108812u.o();
        }
        if (ordinal != 4) {
            return false;
        }
        return C15169a.f108812u.v();
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(F5.c.i("Mouse button", d.class, this.mouseButton, new b()));
        linkedList.add(new C5.b(new c(), "Output key", b.a.SLString));
        return linkedList;
    }

    @InterfaceC15237a
    public d getMouseButton() {
        return this.mouseButton;
    }

    @InterfaceC15237a
    public String getOutputKey() {
        return this.outputKey;
    }

    @Override
    public String getTitle() {
        return f73364H;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        Key key = this.f73366E;
        if (key != null) {
            key.i(this);
            this.f73366E = null;
        }
    }

    @Override
    public void parallelDisabledUpdate() {
        super.parallelDisabledUpdate();
        if (this.f73367F) {
            return;
        }
        Key key = this.f73366E;
        if (key != null) {
            key.i(this);
        }
        this.f73367F = true;
    }

    @Override
    public void parallelUpdate() {
        String str;
        super.parallelUpdate();
        String str2 = this.outputKey;
        if (str2 == null || str2.isEmpty()) {
            this.f73366E = null;
        }
        if (this.f73366E != null) {
            String str3 = this.outputKey;
            if (str3 == null || str3.isEmpty()) {
                this.f73366E = null;
            } else {
                try {
                    if (!this.f73366E.c(this.outputKey)) {
                        this.f73366E = null;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.f73366E = null;
                }
            }
        }
        if (this.f73366E == null && (str = this.outputKey) != null && !str.isEmpty()) {
            this.f73366E = C15169a.G(this.outputKey);
        }
        if (this.f73366E != null) {
            if (isMouseButtonPressed()) {
                this.f73366E.a(this);
            } else {
                this.f73366E.i(this);
            }
        }
        this.f73367F = false;
    }

    @InterfaceC15237a
    public void setMouseButton(d mouseButton) {
        this.mouseButton = mouseButton;
    }

    @InterfaceC15237a
    public void setOutputKey(String outputKey) {
        this.outputKey = outputKey;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73368G = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73368G;
        if (component != null) {
            return component;
        }
        JAVARuntime.MouseMapper mouseMapper = new JAVARuntime.MouseMapper(this);
        this.f73368G = mouseMapper;
        return mouseMapper;
    }

    @Override
    public Component mo1248clone() {
        MouseMapper mouseMapper = new MouseMapper();
        mouseMapper.mouseButton = this.mouseButton;
        mouseMapper.outputKey = this.outputKey;
        return mouseMapper;
    }
}

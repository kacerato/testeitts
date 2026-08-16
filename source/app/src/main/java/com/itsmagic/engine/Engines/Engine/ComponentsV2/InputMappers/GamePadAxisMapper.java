package com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers;

import C5.b;
import D5.h;
import F5.c;
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

public class GamePadAxisMapper extends Component {

    public static final String f73317H = "GamePadAxisMapper";

    public static final Class f73318I = GamePadAxisMapper.class;

    public Axis f73319E;

    public boolean f73320F;

    public JAVARuntime.Component f73321G;

    @Expose
    private f axisType;

    @Expose
    private e gamepadAxis;

    @Expose
    private String outputAxis;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return GamePadAxisMapper.f73318I;
        }

        @Override
        public String c() {
            return GamePadAxisMapper.f73317H;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.KEYBOARD_AND_MOUSE);
        }

        @Override
        public String f() {
            return GamePadAxisMapper.f73317H;
        }
    }

    public class b extends c.n0<e> {
        public b() {
        }

        @Override
        public void set(e value) {
            GamePadAxisMapper.this.gamepadAxis = value;
        }
    }

    public class c extends c.n0<f> {
        public c() {
        }

        @Override
        public void set(f value) {
            GamePadAxisMapper.this.axisType = value;
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", GamePadAxisMapper.this.outputAxis + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                GamePadAxisMapper.this.outputAxis = variable.str_value;
            }
        }
    }

    public enum e {
        AXIS_X,
        AXIS_Y,
        AXIS_Z,
        AXIS_RX,
        AXIS_RY,
        AXIS_RZ,
        AXIS_HAT_X,
        AXIS_HAT_Y
    }

    public enum f {
        HORIZONTAL,
        VERTICAL
    }

    static {
        C13201a.b(new a());
    }

    public GamePadAxisMapper() {
        super(f73317H);
        this.gamepadAxis = e.AXIS_X;
        this.axisType = f.HORIZONTAL;
        this.outputAxis = "move";
        this.f73320F = false;
    }

    private float getGamepadAxisValue() {
        e eVar = this.gamepadAxis;
        if (eVar == null) {
            return 0.0f;
        }
        try {
            return C15169a.f108810s.c(eVar.name());
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    private void releaseAxis() {
        Axis axis = this.f73319E;
        if (axis != null) {
            axis.e(this);
            this.f73319E = null;
        }
    }

    private void setAxisValue(float value) {
        if (this.f73319E == null) {
            return;
        }
        Vector2 vector2 = new Vector2();
        if (this.axisType == f.VERTICAL) {
            vector2.C0(value);
        } else {
            vector2.B0(value);
        }
        this.f73319E.a(this, vector2);
    }

    @InterfaceC15237a
    public f getAxisType() {
        return this.axisType;
    }

    @InterfaceC15237a
    public e getGamepadAxis() {
        return this.gamepadAxis;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(F5.c.i("Gamepad axis", e.class, this.gamepadAxis, new b()));
        linkedList.add(F5.c.i("Axis type", f.class, this.axisType, new c()));
        linkedList.add(new C5.b(new d(), "Output axis", b.a.SLString));
        return linkedList;
    }

    @InterfaceC15237a
    public String getOutputAxis() {
        return this.outputAxis;
    }

    @Override
    public String getTitle() {
        return f73317H;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        releaseAxis();
    }

    @Override
    public void parallelDisabledUpdate() {
        super.parallelDisabledUpdate();
        if (this.f73320F) {
            return;
        }
        releaseAxis();
        this.f73320F = true;
    }

    @Override
    public void parallelUpdate() {
        String str;
        super.parallelUpdate();
        String str2 = this.outputAxis;
        if (str2 == null || str2.isEmpty()) {
            releaseAxis();
        }
        if (this.f73319E != null) {
            String str3 = this.outputAxis;
            if (str3 == null || str3.isEmpty()) {
                releaseAxis();
            } else {
                try {
                    if (!this.f73319E.c(this.outputAxis)) {
                        releaseAxis();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    releaseAxis();
                }
            }
        }
        if (this.f73319E == null && (str = this.outputAxis) != null && !str.isEmpty()) {
            this.f73319E = C15169a.D(this.outputAxis);
        }
        if (this.f73319E != null) {
            setAxisValue(getGamepadAxisValue());
        }
        this.f73320F = false;
    }

    @InterfaceC15237a
    public void setAxisType(f axisType) {
        this.axisType = axisType;
    }

    @InterfaceC15237a
    public void setGamepadAxis(e gamepadAxis) {
        this.gamepadAxis = gamepadAxis;
    }

    @InterfaceC15237a
    public void setOutputAxis(String outputAxis) {
        this.outputAxis = outputAxis;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73321G = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73321G;
        if (component != null) {
            return component;
        }
        JAVARuntime.GamePadAxisMapper gamePadAxisMapper = new JAVARuntime.GamePadAxisMapper(this);
        this.f73321G = gamePadAxisMapper;
        return gamePadAxisMapper;
    }

    @Override
    public Component mo1248clone() {
        GamePadAxisMapper gamePadAxisMapper = new GamePadAxisMapper();
        gamePadAxisMapper.gamepadAxis = this.gamepadAxis;
        gamePadAxisMapper.axisType = this.axisType;
        gamePadAxisMapper.outputAxis = this.outputAxis;
        return gamePadAxisMapper;
    }
}

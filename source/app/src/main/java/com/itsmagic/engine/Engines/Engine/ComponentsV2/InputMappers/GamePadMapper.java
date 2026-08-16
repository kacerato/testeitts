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
import tc.C15394c;

public class GamePadMapper extends Component {

    public static final String f73325H = "GamePadMapper";

    public static final Class f73326I = GamePadMapper.class;

    public Key f73327E;

    public boolean f73328F;

    public JAVARuntime.Component f73329G;

    @Expose
    private d gamepadButton;

    @Expose
    private String outputKey;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return GamePadMapper.f73326I;
        }

        @Override
        public String c() {
            return GamePadMapper.f73325H;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.KEYBOARD_AND_MOUSE);
        }

        @Override
        public String f() {
            return GamePadMapper.f73325H;
        }
    }

    public class b extends c.n0<d> {
        public b() {
        }

        @Override
        public void set(d value) {
            GamePadMapper.this.gamepadButton = value;
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", GamePadMapper.this.outputKey + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                GamePadMapper.this.outputKey = variable.str_value;
            }
        }
    }

    public enum d {
        A,
        B,
        X,
        Y,
        L1,
        L2,
        R1,
        R2,
        START,
        SELECT,
        C,
        Z,
        THUMBL,
        THUMBR,
        MODE,
        DPAD_UP,
        DPAD_DOWN,
        DPAD_LEFT,
        DPAD_RIGHT,
        DPAD_CENTER
    }

    static {
        C13201a.b(new a());
    }

    public GamePadMapper() {
        super(f73325H);
        this.gamepadButton = d.A;
        this.outputKey = "throttle";
        this.f73328F = false;
    }

    private boolean isGamepadButtonPressed() {
        C15394c d10;
        d dVar = this.gamepadButton;
        return (dVar == null || (d10 = C15169a.f108810s.d(dVar.name())) == null || !d10.d()) ? false : true;
    }

    @InterfaceC15237a
    public d getGamepadButton() {
        return this.gamepadButton;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(F5.c.i("Gamepad button", d.class, this.gamepadButton, new b()));
        linkedList.add(new C5.b(new c(), "Output key", b.a.SLString));
        return linkedList;
    }

    @InterfaceC15237a
    public String getOutputKey() {
        return this.outputKey;
    }

    @Override
    public String getTitle() {
        return f73325H;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        Key key = this.f73327E;
        if (key != null) {
            key.i(this);
            this.f73327E = null;
        }
    }

    @Override
    public void parallelDisabledUpdate() {
        super.parallelDisabledUpdate();
        if (this.f73328F) {
            return;
        }
        Key key = this.f73327E;
        if (key != null) {
            key.i(this);
        }
        this.f73328F = true;
    }

    @Override
    public void parallelUpdate() {
        String str;
        super.parallelUpdate();
        String str2 = this.outputKey;
        if (str2 == null || str2.isEmpty()) {
            this.f73327E = null;
        }
        if (this.f73327E != null) {
            String str3 = this.outputKey;
            if (str3 == null || str3.isEmpty()) {
                this.f73327E = null;
            } else {
                try {
                    if (!this.f73327E.c(this.outputKey)) {
                        this.f73327E = null;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.f73327E = null;
                }
            }
        }
        if (this.f73327E == null && (str = this.outputKey) != null && !str.isEmpty()) {
            this.f73327E = C15169a.G(this.outputKey);
        }
        if (this.f73327E != null) {
            if (isGamepadButtonPressed()) {
                this.f73327E.a(this);
            } else {
                this.f73327E.i(this);
            }
        }
        this.f73328F = false;
    }

    @InterfaceC15237a
    public void setGamepadButton(d gamepadButton) {
        this.gamepadButton = gamepadButton;
    }

    @InterfaceC15237a
    public void setOutputKey(String outputKey) {
        this.outputKey = outputKey;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73329G = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73329G;
        if (component != null) {
            return component;
        }
        JAVARuntime.GamePadMapper gamePadMapper = new JAVARuntime.GamePadMapper(this);
        this.f73329G = gamePadMapper;
        return gamePadMapper;
    }

    @Override
    public Component mo1248clone() {
        GamePadMapper gamePadMapper = new GamePadMapper();
        gamePadMapper.gamepadButton = this.gamepadButton;
        gamePadMapper.outputKey = this.outputKey;
        return gamePadMapper;
    }
}

package com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers;

import C5.b;
import D5.h;
import F5.d;
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

public class KeyboardMapper extends Component {

    public static final String f73351H = "KeyboardMapper";

    public static final Class f73352I = KeyboardMapper.class;

    public Key f73353E;

    public boolean f73354F;

    public JAVARuntime.Component f73355G;

    @Expose
    private String keyboardKey;

    @Expose
    private String outputKey;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return KeyboardMapper.f73352I;
        }

        @Override
        public String c() {
            return KeyboardMapper.f73351H;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.KEYBOARD_AND_MOUSE);
        }

        @Override
        public String f() {
            return KeyboardMapper.f73351H;
        }
    }

    public class b implements d {
        public b() {
        }

        @Override
        public void b(String key) {
            KeyboardMapper.this.keyboardKey = key;
        }

        @Override
        public String get() {
            return KeyboardMapper.this.keyboardKey;
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", KeyboardMapper.this.outputKey + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                KeyboardMapper.this.outputKey = variable.str_value;
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public KeyboardMapper() {
        super(f73351H);
        this.keyboardKey = "a";
        this.outputKey = "throttle";
        this.f73354F = false;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(F5.c.k(Lang.l(Lang.T.KEYBOARD_KEY), new b()));
        linkedList.add(new C5.b(new c(), "Output key", b.a.SLString));
        return linkedList;
    }

    @InterfaceC15237a
    public String getKeyboardKey() {
        return this.keyboardKey;
    }

    @InterfaceC15237a
    public String getOutputKey() {
        return this.outputKey;
    }

    @Override
    public String getTitle() {
        return f73351H;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        Key key = this.f73353E;
        if (key != null) {
            key.i(this);
            this.f73353E = null;
        }
    }

    @Override
    public void parallelDisabledUpdate() {
        super.parallelDisabledUpdate();
        if (this.f73354F) {
            return;
        }
        Key key = this.f73353E;
        if (key != null) {
            key.i(this);
        }
        this.f73354F = true;
    }

    @Override
    public void parallelUpdate() {
        String str;
        super.parallelUpdate();
        String str2 = this.outputKey;
        if (str2 == null || str2.isEmpty()) {
            this.f73353E = null;
        }
        if (this.f73353E != null) {
            String str3 = this.outputKey;
            if (str3 == null || str3.isEmpty()) {
                this.f73353E = null;
            } else {
                try {
                    if (!this.f73353E.c(this.outputKey)) {
                        this.f73353E = null;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    this.f73353E = null;
                }
            }
        }
        if (this.f73353E == null && (str = this.outputKey) != null && !str.isEmpty()) {
            this.f73353E = C15169a.G(this.outputKey);
        }
        if (this.f73353E != null) {
            if (C15169a.f108811t.l(this.keyboardKey)) {
                this.f73353E.a(this);
            } else {
                this.f73353E.i(this);
            }
        }
        this.f73354F = false;
    }

    @InterfaceC15237a
    public void setKeyboardKey(String keyboardKey) {
        this.keyboardKey = keyboardKey;
    }

    @InterfaceC15237a
    public void setOutputKey(String outputKey) {
        this.outputKey = outputKey;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73355G = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73355G;
        if (component != null) {
            return component;
        }
        JAVARuntime.KeyboardMapper keyboardMapper = new JAVARuntime.KeyboardMapper(this);
        this.f73355G = keyboardMapper;
        return keyboardMapper;
    }

    @Override
    public Component mo1248clone() {
        KeyboardMapper keyboardMapper = new KeyboardMapper();
        keyboardMapper.keyboardKey = this.keyboardKey;
        keyboardMapper.outputKey = this.outputKey;
        return keyboardMapper;
    }
}

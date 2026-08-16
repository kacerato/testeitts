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

public class KeyboardAxisMapper extends Component {

    public static final String f73342H = "KeyboardAxisMapper";

    public static final Class f73343I = KeyboardAxisMapper.class;

    public Axis f73344E;

    public boolean f73345F;

    public JAVARuntime.Component f73346G;

    @Expose
    private f axisType;

    @Expose
    private String negativeKeyboardKey;

    @Expose
    private String outputAxis;

    @Expose
    private String positiveKeyboardKey;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return KeyboardAxisMapper.f73343I;
        }

        @Override
        public String c() {
            return KeyboardAxisMapper.f73342H;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.KEYBOARD_AND_MOUSE);
        }

        @Override
        public String f() {
            return KeyboardAxisMapper.f73342H;
        }
    }

    public class b implements F5.d {
        public b() {
        }

        @Override
        public void b(String key) {
            KeyboardAxisMapper.this.negativeKeyboardKey = key;
        }

        @Override
        public String get() {
            return KeyboardAxisMapper.this.negativeKeyboardKey;
        }
    }

    public class c implements F5.d {
        public c() {
        }

        @Override
        public void b(String key) {
            KeyboardAxisMapper.this.positiveKeyboardKey = key;
        }

        @Override
        public String get() {
            return KeyboardAxisMapper.this.positiveKeyboardKey;
        }
    }

    public class d extends c.n0<f> {
        public d() {
        }

        @Override
        public void set(f value) {
            KeyboardAxisMapper.this.axisType = value;
        }
    }

    public class e implements h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", KeyboardAxisMapper.this.outputAxis + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                KeyboardAxisMapper.this.outputAxis = variable.str_value;
            }
        }
    }

    public enum f {
        HORIZONTAL,
        VERTICAL
    }

    static {
        C13201a.b(new a());
    }

    public KeyboardAxisMapper() {
        super(f73342H);
        this.negativeKeyboardKey = "a";
        this.positiveKeyboardKey = "d";
        this.axisType = f.HORIZONTAL;
        this.outputAxis = "axisName";
        this.f73345F = false;
    }

    private boolean isNegativePressed() {
        String str = this.negativeKeyboardKey;
        return (str == null || str.isEmpty() || !C15169a.f108811t.l(this.negativeKeyboardKey)) ? false : true;
    }

    private boolean isPositivePressed() {
        String str = this.positiveKeyboardKey;
        return (str == null || str.isEmpty() || !C15169a.f108811t.l(this.positiveKeyboardKey)) ? false : true;
    }

    private void releaseAxis() {
        Axis axis = this.f73344E;
        if (axis != null) {
            axis.e(this);
            this.f73344E = null;
        }
    }

    private void setAxisValue(float value) {
        if (this.f73344E == null) {
            return;
        }
        Vector2 vector2 = new Vector2();
        if (this.axisType == f.VERTICAL) {
            vector2.w0(0.0f, value);
        } else {
            vector2.w0(value, 0.0f);
        }
        this.f73344E.a(this, vector2);
    }

    @InterfaceC15237a
    public f getAxisType() {
        return this.axisType;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(F5.c.k("Negative key", new b()));
        linkedList.add(F5.c.k("Positive key", new c()));
        linkedList.add(F5.c.i("Axis type", f.class, this.axisType, new d()));
        linkedList.add(new C5.b(new e(), "Output axis", b.a.SLString));
        return linkedList;
    }

    @InterfaceC15237a
    public String getNegativeKeyboardKey() {
        return this.negativeKeyboardKey;
    }

    @InterfaceC15237a
    public String getOutputAxis() {
        return this.outputAxis;
    }

    @InterfaceC15237a
    public String getPositiveKeyboardKey() {
        return this.positiveKeyboardKey;
    }

    @Override
    public String getTitle() {
        return f73342H;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        releaseAxis();
    }

    @Override
    public void parallelDisabledUpdate() {
        super.parallelDisabledUpdate();
        if (this.f73345F) {
            return;
        }
        releaseAxis();
        this.f73345F = true;
    }

    @Override
    public void parallelUpdate() {
        String str;
        super.parallelUpdate();
        String str2 = this.outputAxis;
        if (str2 == null || str2.isEmpty()) {
            releaseAxis();
        }
        if (this.f73344E != null) {
            String str3 = this.outputAxis;
            if (str3 == null || str3.isEmpty()) {
                releaseAxis();
            } else {
                try {
                    if (!this.f73344E.c(this.outputAxis)) {
                        releaseAxis();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    releaseAxis();
                }
            }
        }
        if (this.f73344E == null && (str = this.outputAxis) != null && !str.isEmpty()) {
            this.f73344E = C15169a.D(this.outputAxis);
        }
        if (this.f73344E != null) {
            float f10 = isNegativePressed() ? -1.0f : 0.0f;
            if (isPositivePressed()) {
                f10 += 1.0f;
            }
            setAxisValue(f10);
        }
        this.f73345F = false;
    }

    @InterfaceC15237a
    public void setAxisType(f axisType) {
        this.axisType = axisType;
    }

    @InterfaceC15237a
    public void setNegativeKeyboardKey(String negativeKeyboardKey) {
        this.negativeKeyboardKey = negativeKeyboardKey;
    }

    @InterfaceC15237a
    public void setOutputAxis(String outputAxis) {
        this.outputAxis = outputAxis;
    }

    @InterfaceC15237a
    public void setPositiveKeyboardKey(String positiveKeyboardKey) {
        this.positiveKeyboardKey = positiveKeyboardKey;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73346G = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73346G;
        if (component != null) {
            return component;
        }
        JAVARuntime.KeyboardAxisMapper keyboardAxisMapper = new JAVARuntime.KeyboardAxisMapper(this);
        this.f73346G = keyboardAxisMapper;
        return keyboardAxisMapper;
    }

    @Override
    public Component mo1248clone() {
        KeyboardAxisMapper keyboardAxisMapper = new KeyboardAxisMapper();
        keyboardAxisMapper.negativeKeyboardKey = this.negativeKeyboardKey;
        keyboardAxisMapper.positiveKeyboardKey = this.positiveKeyboardKey;
        keyboardAxisMapper.axisType = this.axisType;
        keyboardAxisMapper.outputAxis = this.outputAxis;
        return keyboardAxisMapper;
    }
}

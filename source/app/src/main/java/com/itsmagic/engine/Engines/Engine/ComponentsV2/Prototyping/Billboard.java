package com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping;

import C5.b;
import D5.h;
import R8.f;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniFloatArrayJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.Variable;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class Billboard extends Component {

    public static final String f76177G = "Billboard";

    public static final Class f76178H = Billboard.class;

    public final MiniFloatArrayJP f76179E;

    public JAVARuntime.Component f76180F;

    @Expose
    private boolean zAlign;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Billboard.f76178H;
        }

        @Override
        public String c() {
            return Billboard.f76177G;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PROTOTYPING);
        }

        @Override
        public String f() {
            return Billboard.f76177G;
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", Billboard.this.zAlign + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Billboard.this.zAlign = variable.booolean_value.booleanValue();
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public Billboard() {
        super(f76177G);
        this.zAlign = false;
        this.f76179E = new MiniFloatArrayJP();
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.SLIDE_ROTATE);
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new b(), "Z align", b.a.SLBoolean));
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f76177G;
    }

    @InterfaceC15237a
    public boolean iszAlign() {
        return this.zAlign;
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        this.f76179E.startFrame();
        try {
            if (c8.b.k()) {
                try {
                    f.h(Camera.class);
                    Camera mainCamera = Camera.mainCamera();
                    if (mainCamera != null) {
                        float[] acquire = this.f76179E.acquire(16);
                        float[] acquire2 = this.f76179E.acquire(16);
                        this.f79250n.transform.r0(acquire);
                        com.itsmagic.engine.Engines.Engine.Vector.a.d(acquire, acquire2, mainCamera, this.zAlign);
                        this.f79250n.transform.f3(acquire2);
                        this.f76179E.release(acquire);
                        this.f76179E.release(acquire2);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } finally {
            this.f76179E.endFrame();
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76180F = run;
    }

    @InterfaceC15237a
    public void setzAlign(boolean zAlign) {
        this.zAlign = zAlign;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76180F;
        if (component != null) {
            return component;
        }
        JAVARuntime.Billboard billboard = new JAVARuntime.Billboard(this);
        this.f76180F = billboard;
        return billboard;
    }

    @Override
    public Component mo1248clone() {
        return new Billboard();
    }
}

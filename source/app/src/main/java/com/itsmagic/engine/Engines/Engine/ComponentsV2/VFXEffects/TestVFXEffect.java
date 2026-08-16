package com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects;

import C5.b;
import D5.h;
import android.content.Context;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import oc.c;
import t6.e;
import t6.j;

@Deprecated
public class TestVFXEffect extends BaseVFXEffect implements Serializable {

    public static final String f77522N = "TestVFXEffect";

    public static final Class f77523O = TestVFXEffect.class;

    public static final String f77524P = "radius";

    @Expose
    private float radius;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return TestVFXEffect.f77523O;
        }

        @Override
        public String c() {
            return TestVFXEffect.f77522N;
        }

        @Override
        public String e() {
            return "VFX";
        }

        @Override
        public String f() {
            return "Test VFX Effect";
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    public class b implements h {

        public class a implements Runnable {

            public final Variable f77526b;

            public a(final Variable val$variable) {
                this.f77526b = val$variable;
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("TestVFXEffect - set radius") : null;
                try {
                    TestVFXEffect.this.setRadius(this.f77526b.float_value);
                } finally {
                    j.P1(S12);
                }
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", TestVFXEffect.this.radius + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public TestVFXEffect() {
        super(f77522N, f77522N);
        this.radius = 10.0f;
    }

    private void sendParams() {
        setF1Param(f77524P, this.radius);
    }

    @Override
    public c getConstructor() {
        c constructor = super.getConstructor();
        constructor.r(BaseVFXEffect.loadAssetShader("Builtins/test_vfx_vertex.glsl"));
        constructor.p(BaseVFXEffect.loadAssetShader("Builtins/test_vfx_frag.glsl"));
        constructor.a(MaterialBuilder.r.FLOAT, MaterialBuilder.g.MEDIUM, f77524P);
        return constructor;
    }

    @Override
    public int getIconResource() {
        return R.drawable.vulkan_icon;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new b(), "Radius", b.a.SLFloat));
        return linkedList;
    }

    public float getRadius() {
        return this.radius;
    }

    @Override
    public String getTitle() {
        return f77522N;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        sendParams();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled) {
            sendParams();
        }
    }

    @Override
    public void reuploadParams() {
        super.reuploadParams();
        sendParams();
    }

    public void setRadius(float radius) {
        boolean z10 = this.radius != radius;
        this.radius = radius;
        if (z10) {
            setF1Param(f77524P, radius);
        }
    }

    @Override
    public Component mo1248clone() {
        TestVFXEffect testVFXEffect = new TestVFXEffect();
        testVFXEffect.radius = this.radius;
        return testVFXEffect;
    }
}

package com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects;

import C5.b;
import D5.h;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13601h;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

public class HoleProjector extends BaseVFXEffect implements Serializable {

    public static final String f77497R = "HoleProjector";

    public static final Class f77498S = HoleProjector.class;

    public static final String f77499T = "angleLimit";

    public static final String f77500U = "backfaceLimit";

    public static final String f77501V = "projectionWidth";

    public static final String f77502W = "reach";

    public static final String f77503X = "forward";

    public static final String f77504Y = "right";

    public final Vector3 f77505N;

    public final Vector3 f77506O;

    public final InterfaceC13601h f77507P;

    public Component f77508Q;

    @Expose
    private float angleLimit;

    @Expose
    private float backfaceLimit;

    @Expose
    private float projectionWidth;

    @Expose
    private float reach;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return HoleProjector.f77498S;
        }

        @Override
        public String c() {
            return HoleProjector.f77497R;
        }

        @Override
        public String e() {
            return "VFX";
        }

        @Override
        public String f() {
            return "Hole Projector";
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            HoleProjector.this.sendTransformParams(globalMatrix);
        }
    }

    public class c implements h {

        public class a implements Runnable {

            public final Variable f77511b;

            public a(final Variable val$variable) {
                this.f77511b = val$variable;
            }

            @Override
            public void run() {
                HoleProjector.this.setAngleLimit(this.f77511b.float_value);
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", HoleProjector.this.angleLimit + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements h {

        public class a implements Runnable {

            public final Variable f77514b;

            public a(final Variable val$variable) {
                this.f77514b = val$variable;
            }

            @Override
            public void run() {
                HoleProjector.this.setBackfaceLimit(this.f77514b.float_value);
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", HoleProjector.this.backfaceLimit + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements h {

        public class a implements Runnable {

            public final Variable f77517b;

            public a(final Variable val$variable) {
                this.f77517b = val$variable;
            }

            @Override
            public void run() {
                HoleProjector.this.setProjectionWidth(this.f77517b.float_value);
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", HoleProjector.this.projectionWidth + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements h {

        public class a implements Runnable {

            public final Variable f77520b;

            public a(final Variable val$variable) {
                this.f77520b = val$variable;
            }

            @Override
            public void run() {
                HoleProjector.this.setReach(this.f77520b.float_value);
            }
        }

        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", HoleProjector.this.reach + "");
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

    public HoleProjector() {
        super(f77497R, f77497R);
        this.angleLimit = 1.0f;
        this.backfaceLimit = 1.0f;
        this.projectionWidth = 1.0f;
        this.reach = 5.0f;
        this.f77505N = new Vector3(0.0f, 0.0f, 1.0f);
        this.f77506O = new Vector3(1.0f, 0.0f, 0.0f);
        this.f77507P = new b();
    }

    private void sendParams() {
        setF1Param("angleLimit", this.angleLimit);
        setF1Param("backfaceLimit", this.backfaceLimit);
        setF1Param("projectionWidth", this.projectionWidth);
        setF1Param("reach", this.reach);
        sendTransformParams();
    }

    private void sendTransformParams() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.a0(this.f77505N);
        this.f79250n.transform.S2(this.f77506O);
        setF3Param("forward", this.f77505N);
        setF3Param("right", this.f77506O);
    }

    public float getAngleLimit() {
        return this.angleLimit;
    }

    public float getBackfaceLimit() {
        return this.backfaceLimit;
    }

    @Override
    public oc.c getConstructor() {
        oc.c constructor = super.getConstructor();
        constructor.p(BaseVFXEffect.loadAssetShader("Builtins/hole_projector_frag.glsl"));
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.LOW;
        constructor.a(rVar, gVar, "angleLimit");
        constructor.a(rVar, gVar, "backfaceLimit");
        MaterialBuilder.g gVar2 = MaterialBuilder.g.MEDIUM;
        constructor.a(rVar, gVar2, "projectionWidth");
        constructor.a(rVar, gVar2, "reach");
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT3;
        MaterialBuilder.g gVar3 = MaterialBuilder.g.HIGH;
        constructor.a(rVar2, gVar3, "forward");
        constructor.a(rVar2, gVar3, "right");
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
        c cVar = new c();
        b.a aVar = b.a.SLFloat01;
        linkedList.add(new C5.b(cVar, "Angle limit", aVar));
        linkedList.add(new C5.b(new d(), "Backface limit", aVar));
        e eVar = new e();
        b.a aVar2 = b.a.SLFloat;
        linkedList.add(new C5.b(eVar, "Projection width", aVar2));
        linkedList.add(new C5.b(new f(), "Reach", aVar2));
        return linkedList;
    }

    @Override
    public int getMaxSimultaneousEmitters() {
        return 128;
    }

    public float getProjectionWidth() {
        return this.projectionWidth;
    }

    public float getReach() {
        return this.reach;
    }

    @Override
    public String getTitle() {
        return f77497R;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void onAttach() {
        GameObject gameObject;
        Transform transform;
        super.onAttach();
        if (com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component.isFullVersion() && (gameObject = this.f79250n) != null && (transform = gameObject.transform) != null) {
            transform.u(this.f77507P);
        }
        sendParams();
    }

    @Override
    public void onDetach() {
        GameObject gameObject;
        Transform transform;
        if (com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component.isFullVersion() && (gameObject = this.f79250n) != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f77507P);
        }
        super.onDetach();
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

    public void setAngleLimit(float angleLimit) {
        float I10 = Nc.b.I(angleLimit);
        boolean z10 = this.angleLimit != I10;
        this.angleLimit = I10;
        if (z10) {
            setF1Param("angleLimit", I10);
        }
    }

    public void setBackfaceLimit(float backfaceLimit) {
        float I10 = Nc.b.I(backfaceLimit);
        boolean z10 = this.backfaceLimit != I10;
        this.backfaceLimit = I10;
        if (z10) {
            setF1Param("backfaceLimit", I10);
        }
    }

    public void setProjectionWidth(float projectionWidth) {
        float max = Math.max(1.0E-4f, projectionWidth);
        boolean z10 = this.projectionWidth != max;
        this.projectionWidth = max;
        if (z10) {
            setF1Param("projectionWidth", max);
        }
    }

    public void setReach(float reach) {
        float max = Math.max(1.0E-4f, reach);
        boolean z10 = this.reach != max;
        this.reach = max;
        if (z10) {
            setF1Param("reach", max);
        }
    }

    @Override
    public void setRuntime(Component run) {
        this.f77508Q = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f77508Q;
        if (component != null) {
            return component;
        }
        JAVARuntime.HoleProjector holeProjector = new JAVARuntime.HoleProjector(this);
        this.f77508Q = holeProjector;
        return holeProjector;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        HoleProjector holeProjector = new HoleProjector();
        holeProjector.angleLimit = this.angleLimit;
        holeProjector.backfaceLimit = this.backfaceLimit;
        holeProjector.projectionWidth = this.projectionWidth;
        holeProjector.reach = this.reach;
        return holeProjector;
    }

    public void sendTransformParams(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
        if (!isHierarchyActive() || globalMatrix == null) {
            return;
        }
        this.f77505N.set(globalMatrix.f79885d, globalMatrix.f79889j, globalMatrix.f79893n).normalizeLocal();
        this.f77506O.set(globalMatrix.f79883b, globalMatrix.f79887g, globalMatrix.f79891l).normalizeLocal();
        setF3Param("forward", this.f77505N);
        setF3Param("right", this.f77506O);
    }
}

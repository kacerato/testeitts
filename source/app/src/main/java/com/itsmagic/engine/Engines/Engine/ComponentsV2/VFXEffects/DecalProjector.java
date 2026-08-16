package com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects;

import C5.b;
import F5.c;
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

public class DecalProjector extends BaseVFXEffect implements Serializable {

    public static final String f77430D0 = "heightMaxLayers";

    public static final String f77431F1 = "right";

    public static final String f77432R = "DecalProjector";

    public static final Class f77433S = DecalProjector.class;

    public static final String f77434T = "decalIndex";

    public static final String f77435U = "opacityIndex";

    public static final String f77436V = "roughnessIndex";

    public static final String f77437W = "metallicIndex";

    public static final String f77438X = "emissiveIndex";

    public static final String f77439Y = "normalIndex";

    public static final String f77440Z = "heightIndex";

    public static final String f77441b1 = "globalIntensity";

    public static final String f77442i1 = "angleLimit";

    public static final String f77443m1 = "backfaceLimit";

    public static final String f77444q0 = "heightIntensity";

    public static final String f77445q1 = "projectionWidth";

    public static final String f77446v0 = "heightMinLayers";

    public static final String f77447v1 = "reach";

    public static final String f77448y1 = "forward";

    public final Vector3 f77449N;

    public final Vector3 f77450O;

    public final InterfaceC13601h f77451P;

    public Component f77452Q;

    @Expose
    private float angleLimit;

    @Expose
    private float backfaceLimit;

    @Expose
    private int decalIndex;

    @Expose
    private int emissiveIndex;

    @Expose
    private float globalIntensity;

    @Expose
    private int heightIndex;

    @Expose
    private float heightIntensity;

    @Expose
    private float heightQuality;

    @Expose
    private int metallicIndex;

    @Expose
    private int normalIndex;

    @Expose
    private int opacityIndex;

    @Expose
    private float projectionWidth;

    @Expose
    private float reach;

    @Expose
    private int roughnessIndex;

    public class a implements c.q0 {

        public class RunnableC1285a implements Runnable {

            public final int f77454b;

            public RunnableC1285a(final int val$index) {
                this.f77454b = val$index;
            }

            @Override
            public void run() {
                DecalProjector.this.setHeightIndex(this.f77454b);
            }
        }

        public a() {
        }

        @Override
        public void b(int index) {
            K8.a.I(new RunnableC1285a(index));
        }

        @Override
        public int get() {
            return DecalProjector.this.heightIndex;
        }
    }

    public class b implements D5.h {

        public class a implements Runnable {

            public final Variable f77457b;

            public a(final Variable val$variable) {
                this.f77457b = val$variable;
            }

            @Override
            public void run() {
                DecalProjector.this.setAngleLimit(this.f77457b.float_value);
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", DecalProjector.this.angleLimit + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements D5.h {

        public class a implements Runnable {

            public final Variable f77460b;

            public a(final Variable val$variable) {
                this.f77460b = val$variable;
            }

            @Override
            public void run() {
                DecalProjector.this.setBackfaceLimit(this.f77460b.float_value);
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", DecalProjector.this.backfaceLimit + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f77463b;

            public a(final Variable val$variable) {
                this.f77463b = val$variable;
            }

            @Override
            public void run() {
                DecalProjector.this.setProjectionWidth(this.f77463b.float_value);
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", DecalProjector.this.projectionWidth + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public class a implements Runnable {

            public final Variable f77466b;

            public a(final Variable val$variable) {
                this.f77466b = val$variable;
            }

            @Override
            public void run() {
                DecalProjector.this.setReach(this.f77466b.float_value);
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", DecalProjector.this.reach + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements c.o0 {

        public class a implements D5.h {

            public class RunnableC1286a implements Runnable {

                public final Variable f77470b;

                public RunnableC1286a(final Variable val$variable) {
                    this.f77470b = val$variable;
                }

                @Override
                public void run() {
                    DecalProjector.this.setHeightIntensity(this.f77470b.float_value);
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", DecalProjector.this.heightIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1286a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f77473b;

                public a(final Variable val$variable) {
                    this.f77473b = val$variable;
                }

                @Override
                public void run() {
                    DecalProjector.this.setHeightQuality(this.f77473b.float_value);
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", DecalProjector.this.heightQuality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public f() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Height intensity", b.a.SLFloat));
            entries.add(new C5.b(new b(), "Height quality", b.a.SLFloat01));
            return entries;
        }
    }

    public class g extends AbstractC13203c {
        @Override
        public Class b() {
            return DecalProjector.f77433S;
        }

        @Override
        public String c() {
            return DecalProjector.f77432R;
        }

        @Override
        public String e() {
            return "VFX";
        }

        @Override
        public String f() {
            return "Decal Projector";
        }
    }

    public class h implements InterfaceC13601h {
        public h() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            DecalProjector.this.sendTransformParams(globalMatrix);
        }
    }

    public class i implements D5.h {

        public class a implements Runnable {

            public final Variable f77477b;

            public a(final Variable val$variable) {
                this.f77477b = val$variable;
            }

            @Override
            public void run() {
                DecalProjector.this.setGlobalIntensity(this.f77477b.float_value);
            }
        }

        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", DecalProjector.this.globalIntensity + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class j implements c.q0 {

        public class a implements Runnable {

            public final int f77480b;

            public a(final int val$index) {
                this.f77480b = val$index;
            }

            @Override
            public void run() {
                DecalProjector.this.setDecalIndex(this.f77480b);
            }
        }

        public j() {
        }

        @Override
        public void b(int index) {
            K8.a.I(new a(index));
        }

        @Override
        public int get() {
            return DecalProjector.this.decalIndex;
        }
    }

    public class k implements c.q0 {

        public class a implements Runnable {

            public final int f77483b;

            public a(final int val$index) {
                this.f77483b = val$index;
            }

            @Override
            public void run() {
                DecalProjector.this.setRoughnessIndex(this.f77483b);
            }
        }

        public k() {
        }

        @Override
        public void b(int index) {
            K8.a.I(new a(index));
        }

        @Override
        public int get() {
            return DecalProjector.this.roughnessIndex;
        }
    }

    public class l implements c.q0 {

        public class a implements Runnable {

            public final int f77486b;

            public a(final int val$index) {
                this.f77486b = val$index;
            }

            @Override
            public void run() {
                DecalProjector.this.setMetallicIndex(this.f77486b);
            }
        }

        public l() {
        }

        @Override
        public void b(int index) {
            K8.a.I(new a(index));
        }

        @Override
        public int get() {
            return DecalProjector.this.metallicIndex;
        }
    }

    public class m implements c.q0 {

        public class a implements Runnable {

            public final int f77489b;

            public a(final int val$index) {
                this.f77489b = val$index;
            }

            @Override
            public void run() {
                DecalProjector.this.setEmissiveIndex(this.f77489b);
            }
        }

        public m() {
        }

        @Override
        public void b(int index) {
            K8.a.I(new a(index));
        }

        @Override
        public int get() {
            return DecalProjector.this.emissiveIndex;
        }
    }

    public class n implements c.q0 {

        public class a implements Runnable {

            public final int f77492b;

            public a(final int val$index) {
                this.f77492b = val$index;
            }

            @Override
            public void run() {
                DecalProjector.this.setNormalIndex(this.f77492b);
            }
        }

        public n() {
        }

        @Override
        public void b(int index) {
            K8.a.I(new a(index));
        }

        @Override
        public int get() {
            return DecalProjector.this.normalIndex;
        }
    }

    public class o implements c.q0 {

        public class a implements Runnable {

            public final int f77495b;

            public a(final int val$index) {
                this.f77495b = val$index;
            }

            @Override
            public void run() {
                DecalProjector.this.setOpacityIndex(this.f77495b);
            }
        }

        public o() {
        }

        @Override
        public void b(int index) {
            K8.a.I(new a(index));
        }

        @Override
        public int get() {
            return DecalProjector.this.opacityIndex;
        }
    }

    static {
        C13201a.b(new g());
    }

    public DecalProjector() {
        super(f77432R, f77432R);
        this.opacityIndex = -1;
        this.roughnessIndex = -1;
        this.metallicIndex = -1;
        this.emissiveIndex = -1;
        this.normalIndex = -1;
        this.heightIndex = -1;
        this.heightIntensity = 0.1f;
        this.heightQuality = 0.33333334f;
        this.globalIntensity = 1.0f;
        this.angleLimit = 1.0f;
        this.backfaceLimit = 1.0f;
        this.projectionWidth = 1.0f;
        this.reach = 5.0f;
        this.f77449N = new Vector3(0.0f, 0.0f, 1.0f);
        this.f77450O = new Vector3(1.0f, 0.0f, 0.0f);
        this.f77451P = new h();
    }

    private void sendHeightQualityParams() {
        setF1Param(f77446v0, Nc.b.M(2.0f, Nc.b.w0(this.heightQuality * 24.0f)));
        setF1Param(f77430D0, Nc.b.M(4.0f, Nc.b.w0(this.heightQuality * 96.0f)));
    }

    private void sendParams() {
        setI1Param(f77434T, this.decalIndex);
        setI1Param(f77435U, this.opacityIndex);
        setI1Param(f77436V, this.roughnessIndex);
        setI1Param(f77437W, this.metallicIndex);
        setI1Param(f77438X, this.emissiveIndex);
        setI1Param(f77439Y, this.normalIndex);
        setI1Param(f77440Z, this.heightIndex);
        setF1Param(f77444q0, this.heightIntensity);
        sendHeightQualityParams();
        setF1Param(f77441b1, this.globalIntensity);
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
        transform.a0(this.f77449N);
        this.f79250n.transform.S2(this.f77450O);
        setF3Param("forward", this.f77449N);
        setF3Param("right", this.f77450O);
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
        constructor.q(BaseVFXEffect.loadAssetShader("Builtins/decal_projector_sub_mat.glsl"));
        constructor.p(BaseVFXEffect.loadAssetShader("Builtins/decal_projector_frag.glsl"));
        MaterialBuilder.r rVar = MaterialBuilder.r.INT;
        MaterialBuilder.g gVar = MaterialBuilder.g.LOW;
        constructor.a(rVar, gVar, f77434T);
        constructor.a(rVar, gVar, f77435U);
        constructor.a(rVar, gVar, f77436V);
        constructor.a(rVar, gVar, f77437W);
        constructor.a(rVar, gVar, f77438X);
        constructor.a(rVar, gVar, f77439Y);
        constructor.a(rVar, gVar, f77440Z);
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
        MaterialBuilder.g gVar2 = MaterialBuilder.g.MEDIUM;
        constructor.a(rVar2, gVar2, f77444q0);
        constructor.a(rVar2, gVar, f77446v0);
        constructor.a(rVar2, gVar, f77430D0);
        constructor.a(rVar2, gVar, f77441b1);
        constructor.a(rVar2, gVar, "angleLimit");
        constructor.a(rVar2, gVar, "backfaceLimit");
        constructor.a(rVar2, gVar2, "projectionWidth");
        constructor.a(rVar2, gVar2, "reach");
        MaterialBuilder.r rVar3 = MaterialBuilder.r.FLOAT3;
        MaterialBuilder.g gVar3 = MaterialBuilder.g.HIGH;
        constructor.a(rVar3, gVar3, "forward");
        constructor.a(rVar3, gVar3, "right");
        return constructor;
    }

    public int getDecalIndex() {
        return this.decalIndex;
    }

    public int getEmissiveIndex() {
        return this.emissiveIndex;
    }

    public float getGlobalIntensity() {
        return this.globalIntensity;
    }

    public int getHeightIndex() {
        return this.heightIndex;
    }

    public float getHeightIntensity() {
        return this.heightIntensity;
    }

    public float getHeightQuality() {
        return this.heightQuality;
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
        i iVar = new i();
        b.a aVar = b.a.SLFloat01;
        linkedList.add(new C5.b(iVar, "Global intensity", aVar));
        linkedList.add(F5.c.h("Decal", new j()));
        linkedList.add(F5.c.h("Roughness", new k()));
        linkedList.add(F5.c.h("Metallic", new l()));
        linkedList.add(F5.c.h("Emissive", new m()));
        linkedList.add(F5.c.h("Normal", new n()));
        linkedList.add(F5.c.h("Opacity", new o()));
        linkedList.add(F5.c.h("Height", new a()));
        linkedList.add(new C5.b(new b(), "Angle limit", aVar));
        linkedList.add(new C5.b(new c(), "Backface limit", aVar));
        d dVar = new d();
        b.a aVar2 = b.a.SLFloat;
        linkedList.add(new C5.b(dVar, "Projection width", aVar2));
        linkedList.add(new C5.b(new e(), "Reach", aVar2));
        linkedList.add(F5.c.d(getInspectorMemory(), "Height", new f()));
        return linkedList;
    }

    @Override
    public int getMaxSimultaneousEmitters() {
        return 128;
    }

    public int getMetallicIndex() {
        return this.metallicIndex;
    }

    public int getNormalIndex() {
        return this.normalIndex;
    }

    public int getOpacityIndex() {
        return this.opacityIndex;
    }

    public float getProjectionWidth() {
        return this.projectionWidth;
    }

    public float getReach() {
        return this.reach;
    }

    public int getRoughnessIndex() {
        return this.roughnessIndex;
    }

    @Override
    public String getTitle() {
        return f77432R;
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
            transform.u(this.f77451P);
        }
        sendParams();
    }

    @Override
    public void onDetach() {
        GameObject gameObject;
        Transform transform;
        if (com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component.isFullVersion() && (gameObject = this.f79250n) != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f77451P);
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

    public void setDecalIndex(int decalIndex) {
        int F10 = Nc.b.F(-1, decalIndex, 255);
        boolean z10 = this.decalIndex != F10;
        this.decalIndex = F10;
        if (z10) {
            setI1Param(f77434T, F10);
        }
    }

    public void setEmissiveIndex(int emissiveIndex) {
        int F10 = Nc.b.F(-1, emissiveIndex, 255);
        boolean z10 = this.emissiveIndex != F10;
        this.emissiveIndex = F10;
        if (z10) {
            setI1Param(f77438X, F10);
        }
    }

    public void setGlobalIntensity(float globalIntensity) {
        float I10 = Nc.b.I(globalIntensity);
        boolean z10 = this.globalIntensity != I10;
        this.globalIntensity = I10;
        if (z10) {
            setF1Param(f77441b1, I10);
        }
    }

    public void setHeightIndex(int heightIndex) {
        int F10 = Nc.b.F(-1, heightIndex, 255);
        boolean z10 = this.heightIndex != F10;
        this.heightIndex = F10;
        if (z10) {
            setI1Param(f77440Z, F10);
        }
    }

    public void setHeightIntensity(float heightIntensity) {
        boolean z10 = this.heightIntensity != heightIntensity;
        this.heightIntensity = heightIntensity;
        if (z10) {
            setF1Param(f77444q0, heightIntensity);
        }
    }

    public void setHeightQuality(float heightQuality) {
        float I10 = Nc.b.I(heightQuality);
        boolean z10 = this.heightQuality != I10;
        this.heightQuality = I10;
        if (z10) {
            sendHeightQualityParams();
        }
    }

    public void setMetallicIndex(int metallicIndex) {
        int F10 = Nc.b.F(-1, metallicIndex, 255);
        boolean z10 = this.metallicIndex != F10;
        this.metallicIndex = F10;
        if (z10) {
            setI1Param(f77437W, F10);
        }
    }

    public void setNormalIndex(int normalIndex) {
        int F10 = Nc.b.F(-1, normalIndex, 255);
        boolean z10 = this.normalIndex != F10;
        this.normalIndex = F10;
        if (z10) {
            setI1Param(f77439Y, F10);
        }
    }

    public void setOpacityIndex(int opacityIndex) {
        int F10 = Nc.b.F(-1, opacityIndex, 255);
        boolean z10 = this.opacityIndex != F10;
        this.opacityIndex = F10;
        if (z10) {
            setI1Param(f77435U, F10);
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

    public void setRoughnessIndex(int roughnessIndex) {
        int F10 = Nc.b.F(-1, roughnessIndex, 255);
        boolean z10 = this.roughnessIndex != F10;
        this.roughnessIndex = F10;
        if (z10) {
            setI1Param(f77436V, F10);
        }
    }

    @Override
    public void setRuntime(Component run) {
        this.f77452Q = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f77452Q;
        if (component != null) {
            return component;
        }
        JAVARuntime.DecalProjector decalProjector = new JAVARuntime.DecalProjector(this);
        this.f77452Q = decalProjector;
        return decalProjector;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        DecalProjector decalProjector = new DecalProjector();
        decalProjector.decalIndex = this.decalIndex;
        decalProjector.opacityIndex = this.opacityIndex;
        decalProjector.roughnessIndex = this.roughnessIndex;
        decalProjector.metallicIndex = this.metallicIndex;
        decalProjector.emissiveIndex = this.emissiveIndex;
        decalProjector.normalIndex = this.normalIndex;
        decalProjector.heightIndex = this.heightIndex;
        decalProjector.heightIntensity = this.heightIntensity;
        decalProjector.heightQuality = this.heightQuality;
        decalProjector.globalIntensity = this.globalIntensity;
        decalProjector.angleLimit = this.angleLimit;
        decalProjector.backfaceLimit = this.backfaceLimit;
        decalProjector.projectionWidth = this.projectionWidth;
        decalProjector.reach = this.reach;
        return decalProjector;
    }

    public void sendTransformParams(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
        if (!isHierarchyActive() || globalMatrix == null) {
            return;
        }
        this.f77449N.set(globalMatrix.f79885d, globalMatrix.f79889j, globalMatrix.f79893n).normalizeLocal();
        this.f77450O.set(globalMatrix.f79883b, globalMatrix.f79887g, globalMatrix.f79891l).normalizeLocal();
        setF3Param("forward", this.f77449N);
        setF3Param("right", this.f77450O);
    }
}

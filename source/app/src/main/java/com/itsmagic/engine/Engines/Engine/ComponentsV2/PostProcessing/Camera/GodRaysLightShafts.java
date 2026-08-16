package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import android.media.tv.TvContract;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.DoublePassPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class GodRaysLightShafts extends DoublePassPostProcessPass implements Serializable {

    public static final int f75201D0 = 7;

    public static final int f75202V = 0;

    public static final int f75203W = 1;

    public static final int f75204X = 2;

    public static final int f75205Y = 3;

    public static final int f75206Z = 4;

    public static final String f75207b1 = "GodRaysLightShafts";

    public static final Class f75208i1 = GodRaysLightShafts.class;

    public static final Map<String, MaterialBuilder.r> f75209m1;

    public static final int f75210q0 = 5;

    public static final Map<String, MaterialBuilder.m> f75211q1;

    public static final int f75212v0 = 6;

    public final Vector2 f75213S;

    public float f75214T;

    public Component f75215U;

    @Expose
    @eb.f
    private float decay;

    @Expose
    @eb.f
    private float density;

    @Expose
    @eb.f
    private float exposure;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float threshold;

    @Expose
    @eb.f
    private float weight;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return GodRaysLightShafts.f75208i1;
        }

        @Override
        public String c() {
            return GodRaysLightShafts.f75207b1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Lighting";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", GodRaysLightShafts.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            GodRaysLightShafts.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", GodRaysLightShafts.this.getExposure() + "");
        }

        @Override
        public void set(Variable v10) {
            GodRaysLightShafts.this.setExposure(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", GodRaysLightShafts.this.getDecay() + "");
        }

        @Override
        public void set(Variable v10) {
            GodRaysLightShafts.this.setDecay(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", GodRaysLightShafts.this.getDensity() + "");
        }

        @Override
        public void set(Variable v10) {
            GodRaysLightShafts.this.setDensity(v10.float_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", GodRaysLightShafts.this.getWeight() + "");
        }

        @Override
        public void set(Variable v10) {
            GodRaysLightShafts.this.setWeight(v10.float_value);
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", GodRaysLightShafts.this.getThreshold() + "");
        }

        @Override
        public void set(Variable v10) {
            GodRaysLightShafts.this.setThreshold(v10.float_value);
        }
    }

    static {
        C13201a.b(new a());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f75209m1 = linkedHashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        linkedHashMap.put("intensity", rVar);
        linkedHashMap.put("exposure", rVar);
        linkedHashMap.put("decay", rVar);
        linkedHashMap.put("density", rVar);
        linkedHashMap.put(TvContract.PreviewPrograms.COLUMN_WEIGHT, rVar);
        linkedHashMap.put("threshold", rVar);
        linkedHashMap.put("sunPos", MaterialBuilder.r.FLOAT2);
        linkedHashMap.put("sunVisibility", rVar);
        f75211q1 = new LinkedHashMap();
    }

    public GodRaysLightShafts() {
        super(f75207b1, "god_rays_light_shafts", f75209m1, f75211q1);
        this.intensity = 1.0f;
        this.exposure = 0.75f;
        this.decay = 0.95f;
        this.density = 0.82f;
        this.weight = 0.28f;
        this.threshold = 0.7f;
        this.f75213S = new Vector2(0.5f, 0.5f);
        this.f75214T = 0.0f;
    }

    public static void buildShaderCache() {
        new GodRaysLightShafts().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new GodRaysLightShafts().buildShaderCacheFromDefaultsForce();
    }

    private boolean projectWorldPointToViewportUv(Camera camera, Vector3 worldPoint, Vector2 outUv) {
        float[] viewMatrix = camera.getViewMatrix();
        float[] frustumMatrix = camera.getFrustumMatrix();
        if (viewMatrix != null && frustumMatrix != null) {
            float x10 = worldPoint.getX();
            float y10 = worldPoint.getY();
            float z10 = worldPoint.getZ();
            float f10 = (viewMatrix[0] * x10) + (viewMatrix[4] * y10) + (viewMatrix[8] * z10) + viewMatrix[12];
            float f11 = (viewMatrix[1] * x10) + (viewMatrix[5] * y10) + (viewMatrix[9] * z10) + viewMatrix[13];
            float f12 = (viewMatrix[2] * x10) + (viewMatrix[6] * y10) + (viewMatrix[10] * z10) + viewMatrix[14];
            float f13 = (viewMatrix[3] * x10) + (viewMatrix[7] * y10) + (viewMatrix[11] * z10) + viewMatrix[15];
            float f14 = (frustumMatrix[0] * f10) + (frustumMatrix[4] * f11) + (frustumMatrix[8] * f12) + (frustumMatrix[12] * f13);
            float f15 = (frustumMatrix[1] * f10) + (frustumMatrix[5] * f11) + (frustumMatrix[9] * f12) + (frustumMatrix[13] * f13);
            float f16 = (frustumMatrix[2] * f10) + (frustumMatrix[6] * f11) + (frustumMatrix[10] * f12) + (frustumMatrix[14] * f13);
            float f17 = (frustumMatrix[3] * f10) + (frustumMatrix[7] * f11) + (frustumMatrix[11] * f12) + (frustumMatrix[15] * f13);
            if (f17 <= 1.0E-5f) {
                return false;
            }
            float f18 = 1.0f / f17;
            float f19 = f14 * f18;
            float f20 = f15 * f18;
            float f21 = f16 * f18;
            if (f21 >= -1.25f && f21 <= 1.25f) {
                outUv.w0((f19 * 0.5f) + 0.5f, 1.0f - ((f20 * 0.5f) + 0.5f));
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
    
        r8 = (com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight) r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateProjectedSun(Camera camera, Tb.a frameBuffer) {
        GameObject gameObject;
        GameObject gameObject2;
        this.f75213S.w0(0.5f, 0.5f);
        this.f75214T = 0.0f;
        if (camera == null || (gameObject = camera.f79250n) == null || gameObject.transform == null || frameBuffer == null) {
            return;
        }
        SunLight sunLight = null;
        try {
            List<com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component> h10 = R8.f.h(SunLight.class);
            int i10 = 0;
            while (true) {
                if (i10 >= h10.size()) {
                    break;
                }
                com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component = h10.get(i10);
                if ((component instanceof SunLight) && component.isHierarchyActive()) {
                    break;
                } else {
                    i10++;
                }
            }
        } catch (Exception unused) {
        }
        if (sunLight == null || (gameObject2 = sunLight.f79250n) == null || gameObject2.transform == null) {
            return;
        }
        Vector3 u02 = camera.f79250n.transform.u0(new Vector3());
        Vector3 normalizeLocal = camera.f79250n.transform.a0(new Vector3()).normalizeLocal();
        Vector3 normalizeLocal2 = sunLight.f79250n.transform.B(new Vector3()).normalizeLocal();
        float max = Math.max(0.0f, normalizeLocal.dot(normalizeLocal2));
        if (max <= 1.0E-4f) {
            return;
        }
        float max2 = Math.max(camera.getRenderDistance() * 0.75f, 32.0f);
        Vector3 vector3 = new Vector3(u02);
        vector3.addLocal(normalizeLocal2.mulLocal(max2));
        if (projectWorldPointToViewportUv(camera, vector3, this.f75213S)) {
            Vector2 vector2 = this.f75213S;
            this.f75214T = max * Math.max(0.0f, Math.min(1.0f - (Math.max(0.0f, Math.abs(vector2.f79838x - 0.5f) - 0.5f) * 2.0f), 1.0f - (Math.max(0.0f, Math.abs(vector2.f79839y - 0.5f) - 0.5f) * 2.0f)));
        }
    }

    @InterfaceC15237a
    public float getDecay() {
        return this.decay;
    }

    @InterfaceC15237a
    public float getDensity() {
        return this.density;
    }

    @Override
    public String getDisplayableTitle() {
        return "God Rays / Light Shafts";
    }

    @InterfaceC15237a
    public float getExposure() {
        return this.exposure;
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
        GameObject gameObject = this.f79250n;
        b bVar = new b();
        b.a aVar = b.a.SLFloat01;
        C5.b bVar2 = new C5.b(bVar, "Intensity", aVar, 4.0f);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar2.d(gameObject, this, "intensity", cVar));
        linkedList.add(new C5.b(new c(), "Exposure", aVar, 4.0f).d(gameObject, this, "exposure", cVar));
        linkedList.add(new C5.b(new d(), "Decay", aVar).d(gameObject, this, "decay", cVar));
        linkedList.add(new C5.b(new e(), "Density", aVar, 4.0f).d(gameObject, this, "density", cVar));
        linkedList.add(new C5.b(new f(), "Weight", aVar, 3.0f).d(gameObject, this, TvContract.PreviewPrograms.COLUMN_WEIGHT, cVar));
        linkedList.add(new C5.b(new g(), "Threshold", aVar).d(gameObject, this, "threshold", cVar));
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @InterfaceC15237a
    public float getThreshold() {
        return this.threshold;
    }

    @Override
    public String getTitle() {
        return f75207b1;
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3) | paramBit(4) | paramBit(5) | paramBit(6) | paramBit(7);
    }

    @InterfaceC15237a
    public float getWeight() {
        return this.weight;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public boolean requiresParameterUploadEveryFrame(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return true;
    }

    @InterfaceC15237a
    public void setDecay(float decay) {
        this.decay = decay;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setDensity(float density) {
        this.density = density;
        markParameterDirty(3);
    }

    @InterfaceC15237a
    public void setExposure(float exposure) {
        this.exposure = exposure;
        markParameterDirty(1);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75215U = run;
    }

    @InterfaceC15237a
    public void setThreshold(float threshold) {
        this.threshold = threshold;
        markParameterDirty(5);
    }

    @InterfaceC15237a
    public void setWeight(float weight) {
        this.weight = weight;
        markParameterDirty(4);
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.intensity > 0.0f;
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75215U == null) {
            this.f75215U = new JAVARuntime.GodRaysLightShafts(this);
        }
        return this.f75215U;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        updateProjectedSun(camera, frameBuffer);
        writer.d("intensity", this.intensity);
        writer.d("exposure", this.exposure);
        writer.d("decay", this.decay);
        writer.d("density", this.density);
        writer.d(TvContract.PreviewPrograms.COLUMN_WEIGHT, this.weight);
        writer.d("threshold", this.threshold);
        Vector2 vector2 = this.f75213S;
        writer.e("sunPos", vector2.f79838x, vector2.f79839y);
        writer.d("sunVisibility", this.f75214T);
    }

    @Override
    public GodRaysLightShafts mo1248clone() {
        GodRaysLightShafts godRaysLightShafts = new GodRaysLightShafts();
        godRaysLightShafts.intensity = this.intensity;
        godRaysLightShafts.exposure = this.exposure;
        godRaysLightShafts.decay = this.decay;
        godRaysLightShafts.density = this.density;
        godRaysLightShafts.weight = this.weight;
        godRaysLightShafts.threshold = this.threshold;
        return godRaysLightShafts;
    }
}

package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.DoublePassPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class LensDistortion extends DoublePassPostProcessPass implements Serializable {

    public static final Map<String, MaterialBuilder.m> f75329D0;

    public static final int f75330U = 0;

    public static final int f75331V = 1;

    public static final int f75332W = 2;

    public static final int f75333X = 3;

    public static final int f75334Y = 4;

    public static final String f75335Z = "LensDistortion";

    public static final Class f75336q0 = LensDistortion.class;

    public static final Map<String, MaterialBuilder.r> f75337v0;

    public float[] f75338S;

    public Component f75339T;

    @Expose
    @eb.f
    private float border;

    @Expose
    @eb.f
    private Vector2 centerV2;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    private e mode;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return LensDistortion.f75336q0;
        }

        @Override
        public String c() {
            return LensDistortion.f75335Z;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Lens";
        }
    }

    public class b extends c.n0<e> {
        public b() {
        }

        @Override
        public void set(e value) {
            LensDistortion.this.setMode(value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", LensDistortion.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            LensDistortion.this.setIntensity(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", LensDistortion.this.getBorder() + "");
        }

        @Override
        public void set(Variable v10) {
            LensDistortion.this.setBorder(v10.float_value);
        }
    }

    public enum e {
        Barrel,
        Pincushion
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT2;
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("strength", rVar), new AbstractMap.SimpleEntry(TestVFXEffect.f77524P, rVar), new AbstractMap.SimpleEntry("aspect", rVar), new AbstractMap.SimpleEntry("center", rVar2), new AbstractMap.SimpleEntry("kvalues", rVar2)});
        f75337v0 = a10;
        f75329D0 = Collections.emptyMap();
    }

    public LensDistortion() {
        super(f75335Z, "lens_distortion", f75337v0, f75329D0);
        this.mode = e.Barrel;
        this.intensity = 0.5f;
        this.border = 0.0f;
        this.centerV2 = new Vector2(0.5f, 0.5f);
        this.f75338S = new float[]{0.1f, 0.05f};
    }

    public static void buildShaderCache() {
        new LensDistortion().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new LensDistortion().buildShaderCacheFromDefaultsForce();
    }

    @InterfaceC15237a
    public float getBorder() {
        return this.border;
    }

    @InterfaceC15237a
    public Vector2 getCenter() {
        return this.centerV2;
    }

    @Override
    public String getDisplayableTitle() {
        return "Eye Distortion (Fisheye)";
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
        linkedList.add(F5.c.i(Lang.l(Lang.T.MODE), e.class, this.mode, new b()));
        c cVar = new c();
        b.a aVar = b.a.SLFloat01;
        C5.b bVar = new C5.b(cVar, "Intensity", aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar.d(gameObject, this, "intensity", cVar2));
        linkedList.add(new C5.b(new d(), "Border", aVar).d(this.f79250n, this, "border", cVar2));
        linkedList.add(F5.c.y(Lang.l(Lang.T.CENTER), this.centerV2, new Vector2(0.5f, 0.5f)).d(this.f79250n, this, "centerV2", com.itsmagic.engine.Engines.Engine.Animation.c.VEC2));
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @InterfaceC15237a
    public e getMode() {
        return this.mode;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(2);
    }

    @Override
    public String getTitle() {
        return f75335Z;
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3) | paramBit(4);
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public void setBorder(float border) {
        this.border = border;
        markParameterDirty(4);
    }

    @InterfaceC15237a
    public void setCenter(Vector2 v10) {
        this.centerV2 = v10;
        markParameterDirty(3);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(4);
    }

    @InterfaceC15237a
    public void setMode(e mode) {
        this.mode = mode;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75339T = run;
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.intensity > 0.0f;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75339T;
        if (component != null) {
            return component;
        }
        JAVARuntime.LensDistortion lensDistortion = new JAVARuntime.LensDistortion(this);
        this.f75339T = lensDistortion;
        return lensDistortion;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        boolean z10 = (dirtyMask & paramBit(4)) != 0;
        if (z10) {
            float[] fArr = this.f75338S;
            float f10 = this.intensity;
            float f11 = this.border;
            fArr[0] = f10 * 0.33f * (1.0f - f11);
            fArr[1] = f10 * 0.33f * f11;
        }
        if ((dirtyMask & paramBit(0)) != 0) {
            writer.d("strength", this.mode == e.Barrel ? -1.0f : 1.0f);
        }
        if ((dirtyMask & paramBit(1)) != 0) {
            writer.d(TestVFXEffect.f77524P, 1.0f);
        }
        if ((dirtyMask & paramBit(3)) != 0) {
            writer.h("center", this.centerV2);
        }
        if ((dirtyMask & paramBit(2)) != 0) {
            writer.d("aspect", frameBuffer.i() / frameBuffer.h());
        }
        if (z10) {
            float[] fArr2 = this.f75338S;
            writer.e("kvalues", fArr2[0], fArr2[1]);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        LensDistortion lensDistortion = new LensDistortion();
        lensDistortion.mode = this.mode;
        lensDistortion.intensity = this.intensity;
        lensDistortion.border = this.border;
        lensDistortion.centerV2 = this.centerV2.clone();
        return lensDistortion;
    }
}

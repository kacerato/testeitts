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
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import ic.C13621U;
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class GaussianBlur extends DoublePassPostProcessPass implements Serializable {

    public static final int f75118T = 0;

    public static final int f75119U = 1;

    public static final int f75120V = 2;

    public static final int f75121W = 3;

    public static final String f75122X = "GaussianBlur";

    public static final Class f75123Y = GaussianBlur.class;

    public static final Map<String, MaterialBuilder.r> f75124Z;

    public static final Map<String, MaterialBuilder.m> f75125q0;

    public Component f75126S;

    @Expose
    @eb.f
    private float blurRadius;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    private e quality;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return GaussianBlur.f75123Y;
        }

        @Override
        public String c() {
            return GaussianBlur.f75122X;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Blur";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", GaussianBlur.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            GaussianBlur.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", GaussianBlur.this.getBlurRadius() + "");
        }

        @Override
        public void set(Variable v10) {
            GaussianBlur.this.setBlurRadius(v10.float_value);
        }
    }

    public class d extends c.n0<e> {
        public d() {
        }

        @Override
        public void a() {
            GaussianBlur.this.reloadInspector();
        }

        @Override
        public void set(e value) {
            GaussianBlur.this.setQuality(value);
        }

        @Override
        public String c(e enumObject) {
            return enumObject.toString();
        }
    }

    public enum e {
        LOW,
        MEDIUM,
        HIGH
    }

    static {
        C13201a.b(new a());
        HashMap hashMap = new HashMap();
        f75124Z = hashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        hashMap.put("intensity", rVar);
        hashMap.put("blurRadius", rVar);
        hashMap.put("texelSize", MaterialBuilder.r.FLOAT2);
        hashMap.put("quality", rVar);
        f75125q0 = new HashMap();
    }

    public GaussianBlur() {
        super(f75122X, "gaussian_blur", f75124Z, f75125q0);
        this.intensity = 1.0f;
        this.blurRadius = 0.25f;
        this.quality = e.HIGH;
    }

    public static void buildShaderCache() {
        new GaussianBlur().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new GaussianBlur().buildShaderCacheFromDefaultsForce();
    }

    private float getQualityValue() {
        int ordinal = this.quality.ordinal();
        if (ordinal != 0) {
            return ordinal != 2 ? 1.0f : 2.0f;
        }
        return 0.0f;
    }

    @InterfaceC15237a
    public float getBlurRadius() {
        return this.blurRadius;
    }

    @Override
    public String getDisplayableTitle() {
        return C13621U.f91826e;
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
        C5.b bVar2 = new C5.b(bVar, "Intensity", aVar);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "intensity", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), "Blur Radius", aVar);
        bVar3.d(gameObject, this, "blurRadius", cVar);
        linkedList.add(bVar3);
        linkedList.add(F5.c.i(Lang.l(Lang.T.QUALITY), e.class, this.quality, new d()));
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @InterfaceC15237a
    public e getQuality() {
        return this.quality;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(2);
    }

    @Override
    public String getTitle() {
        return f75122X;
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3);
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public void setBlurRadius(float blurRadius) {
        this.blurRadius = blurRadius;
        markParameterDirty(1);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setQuality(e quality) {
        this.quality = quality;
        markParameterDirty(3);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75126S = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75126S;
        if (component != null) {
            return component;
        }
        JAVARuntime.GaussianBlur gaussianBlur = new JAVARuntime.GaussianBlur(this);
        this.f75126S = gaussianBlur;
        return gaussianBlur;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("blurRadius", this.blurRadius * 10.0f);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.d("quality", getQualityValue());
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            int i10 = frameBuffer.i();
            int h10 = frameBuffer.h();
            writer.e("texelSize", i10 > 0 ? 1.0f / i10 : 0.0f, h10 > 0 ? 1.0f / h10 : 0.0f);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        GaussianBlur gaussianBlur = new GaussianBlur();
        gaussianBlur.intensity = this.intensity;
        gaussianBlur.blurRadius = this.blurRadius;
        gaussianBlur.quality = this.quality;
        return gaussianBlur;
    }
}

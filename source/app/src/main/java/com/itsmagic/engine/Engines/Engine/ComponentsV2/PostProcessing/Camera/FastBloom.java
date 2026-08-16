package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
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
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class FastBloom extends DoublePassPostProcessPass implements Serializable {

    public static final int f75073T = 0;

    public static final int f75074U = 1;

    public static final int f75075V = 2;

    public static final int f75076W = 3;

    public static final String f75077X = "FastBloom";

    public static final Class f75078Y = FastBloom.class;

    public static final Map<String, MaterialBuilder.r> f75079Z;

    public static final Map<String, MaterialBuilder.m> f75080q0;

    public Component f75081S;

    @Expose
    @eb.f
    private float blurSize;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float threshold;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return FastBloom.f75078Y;
        }

        @Override
        public String c() {
            return FastBloom.f75077X;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Highlights";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", FastBloom.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            FastBloom.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", FastBloom.this.getThreshold() + "");
        }

        @Override
        public void set(Variable v10) {
            FastBloom.this.setThreshold(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", FastBloom.this.getBlurSize() + "");
        }

        @Override
        public void set(Variable v10) {
            FastBloom.this.setBlurSize(v10.float_value);
        }
    }

    static {
        C13201a.b(new a());
        HashMap hashMap = new HashMap();
        f75079Z = hashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        hashMap.put("intensity", rVar);
        hashMap.put("threshold", rVar);
        hashMap.put("blurSize", rVar);
        hashMap.put("texelSize", MaterialBuilder.r.FLOAT2);
        f75080q0 = new HashMap();
    }

    public FastBloom() {
        super(f75077X, "fast_bloom", f75079Z, f75080q0);
        this.intensity = 1.0f;
        this.threshold = 0.5f;
        this.blurSize = 1.0f;
    }

    public static void buildShaderCache() {
        new FastBloom().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new FastBloom().buildShaderCacheFromDefaultsForce();
    }

    @InterfaceC15237a
    public float getBlurSize() {
        return this.blurSize;
    }

    @Override
    public String getDisplayableTitle() {
        return "Fast Bloom";
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
        C5.b bVar2 = new C5.b(bVar, "Intensity", aVar, 3.0f);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "intensity", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), "Threshold", aVar);
        bVar3.d(gameObject, this, "threshold", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new d(), "Blur Size", aVar, 5.0f);
        bVar4.d(gameObject, this, "blurSize", cVar);
        linkedList.add(bVar4);
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(3);
    }

    @InterfaceC15237a
    public float getThreshold() {
        return this.threshold;
    }

    @Override
    public String getTitle() {
        return f75077X;
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
    public void setBlurSize(float blurSize) {
        this.blurSize = blurSize;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75081S = run;
    }

    @InterfaceC15237a
    public void setThreshold(float threshold) {
        this.threshold = threshold;
        markParameterDirty(1);
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.intensity > 0.0f && this.blurSize > 0.0f;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75081S;
        if (component != null) {
            return component;
        }
        JAVARuntime.FastBloom fastBloom = new JAVARuntime.FastBloom(this);
        this.f75081S = fastBloom;
        return fastBloom;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("threshold", this.threshold);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("blurSize", this.blurSize * 5.0f);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            int i10 = frameBuffer.i();
            int h10 = frameBuffer.h();
            writer.e("texelSize", i10 > 0 ? 1.0f / i10 : 0.0f, h10 > 0 ? 1.0f / h10 : 0.0f);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        FastBloom fastBloom = new FastBloom();
        fastBloom.intensity = this.intensity;
        fastBloom.threshold = this.threshold;
        fastBloom.blurSize = this.blurSize;
        return fastBloom;
    }
}

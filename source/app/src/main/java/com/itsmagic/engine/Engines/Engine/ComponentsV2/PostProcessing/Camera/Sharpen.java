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

public class Sharpen extends DoublePassPostProcessPass implements Serializable {

    public static final int f75719T = 0;

    public static final int f75720U = 1;

    public static final int f75721V = 2;

    public static final int f75722W = 3;

    public static final String f75723X = "Sharpen";

    public static final Class f75724Y = Sharpen.class;

    public static final Map<String, MaterialBuilder.r> f75725Z;

    public static final Map<String, MaterialBuilder.m> f75726q0;

    public Component f75727S;

    @Expose
    @eb.f
    private float edgeThreshold;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float sharpenStrength;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Sharpen.f75724Y;
        }

        @Override
        public String c() {
            return "Sharpen";
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
            return new Variable("", Sharpen.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            Sharpen.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", Sharpen.this.getSharpenStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            Sharpen.this.setSharpenStrength(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Sharpen.this.getEdgeThreshold() + "");
        }

        @Override
        public void set(Variable v10) {
            Sharpen.this.setEdgeThreshold(v10.float_value);
        }
    }

    static {
        C13201a.b(new a());
        HashMap hashMap = new HashMap();
        f75725Z = hashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        hashMap.put("intensity", rVar);
        hashMap.put("sharpenStrength", rVar);
        hashMap.put("edgeThreshold", rVar);
        hashMap.put("texelSize", MaterialBuilder.r.FLOAT2);
        f75726q0 = new HashMap();
    }

    public Sharpen() {
        super("Sharpen", "sharpen", f75725Z, f75726q0);
        this.intensity = 1.0f;
        this.sharpenStrength = 0.5f;
        this.edgeThreshold = 0.02f;
    }

    public static void buildShaderCache() {
        new Sharpen().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new Sharpen().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public String getDisplayableTitle() {
        return "Sharpen";
    }

    @InterfaceC15237a
    public float getEdgeThreshold() {
        return this.edgeThreshold;
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
        b bVar = new b();
        b.a aVar = b.a.SLFloat01;
        C5.b bVar2 = new C5.b(bVar, "Intensity", aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar2.d(gameObject, this, "intensity", cVar));
        linkedList.add(new C5.b(new c(), "Sharpen Strength", aVar, 2.0f).d(this.f79250n, this, "sharpenStrength", cVar));
        linkedList.add(new C5.b(new d(), "Edge Threshold", aVar, 0.5f).d(this.f79250n, this, "edgeThreshold", cVar));
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
    public float getSharpenStrength() {
        return this.sharpenStrength;
    }

    @Override
    public String getTitle() {
        return "Sharpen";
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
    public void setEdgeThreshold(float edgeThreshold) {
        this.edgeThreshold = edgeThreshold;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75727S = run;
    }

    @InterfaceC15237a
    public void setSharpenStrength(float sharpenStrength) {
        this.sharpenStrength = sharpenStrength;
        markParameterDirty(1);
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75727S;
        if (component != null) {
            return component;
        }
        JAVARuntime.Sharpen sharpen = new JAVARuntime.Sharpen(this);
        this.f75727S = sharpen;
        return sharpen;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("sharpenStrength", this.sharpenStrength);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("edgeThreshold", this.edgeThreshold);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            int i10 = frameBuffer.i();
            int h10 = frameBuffer.h();
            writer.e("texelSize", i10 > 0 ? 1.0f / i10 : 0.0f, h10 > 0 ? 1.0f / h10 : 0.0f);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        Sharpen sharpen = new Sharpen();
        sharpen.intensity = this.intensity;
        sharpen.sharpenStrength = this.sharpenStrength;
        sharpen.edgeThreshold = this.edgeThreshold;
        return sharpen;
    }
}

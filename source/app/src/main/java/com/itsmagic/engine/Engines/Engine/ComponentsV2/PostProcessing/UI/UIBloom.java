package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.DoublePassUIPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
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

public class UIBloom extends DoublePassUIPostProcessPass implements Serializable {

    public static final int f75959T = 0;

    public static final int f75960U = 1;

    public static final int f75961V = 2;

    public static final int f75962W = 3;

    public static final int f75963X = 4;

    public static final String f75964Y = "UIBloom";

    public static final Class f75965Z = UIBloom.class;

    public static final Map<String, MaterialBuilder.r> f75966q0;

    public static final Map<String, MaterialBuilder.m> f75967v0;

    public Component f75968S;

    @Expose
    @eb.f
    private float blurRadius;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private f quality;

    @Expose
    @eb.f
    private float threshold;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIBloom.f75965Z;
        }

        @Override
        public String c() {
            return UIBloom.f75964Y;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UI_POST_PROCESSING);
        }

        @Override
        public String h(boolean translate) {
            return "Bloom";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIBloom.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            UIBloom.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIBloom.this.getThreshold() + "");
        }

        @Override
        public void set(Variable v10) {
            UIBloom.this.setThreshold(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIBloom.this.getBlurRadius() + "");
        }

        @Override
        public void set(Variable v10) {
            UIBloom.this.setBlurRadius(v10.float_value);
        }
    }

    public class e extends c.n0<f> {
        public e() {
        }

        @Override
        public void a() {
            UIBloom.this.reloadInspector();
        }

        @Override
        public void set(f value) {
            UIBloom.this.setQuality(value);
        }

        @Override
        public String c(f enumObject) {
            return enumObject.toString();
        }
    }

    public enum f {
        LOW,
        MEDIUM,
        HIGH
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("intensity", rVar), new AbstractMap.SimpleEntry("threshold", rVar), new AbstractMap.SimpleEntry("blurRadius", rVar), new AbstractMap.SimpleEntry("texelSize", MaterialBuilder.r.FLOAT2), new AbstractMap.SimpleEntry("quality", rVar)});
        f75966q0 = a10;
        f75967v0 = Collections.emptyMap();
    }

    public UIBloom() {
        super(f75964Y, "ui_bloom", f75966q0, f75967v0);
        this.intensity = 0.6f;
        this.threshold = 0.1f;
        this.blurRadius = 1.0f;
        this.quality = f.HIGH;
    }

    public static void buildShaderCache() {
        new UIBloom().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new UIBloom().buildShaderCacheFromDefaultsForce();
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
        return "Bloom";
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
        String l10 = Lang.l(Lang.T.INTENSITY);
        b.a aVar = b.a.SLFloat01;
        C5.b bVar2 = new C5.b(bVar, l10, aVar);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "intensity", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), Lang.l(Lang.T.THRESHOLD), aVar);
        bVar3.d(gameObject, this, "threshold", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new d(), Lang.l(Lang.T.BLUR_RADIUS), aVar);
        bVar4.d(gameObject, this, "blurRadius", cVar);
        linkedList.add(bVar4);
        linkedList.add(F5.c.i(Lang.l(Lang.T.QUALITY), f.class, this.quality, new e()));
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @InterfaceC15237a
    public f getQuality() {
        return this.quality;
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
        return "UI Bloom";
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
    public void setBlurRadius(float blurRadius) {
        this.blurRadius = blurRadius;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setQuality(f quality) {
        this.quality = quality;
        markParameterDirty(4);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75968S = run;
    }

    @InterfaceC15237a
    public void setThreshold(float threshold) {
        this.threshold = threshold;
        markParameterDirty(1);
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75968S;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIBloom uIBloom = new JAVARuntime.UIBloom(this);
        this.f75968S = uIBloom;
        return uIBloom;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassUIPostProcessPass.b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        int max = Math.max(1, frameBuffer.i());
        int max2 = Math.max(1, frameBuffer.h());
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity * 3.0f);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("threshold", this.threshold);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("blurRadius", this.blurRadius * 10.0f);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.e("texelSize", 1.0f / max, 1.0f / max2);
        }
        if ((paramBit(4) & dirtyMask) != 0) {
            writer.d("quality", getQualityValue());
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIBloom uIBloom = new UIBloom();
        uIBloom.intensity = this.intensity;
        uIBloom.threshold = this.threshold;
        uIBloom.blurRadius = this.blurRadius;
        uIBloom.quality = this.quality;
        return uIBloom;
    }
}

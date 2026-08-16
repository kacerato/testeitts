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
import ic.C13621U;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class UIGaussianBlur extends DoublePassUIPostProcessPass implements Serializable {

    public static final int f76033T = 0;

    public static final int f76034U = 1;

    public static final int f76035V = 2;

    public static final int f76036W = 3;

    public static final String f76037X = "UIGaussianBlur";

    public static final Class f76038Y = UIGaussianBlur.class;

    public static final Map<String, MaterialBuilder.r> f76039Z;

    public static final Map<String, MaterialBuilder.m> f76040q0;

    public Component f76041S;

    @Expose
    @eb.f
    private float blurRadius;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private e quality;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIGaussianBlur.f76038Y;
        }

        @Override
        public String c() {
            return UIGaussianBlur.f76037X;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UI_POST_PROCESSING);
        }

        @Override
        public String h(boolean translate) {
            return C13621U.f91826e;
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIGaussianBlur.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            UIGaussianBlur.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIGaussianBlur.this.getBlurRadius() + "");
        }

        @Override
        public void set(Variable v10) {
            UIGaussianBlur.this.setBlurRadius(v10.float_value);
        }
    }

    public class d extends c.n0<e> {
        public d() {
        }

        @Override
        public void a() {
            UIGaussianBlur.this.reloadInspector();
        }

        @Override
        public void set(e value) {
            UIGaussianBlur.this.setQuality(value);
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
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("intensity", rVar), new AbstractMap.SimpleEntry("blurRadius", rVar), new AbstractMap.SimpleEntry("texelSize", MaterialBuilder.r.FLOAT2), new AbstractMap.SimpleEntry("quality", rVar)});
        f76039Z = a10;
        f76040q0 = Collections.emptyMap();
    }

    public UIGaussianBlur() {
        super(f76037X, "ui_gaussian_blur", f76039Z, f76040q0);
        this.intensity = 1.0f;
        this.blurRadius = 0.25f;
        this.quality = e.HIGH;
    }

    public static void buildShaderCache() {
        new UIGaussianBlur().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new UIGaussianBlur().buildShaderCacheFromDefaultsForce();
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
        return "UI Gaussian Blur";
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
        C5.b bVar3 = new C5.b(new c(), Lang.l(Lang.T.BLUR_RADIUS), aVar);
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
        return "UI Gaussian Blur";
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
        this.f76041S = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f76041S;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIGaussianBlur uIGaussianBlur = new JAVARuntime.UIGaussianBlur(this);
        this.f76041S = uIGaussianBlur;
        return uIGaussianBlur;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassUIPostProcessPass.b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        int max = Math.max(1, frameBuffer.i());
        int max2 = Math.max(1, frameBuffer.h());
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("blurRadius", this.blurRadius * 10.0f);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.e("texelSize", 1.0f / max, 1.0f / max2);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.d("quality", getQualityValue());
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIGaussianBlur uIGaussianBlur = new UIGaussianBlur();
        uIGaussianBlur.intensity = this.intensity;
        uIGaussianBlur.blurRadius = this.blurRadius;
        uIGaussianBlur.quality = this.quality;
        return uIGaussianBlur;
    }
}

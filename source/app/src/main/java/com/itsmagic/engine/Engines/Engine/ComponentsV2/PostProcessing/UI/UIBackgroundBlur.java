package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.Renderer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.DoublePassUIPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;
import yb.C16165b;

public class UIBackgroundBlur extends DoublePassUIPostProcessPass implements Serializable {

    public static final int f75945T = 0;

    public static final int f75946U = 1;

    public static final int f75947V = 2;

    public static final int f75948W = 3;

    public static final String f75949X = "UIBackgroundBlur";

    public static final Class f75950Y = UIBackgroundBlur.class;

    public static final Map<String, MaterialBuilder.r> f75951Z;

    public static final Map<String, MaterialBuilder.m> f75952q0;

    public Component f75953S;

    @Expose
    @eb.f
    private float blurRadius;

    @Expose
    @eb.f
    private d quality;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIBackgroundBlur.f75950Y;
        }

        @Override
        public String c() {
            return UIBackgroundBlur.f75949X;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UI_POST_PROCESSING);
        }

        @Override
        public String h(boolean translate) {
            return "Background Blur";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIBackgroundBlur.this.getBlurRadius() + "");
        }

        @Override
        public void set(Variable v10) {
            UIBackgroundBlur.this.setBlurRadius(v10.float_value);
        }
    }

    public class c extends c.n0<d> {
        public c() {
        }

        @Override
        public void a() {
            UIBackgroundBlur.this.reloadInspector();
        }

        @Override
        public void set(d value) {
            UIBackgroundBlur.this.setQuality(value);
        }

        @Override
        public String c(d enumObject) {
            return enumObject.toString();
        }
    }

    public enum d {
        LOW,
        MEDIUM,
        HIGH
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        Map<String, MaterialBuilder.m> a11;
        C13201a.b(new a());
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("blurRadius", rVar), new AbstractMap.SimpleEntry("texelSize", MaterialBuilder.r.FLOAT2), new AbstractMap.SimpleEntry("quality", rVar)});
        f75951Z = a10;
        a11 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("backgroundTex", MaterialBuilder.m.SAMPLER_2D)});
        f75952q0 = a11;
    }

    public UIBackgroundBlur() {
        super(f75949X, "ui_background_blur", f75951Z, f75952q0);
        this.blurRadius = 0.25f;
        this.quality = d.HIGH;
    }

    public static void buildShaderCache() {
        new UIBackgroundBlur().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new UIBackgroundBlur().buildShaderCacheFromDefaultsForce();
    }

    private float getQualityValue() {
        int ordinal = this.quality.ordinal();
        if (ordinal != 0) {
            return ordinal != 2 ? 1.0f : 2.0f;
        }
        return 0.0f;
    }

    @Override
    public void applyAfterRender(UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer) {
        Renderer g10 = Qb.a.g();
        Renderer.a e10 = g10.e();
        double[] dArr = e10.f60065a;
        double[] copyOf = Arrays.copyOf(dArr, dArr.length);
        boolean z10 = e10.f60066b;
        boolean z11 = e10.f60067c;
        e10.f60066b = true;
        e10.f60067c = true;
        double[] dArr2 = e10.f60065a;
        dArr2[0] = 0.0d;
        dArr2[1] = 0.0d;
        dArr2[2] = 0.0d;
        dArr2[3] = 0.0d;
        g10.r(e10);
        super.applyAfterRender(uIController, frameBuffer, cacheBuffer);
        e10.f60066b = z10;
        e10.f60067c = z11;
        System.arraycopy(copyOf, 0, e10.f60065a, 0, copyOf.length);
        g10.r(e10);
    }

    @InterfaceC15237a
    public float getBlurRadius() {
        return this.blurRadius;
    }

    @Override
    public String getDisplayableTitle() {
        return "Background Blur";
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
        C5.b bVar = new C5.b(new b(), "Blur radius", b.a.SLFloat01);
        bVar.d(gameObject, this, "blurRadius", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        linkedList.add(bVar);
        linkedList.add(F5.c.i(Lang.l(Lang.T.QUALITY), d.class, this.quality, new c()));
        return linkedList;
    }

    @InterfaceC15237a
    public d getQuality() {
        return this.quality;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(1) | paramBit(2);
    }

    @Override
    public String getTitle() {
        return "UI Background Blur";
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
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setQuality(d quality) {
        this.quality = quality;
        markParameterDirty(3);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75953S = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75953S;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIBackgroundBlur uIBackgroundBlur = new JAVARuntime.UIBackgroundBlur(this);
        this.f75953S = uIBackgroundBlur;
        return uIBackgroundBlur;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassUIPostProcessPass.b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        Camera mainCamera = Camera.mainCamera();
        ub.p pVar = C16165b.f130162h;
        if (mainCamera != null && mainCamera.getImageBuffer() != null && ub.p.L(mainCamera.getImageBuffer().l())) {
            pVar = mainCamera.getImageBuffer().l();
        }
        int max = Math.max(1, pVar.getWidth());
        int max2 = Math.max(1, pVar.getHeight());
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("blurRadius", this.blurRadius * 10.0f);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.e("texelSize", 1.0f / max, 1.0f / max2);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.a("backgroundTex", pVar);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.d("quality", getQualityValue());
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIBackgroundBlur uIBackgroundBlur = new UIBackgroundBlur();
        uIBackgroundBlur.blurRadius = this.blurRadius;
        uIBackgroundBlur.quality = this.quality;
        return uIBackgroundBlur;
    }
}

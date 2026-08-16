package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI;

import C5.b;
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
import ic.F1;
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class UIVHSFilter extends DoublePassUIPostProcessPass implements Serializable {

    public static final int f76136D0 = 8;

    public static final int f76137U = 0;

    public static final int f76138V = 1;

    public static final int f76139W = 2;

    public static final int f76140X = 3;

    public static final int f76141Y = 4;

    public static final int f76142Z = 5;

    public static final int f76143b1 = 9;

    public static final int f76144i1 = 10;

    public static final String f76145m1 = "UIVHSFilter";

    public static final int f76146q0 = 6;

    public static final Class f76147q1 = UIVHSFilter.class;

    public static final int f76148v0 = 7;

    public static final Map<String, MaterialBuilder.r> f76149v1;

    public static final Map<String, MaterialBuilder.m> f76150y1;

    public float f76151S;

    public Component f76152T;

    @Expose
    @eb.f
    private float colorBleed;

    @Expose
    @eb.f
    private float desaturation;

    @Expose
    @eb.f
    private float distortion;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float noiseStrength;

    @Expose
    @eb.f
    private float scanlineStrength;

    @Expose
    @eb.f
    private float trackingBandHeight;

    @Expose
    @eb.f
    private float trackingNoise;

    @Expose
    @eb.f
    private float trackingSpeed;

    @Expose
    @eb.f
    private float trackingStrength;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVHSFilter.this.getTrackingSpeed() + "");
        }

        @Override
        public void set(Variable v10) {
            UIVHSFilter.this.setTrackingSpeed(v10.float_value);
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVHSFilter.this.getTrackingNoise() + "");
        }

        @Override
        public void set(Variable v10) {
            UIVHSFilter.this.setTrackingNoise(v10.float_value);
        }
    }

    public class c extends AbstractC13203c {
        @Override
        public Class b() {
            return UIVHSFilter.f76147q1;
        }

        @Override
        public String c() {
            return UIVHSFilter.f76145m1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UI_POST_PROCESSING);
        }

        @Override
        public String h(boolean translate) {
            return F1.f91717e;
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVHSFilter.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            UIVHSFilter.this.setIntensity(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVHSFilter.this.getDesaturation() + "");
        }

        @Override
        public void set(Variable v10) {
            UIVHSFilter.this.setDesaturation(v10.float_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVHSFilter.this.getColorBleed() + "");
        }

        @Override
        public void set(Variable v10) {
            UIVHSFilter.this.setColorBleed(v10.float_value);
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVHSFilter.this.getScanlineStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            UIVHSFilter.this.setScanlineStrength(v10.float_value);
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVHSFilter.this.getDistortion() + "");
        }

        @Override
        public void set(Variable v10) {
            UIVHSFilter.this.setDistortion(v10.float_value);
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVHSFilter.this.getNoiseStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            UIVHSFilter.this.setNoiseStrength(v10.float_value);
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVHSFilter.this.getTrackingStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            UIVHSFilter.this.setTrackingStrength(v10.float_value);
        }
    }

    public class k implements D5.h {
        public k() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIVHSFilter.this.getTrackingBandHeight() + "");
        }

        @Override
        public void set(Variable v10) {
            UIVHSFilter.this.setTrackingBandHeight(v10.float_value);
        }
    }

    static {
        C13201a.b(new c());
        HashMap hashMap = new HashMap();
        f76149v1 = hashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        hashMap.put("intensity", rVar);
        hashMap.put("desaturation", rVar);
        hashMap.put("colorBleed", rVar);
        hashMap.put("scanlineStrength", rVar);
        hashMap.put("distortion", rVar);
        hashMap.put("noiseStrength", rVar);
        hashMap.put("time", rVar);
        hashMap.put("trackingStrength", rVar);
        hashMap.put("trackingBandHeight", rVar);
        hashMap.put("trackingSpeed", rVar);
        hashMap.put("trackingNoise", rVar);
        f76150y1 = new HashMap();
    }

    public UIVHSFilter() {
        super(f76145m1, "vhs_filter", f76149v1, f76150y1);
        this.intensity = 1.0f;
        this.desaturation = 0.4f;
        this.colorBleed = 0.8f;
        this.scanlineStrength = 0.7f;
        this.distortion = 0.05f;
        this.noiseStrength = 0.4f;
        this.trackingStrength = 0.8f;
        this.trackingBandHeight = 0.15f;
        this.trackingSpeed = 0.3f;
        this.trackingNoise = 0.6f;
        this.f76151S = 0.0f;
    }

    public static void buildShaderCache() {
        new UIVHSFilter().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new UIVHSFilter().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.f76151S = 0.0f;
    }

    @InterfaceC15237a
    public float getColorBleed() {
        return this.colorBleed;
    }

    @InterfaceC15237a
    public float getDesaturation() {
        return this.desaturation;
    }

    @Override
    public String getDisplayableTitle() {
        return F1.f91717e;
    }

    @InterfaceC15237a
    public float getDistortion() {
        return this.distortion;
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
        d dVar = new d();
        String l10 = Lang.l(Lang.T.INTENSITY);
        b.a aVar = b.a.SLFloat01;
        C5.b bVar = new C5.b(dVar, l10, aVar);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar.d(gameObject, this, "intensity", cVar);
        linkedList.add(bVar);
        C5.b bVar2 = new C5.b(new e(), Lang.l(Lang.T.DESATURATION), aVar);
        bVar2.d(gameObject, this, "desaturation", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new f(), Lang.l(Lang.T.COLOR_BLEED), aVar);
        bVar3.d(gameObject, this, "colorBleed", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new g(), Lang.l(Lang.T.SCANLINE_STRENGTH), aVar);
        bVar4.d(gameObject, this, "scanlineStrength", cVar);
        linkedList.add(bVar4);
        C5.b bVar5 = new C5.b(new h(), Lang.l(Lang.T.DISTORTION), aVar);
        bVar5.d(gameObject, this, "distortion", cVar);
        linkedList.add(bVar5);
        C5.b bVar6 = new C5.b(new i(), Lang.l(Lang.T.NOISE_STRENGTH), aVar);
        bVar6.d(gameObject, this, "noiseStrength", cVar);
        linkedList.add(bVar6);
        C5.b bVar7 = new C5.b(new j(), Lang.l(Lang.T.TRACKING_STRENGTH), aVar);
        bVar7.d(gameObject, this, "trackingStrength", cVar);
        linkedList.add(bVar7);
        C5.b bVar8 = new C5.b(new k(), Lang.l(Lang.T.TRACKING_BAND_HEIGHT), aVar);
        bVar8.d(gameObject, this, "trackingBandHeight", cVar);
        linkedList.add(bVar8);
        C5.b bVar9 = new C5.b(new a(), Lang.l(Lang.T.TRACKING_SPEED), aVar);
        bVar9.d(gameObject, this, "trackingSpeed", cVar);
        linkedList.add(bVar9);
        C5.b bVar10 = new C5.b(new b(), Lang.l(Lang.T.TRACKING_NOISE), aVar);
        bVar10.d(gameObject, this, "trackingNoise", cVar);
        linkedList.add(bVar10);
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @InterfaceC15237a
    public float getNoiseStrength() {
        return this.noiseStrength;
    }

    @InterfaceC15237a
    public float getScanlineStrength() {
        return this.scanlineStrength;
    }

    @InterfaceC15237a
    public float getTime() {
        return this.f76151S;
    }

    @Override
    public String getTitle() {
        return "UI VHSFilter";
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3) | paramBit(4) | paramBit(5) | paramBit(6) | paramBit(7) | paramBit(8) | paramBit(9) | paramBit(10);
    }

    @InterfaceC15237a
    public float getTrackingBandHeight() {
        return this.trackingBandHeight;
    }

    @InterfaceC15237a
    public float getTrackingNoise() {
        return this.trackingNoise;
    }

    @InterfaceC15237a
    public float getTrackingSpeed() {
        return this.trackingSpeed;
    }

    @InterfaceC15237a
    public float getTrackingStrength() {
        return this.trackingStrength;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.f76151S += K8.d.b();
        markParameterDirty(6);
    }

    @InterfaceC15237a
    public void setColorBleed(float colorBleed) {
        this.colorBleed = colorBleed;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setDesaturation(float desaturation) {
        this.desaturation = desaturation;
        markParameterDirty(1);
    }

    @InterfaceC15237a
    public void setDistortion(float distortion) {
        this.distortion = distortion;
        markParameterDirty(4);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setNoiseStrength(float noiseStrength) {
        this.noiseStrength = noiseStrength;
        markParameterDirty(5);
    }

    @Override
    public void setRuntime(Component run) {
        this.f76152T = run;
    }

    @InterfaceC15237a
    public void setScanlineStrength(float scanlineStrength) {
        this.scanlineStrength = scanlineStrength;
        markParameterDirty(3);
    }

    @InterfaceC15237a
    public void setTime(float time) {
        this.f76151S = time;
        markParameterDirty(6);
    }

    @InterfaceC15237a
    public void setTrackingBandHeight(float trackingBandHeight) {
        this.trackingBandHeight = trackingBandHeight;
        markParameterDirty(8);
    }

    @InterfaceC15237a
    public void setTrackingNoise(float trackingNoise) {
        this.trackingNoise = trackingNoise;
        markParameterDirty(10);
    }

    @InterfaceC15237a
    public void setTrackingSpeed(float trackingSpeed) {
        this.trackingSpeed = trackingSpeed;
        markParameterDirty(9);
    }

    @InterfaceC15237a
    public void setTrackingStrength(float trackingStrength) {
        this.trackingStrength = trackingStrength;
        markParameterDirty(7);
    }

    @Override
    public boolean shouldApplyPreUpdatePass(UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.intensity > 0.0f;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f76152T;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIVHSFilter uIVHSFilter = new JAVARuntime.UIVHSFilter(this);
        this.f76152T = uIVHSFilter;
        return uIVHSFilter;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassUIPostProcessPass.b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("desaturation", this.desaturation);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("colorBleed", this.colorBleed);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.d("scanlineStrength", this.scanlineStrength);
        }
        if ((paramBit(4) & dirtyMask) != 0) {
            writer.d("distortion", this.distortion);
        }
        if ((paramBit(5) & dirtyMask) != 0) {
            writer.d("noiseStrength", this.noiseStrength);
        }
        if ((paramBit(6) & dirtyMask) != 0) {
            writer.d("time", this.f76151S);
        }
        if ((paramBit(7) & dirtyMask) != 0) {
            writer.d("trackingStrength", this.trackingStrength);
        }
        if ((paramBit(8) & dirtyMask) != 0) {
            writer.d("trackingBandHeight", this.trackingBandHeight);
        }
        if ((paramBit(9) & dirtyMask) != 0) {
            writer.d("trackingSpeed", this.trackingSpeed);
        }
        if ((paramBit(10) & dirtyMask) != 0) {
            writer.d("trackingNoise", this.trackingNoise);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIVHSFilter uIVHSFilter = new UIVHSFilter();
        uIVHSFilter.intensity = this.intensity;
        uIVHSFilter.desaturation = this.desaturation;
        uIVHSFilter.colorBleed = this.colorBleed;
        uIVHSFilter.scanlineStrength = this.scanlineStrength;
        uIVHSFilter.distortion = this.distortion;
        uIVHSFilter.noiseStrength = this.noiseStrength;
        uIVHSFilter.trackingStrength = this.trackingStrength;
        uIVHSFilter.trackingBandHeight = this.trackingBandHeight;
        uIVHSFilter.trackingSpeed = this.trackingSpeed;
        uIVHSFilter.trackingNoise = this.trackingNoise;
        return uIVHSFilter;
    }
}

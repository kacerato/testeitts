package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.DoublePassPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import ic.B0;
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class NightVision extends DoublePassPostProcessPass implements Serializable {

    public static final int f75376D0 = 8;

    public static final int f75377U = 0;

    public static final int f75378V = 1;

    public static final int f75379W = 2;

    public static final int f75380X = 3;

    public static final int f75381Y = 4;

    public static final int f75382Z = 5;

    public static final int f75383b1 = 9;

    public static final String f75384i1 = "NightVision";

    public static final Class f75385m1 = NightVision.class;

    public static final int f75386q0 = 6;

    public static final Map<String, MaterialBuilder.r> f75387q1;

    public static final int f75388v0 = 7;

    public static final Map<String, MaterialBuilder.m> f75389v1;

    public float f75390S;

    public Component f75391T;

    @Expose
    @eb.f
    private float brightness;

    @Expose
    @eb.f
    private float contrast;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float noiseStrength;

    @Expose
    @eb.f
    private float scanlineCount;

    @Expose
    @eb.f
    private float scanlineStrength;

    @Expose
    @eb.f
    private ColorINT tintColor;

    @Expose
    @eb.f
    private float vignetteStrength;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return NightVision.f75385m1;
        }

        @Override
        public String c() {
            return NightVision.f75384i1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Film";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", NightVision.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            NightVision.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", NightVision.this.getBrightness() + "");
        }

        @Override
        public void set(Variable v10) {
            NightVision.this.setBrightness(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", NightVision.this.getContrast() + "");
        }

        @Override
        public void set(Variable v10) {
            NightVision.this.setContrast(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", NightVision.this.getNoiseStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            NightVision.this.setNoiseStrength(v10.float_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", NightVision.this.getScanlineStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            NightVision.this.setScanlineStrength(v10.float_value);
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", NightVision.this.getScanlineCount() + "");
        }

        @Override
        public void set(Variable v10) {
            NightVision.this.setScanlineCount(v10.float_value);
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", NightVision.this.getVignetteStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            NightVision.this.setVignetteStrength(v10.float_value);
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", NightVision.this.tintColor);
        }

        @Override
        public void set(Variable v10) {
            ColorINT colorINT;
            if (v10 == null || (colorINT = v10.color_value) == null) {
                return;
            }
            NightVision.this.setTintColor(colorINT);
        }
    }

    static {
        C13201a.b(new a());
        HashMap hashMap = new HashMap();
        f75387q1 = hashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        hashMap.put("intensity", rVar);
        hashMap.put("brightness", rVar);
        hashMap.put("contrast", rVar);
        hashMap.put("noiseStrength", rVar);
        hashMap.put("scanlineStrength", rVar);
        hashMap.put("scanlineCount", rVar);
        hashMap.put("vignetteStrength", rVar);
        hashMap.put("aspect", rVar);
        hashMap.put("tintColor", MaterialBuilder.r.FLOAT3);
        hashMap.put("time", rVar);
        f75389v1 = new HashMap();
    }

    public NightVision() {
        super(f75384i1, "night_vision", f75387q1, f75389v1);
        this.intensity = 1.0f;
        this.brightness = 0.1f;
        this.contrast = 1.5f;
        this.noiseStrength = 0.4f;
        this.scanlineStrength = 0.3f;
        this.scanlineCount = 480.0f;
        this.vignetteStrength = 0.7f;
        this.tintColor = new ColorINT(100, 255, 140);
        this.f75390S = 0.0f;
    }

    public static void buildShaderCache() {
        new NightVision().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new NightVision().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.f75390S = 0.0f;
    }

    @InterfaceC15237a
    public float getBrightness() {
        return this.brightness;
    }

    @InterfaceC15237a
    public float getContrast() {
        return this.contrast;
    }

    @Override
    public String getDisplayableTitle() {
        return B0.f91684e;
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
        linkedList.add(new C5.b(new c(), "Brightness", aVar).d(this.f79250n, this, "brightness", cVar));
        linkedList.add(new C5.b(new d(), "Contrast", aVar).d(this.f79250n, this, "contrast", cVar));
        linkedList.add(new C5.b(new e(), "Noise Strength", aVar).d(this.f79250n, this, "noiseStrength", cVar));
        linkedList.add(new C5.b(new f(), "Scanline Strength", aVar).d(this.f79250n, this, "scanlineStrength", cVar));
        linkedList.add(new C5.b(new g(), "Scanline Count", aVar).d(this.f79250n, this, "scanlineCount", cVar));
        linkedList.add(new C5.b(new h(), "Vignette Strength", aVar).d(this.f79250n, this, "vignetteStrength", cVar));
        linkedList.add(new C5.b(new i(), "Tint Color", b.a.Color).d(this.f79250n, this, "tintColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
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

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(7);
    }

    @InterfaceC15237a
    public float getScanlineCount() {
        return this.scanlineCount;
    }

    @InterfaceC15237a
    public float getScanlineStrength() {
        return this.scanlineStrength;
    }

    @InterfaceC15237a
    public float getTime() {
        return this.f75390S;
    }

    @InterfaceC15237a
    public ColorINT getTintColor() {
        return this.tintColor;
    }

    @Override
    public String getTitle() {
        return f75384i1;
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3) | paramBit(4) | paramBit(5) | paramBit(6) | paramBit(7) | paramBit(8) | paramBit(9);
    }

    @InterfaceC15237a
    public float getVignetteStrength() {
        return this.vignetteStrength;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.f75390S += K8.d.b();
        markParameterDirty(9);
    }

    @InterfaceC15237a
    public void setBrightness(float brightness) {
        this.brightness = brightness;
        markParameterDirty(1);
    }

    @InterfaceC15237a
    public void setContrast(float contrast) {
        this.contrast = contrast;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setNoiseStrength(float noiseStrength) {
        this.noiseStrength = noiseStrength;
        markParameterDirty(3);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75391T = run;
    }

    @InterfaceC15237a
    public void setScanlineCount(float scanlineCount) {
        this.scanlineCount = scanlineCount;
        markParameterDirty(5);
    }

    @InterfaceC15237a
    public void setScanlineStrength(float scanlineStrength) {
        this.scanlineStrength = scanlineStrength;
        markParameterDirty(4);
    }

    @InterfaceC15237a
    public void setTime(float time) {
        this.f75390S = time;
        markParameterDirty(9);
    }

    @InterfaceC15237a
    public void setTintColor(ColorINT color) {
        this.tintColor = color;
        markParameterDirty(8);
    }

    @InterfaceC15237a
    public void setVignetteStrength(float vignetteStrength) {
        this.vignetteStrength = vignetteStrength;
        markParameterDirty(6);
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75391T;
        if (component != null) {
            return component;
        }
        JAVARuntime.NightVision nightVision = new JAVARuntime.NightVision(this);
        this.f75391T = nightVision;
        return nightVision;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera unused1, FilamentCamera unused2, FilamentView unused3, Tb.a frameBuffer, Tb.a unused4, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("brightness", this.brightness);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("contrast", this.contrast);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.d("noiseStrength", this.noiseStrength);
        }
        if ((paramBit(4) & dirtyMask) != 0) {
            writer.d("scanlineStrength", this.scanlineStrength);
        }
        if ((paramBit(5) & dirtyMask) != 0) {
            writer.d("scanlineCount", this.scanlineCount);
        }
        if ((paramBit(6) & dirtyMask) != 0) {
            writer.d("vignetteStrength", this.vignetteStrength);
        }
        if ((paramBit(7) & dirtyMask) != 0) {
            writer.d("aspect", frameBuffer.i() / frameBuffer.h());
        }
        if ((paramBit(8) & dirtyMask) != 0) {
            writer.f("tintColor", this.tintColor.w(), this.tintColor.u(), this.tintColor.s());
        }
        if ((paramBit(9) & dirtyMask) != 0) {
            writer.d("time", this.f75390S);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        NightVision nightVision = new NightVision();
        nightVision.intensity = this.intensity;
        nightVision.brightness = this.brightness;
        nightVision.contrast = this.contrast;
        nightVision.noiseStrength = this.noiseStrength;
        nightVision.scanlineStrength = this.scanlineStrength;
        nightVision.scanlineCount = this.scanlineCount;
        nightVision.vignetteStrength = this.vignetteStrength;
        nightVision.tintColor = ColorINT.k(this.tintColor);
        return nightVision;
    }
}

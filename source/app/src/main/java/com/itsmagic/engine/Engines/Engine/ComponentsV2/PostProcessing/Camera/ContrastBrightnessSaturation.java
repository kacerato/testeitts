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
import java.util.AbstractMap;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class ContrastBrightnessSaturation extends DoublePassPostProcessPass implements Serializable {

    public static final int f74869T = 0;

    public static final int f74870U = 1;

    public static final int f74871V = 2;

    public static final String f74872W = "ContrastBrightnessSaturation";

    public static final Class f74873X = ContrastBrightnessSaturation.class;

    public static final Map<String, MaterialBuilder.r> f74874Y;

    public static final Map<String, MaterialBuilder.m> f74875Z;

    public Component f74876S;

    @Expose
    @eb.f
    private float brightness;

    @Expose
    @eb.f
    private float contrast;

    @Expose
    @eb.f
    private float saturation;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return ContrastBrightnessSaturation.f74873X;
        }

        @Override
        public String c() {
            return ContrastBrightnessSaturation.f74872W;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Color grading";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", ContrastBrightnessSaturation.this.getBrightness() + "");
        }

        @Override
        public void set(Variable v10) {
            ContrastBrightnessSaturation.this.setBrightness(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", ContrastBrightnessSaturation.this.getContrast() + "");
        }

        @Override
        public void set(Variable v10) {
            ContrastBrightnessSaturation.this.setContrast(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", ContrastBrightnessSaturation.this.getSaturation() + "");
        }

        @Override
        public void set(Variable v10) {
            ContrastBrightnessSaturation.this.setSaturation(v10.float_value);
        }
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("brightness", rVar), new AbstractMap.SimpleEntry("contrast", rVar), new AbstractMap.SimpleEntry("saturation", rVar)});
        f74874Y = a10;
        f74875Z = Collections.emptyMap();
    }

    public ContrastBrightnessSaturation() {
        super(f74872W, "contrast_brightness_saturation", f74874Y, f74875Z);
        this.brightness = 1.0f;
        this.contrast = 1.0f;
        this.saturation = 1.0f;
    }

    public static void buildShaderCache() {
        new ContrastBrightnessSaturation().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new ContrastBrightnessSaturation().buildShaderCacheFromDefaultsForce();
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
        return "Contrast/Brightness/Saturation";
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
        String l10 = Lang.l(Lang.T.BRIGHTNESS);
        b.a aVar = b.a.SLFloat;
        C5.b bVar2 = new C5.b(bVar, l10, aVar);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar2.d(gameObject, this, "brightness", cVar));
        linkedList.add(new C5.b(new c(), Lang.l(Lang.T.CONTRAST), aVar).d(gameObject, this, "contrast", cVar));
        linkedList.add(new C5.b(new d(), Lang.l(Lang.T.SATURATION), aVar).d(gameObject, this, "saturation", cVar));
        return linkedList;
    }

    @InterfaceC15237a
    public float getSaturation() {
        return this.saturation;
    }

    @Override
    public String getTitle() {
        return f74872W;
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2);
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public void setBrightness(float brightness) {
        this.brightness = brightness;
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setContrast(float contrast) {
        this.contrast = contrast;
        markParameterDirty(1);
    }

    @Override
    public void setRuntime(Component run) {
        this.f74876S = run;
    }

    @InterfaceC15237a
    public void setSaturation(float saturation) {
        this.saturation = saturation;
        markParameterDirty(2);
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return (this.brightness == 1.0f && this.contrast == 1.0f && this.saturation == 1.0f) ? false : true;
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f74876S == null) {
            this.f74876S = new JAVARuntime.ContrastBrightnessSaturation(this);
        }
        return this.f74876S;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("brightness", this.brightness);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("contrast", this.contrast);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("saturation", this.saturation);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        ContrastBrightnessSaturation contrastBrightnessSaturation = new ContrastBrightnessSaturation();
        contrastBrightnessSaturation.brightness = this.brightness;
        contrastBrightnessSaturation.contrast = this.contrast;
        contrastBrightnessSaturation.saturation = this.saturation;
        return contrastBrightnessSaturation;
    }
}

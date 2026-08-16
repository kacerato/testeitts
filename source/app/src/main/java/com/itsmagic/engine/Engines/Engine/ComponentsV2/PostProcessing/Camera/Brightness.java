package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.DoublePassPostProcessPass;
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

public class Brightness extends DoublePassPostProcessPass implements Serializable {

    public static final int f74814T = 0;

    public static final String f74815U = "Brightness";

    public static final Class f74816V = Brightness.class;

    public static final Map<String, MaterialBuilder.r> f74817W;

    public static final Map<String, MaterialBuilder.m> f74818X;

    public Component f74819S;

    @Expose
    @eb.f
    private float brightness;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Brightness.f74816V;
        }

        @Override
        public String c() {
            return "Brightness";
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
            return new Variable("", Brightness.this.getBrightness() + "");
        }

        @Override
        public void set(Variable v10) {
            Brightness.this.setBrightness(v10.float_value);
        }
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("brightness", MaterialBuilder.r.FLOAT)});
        f74817W = a10;
        f74818X = Collections.emptyMap();
    }

    public Brightness() {
        super("Brightness", "brightness", f74817W, f74818X);
        this.brightness = 1.0f;
    }

    public static void buildShaderCache() {
        new Brightness().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new Brightness().buildShaderCacheFromDefaultsForce();
    }

    @InterfaceC15237a
    public float getBrightness() {
        return this.brightness;
    }

    @Override
    public String getDisplayableTitle() {
        return "Brightness";
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
        linkedList.add(new C5.b(new b(), "Brightness", b.a.SLFloat).d(this.f79250n, this, "brightness", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        return linkedList;
    }

    @Override
    public String getTitle() {
        return "Brightness";
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0);
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

    @Override
    public void setRuntime(Component run) {
        this.f74819S = run;
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.brightness != 1.0f;
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f74819S == null) {
            this.f74819S = new JAVARuntime.Brightness(this);
        }
        return this.f74819S;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("brightness", this.brightness);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        Brightness brightness = new Brightness();
        brightness.brightness = this.brightness;
        return brightness;
    }
}

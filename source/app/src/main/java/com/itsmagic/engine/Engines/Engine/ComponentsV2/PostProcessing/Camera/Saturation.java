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

public class Saturation extends DoublePassPostProcessPass implements Serializable {

    public static final int f75712T = 0;

    public static final String f75713U = "Saturation";

    public static final Class f75714V = Saturation.class;

    public static final Map<String, MaterialBuilder.r> f75715W;

    public static final Map<String, MaterialBuilder.m> f75716X;

    public Component f75717S;

    @Expose
    @eb.f
    private float saturation;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Saturation.f75714V;
        }

        @Override
        public String c() {
            return "Saturation";
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
            return new Variable("", Saturation.this.getSaturation() + "");
        }

        @Override
        public void set(Variable v10) {
            Saturation.this.setSaturation(v10.float_value);
        }
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("saturation", MaterialBuilder.r.FLOAT)});
        f75715W = a10;
        f75716X = Collections.emptyMap();
    }

    public Saturation() {
        super("Saturation", "saturation", f75715W, f75716X);
        this.saturation = 1.0f;
    }

    public static void buildShaderCache() {
        new Saturation().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new Saturation().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public String getDisplayableTitle() {
        return "Saturation";
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
        linkedList.add(new C5.b(new b(), "Saturation", b.a.SLFloat).d(this.f79250n, this, "saturation", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        return linkedList;
    }

    @InterfaceC15237a
    public float getSaturation() {
        return this.saturation;
    }

    @Override
    public String getTitle() {
        return "Saturation";
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0);
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void setRuntime(Component run) {
        this.f75717S = run;
    }

    @InterfaceC15237a
    public void setSaturation(float saturation) {
        this.saturation = saturation;
        markParameterDirty(0);
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.saturation != 1.0f;
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75717S == null) {
            this.f75717S = new JAVARuntime.Saturation(this);
        }
        return this.f75717S;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("saturation", this.saturation);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        Saturation saturation = new Saturation();
        saturation.saturation = this.saturation;
        return saturation;
    }
}

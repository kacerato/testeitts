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

public class Contrast extends DoublePassPostProcessPass implements Serializable {

    public static final int f74862T = 0;

    public static final String f74863U = "Contrast";

    public static final Class f74864V = Contrast.class;

    public static final Map<String, MaterialBuilder.r> f74865W;

    public static final Map<String, MaterialBuilder.m> f74866X;

    public Component f74867S;

    @Expose
    @eb.f
    private float contrast;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Contrast.f74864V;
        }

        @Override
        public String c() {
            return "Contrast";
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
            return new Variable("", Contrast.this.getContrast() + "");
        }

        @Override
        public void set(Variable v10) {
            Contrast.this.setContrast(v10.float_value);
        }
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("contrast", MaterialBuilder.r.FLOAT)});
        f74865W = a10;
        f74866X = Collections.emptyMap();
    }

    public Contrast() {
        super("Contrast", "contrast", f74865W, f74866X);
        this.contrast = 1.0f;
    }

    public static void buildShaderCache() {
        new Contrast().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new Contrast().buildShaderCacheFromDefaultsForce();
    }

    @InterfaceC15237a
    public float getContrast() {
        return this.contrast;
    }

    @Override
    public String getDisplayableTitle() {
        return "Contrast";
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
        linkedList.add(new C5.b(new b(), "Contrast", b.a.SLFloat).d(this.f79250n, this, "contrast", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        return linkedList;
    }

    @Override
    public String getTitle() {
        return "Contrast";
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
    public void setContrast(float contrast) {
        this.contrast = contrast;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f74867S = run;
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.contrast != 1.0f;
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f74867S == null) {
            this.f74867S = new JAVARuntime.Contrast(this);
        }
        return this.f74867S;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("contrast", this.contrast);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        Contrast contrast = new Contrast();
        contrast.contrast = this.contrast;
        return contrast;
    }
}

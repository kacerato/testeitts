package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import android.hardware.Camera;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.DoublePassPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class Posterize extends DoublePassPostProcessPass implements Serializable {

    public static final int f75457T = 0;

    public static final int f75458U = 1;

    public static final int f75459V = 2;

    public static final int f75460W = 3;

    public static final String f75461X = "Posterize";

    public static final Class f75462Y = Posterize.class;

    public static final Map<String, MaterialBuilder.r> f75463Z;

    public static final Map<String, MaterialBuilder.m> f75464q0;

    public Component f75465S;

    @Expose
    @eb.f
    private float contrast;

    @Expose
    @eb.f
    private float gamma;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float levels;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Posterize.f75462Y;
        }

        @Override
        public String c() {
            return "Posterize";
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Stylized";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", Posterize.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            Posterize.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", Posterize.this.getLevels() + "");
        }

        @Override
        public void set(Variable v10) {
            Posterize.this.setLevels(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Posterize.this.getGamma() + "");
        }

        @Override
        public void set(Variable v10) {
            Posterize.this.setGamma(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", Posterize.this.getContrast() + "");
        }

        @Override
        public void set(Variable v10) {
            Posterize.this.setContrast(v10.float_value);
        }
    }

    static {
        C13201a.b(new a());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f75463Z = linkedHashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        linkedHashMap.put("intensity", rVar);
        linkedHashMap.put("levels", rVar);
        linkedHashMap.put("gamma", rVar);
        linkedHashMap.put("contrast", rVar);
        f75464q0 = new LinkedHashMap();
    }

    public Posterize() {
        super("Posterize", Camera.Parameters.EFFECT_POSTERIZE, f75463Z, f75464q0);
        this.intensity = 1.0f;
        this.levels = 6.0f;
        this.gamma = 1.0f;
        this.contrast = 1.0f;
    }

    public static void buildShaderCache() {
        new Posterize().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new Posterize().buildShaderCacheFromDefaultsForce();
    }

    @InterfaceC15237a
    public float getContrast() {
        return this.contrast;
    }

    @Override
    public String getDisplayableTitle() {
        return "Posterize";
    }

    @InterfaceC15237a
    public float getGamma() {
        return this.gamma;
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
        linkedList.add(bVar2.d(gameObject, this, "intensity", cVar));
        linkedList.add(new C5.b(new c(), "Levels", aVar, 32.0f).d(gameObject, this, "levels", cVar));
        linkedList.add(new C5.b(new d(), "Gamma", aVar, 3.0f).d(gameObject, this, "gamma", cVar));
        linkedList.add(new C5.b(new e(), "Contrast", aVar, 3.0f).d(gameObject, this, "contrast", cVar));
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @InterfaceC15237a
    public float getLevels() {
        return this.levels;
    }

    @Override
    public String getTitle() {
        return "Posterize";
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
    public void setContrast(float contrast) {
        this.contrast = contrast;
        markParameterDirty(3);
    }

    @InterfaceC15237a
    public void setGamma(float gamma) {
        this.gamma = gamma;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setLevels(float levels) {
        this.levels = levels;
        markParameterDirty(1);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75465S = run;
    }

    @Override
    public boolean shouldApplyPreUpdatePass(com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.intensity > 0.0f;
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75465S == null) {
            this.f75465S = new JAVARuntime.Posterize(this);
        }
        return this.f75465S;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("levels", this.levels);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("gamma", this.gamma);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.d("contrast", this.contrast);
        }
    }

    @Override
    public Posterize mo1248clone() {
        Posterize posterize = new Posterize();
        posterize.intensity = this.intensity;
        posterize.levels = this.levels;
        posterize.gamma = this.gamma;
        posterize.contrast = this.contrast;
        return posterize;
    }
}

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
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class FilmGrainScratch extends DoublePassPostProcessPass implements Serializable {

    public static final String f75085D0 = "FilmGrainScratch";

    public static final int f75086U = 0;

    public static final int f75087V = 1;

    public static final int f75088W = 2;

    public static final int f75089X = 3;

    public static final int f75090Y = 4;

    public static final int f75091Z = 5;

    public static final Class f75092b1 = FilmGrainScratch.class;

    public static final Map<String, MaterialBuilder.r> f75093i1;

    public static final Map<String, MaterialBuilder.m> f75094m1;

    public static final int f75095q0 = 6;

    public static final int f75096v0 = 7;

    public float f75097S;

    public Component f75098T;

    @Expose
    @eb.f
    private float flickerStrength;

    @Expose
    @eb.f
    private float grainSize;

    @Expose
    @eb.f
    private float grainStrength;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float scratchDensity;

    @Expose
    @eb.f
    private float scratchStrength;

    @Expose
    @eb.f
    private float scratchWidth;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return FilmGrainScratch.f75092b1;
        }

        @Override
        public String c() {
            return FilmGrainScratch.f75085D0;
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
            return new Variable("", FilmGrainScratch.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            FilmGrainScratch.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", FilmGrainScratch.this.getGrainStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            FilmGrainScratch.this.setGrainStrength(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", FilmGrainScratch.this.getGrainSize() + "");
        }

        @Override
        public void set(Variable v10) {
            FilmGrainScratch.this.setGrainSize(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", FilmGrainScratch.this.getScratchStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            FilmGrainScratch.this.setScratchStrength(v10.float_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", FilmGrainScratch.this.getScratchDensity() + "");
        }

        @Override
        public void set(Variable v10) {
            FilmGrainScratch.this.setScratchDensity(v10.float_value);
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", FilmGrainScratch.this.getScratchWidth() + "");
        }

        @Override
        public void set(Variable v10) {
            FilmGrainScratch.this.setScratchWidth(v10.float_value);
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", FilmGrainScratch.this.getFlickerStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            FilmGrainScratch.this.setFlickerStrength(v10.float_value);
        }
    }

    static {
        C13201a.b(new a());
        HashMap hashMap = new HashMap();
        f75093i1 = hashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        hashMap.put("intensity", rVar);
        hashMap.put("grainStrength", rVar);
        hashMap.put("grainSize", rVar);
        hashMap.put("scratchStrength", rVar);
        hashMap.put("scratchDensity", rVar);
        hashMap.put("scratchWidth", rVar);
        hashMap.put("flickerStrength", rVar);
        hashMap.put("time", rVar);
        f75094m1 = new HashMap();
    }

    public FilmGrainScratch() {
        super(f75085D0, "film_grain_scratch", f75093i1, f75094m1);
        this.intensity = 1.0f;
        this.grainStrength = 0.5f;
        this.grainSize = 0.3f;
        this.scratchStrength = 0.8f;
        this.scratchDensity = 0.4f;
        this.scratchWidth = 0.4f;
        this.flickerStrength = 0.3f;
        this.f75097S = 0.0f;
    }

    public static void buildShaderCache() {
        new FilmGrainScratch().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new FilmGrainScratch().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.f75097S = 0.0f;
    }

    @Override
    public String getDisplayableTitle() {
        return "Film Grain + Scratch";
    }

    @InterfaceC15237a
    public float getFlickerStrength() {
        return this.flickerStrength;
    }

    @InterfaceC15237a
    public float getGrainSize() {
        return this.grainSize;
    }

    @InterfaceC15237a
    public float getGrainStrength() {
        return this.grainStrength;
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
        C5.b bVar3 = new C5.b(new c(), "Grain Strength", aVar);
        bVar3.d(gameObject, this, "grainStrength", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new d(), "Grain Size", aVar);
        bVar4.d(gameObject, this, "grainSize", cVar);
        linkedList.add(bVar4);
        C5.b bVar5 = new C5.b(new e(), "Scratch Strength", aVar);
        bVar5.d(gameObject, this, "scratchStrength", cVar);
        linkedList.add(bVar5);
        C5.b bVar6 = new C5.b(new f(), "Scratch Density", aVar);
        bVar6.d(gameObject, this, "scratchDensity", cVar);
        linkedList.add(bVar6);
        C5.b bVar7 = new C5.b(new g(), "Scratch Width", aVar);
        bVar7.d(gameObject, this, "scratchWidth", cVar);
        linkedList.add(bVar7);
        C5.b bVar8 = new C5.b(new h(), "Flicker Strength", aVar);
        bVar8.d(gameObject, this, "flickerStrength", cVar);
        linkedList.add(bVar8);
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @InterfaceC15237a
    public float getScratchDensity() {
        return this.scratchDensity;
    }

    @InterfaceC15237a
    public float getScratchStrength() {
        return this.scratchStrength;
    }

    @InterfaceC15237a
    public float getScratchWidth() {
        return this.scratchWidth;
    }

    @InterfaceC15237a
    public float getTime() {
        return this.f75097S;
    }

    @Override
    public String getTitle() {
        return f75085D0;
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3) | paramBit(4) | paramBit(5) | paramBit(6) | paramBit(7);
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.f75097S += K8.d.b();
        markParameterDirty(7);
    }

    @InterfaceC15237a
    public void setFlickerStrength(float flickerStrength) {
        this.flickerStrength = flickerStrength;
        markParameterDirty(6);
    }

    @InterfaceC15237a
    public void setGrainSize(float grainSize) {
        this.grainSize = grainSize;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setGrainStrength(float grainStrength) {
        this.grainStrength = grainStrength;
        markParameterDirty(1);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75098T = run;
    }

    @InterfaceC15237a
    public void setScratchDensity(float scratchDensity) {
        this.scratchDensity = scratchDensity;
        markParameterDirty(4);
    }

    @InterfaceC15237a
    public void setScratchStrength(float scratchStrength) {
        this.scratchStrength = scratchStrength;
        markParameterDirty(3);
    }

    @InterfaceC15237a
    public void setScratchWidth(float scratchWidth) {
        this.scratchWidth = scratchWidth;
        markParameterDirty(5);
    }

    @InterfaceC15237a
    public void setTime(float time) {
        this.f75097S = time;
        markParameterDirty(7);
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75098T;
        if (component != null) {
            return component;
        }
        JAVARuntime.FilmGrainScratch filmGrainScratch = new JAVARuntime.FilmGrainScratch(this);
        this.f75098T = filmGrainScratch;
        return filmGrainScratch;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera unused1, FilamentCamera unused2, FilamentView unused3, Tb.a frameBuffer, Tb.a unused4, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("grainStrength", this.grainStrength);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("grainSize", this.grainSize);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.d("scratchStrength", this.scratchStrength);
        }
        if ((paramBit(4) & dirtyMask) != 0) {
            writer.d("scratchDensity", this.scratchDensity);
        }
        if ((paramBit(5) & dirtyMask) != 0) {
            writer.d("scratchWidth", this.scratchWidth);
        }
        if ((paramBit(6) & dirtyMask) != 0) {
            writer.d("flickerStrength", this.flickerStrength);
        }
        if ((paramBit(7) & dirtyMask) != 0) {
            writer.d("time", this.f75097S);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        FilmGrainScratch filmGrainScratch = new FilmGrainScratch();
        filmGrainScratch.intensity = this.intensity;
        filmGrainScratch.grainStrength = this.grainStrength;
        filmGrainScratch.grainSize = this.grainSize;
        filmGrainScratch.scratchStrength = this.scratchStrength;
        filmGrainScratch.scratchDensity = this.scratchDensity;
        filmGrainScratch.scratchWidth = this.scratchWidth;
        filmGrainScratch.flickerStrength = this.flickerStrength;
        return filmGrainScratch;
    }
}

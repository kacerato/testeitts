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
import ic.C13663m;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class ChromaticAberration extends DoublePassPostProcessPass implements Serializable {

    public static final int f74839U = 0;

    public static final int f74840V = 1;

    public static final int f74841W = 2;

    public static final String f74842X = "ChromaticAberration";

    public static final Class f74843Y = ChromaticAberration.class;

    public static final Map<String, MaterialBuilder.r> f74844Z;

    public static final Map<String, MaterialBuilder.m> f74845q0;

    public float[] f74846S;

    public Component f74847T;

    @Expose
    @eb.f
    private float falloff;

    @Expose
    @eb.f
    private float strength;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return ChromaticAberration.f74843Y;
        }

        @Override
        public String c() {
            return ChromaticAberration.f74842X;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Lens";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", ChromaticAberration.this.getStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            ChromaticAberration.this.setStrength(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", ChromaticAberration.this.getFalloff() + "");
        }

        @Override
        public void set(Variable v10) {
            ChromaticAberration.this.setFalloff(v10.float_value);
        }
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("strength", rVar), new AbstractMap.SimpleEntry("falloff", rVar), new AbstractMap.SimpleEntry("center", MaterialBuilder.r.FLOAT2)});
        f74844Z = a10;
        f74845q0 = Collections.emptyMap();
    }

    public ChromaticAberration() {
        super(f74842X, "chromatic_aberration", f74844Z, f74845q0);
        this.strength = 0.3f;
        this.falloff = 1.0f;
        this.f74846S = new float[]{0.5f, 0.5f};
    }

    public static void buildShaderCache() {
        new ChromaticAberration().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new ChromaticAberration().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public String getDisplayableTitle() {
        return C13663m.f91950e;
    }

    @InterfaceC15237a
    public float getFalloff() {
        return this.falloff;
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
        C5.b bVar2 = new C5.b(bVar, "Intensity", aVar, 5.0f);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "strength", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), "Falloff", aVar);
        bVar3.d(gameObject, this, "falloff", cVar);
        linkedList.add(bVar3);
        return linkedList;
    }

    @InterfaceC15237a
    public float getStrength() {
        return this.strength;
    }

    @Override
    public String getTitle() {
        return f74842X;
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
    public void setFalloff(float falloff) {
        this.falloff = falloff;
        markParameterDirty(1);
    }

    @Override
    public void setRuntime(Component run) {
        this.f74847T = run;
    }

    @InterfaceC15237a
    public void setStrength(float strength) {
        this.strength = strength;
        markParameterDirty(0);
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.strength > 0.0f;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74847T;
        if (component != null) {
            return component;
        }
        JAVARuntime.ChromaticAberration chromaticAberration = new JAVARuntime.ChromaticAberration(this);
        this.f74847T = chromaticAberration;
        return chromaticAberration;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera unused1, FilamentCamera unused2, FilamentView unused3, Tb.a frameBuffer, Tb.a unused4, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("strength", this.strength / 25.0f);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("falloff", this.falloff);
        }
        if ((dirtyMask & paramBit(2)) != 0) {
            float[] fArr = this.f74846S;
            writer.e("center", fArr[0], fArr[1]);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        ChromaticAberration chromaticAberration = new ChromaticAberration();
        chromaticAberration.strength = this.strength;
        chromaticAberration.falloff = this.falloff;
        return chromaticAberration;
    }
}

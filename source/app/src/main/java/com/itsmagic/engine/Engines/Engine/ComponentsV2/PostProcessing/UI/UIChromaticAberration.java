package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ChromaticAberration;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.DoublePassUIPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
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

public class UIChromaticAberration extends DoublePassUIPostProcessPass implements Serializable {

    public static final int f75973U = 0;

    public static final int f75974V = 1;

    public static final int f75975W = 2;

    public static final String f75976X = "UIChromaticAberration";

    public static final Class f75977Y = UIChromaticAberration.class;

    public static final Map<String, MaterialBuilder.r> f75978Z;

    public static final Map<String, MaterialBuilder.m> f75979q0;

    public float[] f75980S;

    public Component f75981T;

    @Expose
    @eb.f
    private float falloff;

    @Expose
    @eb.f
    private float strength;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIChromaticAberration.f75977Y;
        }

        @Override
        public String c() {
            return UIChromaticAberration.f75976X;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UI_POST_PROCESSING);
        }

        @Override
        public String h(boolean translate) {
            return ChromaticAberration.f74842X;
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIChromaticAberration.this.getStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            UIChromaticAberration.this.setStrength(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIChromaticAberration.this.getFalloff() + "");
        }

        @Override
        public void set(Variable v10) {
            UIChromaticAberration.this.setFalloff(v10.float_value);
        }
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("strength", rVar), new AbstractMap.SimpleEntry("falloff", rVar), new AbstractMap.SimpleEntry("center", MaterialBuilder.r.FLOAT2)});
        f75978Z = a10;
        f75979q0 = Collections.emptyMap();
    }

    public UIChromaticAberration() {
        super(f75976X, "chromatic_aberration", f75978Z, f75979q0);
        this.strength = 0.3f;
        this.falloff = 1.0f;
        this.f75980S = new float[]{0.5f, 0.5f};
    }

    public static void buildShaderCache() {
        new UIChromaticAberration().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new UIChromaticAberration().buildShaderCacheFromDefaultsForce();
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
        String l10 = Lang.l(Lang.T.INTENSITY);
        b.a aVar = b.a.SLFloat01;
        C5.b bVar2 = new C5.b(bVar, l10, aVar, 5.0f);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "strength", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), Lang.l(Lang.T.FALLOFF), aVar);
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
        return "UI ChromaticAberration";
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
        this.f75981T = run;
    }

    @InterfaceC15237a
    public void setStrength(float strength) {
        this.strength = strength;
        markParameterDirty(0);
    }

    @Override
    public boolean shouldApplyPreUpdatePass(UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.strength > 0.0f;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75981T;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIChromaticAberration uIChromaticAberration = new JAVARuntime.UIChromaticAberration(this);
        this.f75981T = uIChromaticAberration;
        return uIChromaticAberration;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassUIPostProcessPass.b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("strength", this.strength / 25.0f);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("falloff", this.falloff);
        }
        if ((dirtyMask & paramBit(2)) != 0) {
            float[] fArr = this.f75980S;
            writer.e("center", fArr[0], fArr[1]);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIChromaticAberration uIChromaticAberration = new UIChromaticAberration();
        uIChromaticAberration.strength = this.strength;
        uIChromaticAberration.falloff = this.falloff;
        return uIChromaticAberration;
    }
}

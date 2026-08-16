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
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class UISharpen extends DoublePassUIPostProcessPass implements Serializable {

    public static final int f76124T = 0;

    public static final int f76125U = 1;

    public static final int f76126V = 2;

    public static final int f76127W = 3;

    public static final String f76128X = "UISharpen";

    public static final Class f76129Y = UISharpen.class;

    public static final Map<String, MaterialBuilder.r> f76130Z;

    public static final Map<String, MaterialBuilder.m> f76131q0;

    public Component f76132S;

    @Expose
    @eb.f
    private float edgeThreshold;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float sharpenStrength;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UISharpen.f76129Y;
        }

        @Override
        public String c() {
            return UISharpen.f76128X;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UI_POST_PROCESSING);
        }

        @Override
        public String h(boolean translate) {
            return "Sharpen";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UISharpen.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            UISharpen.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UISharpen.this.getSharpenStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            UISharpen.this.setSharpenStrength(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UISharpen.this.getEdgeThreshold() + "");
        }

        @Override
        public void set(Variable v10) {
            UISharpen.this.setEdgeThreshold(v10.float_value);
        }
    }

    static {
        C13201a.b(new a());
        HashMap hashMap = new HashMap();
        f76130Z = hashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        hashMap.put("intensity", rVar);
        hashMap.put("sharpenStrength", rVar);
        hashMap.put("edgeThreshold", rVar);
        hashMap.put("texelSize", MaterialBuilder.r.FLOAT2);
        f76131q0 = new HashMap();
    }

    public UISharpen() {
        super(f76128X, "sharpen", f76130Z, f76131q0);
        this.intensity = 1.0f;
        this.sharpenStrength = 0.5f;
        this.edgeThreshold = 0.02f;
    }

    public static void buildShaderCache() {
        new UISharpen().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new UISharpen().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public String getDisplayableTitle() {
        return "Sharpen";
    }

    @InterfaceC15237a
    public float getEdgeThreshold() {
        return this.edgeThreshold;
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
        C5.b bVar2 = new C5.b(bVar, l10, aVar);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "intensity", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), Lang.l(Lang.T.SHARPEN_STRENGTH), aVar, 2.0f);
        bVar3.d(gameObject, this, "sharpenStrength", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new d(), Lang.l(Lang.T.EDGE_THRESHOLD), aVar, 0.5f);
        bVar4.d(gameObject, this, "edgeThreshold", cVar);
        linkedList.add(bVar4);
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(3);
    }

    @InterfaceC15237a
    public float getSharpenStrength() {
        return this.sharpenStrength;
    }

    @Override
    public String getTitle() {
        return "UI Sharpen";
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
    public void setEdgeThreshold(float edgeThreshold) {
        this.edgeThreshold = edgeThreshold;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f76132S = run;
    }

    @InterfaceC15237a
    public void setSharpenStrength(float sharpenStrength) {
        this.sharpenStrength = sharpenStrength;
        markParameterDirty(1);
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f76132S;
        if (component != null) {
            return component;
        }
        JAVARuntime.UISharpen uISharpen = new JAVARuntime.UISharpen(this);
        this.f76132S = uISharpen;
        return uISharpen;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassUIPostProcessPass.b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("sharpenStrength", this.sharpenStrength);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("edgeThreshold", this.edgeThreshold);
        }
        if ((dirtyMask & paramBit(3)) != 0) {
            int i10 = frameBuffer.i();
            int h10 = frameBuffer.h();
            writer.e("texelSize", i10 > 0 ? 1.0f / i10 : 0.0f, h10 > 0 ? 1.0f / h10 : 0.0f);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UISharpen uISharpen = new UISharpen();
        uISharpen.intensity = this.intensity;
        uISharpen.sharpenStrength = this.sharpenStrength;
        uISharpen.edgeThreshold = this.edgeThreshold;
        return uISharpen;
    }
}

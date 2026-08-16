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
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class Outline extends DoublePassPostProcessPass implements Serializable {

    public static final int f75412T = 0;

    public static final int f75413U = 1;

    public static final int f75414V = 2;

    public static final int f75415W = 3;

    public static final String f75416X = "Outline";

    public static final Class f75417Y = Outline.class;

    public static final Map<String, MaterialBuilder.r> f75418Z;

    public static final Map<String, MaterialBuilder.m> f75419q0;

    public Component f75420S;

    @Expose
    @eb.f
    private ColorINT outlineColor;

    @Expose
    @eb.f
    private float thickness;

    @Expose
    @eb.f
    private float threshold;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Outline.f75417Y;
        }

        @Override
        public String c() {
            return "Outline";
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Highlights";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", Outline.this.getThickness() + "");
        }

        @Override
        public void set(Variable v10) {
            Outline.this.setThickness(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", Outline.this.getThreshold() + "");
        }

        @Override
        public void set(Variable v10) {
            Outline.this.setThreshold(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Outline.this.outlineColor);
        }

        @Override
        public void set(Variable v10) {
            ColorINT colorINT;
            if (v10 == null || (colorINT = v10.color_value) == null) {
                return;
            }
            Outline.this.setOutlineColor(colorINT);
        }
    }

    static {
        C13201a.b(new a());
        HashMap hashMap = new HashMap();
        f75418Z = hashMap;
        hashMap.put("outlineColor", MaterialBuilder.r.FLOAT4);
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        hashMap.put("thickness", rVar);
        hashMap.put("threshold", rVar);
        hashMap.put("texelSize", MaterialBuilder.r.FLOAT2);
        f75419q0 = new HashMap();
    }

    public Outline() {
        super("Outline", "outline", f75418Z, f75419q0);
        this.outlineColor = new ColorINT(0, 0, 0);
        this.thickness = 1.0f;
        this.threshold = 0.5f;
    }

    public static void buildShaderCache() {
        new Outline().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new Outline().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public String getDisplayableTitle() {
        return "Outline";
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
        C5.b bVar2 = new C5.b(bVar, "Thickness", aVar, 5.0f);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "thickness", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), "Threshold", aVar);
        bVar3.d(gameObject, this, "threshold", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new d(), "Outline Color", b.a.Color);
        bVar4.d(gameObject, this, "outlineColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        linkedList.add(bVar4);
        return linkedList;
    }

    @InterfaceC15237a
    public ColorINT getOutlineColor() {
        return this.outlineColor;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(3);
    }

    @InterfaceC15237a
    public float getThickness() {
        return this.thickness;
    }

    @InterfaceC15237a
    public float getThreshold() {
        return this.threshold;
    }

    @Override
    public String getTitle() {
        return "Outline";
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
    public void setOutlineColor(ColorINT color) {
        this.outlineColor = color;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75420S = run;
    }

    @InterfaceC15237a
    public void setThickness(float thickness) {
        this.thickness = thickness;
        markParameterDirty(1);
    }

    @InterfaceC15237a
    public void setThreshold(float threshold) {
        this.threshold = threshold;
        markParameterDirty(2);
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75420S;
        if (component != null) {
            return component;
        }
        JAVARuntime.Outline outline = new JAVARuntime.Outline(this);
        this.f75420S = outline;
        return outline;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.c("outlineColor", this.outlineColor);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("thickness", this.thickness);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("threshold", this.threshold);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            int i10 = frameBuffer.i();
            int h10 = frameBuffer.h();
            writer.e("texelSize", i10 > 0 ? 1.0f / i10 : 0.0f, h10 > 0 ? 1.0f / h10 : 0.0f);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        Outline outline = new Outline();
        outline.outlineColor = ColorINT.k(this.outlineColor);
        outline.thickness = this.thickness;
        outline.threshold = this.threshold;
        return outline;
    }
}

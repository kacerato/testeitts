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
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
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

public class CavityRidgeValley extends DoublePassPostProcessPass implements Serializable {

    public static final Map<String, MaterialBuilder.r> f74821D0;

    public static final int f74822T = 0;

    public static final int f74823U = 1;

    public static final int f74824V = 2;

    public static final int f74825W = 3;

    public static final int f74826X = 4;

    public static final int f74827Y = 5;

    public static final int f74828Z = 6;

    public static final Map<String, MaterialBuilder.m> f74829b1;

    public static final String f74830q0 = "CavityRidgeValley";

    public static final Class f74831v0 = CavityRidgeValley.class;

    public Component f74832S;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float radius;

    @Expose
    @eb.f
    private ColorINT ridgeColor;

    @Expose
    @eb.f
    private float ridgeStrength;

    @Expose
    @eb.f
    private ColorINT valleyColor;

    @Expose
    @eb.f
    private float valleyStrength;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return CavityRidgeValley.f74831v0;
        }

        @Override
        public String c() {
            return CavityRidgeValley.f74830q0;
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
            return new Variable("", CavityRidgeValley.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            CavityRidgeValley.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", CavityRidgeValley.this.getRidgeStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            CavityRidgeValley.this.setRidgeStrength(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", CavityRidgeValley.this.getValleyStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            CavityRidgeValley.this.setValleyStrength(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", CavityRidgeValley.this.getRadius() + "");
        }

        @Override
        public void set(Variable v10) {
            CavityRidgeValley.this.setRadius(v10.float_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", CavityRidgeValley.this.ridgeColor);
        }

        @Override
        public void set(Variable v10) {
            ColorINT colorINT;
            if (v10 == null || (colorINT = v10.color_value) == null) {
                return;
            }
            CavityRidgeValley.this.setRidgeColor(colorINT);
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", CavityRidgeValley.this.valleyColor);
        }

        @Override
        public void set(Variable v10) {
            ColorINT colorINT;
            if (v10 == null || (colorINT = v10.color_value) == null) {
                return;
            }
            CavityRidgeValley.this.setValleyColor(colorINT);
        }
    }

    static {
        C13201a.b(new a());
        HashMap hashMap = new HashMap();
        f74821D0 = hashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        hashMap.put("intensity", rVar);
        hashMap.put("ridgeStrength", rVar);
        hashMap.put("valleyStrength", rVar);
        hashMap.put(TestVFXEffect.f77524P, rVar);
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT4;
        hashMap.put("ridgeColor", rVar2);
        hashMap.put("valleyColor", rVar2);
        hashMap.put("texelSize", MaterialBuilder.r.FLOAT2);
        f74829b1 = new HashMap();
    }

    public CavityRidgeValley() {
        super(f74830q0, "cavity_ridge_valley", f74821D0, f74829b1);
        this.intensity = 1.0f;
        this.ridgeStrength = 1.0f;
        this.valleyStrength = 1.0f;
        this.radius = 1.0f;
        this.ridgeColor = new ColorINT(255, 255, 255);
        this.valleyColor = new ColorINT(0, 0, 0);
    }

    public static void buildShaderCache() {
        new CavityRidgeValley().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new CavityRidgeValley().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public String getDisplayableTitle() {
        return "Cavity Ridge/Valley";
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
        C5.b bVar3 = new C5.b(new c(), "Ridge Strength", aVar, 3.0f);
        bVar3.d(gameObject, this, "ridgeStrength", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new d(), "Valley Strength", aVar, 3.0f);
        bVar4.d(gameObject, this, "valleyStrength", cVar);
        linkedList.add(bVar4);
        C5.b bVar5 = new C5.b(new e(), "Radius", aVar, 5.0f);
        bVar5.d(gameObject, this, TestVFXEffect.f77524P, cVar);
        linkedList.add(bVar5);
        f fVar = new f();
        b.a aVar2 = b.a.Color;
        C5.b bVar6 = new C5.b(fVar, "Ridge Color", aVar2);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.COLOR;
        bVar6.d(gameObject, this, "ridgeColor", cVar2);
        linkedList.add(bVar6);
        C5.b bVar7 = new C5.b(new g(), "Valley Color", aVar2);
        bVar7.d(gameObject, this, "valleyColor", cVar2);
        linkedList.add(bVar7);
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @InterfaceC15237a
    public float getRadius() {
        return this.radius;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(6);
    }

    @InterfaceC15237a
    public ColorINT getRidgeColor() {
        return this.ridgeColor;
    }

    @InterfaceC15237a
    public float getRidgeStrength() {
        return this.ridgeStrength;
    }

    @Override
    public String getTitle() {
        return "Cavity Ridge/Valley";
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3) | paramBit(4) | paramBit(5) | paramBit(6);
    }

    @InterfaceC15237a
    public ColorINT getValleyColor() {
        return this.valleyColor;
    }

    @InterfaceC15237a
    public float getValleyStrength() {
        return this.valleyStrength;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setRadius(float radius) {
        this.radius = radius;
        markParameterDirty(3);
    }

    @InterfaceC15237a
    public void setRidgeColor(ColorINT color) {
        this.ridgeColor = color;
        markParameterDirty(4);
    }

    @InterfaceC15237a
    public void setRidgeStrength(float ridgeStrength) {
        this.ridgeStrength = ridgeStrength;
        markParameterDirty(1);
    }

    @Override
    public void setRuntime(Component run) {
        this.f74832S = run;
    }

    @InterfaceC15237a
    public void setValleyColor(ColorINT color) {
        this.valleyColor = color;
        markParameterDirty(5);
    }

    @InterfaceC15237a
    public void setValleyStrength(float valleyStrength) {
        this.valleyStrength = valleyStrength;
        markParameterDirty(2);
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74832S;
        if (component != null) {
            return component;
        }
        JAVARuntime.CavityRidgeValley cavityRidgeValley = new JAVARuntime.CavityRidgeValley(this);
        this.f74832S = cavityRidgeValley;
        return cavityRidgeValley;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("ridgeStrength", this.ridgeStrength);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("valleyStrength", this.valleyStrength);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.d(TestVFXEffect.f77524P, this.radius);
        }
        if ((paramBit(4) & dirtyMask) != 0) {
            writer.c("ridgeColor", this.ridgeColor);
        }
        if ((paramBit(5) & dirtyMask) != 0) {
            writer.c("valleyColor", this.valleyColor);
        }
        if ((paramBit(6) & dirtyMask) != 0) {
            int i10 = frameBuffer.i();
            int h10 = frameBuffer.h();
            writer.e("texelSize", i10 > 0 ? 1.0f / i10 : 0.0f, h10 > 0 ? 1.0f / h10 : 0.0f);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        CavityRidgeValley cavityRidgeValley = new CavityRidgeValley();
        cavityRidgeValley.intensity = this.intensity;
        cavityRidgeValley.ridgeStrength = this.ridgeStrength;
        cavityRidgeValley.valleyStrength = this.valleyStrength;
        cavityRidgeValley.radius = this.radius;
        cavityRidgeValley.ridgeColor = ColorINT.k(this.ridgeColor);
        cavityRidgeValley.valleyColor = ColorINT.k(this.valleyColor);
        return cavityRidgeValley;
    }
}

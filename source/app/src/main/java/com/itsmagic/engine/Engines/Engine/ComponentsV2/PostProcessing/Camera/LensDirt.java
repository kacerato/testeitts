package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import android.os.BatteryManager;
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
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class LensDirt extends DoublePassPostProcessPass implements Serializable {

    public static final Map<String, MaterialBuilder.m> f75313D0;

    public static final int f75314T = 0;

    public static final int f75315U = 1;

    public static final int f75316V = 2;

    public static final int f75317W = 3;

    public static final int f75318X = 4;

    public static final int f75319Y = 5;

    public static final String f75320Z = "LensDirt";

    public static final Class f75321q0 = LensDirt.class;

    public static final Map<String, MaterialBuilder.r> f75322v0;

    public Component f75323S;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float scale;

    @Expose
    @eb.f
    private float scatter;

    @Expose
    @eb.f
    private float threshold;

    @Expose
    @eb.f
    private ColorINT tint;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return LensDirt.f75321q0;
        }

        @Override
        public String c() {
            return LensDirt.f75320Z;
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
            return new Variable("", LensDirt.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            LensDirt.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", LensDirt.this.getThreshold() + "");
        }

        @Override
        public void set(Variable v10) {
            LensDirt.this.setThreshold(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", LensDirt.this.getScale() + "");
        }

        @Override
        public void set(Variable v10) {
            LensDirt.this.setScale(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", LensDirt.this.getScatter() + "");
        }

        @Override
        public void set(Variable v10) {
            LensDirt.this.setScatter(v10.float_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", LensDirt.this.tint);
        }

        @Override
        public void set(Variable v10) {
            ColorINT colorINT;
            if (v10 == null || (colorINT = v10.color_value) == null) {
                return;
            }
            LensDirt.this.setTint(colorINT);
        }
    }

    static {
        C13201a.b(new a());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f75322v0 = linkedHashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        linkedHashMap.put("intensity", rVar);
        linkedHashMap.put("threshold", rVar);
        linkedHashMap.put("dirtScale", rVar);
        linkedHashMap.put("scatter", rVar);
        linkedHashMap.put("tint", MaterialBuilder.r.FLOAT4);
        linkedHashMap.put("texelSize", MaterialBuilder.r.FLOAT2);
        f75313D0 = new LinkedHashMap();
    }

    public LensDirt() {
        super(f75320Z, "lens_dirt", f75322v0, f75313D0);
        this.intensity = 0.75f;
        this.threshold = 0.65f;
        this.scale = 1.2f;
        this.scatter = 0.85f;
        this.tint = new ColorINT(255, 242, 214);
    }

    public static void buildShaderCache() {
        new LensDirt().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new LensDirt().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public String getDisplayableTitle() {
        return "Lens Dirt";
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
        C5.b bVar2 = new C5.b(bVar, "Intensity", aVar, 4.0f);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar2.d(gameObject, this, "intensity", cVar));
        linkedList.add(new C5.b(new c(), "Threshold", aVar).d(gameObject, this, "threshold", cVar));
        linkedList.add(new C5.b(new d(), "Scale", aVar, 6.0f).d(gameObject, this, BatteryManager.EXTRA_SCALE, cVar));
        linkedList.add(new C5.b(new e(), "Scatter", aVar, 4.0f).d(gameObject, this, "scatter", cVar));
        linkedList.add(new C5.b(new f(), "Tint", b.a.Color).d(gameObject, this, "tint", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(5);
    }

    @InterfaceC15237a
    public float getScale() {
        return this.scale;
    }

    @InterfaceC15237a
    public float getScatter() {
        return this.scatter;
    }

    @InterfaceC15237a
    public float getThreshold() {
        return this.threshold;
    }

    @InterfaceC15237a
    public ColorINT getTint() {
        return this.tint;
    }

    @Override
    public String getTitle() {
        return f75320Z;
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3) | paramBit(4) | paramBit(5);
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

    @Override
    public void setRuntime(Component run) {
        this.f75323S = run;
    }

    @InterfaceC15237a
    public void setScale(float scale) {
        this.scale = scale;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setScatter(float scatter) {
        this.scatter = scatter;
        markParameterDirty(3);
    }

    @InterfaceC15237a
    public void setThreshold(float threshold) {
        this.threshold = threshold;
        markParameterDirty(1);
    }

    @InterfaceC15237a
    public void setTint(ColorINT tint) {
        this.tint = tint;
        markParameterDirty(4);
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.intensity > 0.0f;
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75323S == null) {
            this.f75323S = new JAVARuntime.LensDirt(this);
        }
        return this.f75323S;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("threshold", this.threshold);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("dirtScale", this.scale);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.d("scatter", this.scatter);
        }
        if ((paramBit(4) & dirtyMask) != 0) {
            writer.c("tint", this.tint);
        }
        if ((paramBit(5) & dirtyMask) != 0) {
            int i10 = frameBuffer.i();
            int h10 = frameBuffer.h();
            writer.e("texelSize", i10 > 0 ? 1.0f / i10 : 0.0f, h10 > 0 ? 1.0f / h10 : 0.0f);
        }
    }

    @Override
    public LensDirt mo1248clone() {
        LensDirt lensDirt = new LensDirt();
        lensDirt.intensity = this.intensity;
        lensDirt.threshold = this.threshold;
        lensDirt.scale = this.scale;
        lensDirt.scatter = this.scatter;
        lensDirt.tint = ColorINT.k(this.tint);
        return lensDirt;
    }
}

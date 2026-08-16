package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import android.os.BatteryManager;
import android.provider.MediaStore;
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
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class OrderedDither extends DoublePassPostProcessPass implements Serializable {

    public static final int f75400T = 0;

    public static final int f75401U = 1;

    public static final int f75402V = 2;

    public static final int f75403W = 3;

    public static final String f75404X = "OrderedDither";

    public static final Class f75405Y = OrderedDither.class;

    public static final Map<String, MaterialBuilder.r> f75406Z;

    public static final Map<String, MaterialBuilder.m> f75407q0;

    public Component f75408S;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float scale;

    @Expose
    @eb.f
    private float steps;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return OrderedDither.f75405Y;
        }

        @Override
        public String c() {
            return OrderedDither.f75404X;
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
            return new Variable("", OrderedDither.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            OrderedDither.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", OrderedDither.this.getSteps() + "");
        }

        @Override
        public void set(Variable v10) {
            OrderedDither.this.setSteps(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", OrderedDither.this.getScale() + "");
        }

        @Override
        public void set(Variable v10) {
            OrderedDither.this.setScale(v10.float_value);
        }
    }

    static {
        C13201a.b(new a());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f75406Z = linkedHashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        linkedHashMap.put("intensity", rVar);
        linkedHashMap.put("steps", rVar);
        linkedHashMap.put(BatteryManager.EXTRA_SCALE, rVar);
        linkedHashMap.put(MediaStore.Video.VideoColumns.RESOLUTION, MaterialBuilder.r.FLOAT2);
        f75407q0 = new LinkedHashMap();
    }

    public OrderedDither() {
        super(f75404X, "ordered_dither", f75406Z, f75407q0);
        this.intensity = 1.0f;
        this.steps = 6.0f;
        this.scale = 1.0f;
    }

    public static void buildShaderCache() {
        new OrderedDither().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new OrderedDither().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public String getDisplayableTitle() {
        return "Ordered Dither";
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
        linkedList.add(new C5.b(new c(), "Steps", aVar, 16.0f).d(gameObject, this, "steps", cVar));
        linkedList.add(new C5.b(new d(), "Scale", aVar, 4.0f).d(gameObject, this, BatteryManager.EXTRA_SCALE, cVar));
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
    public float getScale() {
        return this.scale;
    }

    @InterfaceC15237a
    public float getSteps() {
        return this.steps;
    }

    @Override
    public String getTitle() {
        return f75404X;
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
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75408S = run;
    }

    @InterfaceC15237a
    public void setScale(float scale) {
        this.scale = scale;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setSteps(float steps) {
        this.steps = steps;
        markParameterDirty(1);
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.intensity > 0.0f;
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75408S == null) {
            this.f75408S = new JAVARuntime.OrderedDither(this);
        }
        return this.f75408S;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("steps", this.steps);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d(BatteryManager.EXTRA_SCALE, this.scale);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.e(MediaStore.Video.VideoColumns.RESOLUTION, Math.max(1, frameBuffer.i()), Math.max(1, frameBuffer.h()));
        }
    }

    @Override
    public OrderedDither mo1248clone() {
        OrderedDither orderedDither = new OrderedDither();
        orderedDither.intensity = this.intensity;
        orderedDither.steps = this.steps;
        orderedDither.scale = this.scale;
        return orderedDither;
    }
}

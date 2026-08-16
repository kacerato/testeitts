package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
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

public class Pixelate extends DoublePassPostProcessPass implements Serializable {

    public static final int f75431T = 0;

    public static final int f75432U = 1;

    public static final int f75433V = 2;

    public static final int f75434W = 3;

    public static final String f75435X = "Pixelate";

    public static final Class f75436Y = Pixelate.class;

    public static final Map<String, MaterialBuilder.r> f75437Z;

    public static final Map<String, MaterialBuilder.m> f75438q0;

    public Component f75439S;

    @Expose
    @eb.f
    private float blend;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float pixelSize;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Pixelate.f75436Y;
        }

        @Override
        public String c() {
            return Pixelate.f75435X;
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
            return new Variable("", Pixelate.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            Pixelate.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", Pixelate.this.getPixelSize() + "");
        }

        @Override
        public void set(Variable v10) {
            Pixelate.this.setPixelSize(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Pixelate.this.getBlend() + "");
        }

        @Override
        public void set(Variable v10) {
            Pixelate.this.setBlend(v10.float_value);
        }
    }

    static {
        C13201a.b(new a());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f75437Z = linkedHashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        linkedHashMap.put("intensity", rVar);
        linkedHashMap.put("pixelSize", rVar);
        linkedHashMap.put("blend", rVar);
        linkedHashMap.put(MediaStore.Video.VideoColumns.RESOLUTION, MaterialBuilder.r.FLOAT2);
        f75438q0 = new LinkedHashMap();
    }

    public Pixelate() {
        super(f75435X, "pixelate", f75437Z, f75438q0);
        this.intensity = 1.0f;
        this.pixelSize = 10.0f;
        this.blend = 1.0f;
    }

    public static void buildShaderCache() {
        new Pixelate().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new Pixelate().buildShaderCacheFromDefaultsForce();
    }

    @InterfaceC15237a
    public float getBlend() {
        return this.blend;
    }

    @Override
    public String getDisplayableTitle() {
        return f75435X;
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
        linkedList.add(new C5.b(new c(), "Pixel Size", aVar, 96.0f).d(gameObject, this, "pixelSize", cVar));
        linkedList.add(new C5.b(new d(), "Blend", aVar).d(gameObject, this, "blend", cVar));
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @InterfaceC15237a
    public float getPixelSize() {
        return this.pixelSize;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(3);
    }

    @Override
    public String getTitle() {
        return f75435X;
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
    public void setBlend(float blend) {
        this.blend = blend;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setPixelSize(float pixelSize) {
        this.pixelSize = pixelSize;
        markParameterDirty(1);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75439S = run;
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.intensity > 0.0f && this.pixelSize > 1.0f;
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75439S == null) {
            this.f75439S = new JAVARuntime.Pixelate(this);
        }
        return this.f75439S;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("pixelSize", this.pixelSize);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("blend", this.blend);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.e(MediaStore.Video.VideoColumns.RESOLUTION, Math.max(1, frameBuffer.i()), Math.max(1, frameBuffer.h()));
        }
    }

    @Override
    public Pixelate mo1248clone() {
        Pixelate pixelate = new Pixelate();
        pixelate.intensity = this.intensity;
        pixelate.pixelSize = this.pixelSize;
        pixelate.blend = this.blend;
        return pixelate;
    }
}

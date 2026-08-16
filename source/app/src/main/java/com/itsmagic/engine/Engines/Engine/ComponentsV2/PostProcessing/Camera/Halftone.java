package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import android.provider.MediaStore;
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

public class Halftone extends DoublePassPostProcessPass implements Serializable {

    public static final Map<String, MaterialBuilder.m> f75297D0;

    public static final int f75298T = 0;

    public static final int f75299U = 1;

    public static final int f75300V = 2;

    public static final int f75301W = 3;

    public static final int f75302X = 4;

    public static final int f75303Y = 5;

    public static final String f75304Z = "Halftone";

    public static final Class f75305q0 = Halftone.class;

    public static final Map<String, MaterialBuilder.r> f75306v0;

    public Component f75307S;

    @Expose
    @eb.f
    private float angle;

    @Expose
    @eb.f
    private float dotSize;

    @Expose
    @eb.f
    private float intensity;

    @Expose
    @eb.f
    private float smoothness;

    @Expose
    @eb.f
    private ColorINT tint;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Halftone.f75305q0;
        }

        @Override
        public String c() {
            return Halftone.f75304Z;
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
            return new Variable("", Halftone.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            Halftone.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", Halftone.this.getDotSize() + "");
        }

        @Override
        public void set(Variable v10) {
            Halftone.this.setDotSize(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Halftone.this.getAngle() + "");
        }

        @Override
        public void set(Variable v10) {
            Halftone.this.setAngle(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", Halftone.this.getSmoothness() + "");
        }

        @Override
        public void set(Variable v10) {
            Halftone.this.setSmoothness(v10.float_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", Halftone.this.tint);
        }

        @Override
        public void set(Variable v10) {
            ColorINT colorINT;
            if (v10 == null || (colorINT = v10.color_value) == null) {
                return;
            }
            Halftone.this.setTint(colorINT);
        }
    }

    static {
        C13201a.b(new a());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f75306v0 = linkedHashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        linkedHashMap.put("intensity", rVar);
        linkedHashMap.put("dotSize", rVar);
        linkedHashMap.put("angle", rVar);
        linkedHashMap.put("smoothness", rVar);
        linkedHashMap.put("tint", MaterialBuilder.r.FLOAT4);
        linkedHashMap.put(MediaStore.Video.VideoColumns.RESOLUTION, MaterialBuilder.r.FLOAT2);
        f75297D0 = new LinkedHashMap();
    }

    public Halftone() {
        super(f75304Z, "halftone", f75306v0, f75297D0);
        this.intensity = 1.0f;
        this.dotSize = 12.0f;
        this.angle = 25.0f;
        this.smoothness = 0.2f;
        this.tint = new ColorINT(22, 22, 22);
    }

    public static void buildShaderCache() {
        new Halftone().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new Halftone().buildShaderCacheFromDefaultsForce();
    }

    @InterfaceC15237a
    public float getAngle() {
        return this.angle;
    }

    @Override
    public String getDisplayableTitle() {
        return f75304Z;
    }

    @InterfaceC15237a
    public float getDotSize() {
        return this.dotSize;
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
        linkedList.add(new C5.b(new c(), "Dot Size", aVar, 32.0f).d(gameObject, this, "dotSize", cVar));
        linkedList.add(new C5.b(new d(), "Angle", aVar, 90.0f).d(gameObject, this, "angle", cVar));
        linkedList.add(new C5.b(new e(), "Smoothness", aVar).d(gameObject, this, "smoothness", cVar));
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
    public float getSmoothness() {
        return this.smoothness;
    }

    @InterfaceC15237a
    public ColorINT getTint() {
        return this.tint;
    }

    @Override
    public String getTitle() {
        return f75304Z;
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
    public void setAngle(float angle) {
        this.angle = angle;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setDotSize(float dotSize) {
        this.dotSize = dotSize;
        markParameterDirty(1);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75307S = run;
    }

    @InterfaceC15237a
    public void setSmoothness(float smoothness) {
        this.smoothness = smoothness;
        markParameterDirty(3);
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
        if (this.f75307S == null) {
            this.f75307S = new JAVARuntime.Halftone(this);
        }
        return this.f75307S;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("dotSize", this.dotSize);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("angle", this.angle);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.d("smoothness", this.smoothness);
        }
        if ((paramBit(4) & dirtyMask) != 0) {
            writer.c("tint", this.tint);
        }
        if ((paramBit(5) & dirtyMask) != 0) {
            writer.e(MediaStore.Video.VideoColumns.RESOLUTION, Math.max(1, frameBuffer.i()), Math.max(1, frameBuffer.h()));
        }
    }

    @Override
    public Halftone mo1248clone() {
        Halftone halftone = new Halftone();
        halftone.intensity = this.intensity;
        halftone.dotSize = this.dotSize;
        halftone.angle = this.angle;
        halftone.smoothness = this.smoothness;
        halftone.tint = ColorINT.k(this.tint);
        return halftone;
    }
}

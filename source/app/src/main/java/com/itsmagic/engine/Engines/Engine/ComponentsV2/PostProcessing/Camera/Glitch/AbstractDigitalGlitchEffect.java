package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import android.provider.MediaStore;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.DoublePassPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public abstract class AbstractDigitalGlitchEffect extends DoublePassPostProcessPass implements Serializable {

    public static final int f75130D0 = 6;

    public static final Map<String, MaterialBuilder.r> f75131F1;

    public static final Map<String, MaterialBuilder.m> f75132H1;

    public static final int f75133W = 0;

    public static final int f75134X = 1;

    public static final int f75135Y = 2;

    public static final int f75136Z = 3;

    public static final int f75137b1 = 7;

    public static final int f75138i1 = 8;

    public static final int f75139m1 = 9;

    public static final int f75140q0 = 4;

    public static final int f75141q1 = 10;

    public static final int f75142v0 = 5;

    public static final int f75143v1 = 11;

    public static final int f75144y1 = 12;

    public final String f75145S;

    public final float f75146T;

    public float f75147U;

    public Component f75148V;

    @Expose
    @eb.f
    protected float amount;

    @Expose
    @eb.f
    protected float blockSize;

    @Expose
    @eb.f
    protected float colorShift;

    @Expose
    @eb.f
    protected float intensity;

    @Expose
    @eb.f
    protected float lineAmount;

    @Expose
    @eb.f
    protected float noiseAmount;

    @Expose
    @eb.f
    protected float pixelSize;

    @Expose
    @eb.f
    protected float radialAmount;

    @Expose
    @eb.f
    protected float speed;

    @Expose
    @eb.f
    protected float swirl;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", AbstractDigitalGlitchEffect.this.getSwirl() + "");
        }

        @Override
        public void set(Variable v10) {
            AbstractDigitalGlitchEffect.this.setSwirl(v10.float_value);
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", AbstractDigitalGlitchEffect.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            AbstractDigitalGlitchEffect.this.setIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", AbstractDigitalGlitchEffect.this.getAmount() + "");
        }

        @Override
        public void set(Variable v10) {
            AbstractDigitalGlitchEffect.this.setAmount(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", AbstractDigitalGlitchEffect.this.getSpeed() + "");
        }

        @Override
        public void set(Variable v10) {
            AbstractDigitalGlitchEffect.this.setSpeed(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", AbstractDigitalGlitchEffect.this.getBlockSize() + "");
        }

        @Override
        public void set(Variable v10) {
            AbstractDigitalGlitchEffect.this.setBlockSize(v10.float_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", AbstractDigitalGlitchEffect.this.getLineAmount() + "");
        }

        @Override
        public void set(Variable v10) {
            AbstractDigitalGlitchEffect.this.setLineAmount(v10.float_value);
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", AbstractDigitalGlitchEffect.this.getColorShift() + "");
        }

        @Override
        public void set(Variable v10) {
            AbstractDigitalGlitchEffect.this.setColorShift(v10.float_value);
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", AbstractDigitalGlitchEffect.this.getNoiseAmount() + "");
        }

        @Override
        public void set(Variable v10) {
            AbstractDigitalGlitchEffect.this.setNoiseAmount(v10.float_value);
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", AbstractDigitalGlitchEffect.this.getPixelSize() + "");
        }

        @Override
        public void set(Variable v10) {
            AbstractDigitalGlitchEffect.this.setPixelSize(v10.float_value);
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", AbstractDigitalGlitchEffect.this.getRadialAmount() + "");
        }

        @Override
        public void set(Variable v10) {
            AbstractDigitalGlitchEffect.this.setRadialAmount(v10.float_value);
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f75131F1 = linkedHashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        linkedHashMap.put("intensity", rVar);
        linkedHashMap.put("amount", rVar);
        linkedHashMap.put("speed", rVar);
        linkedHashMap.put("blockSize", rVar);
        linkedHashMap.put("lineAmount", rVar);
        linkedHashMap.put("colorShift", rVar);
        linkedHashMap.put("noiseAmount", rVar);
        linkedHashMap.put("pixelSize", rVar);
        linkedHashMap.put("radialAmount", rVar);
        linkedHashMap.put("swirl", rVar);
        linkedHashMap.put("time", rVar);
        linkedHashMap.put(MediaStore.Video.VideoColumns.RESOLUTION, MaterialBuilder.r.FLOAT2);
        linkedHashMap.put("variant", rVar);
        f75132H1 = new LinkedHashMap();
    }

    public AbstractDigitalGlitchEffect(String serializedName, String displayableTitle, float variantId) {
        super(serializedName, "digital_glitch_suite", f75131F1, f75132H1);
        this.intensity = 1.0f;
        this.amount = 0.65f;
        this.speed = 1.0f;
        this.blockSize = 24.0f;
        this.lineAmount = 0.5f;
        this.colorShift = 0.45f;
        this.noiseAmount = 0.35f;
        this.pixelSize = 8.0f;
        this.radialAmount = 0.35f;
        this.swirl = 0.35f;
        this.f75145S = displayableTitle;
        this.f75146T = variantId;
    }

    public final <T extends AbstractDigitalGlitchEffect> T copyBaseStateTo(T target) {
        target.intensity = this.intensity;
        target.amount = this.amount;
        target.speed = this.speed;
        target.blockSize = this.blockSize;
        target.lineAmount = this.lineAmount;
        target.colorShift = this.colorShift;
        target.noiseAmount = this.noiseAmount;
        target.pixelSize = this.pixelSize;
        target.radialAmount = this.radialAmount;
        target.swirl = this.swirl;
        target.setInternalTime(this.f75147U);
        return target;
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.f75147U = 0.0f;
        markParameterDirty(10);
    }

    @InterfaceC15237a
    public float getAmount() {
        return this.amount;
    }

    @InterfaceC15237a
    public float getBlockSize() {
        return this.blockSize;
    }

    @InterfaceC15237a
    public float getColorShift() {
        return this.colorShift;
    }

    @Override
    public String getDisplayableTitle() {
        return this.f75145S;
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
        linkedList.add(new C5.b(new c(), "Amount", aVar).d(gameObject, this, "amount", cVar));
        linkedList.add(new C5.b(new d(), "Speed", aVar, 6.0f).d(gameObject, this, "speed", cVar));
        linkedList.add(new C5.b(new e(), "Block Size", aVar, 128.0f).d(gameObject, this, "blockSize", cVar));
        linkedList.add(new C5.b(new f(), "Line Amount", aVar, 2.0f).d(gameObject, this, "lineAmount", cVar));
        linkedList.add(new C5.b(new g(), "Color Shift", aVar, 2.0f).d(gameObject, this, "colorShift", cVar));
        linkedList.add(new C5.b(new h(), "Noise", aVar, 2.0f).d(gameObject, this, "noiseAmount", cVar));
        linkedList.add(new C5.b(new i(), "Pixel Size", aVar, 48.0f).d(gameObject, this, "pixelSize", cVar));
        linkedList.add(new C5.b(new j(), "Radial Amount", aVar, 2.0f).d(gameObject, this, "radialAmount", cVar));
        linkedList.add(new C5.b(new a(), "Swirl", aVar, 3.0f).d(gameObject, this, "swirl", cVar));
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @InterfaceC15237a
    public float getLineAmount() {
        return this.lineAmount;
    }

    @InterfaceC15237a
    public float getNoiseAmount() {
        return this.noiseAmount;
    }

    @InterfaceC15237a
    public float getPixelSize() {
        return this.pixelSize;
    }

    @InterfaceC15237a
    public float getRadialAmount() {
        return this.radialAmount;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(11);
    }

    @InterfaceC15237a
    public float getSpeed() {
        return this.speed;
    }

    @InterfaceC15237a
    public float getSwirl() {
        return this.swirl;
    }

    @InterfaceC15237a
    public float getTime() {
        return this.f75147U;
    }

    @Override
    public String getTitle() {
        return this.f75145S;
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3) | paramBit(4) | paramBit(5) | paramBit(6) | paramBit(7) | paramBit(8) | paramBit(9) | paramBit(10) | paramBit(11) | paramBit(12);
    }

    @InterfaceC15237a
    public float getVariantId() {
        return this.f75146T;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public abstract AbstractDigitalGlitchEffect newInstance();

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.f75147U += K8.d.b();
        markParameterDirty(10);
    }

    @InterfaceC15237a
    public void setAmount(float amount) {
        this.amount = amount;
        markParameterDirty(1);
    }

    @InterfaceC15237a
    public void setBlockSize(float blockSize) {
        this.blockSize = blockSize;
        markParameterDirty(3);
    }

    @InterfaceC15237a
    public void setColorShift(float colorShift) {
        this.colorShift = colorShift;
        markParameterDirty(5);
    }

    public final void setDefaults(float intensity, float amount, float speed, float blockSize, float lineAmount, float colorShift, float noiseAmount, float pixelSize, float radialAmount, float swirl) {
        this.intensity = intensity;
        this.amount = amount;
        this.speed = speed;
        this.blockSize = blockSize;
        this.lineAmount = lineAmount;
        this.colorShift = colorShift;
        this.noiseAmount = noiseAmount;
        this.pixelSize = pixelSize;
        this.radialAmount = radialAmount;
        this.swirl = swirl;
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        markParameterDirty(0);
    }

    public final void setInternalTime(float time) {
        this.f75147U = time;
    }

    @InterfaceC15237a
    public void setLineAmount(float lineAmount) {
        this.lineAmount = lineAmount;
        markParameterDirty(4);
    }

    @InterfaceC15237a
    public void setNoiseAmount(float noiseAmount) {
        this.noiseAmount = noiseAmount;
        markParameterDirty(6);
    }

    @InterfaceC15237a
    public void setPixelSize(float pixelSize) {
        this.pixelSize = pixelSize;
        markParameterDirty(7);
    }

    @InterfaceC15237a
    public void setRadialAmount(float radialAmount) {
        this.radialAmount = radialAmount;
        markParameterDirty(8);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75148V = run;
    }

    @InterfaceC15237a
    public void setSpeed(float speed) {
        this.speed = speed;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setSwirl(float swirl) {
        this.swirl = swirl;
        markParameterDirty(9);
    }

    @InterfaceC15237a
    public void setTime(float time) {
        this.f75147U = time;
        markParameterDirty(10);
    }

    @Override
    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return this.intensity > 0.0f && this.amount > 0.0f;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassPostProcessPass.b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("intensity", this.intensity);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("amount", this.amount);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("speed", this.speed);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.d("blockSize", this.blockSize);
        }
        if ((paramBit(4) & dirtyMask) != 0) {
            writer.d("lineAmount", this.lineAmount);
        }
        if ((paramBit(5) & dirtyMask) != 0) {
            writer.d("colorShift", this.colorShift);
        }
        if ((paramBit(6) & dirtyMask) != 0) {
            writer.d("noiseAmount", this.noiseAmount);
        }
        if ((paramBit(7) & dirtyMask) != 0) {
            writer.d("pixelSize", this.pixelSize);
        }
        if ((paramBit(8) & dirtyMask) != 0) {
            writer.d("radialAmount", this.radialAmount);
        }
        if ((paramBit(9) & dirtyMask) != 0) {
            writer.d("swirl", this.swirl);
        }
        if ((paramBit(10) & dirtyMask) != 0) {
            writer.d("time", this.f75147U);
        }
        if ((paramBit(12) & dirtyMask) != 0) {
            writer.d("variant", this.f75146T);
        }
        if ((paramBit(11) & dirtyMask) != 0) {
            writer.e(MediaStore.Video.VideoColumns.RESOLUTION, Math.max(1, frameBuffer.i()), Math.max(1, frameBuffer.h()));
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        return copyBaseStateTo(newInstance());
    }
}

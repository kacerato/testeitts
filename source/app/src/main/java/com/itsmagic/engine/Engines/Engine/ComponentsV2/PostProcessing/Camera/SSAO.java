package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.filament.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class SSAO extends BasePostProcessing<g> implements Serializable {

    public static final String f75691I = "SSAO";

    public static final Class f75692J = SSAO.class;

    public Component f75693H;

    @Expose
    @eb.f
    private float bias;

    @Expose
    @eb.f
    private float bilateralThreshold;

    @Expose
    @eb.f
    private float intensity;

    @NonNull
    @Expose
    private View.n lowPassFilter;

    @Expose
    @eb.f
    private float minHorizonAngleRad;

    @Expose
    @eb.f
    private float power;

    @NonNull
    @Expose
    private View.n quality;

    @Expose
    @eb.f
    private float radius;

    @NonNull
    @Expose
    private View.n upsampling;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return SSAO.f75692J;
        }

        @Override
        public String c() {
            return SSAO.f75691I;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Lighting";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", SSAO.this.getRadius() + "");
        }

        @Override
        public void set(Variable v10) {
            SSAO.this.setRadius(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", SSAO.this.getIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            SSAO.this.setIntensity(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", SSAO.this.getPower() + "");
        }

        @Override
        public void set(Variable v10) {
            SSAO.this.setPower(v10.float_value);
        }
    }

    public class e implements c.o0 {

        public class a extends c.n0<View.n> {
            public a() {
            }

            @Override
            public void a() {
            }

            @Override
            public void set(final View.n value) {
                if (value != null) {
                    SSAO.this.setQuality(value);
                }
            }
        }

        public class b extends c.n0<View.n> {
            public b() {
            }

            @Override
            public void a() {
            }

            @Override
            public void set(final View.n value) {
                if (value != null) {
                    SSAO.this.setLowPassFilter(value);
                }
            }
        }

        public class c extends c.n0<View.n> {
            public c() {
            }

            @Override
            public void a() {
            }

            @Override
            public void set(final View.n value) {
                if (value != null) {
                    SSAO.this.setUpsampling(value);
                }
            }
        }

        public e() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i(Lang.l(Lang.T.QUALITY), View.n.class, SSAO.this.quality, new a()));
            entries.add(F5.c.i(Lang.l(Lang.T.LOW_PASS_FILTER), View.n.class, SSAO.this.lowPassFilter, new b()));
            entries.add(F5.c.i(Lang.l(Lang.T.UPSAMPLING), View.n.class, SSAO.this.upsampling, new c()));
            return entries;
        }
    }

    public class f implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", SSAO.this.getBias() + "");
            }

            @Override
            public void set(Variable v10) {
                SSAO.this.setBias(v10.float_value);
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", SSAO.this.getBilateralThreshold() + "");
            }

            @Override
            public void set(Variable v10) {
                SSAO.this.setBilateralThreshold(v10.float_value);
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", SSAO.this.getMinHorizonAngleRad() + "");
            }

            @Override
            public void set(Variable v10) {
                SSAO.this.setMinHorizonAngleRad(v10.float_value);
            }
        }

        public f() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat;
            C5.b bVar = new C5.b(aVar, "Bias", aVar2);
            SSAO ssao = SSAO.this;
            GameObject gameObject = ssao.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            entries.add(bVar.d(gameObject, ssao, "bias", cVar));
            C5.b bVar2 = new C5.b(new b(), "Bilateral Threshold", aVar2);
            SSAO ssao2 = SSAO.this;
            entries.add(bVar2.d(ssao2.f79250n, ssao2, "bilateralThreshold", cVar));
            C5.b bVar3 = new C5.b(new c(), "Min Horizon Angle (rad)", aVar2);
            SSAO ssao3 = SSAO.this;
            entries.add(bVar3.d(ssao3.f79250n, ssao3, "minHorizonAngleRad", cVar));
            return entries;
        }
    }

    public static class g {
    }

    static {
        C13201a.b(new a());
    }

    public SSAO() {
        super(f75691I);
        this.radius = 1.0f;
        this.power = 0.27f;
        this.bias = 0.02f;
        this.intensity = 0.9f;
        this.bilateralThreshold = 0.1f;
        View.n nVar = View.n.HIGH;
        this.quality = nVar;
        this.lowPassFilter = nVar;
        this.upsampling = nVar;
        this.minHorizonAngleRad = 0.01f;
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            View.b d10 = view.p().d();
            d10.f60208a = View.b.a.SAO;
            d10.f60212e = 1.0f;
            d10.f60218k = true;
            d10.f60209b = Nc.b.M(0.1f, this.radius);
            d10.f60210c = this.power * 6.0f;
            d10.f60211d = this.bias;
            d10.f60213f = this.intensity * 4.0f;
            d10.f60214g = this.bilateralThreshold;
            d10.f60215h = this.quality;
            d10.f60216i = this.lowPassFilter;
            d10.f60217j = this.upsampling;
            d10.f60220m = Math.max(0.0f, this.minHorizonAngleRad);
            view.p().V(d10);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        View.b d10 = view.p().d();
        d10.f60218k = false;
        view.p().V(d10);
    }

    @InterfaceC15237a
    public float getBias() {
        return this.bias;
    }

    @InterfaceC15237a
    public float getBilateralThreshold() {
        return this.bilateralThreshold;
    }

    @Override
    public String getDisplayableTitle() {
        return f75691I;
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
        b bVar = new b();
        b.a aVar = b.a.SLFloat01;
        C5.b bVar2 = new C5.b(bVar, "Radius", aVar, 1.0f);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar2.d(gameObject, this, TestVFXEffect.f77524P, cVar));
        linkedList.add(new C5.b(new c(), "Intensity", aVar, 1.0f).d(this.f79250n, this, "intensity", cVar));
        linkedList.add(new C5.b(new d(), "Power", aVar, 1.0f).d(this.f79250n, this, Context.POWER_SERVICE, cVar));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.QUALITY), new e()));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.OTHER), new f()));
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @NonNull
    @InterfaceC15237a
    public View.n getLowPassFilter() {
        return this.lowPassFilter;
    }

    @InterfaceC15237a
    public float getMinHorizonAngleRad() {
        return this.minHorizonAngleRad;
    }

    @InterfaceC15237a
    public float getPower() {
        return this.power;
    }

    @NonNull
    @InterfaceC15237a
    public View.n getQuality() {
        return this.quality;
    }

    @InterfaceC15237a
    public float getRadius() {
        return this.radius;
    }

    @Override
    public String getTitle() {
        return f75691I;
    }

    @NonNull
    @InterfaceC15237a
    public View.n getUpsampling() {
        return this.upsampling;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public boolean isAdvancedRendererRequired() {
        return true;
    }

    @InterfaceC15237a
    public void setBias(float bias) {
        this.bias = bias;
    }

    @InterfaceC15237a
    public void setBilateralThreshold(float bilateralThreshold) {
        this.bilateralThreshold = bilateralThreshold;
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
    }

    @InterfaceC15237a
    public void setLowPassFilter(@NonNull View.n lowPassFilter) {
        this.lowPassFilter = lowPassFilter;
    }

    @InterfaceC15237a
    public void setMinHorizonAngleRad(float minHorizonAngleRad) {
        this.minHorizonAngleRad = Math.max(0.0f, minHorizonAngleRad);
    }

    @InterfaceC15237a
    public void setPower(float power) {
        this.power = power;
    }

    @InterfaceC15237a
    public void setQuality(@NonNull View.n quality) {
        this.quality = quality;
    }

    @InterfaceC15237a
    public void setRadius(float radius) {
        this.radius = radius;
    }

    @Override
    public void setRuntime(Component run) {
        this.f75693H = run;
    }

    @InterfaceC15237a
    public void setUpsampling(@NonNull View.n upsampling) {
        this.upsampling = upsampling;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75693H;
        if (component != null) {
            return component;
        }
        JAVARuntime.SSAO ssao = new JAVARuntime.SSAO(this);
        this.f75693H = ssao;
        return ssao;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        SSAO ssao = new SSAO();
        ssao.radius = this.radius;
        ssao.power = this.power;
        ssao.bias = this.bias;
        ssao.intensity = this.intensity;
        ssao.bilateralThreshold = this.bilateralThreshold;
        ssao.quality = this.quality;
        ssao.lowPassFilter = this.lowPassFilter;
        ssao.upsampling = this.upsampling;
        ssao.minHorizonAngleRad = this.minHorizonAngleRad;
        return ssao;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public g newCacheInstance() {
        return new g();
    }
}

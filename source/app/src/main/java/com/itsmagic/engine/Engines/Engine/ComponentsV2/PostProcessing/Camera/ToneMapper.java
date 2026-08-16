package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.ColorGrading;
import com.google.android.filament.ToneMapper;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.i;
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

public class ToneMapper extends BasePostProcessing<i> implements Serializable {

    public static final String f75758I = "ToneMapper";

    public static final Class f75759J = ToneMapper.class;

    public Component f75760H;

    @Expose
    private j quality;

    @Expose
    private k type;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return ToneMapper.f75759J;
        }

        @Override
        public String c() {
            return ToneMapper.f75758I;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Color grading";
        }
    }

    public class b extends c.n0<k> {

        public class a implements Runnable {

            public final k f75762b;

            public a(final k val$value) {
                this.f75762b = val$value;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("ToneMapper - set type") : null;
                try {
                    ToneMapper.this.type = this.f75762b;
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public b() {
        }

        @Override
        public void a() {
            ToneMapper.this.reloadInspector();
        }

        @Override
        public void set(final k value) {
            if (value != null) {
                K8.a.I(new a(value));
            }
        }
    }

    public class c extends c.n0<j> {

        public class a implements Runnable {

            public final j f75765b;

            public a(final j val$value) {
                this.f75765b = val$value;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("ToneMapper - set type") : null;
                try {
                    ToneMapper.this.quality = this.f75765b;
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public c() {
        }

        @Override
        public void set(final j value) {
            if (value != null) {
                K8.a.I(new a(value));
            }
        }
    }

    public class d implements D5.h {

        public final g f75767a;

        public class a implements Runnable {

            public final Variable f75769b;

            public a(final Variable val$v) {
                this.f75769b = val$v;
            }

            @Override
            public void run() {
                d.this.f75767a.a(this.f75769b.float_value);
            }
        }

        public d(final g val$acc) {
            this.f75767a = val$acc;
        }

        @Override
        public Variable get() {
            return new Variable("", String.valueOf(this.f75767a.get()));
        }

        @Override
        public void set(final Variable v10) {
            if (v10 != null) {
                ToneMapper.runSet(new a(v10));
            }
        }
    }

    public class e implements D5.h {

        public final g f75771a;

        public final float f75772b;

        public class a implements Runnable {

            public final Variable f75774b;

            public a(final Variable val$v) {
                this.f75774b = val$v;
            }

            @Override
            public void run() {
                e eVar = e.this;
                eVar.f75771a.a(this.f75774b.float_value * eVar.f75772b);
            }
        }

        public e(final g val$acc, final float val$max) {
            this.f75771a = val$acc;
            this.f75772b = val$max;
        }

        @Override
        public Variable get() {
            return new Variable("", String.valueOf(this.f75771a.get() / this.f75772b));
        }

        @Override
        public void set(final Variable v10) {
            if (v10 != null) {
                ToneMapper.runSet(new a(v10));
            }
        }
    }

    public class f implements i.b {

        public final h f75776a;

        public f(final h val$acc) {
            this.f75776a = val$acc;
        }

        @Override
        public void a(float x10, float y10, float z10) {
            this.f75776a.a(new float[]{x10, y10, z10});
        }
    }

    public interface g {
        void a(float f10);

        float get();
    }

    public interface h {
        void a(float[] v10);

        float[] get();
    }

    public static class i {

        public Rb.a f75778a;

        public k f75779b;

        public j f75780c;

        public boolean f75781d = false;
    }

    public enum j {
        Low,
        Medium,
        High,
        Ultra;

        public ColorGrading.c b() {
            int ordinal = ordinal();
            if (ordinal == 0) {
                return ColorGrading.c.LOW;
            }
            if (ordinal == 1) {
                return ColorGrading.c.MEDIUM;
            }
            if (ordinal == 2) {
                return ColorGrading.c.HIGH;
            }
            if (ordinal == 3) {
                return ColorGrading.c.ULTRA;
            }
            throw new RuntimeException();
        }
    }

    public enum k {
        Generic,
        Linear,
        Filmic,
        ACES,
        AGX,
        AGX_PUNCHY,
        AGX_GOLDEN,
        GT7
    }

    static {
        C13201a.b(new a());
    }

    public ToneMapper() {
        super(f75758I);
        this.type = k.Filmic;
        this.quality = j.Low;
    }

    private static boolean applyIfPresent(Object target, String name, Class<?>[] sig, Object... args) {
        try {
            target.getClass().getMethod(name, sig).invoke(target, args);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean configChanged(i cache) {
        return (cache.f75781d && cache.f75779b == this.type && cache.f75780c == this.quality) ? false : true;
    }

    private C5.b float01Entry(final String label, float max, final g acc) {
        return new C5.b(new e(acc, max), label, b.a.SLFloat01);
    }

    private C5.b floatEntry(final String label, final g acc) {
        return new C5.b(new d(acc), label, b.a.SLFloat);
    }

    private void resetToDefaultValues() {
    }

    private C5.b rgbEntry(final String label, final h acc) {
        return F5.c.K(label, new com.itsmagic.engine.Engines.Engine.Vector.i(new Vector3(acc.get()), new f(acc)));
    }

    public static void runSet(Runnable r10) {
        K8.a.I(r10);
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        Rb.a aVar;
        if (camera.renderPostProcessing() && GraphicsSettings.d() && (aVar = getCache(camera).f75778a) != null) {
            view.y(aVar);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            i cache = getCache(camera);
            if (cache.f75778a == null || configChanged(cache)) {
                ColorGrading.a aVar = new ColorGrading.a();
                switch (this.type) {
                    case Generic:
                        aVar.r(new ToneMapper.f());
                        break;
                    case Linear:
                        aVar.r(new ToneMapper.g());
                        break;
                    case Filmic:
                        aVar.r(new ToneMapper.d());
                        break;
                    case ACES:
                        aVar.r(new ToneMapper.a());
                        break;
                    case AGX:
                        aVar.r(new ToneMapper.c());
                        break;
                    case AGX_PUNCHY:
                        aVar.r(new ToneMapper.c(ToneMapper.c.a.PUNCHY));
                        break;
                    case AGX_GOLDEN:
                        aVar.r(new ToneMapper.c(ToneMapper.c.a.GOLDEN));
                        break;
                    case GT7:
                        aVar.r(new ToneMapper.e());
                        break;
                }
                aVar.n(this.quality.b());
                cache.f75778a = new Rb.a(aVar);
                cache.f75779b = this.type;
                cache.f75780c = this.quality;
                cache.f75781d = true;
            }
        }
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
    }

    @Override
    public String getDisplayableTitle() {
        return f75758I;
    }

    @Override
    public int getIconResource() {
        return R.drawable.vulkan_icon;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(F5.c.i(Lang.l(Lang.T.TONEMAPPER), k.class, this.type, new b()));
        linkedList.add(F5.c.i(Lang.l(Lang.T.QUALITY), j.class, this.quality, new c()));
        return linkedList;
    }

    @InterfaceC15237a
    public j getQuality() {
        return this.quality;
    }

    @Override
    public String getTitle() {
        return f75758I;
    }

    @InterfaceC15237a
    public k getTonnemapType() {
        return this.type;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public boolean isAdvancedRendererRequired() {
        return true;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        resetToDefaultValues();
    }

    @InterfaceC15237a
    public void setQuality(j quality) {
        this.quality = quality;
    }

    @Override
    public void setRuntime(Component run) {
        this.f75760H = run;
    }

    @InterfaceC15237a
    public void setTonnemapType(k t10) {
        if (t10 == null) {
            t10 = k.AGX;
        }
        this.type = t10;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75760H;
        if (component != null) {
            return component;
        }
        JAVARuntime.ToneMapper toneMapper = new JAVARuntime.ToneMapper(this);
        this.f75760H = toneMapper;
        return toneMapper;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        ToneMapper toneMapper = new ToneMapper();
        toneMapper.type = this.type;
        toneMapper.quality = this.quality;
        return toneMapper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public i newCacheInstance() {
        return new i();
    }
}

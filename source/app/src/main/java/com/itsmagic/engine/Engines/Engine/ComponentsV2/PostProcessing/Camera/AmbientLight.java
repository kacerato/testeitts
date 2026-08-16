package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.IndirectLight;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.JavaPool.FloatArrayJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.FileCubemap;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentIndirectLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import s8.InterfaceC15237a;
import wb.C15980b;
import wb.C15981c;

public class AmbientLight extends BasePostProcessing<g> implements Serializable {

    public static final String f74711O = "AmbientLight";

    public static final Class f74712P = AmbientLight.class;

    public String f74713H;

    public String f74714I;

    public String f74715J;

    public int f74716K;

    public C15980b f74717L;

    public final AtomicBoolean f74718M;

    public Component f74719N;

    @Expose
    private String cubemapFile;

    @Expose
    private String galleryFile;

    @Expose
    @eb.f
    private ColorINT indirectLight;

    @Expose
    @eb.f
    private float lux;

    @Expose
    @eb.f
    private int maxReso;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return AmbientLight.f74712P;
        }

        @Override
        public String c() {
            return AmbientLight.f74711O;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Lighting";
        }
    }

    public class b implements Runnable {

        public final String f74720b;

        public final int f74721c;

        public class a implements Runnable {

            public final C15980b f74723b;

            public a(final C15980b val$cb) {
                this.f74723b = val$cb;
            }

            @Override
            public void run() {
                AmbientLight.this.f74717L = this.f74723b;
            }
        }

        public b(final String val$cubemapFile, final int val$r) {
            this.f74720b = val$cubemapFile;
            this.f74721c = val$r;
        }

        @Override
        public void run() {
            try {
                try {
                    K8.a.I(new a(C15981c.n(this.f74720b, this.f74721c)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } finally {
                AmbientLight.this.f74718M.set(false);
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", AmbientLight.this.indirectLight);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AmbientLight.this.indirectLight.intColor = variable.color_value.intColor;
            }
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f74727b;

            public a(final Variable val$variable) {
                this.f74727b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("AmbientLight - set lux") : null;
                try {
                    AmbientLight.this.setLux(this.f74727b.float_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", AmbientLight.this.lux + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public class a implements Runnable {

            public final String f74730b;

            public a(final String val$path) {
                this.f74730b = val$path;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("AmbientLight - set gallery file") : null;
                try {
                    AmbientLight.this.galleryFile = this.f74730b.substring(11);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", AmbientLight.this.getCubemapFile());
        }

        @Override
        public void set(Variable variable) {
            String str = (variable == null || variable.str_value.isEmpty()) ? null : variable.str_value;
            if (str == null || !str.startsWith("@@gallery@@")) {
                AmbientLight.this.setCubemapFile(str);
            } else {
                K8.a.I(new a(str));
            }
        }
    }

    public class f implements c.s0 {
        public f() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b(int id2) {
            AmbientLight.this.maxReso = id2;
        }
    }

    public static class g {

        public FilamentIndirectLight f74733a;

        public final ColorINT f74734b = new ColorINT();

        public final ColorINT f74735c = new ColorINT();

        public float f74736d;

        public C15980b f74737e;

        public int f74738f;
    }

    static {
        C13201a.b(new a());
    }

    public AmbientLight() {
        super(f74711O);
        this.indirectLight = new ColorINT(70, 73, 79);
        this.lux = 25.0f;
        this.cubemapFile = "";
        this.maxReso = 8;
        this.f74715J = "";
        this.f74716K = -1;
        this.f74718M = new AtomicBoolean();
        super.setRequireFullVersion(false);
    }

    private void compareToFile(boolean allowAsync, int r10, String cubemapFile) {
        if (this.f74715J.equals(cubemapFile) && this.f74716K == r10) {
            return;
        }
        this.f74715J = cubemapFile;
        this.f74716K = r10;
        if (cubemapFile == null || cubemapFile.isEmpty()) {
            this.f74717L = null;
            return;
        }
        if (allowAsync) {
            if (this.f74718M.compareAndSet(false, true)) {
                O9.b.d(new b(cubemapFile, r10));
            }
        } else {
            try {
                this.f74717L = C15981c.n(cubemapFile, r10);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private C15980b getEffectiveCBM() {
        Skybox skybox;
        C15980b cubemapInstance;
        return (this.f74717L != null || (skybox = (Skybox) this.f79250n.d0(Skybox.class)) == null || (cubemapInstance = skybox.getCubemapInstance()) == null) ? this.f74717L : cubemapInstance;
    }

    private void updateCubemapInstance(boolean allowAsync) {
        int i10 = TextureConfig.f79814s[this.maxReso];
        String str = this.cubemapFile;
        if (str != null && !str.isEmpty()) {
            compareToFile(allowAsync, i10, this.cubemapFile);
            return;
        }
        String str2 = this.f74713H;
        if (str2 == null || str2.isEmpty()) {
            this.f74717L = null;
        } else {
            compareToFile(allowAsync, i10, this.f74713H);
        }
    }

    private void updateFallback() {
        Skybox skybox;
        if (this.f74717L == null && (skybox = (Skybox) this.f79250n.d0(Skybox.class)) != null) {
            C15980b cubemapInstance = skybox.getCubemapInstance();
            if (cubemapInstance instanceof FileCubemap) {
                this.f74713H = ((FileCubemap) cubemapInstance).p();
                return;
            }
        }
        this.f74713H = null;
    }

    private void updateGallery() {
        String str = this.galleryFile;
        if (str == null || str.isEmpty()) {
            return;
        }
        String str2 = this.f74714I;
        if (str2 == null || !str2.equals(this.galleryFile)) {
            C15980b D12 = H3.a.D1(this.galleryFile);
            if (D12 != null) {
                this.f74717L = D12;
                if (D12 instanceof FileCubemap) {
                    String p10 = ((FileCubemap) D12).p();
                    this.cubemapFile = p10;
                    this.f74715J = p10;
                }
            } else {
                this.cubemapFile = "";
                this.f74715J = "";
            }
            this.f74714I = this.galleryFile;
        }
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.overrideAmbientLight() != null) {
            return;
        }
        getEffectiveScene().u(getCache(camera).f74733a);
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (camera.overrideAmbientLight() != null) {
            return;
        }
        g cache = getCache(camera);
        float effectiveLux = getEffectiveLux();
        C15980b effectiveCBM = getEffectiveCBM();
        if (cache.f74733a != null && cache.f74734b.intColor == this.indirectLight.intColor && cache.f74736d == effectiveLux && cache.f74737e == effectiveCBM) {
            return;
        }
        cache.f74736d = effectiveLux;
        cache.f74734b.K(this.indirectLight);
        cache.f74737e = effectiveCBM;
        IndirectLight.a aVar = new IndirectLight.a();
        float[] acquire = FloatArrayJP.acquire(3);
        acquire[0] = this.indirectLight.w();
        acquire[1] = this.indirectLight.u();
        acquire[2] = this.indirectLight.s();
        aVar.e(1, acquire);
        aVar.b(effectiveLux * 1000.0f * this.indirectLight.r());
        cache.f74733a = new FilamentIndirectLight(aVar, effectiveCBM);
        FloatArrayJP.release(acquire);
    }

    @Override
    public int countAsync() {
        return 1;
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        g peekCache = peekCache(camera);
        if (peekCache == null || peekCache.f74733a == null || getEffectiveScene().n() != peekCache.f74733a) {
            return;
        }
        getEffectiveScene().u(null);
    }

    public String getCubemapFile() {
        return this.cubemapFile;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.cubemapFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.cubemapFile);
        }
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return f74711O;
    }

    public float getEffectiveLux() {
        return GraphicsSettings.d() ? this.lux : this.lux * 1.5f;
    }

    @Override
    public int getIconResource() {
        return R.drawable.vulkan_icon;
    }

    @InterfaceC15237a
    public ColorINT getIndirectLight() {
        return this.indirectLight;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        C5.b bVar = new C5.b(new c(), "Indirect light", b.a.Color, context);
        bVar.d(gameObject, this, "indirectLight", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        linkedList.add(bVar);
        C5.b bVar2 = new C5.b(new d(), "Lux", b.a.SLFloat);
        bVar2.d(gameObject, this, "lux", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        linkedList.add(bVar2);
        linkedList.add(new C5.b(new e(), "Reflections", b.a.CubemapOrGallery, context));
        linkedList.add(F5.c.v(Lang.l(Lang.T.RESOLUTION), this.maxReso, new f()));
        return linkedList;
    }

    @InterfaceC15237a
    public float getLux() {
        return this.lux;
    }

    @InterfaceC15237a
    public int getMaxResolutionID() {
        return this.maxReso;
    }

    @Override
    public String getTitle() {
        return f74711O;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        super.loadAsync(listener);
        listener.b("(" + this.f79250n.getName() + "),(AmbientLight),(Loading),(" + this.cubemapFile + ")");
        updateGallery();
        updateCubemapInstance(false);
        listener.e();
    }

    @Override
    public void onDetach() {
        Iterator<g> it = getCaches().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            g next = it.next();
            if (next != null && next.f74733a != null && getEffectiveScene().n() == next.f74733a) {
                getEffectiveScene().u(null);
                break;
            }
        }
        super.onDetach();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        updateGallery();
        updateFallback();
        updateCubemapInstance(true);
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.cubemapFile;
        if (str == null || str.isEmpty() || this.cubemapFile.startsWith("@@ASSET@@") || (f10 = dictionary.f(this.cubemapFile)) == null) {
            return;
        }
        dictionary.h("Skybox: REPLACING " + this.cubemapFile + " TO " + f10.b());
        this.cubemapFile = f10.b();
    }

    public void setCubemapFile(String cubemapFile) {
        if (cubemapFile == null) {
            cubemapFile = "";
        }
        this.cubemapFile = cubemapFile;
    }

    @InterfaceC15237a
    public void setIndirectLight(ColorINT indirectLight) {
        this.indirectLight = indirectLight;
    }

    @InterfaceC15237a
    public void setLux(float lux) {
        this.lux = lux;
    }

    @InterfaceC15237a
    public void setMaxResolutionID(int maxReso) {
        if (maxReso >= 0 && maxReso < TextureConfig.f79814s.length) {
            this.maxReso = maxReso;
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("resolution ID out of bounds [0..");
        sb2.append(TextureConfig.f79814s.length - 1);
        sb2.append("]");
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    @Override
    public void setRuntime(Component run) {
        this.f74719N = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74719N;
        if (component != null) {
            return component;
        }
        JAVARuntime.AmbientLight ambientLight = new JAVARuntime.AmbientLight(this);
        this.f74719N = ambientLight;
        return ambientLight;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        AmbientLight ambientLight = new AmbientLight();
        ambientLight.cubemapFile = this.cubemapFile;
        ambientLight.indirectLight = ColorINT.k(this.indirectLight);
        ambientLight.lux = this.lux;
        ambientLight.maxReso = this.maxReso;
        ambientLight.galleryFile = this.galleryFile;
        return ambientLight;
    }

    @Override
    public void destroyCache(g cache) {
        if (cache == null) {
            return;
        }
        if (cache.f74733a != null) {
            if (getEffectiveScene().n() == cache.f74733a) {
                getEffectiveScene().u(null);
            }
            cache.f74733a.destroyImmediate();
            cache.f74733a = null;
        }
        cache.f74737e = null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public g newCacheInstance() {
        return new g();
    }
}

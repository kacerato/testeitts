package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.Skybox;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.FileCubemap;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentSkybox;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
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

public class Skybox extends BasePostProcessing<h> implements Serializable {

    public static final String f75731N = "Skybox";

    public static final Class f75732O = Skybox.class;

    public String f75733H;

    public String f75734I;

    public int f75735J;

    public C15980b f75736K;

    public final AtomicBoolean f75737L;

    public Component f75738M;

    @Expose
    @eb.f
    private ColorINT color;

    @Expose
    private String cubemapFile;

    @Expose
    private String galleryFile;

    @Expose
    @eb.f
    private float lux;

    @Expose
    @eb.f
    private int maxReso;

    @Expose
    private boolean showSun;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Skybox.f75732O;
        }

        @Override
        public String c() {
            return Skybox.f75731N;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Skybox";
        }
    }

    public class b implements Runnable {

        public final int f75739b;

        public class a implements Runnable {

            public final C15980b f75741b;

            public a(final C15980b val$cb) {
                this.f75741b = val$cb;
            }

            @Override
            public void run() {
                Skybox.this.f75736K = this.f75741b;
            }
        }

        public b(final int val$r) {
            this.f75739b = val$r;
        }

        @Override
        public void run() {
            try {
                try {
                    K8.a.I(new a(C15981c.n(Skybox.this.cubemapFile, this.f75739b)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } finally {
                Skybox.this.f75737L.set(false);
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", Skybox.this.color);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Skybox.this.color.intColor = variable.color_value.intColor;
            }
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f75745b;

            public a(final Variable val$variable) {
                this.f75745b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Skybox - set lux") : null;
                try {
                    Skybox.this.setLux(this.f75745b.float_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Skybox.this.lux + "");
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

            public final String f75748b;

            public a(final String val$path) {
                this.f75748b = val$path;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Skybox - set gallery file") : null;
                try {
                    Skybox.this.galleryFile = this.f75748b.substring(11);
                    Skybox.this.cubemapFile = null;
                    Skybox.this.f75733H = null;
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", Skybox.this.getCubemapFile());
        }

        @Override
        public void set(Variable variable) {
            String str = (variable == null || variable.str_value.isEmpty()) ? null : variable.str_value;
            if (str == null || !str.startsWith("@@gallery@@")) {
                Skybox.this.setCubemapFile(str);
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
            Skybox.this.maxReso = id2;
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", Skybox.this.showSun + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Skybox.this.showSun = variable.booolean_value.booleanValue();
            }
        }
    }

    public static class h {

        public FilamentSkybox f75752a;

        public C15980b f75753b;

        public final ColorINT f75754c = new ColorINT();

        public int f75755d;

        public boolean f75756e;

        public float f75757f;
    }

    static {
        C13201a.b(new a());
    }

    public Skybox() {
        super(f75731N);
        this.color = new ColorINT();
        this.lux = 25.0f;
        this.cubemapFile = "";
        this.maxReso = 16;
        this.showSun = true;
        this.f75734I = "";
        this.f75735J = -1;
        this.f75737L = new AtomicBoolean();
        super.setRequireFullVersion(false);
    }

    private void updateCubemapInstance(boolean allowAsync) {
        int i10 = TextureConfig.f79814s[this.maxReso];
        if (this.cubemapFile.isEmpty()) {
            this.f75736K = null;
            return;
        }
        if (this.f75734I.equals(this.cubemapFile) && this.f75735J == i10) {
            return;
        }
        String str = this.cubemapFile;
        this.f75734I = str;
        this.f75735J = i10;
        if (str == null || str.isEmpty()) {
            this.f75736K = null;
            return;
        }
        if (allowAsync) {
            if (this.f75737L.compareAndSet(false, true)) {
                O9.b.d(new b(i10));
            }
        } else {
            try {
                this.f75736K = C15981c.n(this.cubemapFile, i10);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private void updateGallery() {
        String str = this.galleryFile;
        if (str == null || str.isEmpty()) {
            return;
        }
        String str2 = this.f75733H;
        if (str2 == null || !str2.equals(this.galleryFile)) {
            C15980b D12 = H3.a.D1(this.galleryFile);
            if (D12 != null) {
                this.f75736K = D12;
                if (D12 instanceof FileCubemap) {
                    String p10 = ((FileCubemap) D12).p();
                    this.cubemapFile = p10;
                    this.f75734I = p10;
                }
            } else {
                this.cubemapFile = "";
                this.f75734I = "";
            }
            this.f75733H = this.galleryFile;
        }
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.getBackgroundType() != Camera.F.Skybox) {
            return;
        }
        getEffectiveScene().v(getCache(camera).f75752a);
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (camera.getBackgroundType() != Camera.F.Skybox) {
            return;
        }
        h cache = getCache(camera);
        if (cache.f75752a != null && cache.f75753b == this.f75736K && cache.f75754c.intColor == this.color.intColor && cache.f75756e == this.showSun && cache.f75757f == this.lux) {
            return;
        }
        cache.f75757f = this.lux;
        cache.f75753b = this.f75736K;
        cache.f75754c.K(this.color);
        cache.f75756e = this.showSun;
        Skybox.a e10 = new Skybox.a().b(this.color.w(), this.color.u(), this.color.s(), this.color.r()).e((this.lux * 1000.0f) + 1.0f);
        e10.g(this.showSun);
        cache.f75752a = new FilamentSkybox(e10, this.f75736K);
    }

    @Override
    public int countAsync() {
        return 1;
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        h peekCache = peekCache(camera);
        if (peekCache == null || peekCache.f75752a == null || getEffectiveScene().p() != peekCache.f75752a) {
            return;
        }
        getEffectiveScene().v(null);
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    public String getCubemapFile() {
        return this.cubemapFile;
    }

    public C15980b getCubemapInstance() {
        return this.f75736K;
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
        return f75731N;
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
        linkedList.add(new C5.b(new c(), SerializableShaderEntry.f81153g, b.a.Color, context).d(this.f79250n, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
        C5.b bVar = new C5.b(new d(), "Lux", b.a.SLFloat);
        bVar.d(this.f79250n, this, "lux", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        linkedList.add(bVar);
        linkedList.add(new C5.b(new e(), f75731N, b.a.CubemapOrGallery, context));
        linkedList.add(F5.c.v(Lang.l(Lang.T.RESOLUTION), this.maxReso, new f()));
        linkedList.add(new C5.b(new g(), "Show sun", b.a.SLBoolean));
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
        return f75731N;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public boolean isShowSun() {
        return this.showSun;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        super.loadAsync(listener);
        listener.b("(" + this.f79250n.getName() + "),(Skybox),(Loading),(" + this.cubemapFile + ")");
        updateGallery();
        updateCubemapInstance(false);
        listener.e();
    }

    @Override
    public void onDetach() {
        Iterator<h> it = getCaches().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            h next = it.next();
            if (next != null && next.f75752a != null && getEffectiveScene().p() == next.f75752a) {
                getEffectiveScene().v(null);
                break;
            }
        }
        super.onDetach();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        updateGallery();
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

    @InterfaceC15237a
    public void setColor(ColorINT color) {
        this.color = color;
    }

    public void setCubemapFile(String cubemapFile) {
        if (cubemapFile == null) {
            cubemapFile = "";
        }
        this.cubemapFile = cubemapFile;
        if (cubemapFile.isEmpty()) {
            return;
        }
        this.galleryFile = null;
        this.f75733H = null;
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
        this.f75738M = run;
    }

    @InterfaceC15237a
    public void setShowSun(boolean showSun) {
        this.showSun = showSun;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75738M;
        if (component != null) {
            return component;
        }
        JAVARuntime.Skybox skybox = new JAVARuntime.Skybox(this);
        this.f75738M = skybox;
        return skybox;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        Skybox skybox = new Skybox();
        skybox.cubemapFile = this.cubemapFile;
        skybox.maxReso = this.maxReso;
        skybox.showSun = this.showSun;
        skybox.lux = this.lux;
        skybox.galleryFile = this.galleryFile;
        return skybox;
    }

    @Override
    public void destroyCache(h cache) {
        if (cache == null) {
            return;
        }
        if (cache.f75752a != null) {
            if (getEffectiveScene().p() == cache.f75752a) {
                getEffectiveScene().v(null);
            }
            cache.f75752a.destroyImmediate();
            cache.f75752a = null;
        }
        cache.f75753b = null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public h newCacheInstance() {
        return new h();
    }
}

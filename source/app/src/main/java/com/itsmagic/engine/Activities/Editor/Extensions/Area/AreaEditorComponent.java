package com.itsmagic.engine.Activities.Editor.Extensions.Area;

import C5.b;
import F5.c;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.Area.a;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.PointLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SpotLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Utils.HideObjectFromPanel;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import fb.AbstractC13203c;
import fb.C13201a;
import id.C13696a;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.ITsMagic.Atlas.BakeOptions;
import t3.C15377a;
import y4.C16144b;

public class AreaEditorComponent extends Component {

    public static final String f69958I = "AreaEditorComponent";

    public static final Class f69959J = AreaEditorComponent.class;

    public final BakeOptions f69960E;

    public final AtomicBoolean f69961F;

    public float f69962G;

    public String f69963H;

    @Expose
    private float ambientOcclusionIntensity;

    @Expose
    private float ambientOcclusionPower;

    @Expose
    private q ambientOcclusionQuality;

    @Expose
    private float ambientOcclusionRadius;

    @Expose
    private boolean bakeAmbientOcclusion;

    @Expose
    private boolean bakeBuildedWithLight;

    @Expose
    public boolean bakeLight;

    @Expose
    private float bounceGIIntensity;

    @Expose
    private r bounceGIRange;

    @Expose
    private boolean bounceGIVisibility;

    @Expose
    public boolean enableGI;

    @Expose
    private TextureConfig.c filter;

    @Expose
    public boolean genMipmaps;

    @Expose
    public float giQuality;

    @Expose
    public int lightTexelsPerUnit;

    @Expose
    public int mipmapLevels;

    @Expose
    private s mode;

    @Expose
    public int padding;

    @Expose
    private int quality;

    @Expose
    public t resolutionTarget;

    @Expose
    public int texelsPerUnit;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", AreaEditorComponent.this.padding + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AreaEditorComponent.this.padding = variable.int_value;
            }
        }
    }

    public class b extends c.n0<t> {
        public b() {
        }

        @Override
        public void set(t value) {
            AreaEditorComponent.this.resolutionTarget = value;
        }
    }

    public class c implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.bakeLight + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.bakeLight = variable.booolean_value.booleanValue();
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.lightTexelsPerUnit + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.lightTexelsPerUnit = variable.int_value;
                }
            }
        }

        public c() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Bake Light", b.a.SLBoolean));
            entries.add(new C5.b(new b(), "Light texels per meter", b.a.SLInt));
            return entries;
        }
    }

    public class d implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.isEnableGI() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.setEnableGI(variable.booolean_value.booleanValue());
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.giQuality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.giQuality = variable.float_value;
                }
            }
        }

        public class c extends c.n0<r> {
            public c() {
            }

            @Override
            public void set(r value) {
                AreaEditorComponent.this.setBounceGIRange(value);
            }

            @Override
            public String c(r value) {
                return value.b();
            }
        }

        public class C1042d implements D5.h {
            public C1042d() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.getBounceGIIntensity() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.setBounceGIIntensity(variable.float_value);
                }
            }
        }

        public class e implements D5.h {
            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.isBounceGIVisibility() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.setBounceGIVisibility(variable.booolean_value.booleanValue());
                }
            }
        }

        public d() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLBoolean;
            entries.add(new C5.b(aVar, "Enabled", aVar2));
            entries.add(new C5.b(new b(), "Quality", b.a.SLFloat01));
            entries.add(F5.c.i("Reach", r.class, AreaEditorComponent.this.bounceGIRange, new c()));
            entries.add(new C5.b(new C1042d(), "Intensity", b.a.SLFloat));
            entries.add(new C5.b(new e(), "Ray visibility", aVar2));
            return entries;
        }
    }

    public class e implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.isBakeAmbientOcclusion() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.setBakeAmbientOcclusion(variable.booolean_value.booleanValue());
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.getAmbientOcclusionRadius() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.setAmbientOcclusionRadius(variable.float_value);
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.getAmbientOcclusionIntensity() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.setAmbientOcclusionIntensity(variable.float_value);
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.getAmbientOcclusionPower() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.setAmbientOcclusionPower(variable.float_value);
                }
            }
        }

        public class C1043e extends c.n0<q> {
            public C1043e() {
            }

            @Override
            public void set(q value) {
                AreaEditorComponent.this.setAmbientOcclusionQuality(value);
            }

            @Override
            public String c(q value) {
                return value.b();
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
            entries.add(new C5.b(new a(), "Enabled", b.a.SLBoolean));
            b bVar = new b();
            b.a aVar = b.a.SLFloat;
            entries.add(new C5.b(bVar, "Radius", aVar));
            entries.add(new C5.b(new c(), "Intensity", b.a.SLFloat01));
            entries.add(new C5.b(new d(), "Power", aVar));
            entries.add(F5.c.i("Quality", q.class, AreaEditorComponent.this.ambientOcclusionQuality, new C1043e()));
            return entries;
        }
    }

    public class f implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.getFilterName());
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    int i10 = variable.int_value;
                    if (i10 == 0) {
                        AreaEditorComponent.this.setFilter(TextureConfig.c.Nearest);
                    } else if (i10 == 1) {
                        AreaEditorComponent.this.setFilter(TextureConfig.c.Linear);
                    }
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.genMipmaps + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.genMipmaps = variable.booolean_value.booleanValue();
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.getMipmapLevels() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.setMipmapLevels(variable.int_value);
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", AreaEditorComponent.this.getQuality() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AreaEditorComponent.this.setQuality(variable.int_value);
                }
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
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add("Pixel");
            steppedArrayList.add("Linear");
            entries.add(new C5.b(new a(), AreaEditorComponent.this.getFilterName(), steppedArrayList, b.a.SLDropdown, "Filter"));
            entries.add(new C5.b(new b(), "Mipmaps", b.a.SLBoolean));
            c cVar = new c();
            b.a aVar = b.a.SLInt;
            entries.add(new C5.b(cVar, "Mipmap levels", aVar));
            entries.add(new C5.b(new d(), "Quality", aVar));
            return entries;
        }
    }

    public static class g {

        public static final int[] f69986a;

        static {
            int[] iArr = new int[TextureConfig.c.values().length];
            f69986a = iArr;
            try {
                iArr[TextureConfig.c.Nearest.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69986a[TextureConfig.c.Linear.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public class h extends AbstractC13203c {
        @Override
        public Class b() {
            return AreaEditorComponent.f69959J;
        }

        @Override
        public String c() {
            return AreaEditorComponent.f69958I;
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    public class i implements Consumer<GameObject> {
        public i() {
        }

        @Override
        public void accept(GameObject gameObject) {
            if (gameObject.d0(HideObjectFromPanel.class) != null) {
                return;
            }
            for (int i10 = 0; i10 < gameObject.N(); i10++) {
                Component L10 = gameObject.L(i10);
                if (L10 instanceof ModelRenderer) {
                    ((ModelRenderer) L10).setSuppressRender(AreaEditorComponent.this.mode != s.EditMode);
                }
                if (AreaEditorComponent.this.mode == s.BakePreview) {
                    if (L10 instanceof SunLight) {
                        ((SunLight) L10).setSuppressRender(AreaEditorComponent.this.bakeBuildedWithLight);
                    } else if (L10 instanceof PointLight) {
                        ((PointLight) L10).setSuppressRender(AreaEditorComponent.this.bakeBuildedWithLight);
                    } else if (L10 instanceof SpotLight) {
                        ((SpotLight) L10).setSuppressRender(AreaEditorComponent.this.bakeBuildedWithLight);
                    }
                } else if (L10 instanceof SunLight) {
                    ((SunLight) L10).setSuppressRender(false);
                } else if (L10 instanceof PointLight) {
                    ((PointLight) L10).setSuppressRender(false);
                } else if (L10 instanceof SpotLight) {
                    ((SpotLight) L10).setSuppressRender(false);
                }
            }
            gameObject.z0().forEach(this);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override
        public void run() {
            ObjectsPanel.N1();
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override
        public void run() {
            AreaEditorComponent.this.updateMode();
        }
    }

    public class l implements Predicate<GameObject> {
        public l() {
        }

        @Override
        public boolean test(GameObject gameObject) {
            return gameObject.d0(HideObjectFromPanel.class) != null;
        }
    }

    public class m implements Consumer<GameObject> {

        public class a implements Predicate<GameObject> {
            public a() {
            }

            @Override
            public boolean test(GameObject gameObject) {
                return gameObject.d0(HideObjectFromPanel.class) != null;
            }
        }

        public m() {
        }

        @Override
        public void accept(GameObject gameObject) {
            gameObject.z0().removeIf(new a());
            gameObject.z0().forEach(this);
        }
    }

    public class n implements Consumer<GameObject> {
        public n() {
        }

        @Override
        public void accept(GameObject gameObject) {
            gameObject.transform.N3(Transform.G.STATIC);
            try {
                gameObject.z0().forEach(this);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class o implements Runnable {

        public final List f69994b;

        public class a implements a.i {

            public final File f69996a;

            public a(final File val$bakeOutputFolder) {
                this.f69996a = val$bakeOutputFolder;
            }

            @Override
            public void a(int executed, int total, float progress, String tda) {
                if (!C15377a.f109719g.booleanValue()) {
                    System.out.println("Baking:" + executed + "/" + total + " - " + Nc.b.r0(progress * 100.0f, 2) + ve.j.f121589a);
                }
                C16144b.s1("Baking: " + executed + "/" + total + " - " + Nc.b.r0(100.0f * progress, 2) + ve.j.f121589a);
                AreaEditorComponent.this.f69962G = progress;
            }

            @Override
            public void b(String step) {
                System.out.println("beginStep:" + step);
                C16144b.s1("Begin step: " + step);
                AreaEditorComponent.this.f69963H = Tc.b.Y(step, 15);
            }

            @Override
            public void c(GameObject gameObject) {
                if (gameObject != null) {
                    try {
                        X7.a.b(new File(this.f69996a, "bake.go").getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""), gameObject.x1().toString(), N7.c.t());
                        gameObject.Q1();
                        if (AreaEditorComponent.this.f79250n.D() > 0) {
                            AreaEditorComponent.this.f79250n.C(0).destroy();
                        }
                        gameObject.F1(AreaEditorComponent.this.f79250n);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                AreaEditorComponent.this.f69961F.set(false);
                AreaEditorComponent.this.setMode(s.BakePreview);
            }
        }

        public o(final List val$gameObjects) {
            this.f69994b = val$gameObjects;
        }

        @Override
        public void run() {
            BakeOptions bakeOptions = AreaEditorComponent.this.f69960E;
            AreaEditorComponent areaEditorComponent = AreaEditorComponent.this;
            bakeOptions.padding = areaEditorComponent.padding;
            BakeOptions bakeOptions2 = areaEditorComponent.f69960E;
            AreaEditorComponent areaEditorComponent2 = AreaEditorComponent.this;
            bakeOptions2.texelsPerUnit = areaEditorComponent2.texelsPerUnit;
            BakeOptions bakeOptions3 = areaEditorComponent2.f69960E;
            AreaEditorComponent areaEditorComponent3 = AreaEditorComponent.this;
            bakeOptions3.light = areaEditorComponent3.bakeLight;
            areaEditorComponent3.f69960E.bilinear = true;
            AreaEditorComponent areaEditorComponent4 = AreaEditorComponent.this;
            areaEditorComponent4.bakeBuildedWithLight = areaEditorComponent4.bakeLight;
            com.itsmagic.engine.Activities.Editor.Extensions.Area.a aVar = new com.itsmagic.engine.Activities.Editor.Extensions.Area.a((List<GameObject>) this.f69994b, AreaEditorComponent.this.f69960E);
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + Lb.k.j() + "/bake/");
            if (file.exists()) {
                C13696a.g(file);
            }
            file.mkdirs();
            aVar.u(file);
            aVar.t(false);
            AreaEditorComponent areaEditorComponent5 = AreaEditorComponent.this;
            aVar.k(areaEditorComponent5, areaEditorComponent5.resolutionTarget == t.Auto, new a(file));
        }
    }

    public class p implements D5.h {
        public p() {
        }

        @Override
        public Variable get() {
            return new Variable("", AreaEditorComponent.this.texelsPerUnit + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AreaEditorComponent.this.texelsPerUnit = variable.int_value;
            }
        }
    }

    public enum q {
        FAST("Fast"),
        BALANCED("Balanced"),
        HIGH_QUALITY("High Quality");

        private final String displayName;

        q(String displayName) {
            this.displayName = displayName;
        }

        public String b() {
            return this.displayName;
        }
    }

    public enum r {
        SHORT("Short Reach"),
        BALANCED("Medium Reach"),
        LONG("Long Reach");

        private final String displayName;

        r(String displayName) {
            this.displayName = displayName;
        }

        public String b() {
            return this.displayName;
        }
    }

    public enum s {
        EditMode,
        BakePreview
    }

    public enum t {
        R4096,
        Auto
    }

    static {
        C13201a.b(new h());
    }

    public AreaEditorComponent() {
        super(f69958I);
        this.mode = s.EditMode;
        this.texelsPerUnit = 64;
        this.padding = 4;
        this.resolutionTarget = t.R4096;
        this.lightTexelsPerUnit = 8;
        this.enableGI = false;
        this.giQuality = 0.5f;
        this.bounceGIRange = r.SHORT;
        this.bounceGIIntensity = 0.1f;
        this.ambientOcclusionRadius = 1.0f;
        this.ambientOcclusionIntensity = 0.6f;
        this.ambientOcclusionPower = 1.0f;
        this.ambientOcclusionQuality = q.BALANCED;
        this.bakeLight = true;
        this.genMipmaps = true;
        this.mipmapLevels = 3;
        this.filter = TextureConfig.c.Linear;
        this.quality = 90;
        this.f69960E = new BakeOptions();
        this.f69961F = new AtomicBoolean();
    }

    public String getFilterName() {
        int i10 = g.f69986a[getFilter().ordinal()];
        return i10 != 1 ? i10 != 2 ? "Unknown" : "Linear" : "Pixel";
    }

    public void updateMode() {
        if (this.mode == s.BakePreview) {
            File file = new File(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + Lb.k.j() + "/bake/"), "bake.go");
            if (file.exists()) {
                GameObject T10 = GameObject.T(X7.a.x(file), false, true);
                Iterator<GameObject> it = this.f79250n.z0().iterator();
                while (it.hasNext()) {
                    it.next().destroy();
                }
                T10.Q1();
                T10.F1(this.f79250n);
            }
        }
        if (this.f79250n.D() > 0) {
            this.f79250n.C(0).setEnabled(this.mode == s.BakePreview);
            this.f79250n.C(0).H1(false);
        }
        com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b.forEach(new i());
        N7.c.j0(new j());
    }

    public void generateBake() {
        if (this.f69961F.compareAndSet(false, true)) {
            setMode(s.EditMode);
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.addAll(com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b);
            steppedArrayList.removeIf(new l());
            Iterator<T> it = steppedArrayList.iterator();
            while (it.hasNext()) {
                ((GameObject) it.next()).z0().forEach(new m());
            }
            try {
                steppedArrayList.forEach(new n());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            Thread thread = new Thread(new o(steppedArrayList));
            thread.setPriority(10);
            thread.start();
        }
    }

    public float getAmbientOcclusionIntensity() {
        return this.ambientOcclusionIntensity;
    }

    public float getAmbientOcclusionPower() {
        return this.ambientOcclusionPower;
    }

    public q getAmbientOcclusionQuality() {
        return this.ambientOcclusionQuality;
    }

    public float getAmbientOcclusionRadius() {
        return this.ambientOcclusionRadius;
    }

    public float getBakeProgress() {
        return this.f69962G;
    }

    public String getBakeStep() {
        return this.f69963H;
    }

    public float getBounceGIIntensity() {
        return this.bounceGIIntensity;
    }

    public int getBounceGIIterations() {
        return 1;
    }

    public r getBounceGIRange() {
        return this.bounceGIRange;
    }

    public float getEffectiveGIQuality() {
        if (this.enableGI) {
            return getGiQuality();
        }
        return 0.0f;
    }

    public TextureConfig.c getFilter() {
        return this.filter;
    }

    public float getGiQuality() {
        return this.giQuality;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        p pVar = new p();
        b.a aVar = b.a.SLInt;
        steppedArrayList.add(new C5.b(pVar, "Pixels per meter", aVar));
        steppedArrayList.add(new C5.b(new a(), "Padding", aVar));
        steppedArrayList.add(F5.c.i("Resolution target", t.class, this.resolutionTarget, new b()));
        steppedArrayList.add(F5.c.e("Light settings", new c()));
        steppedArrayList.add(F5.c.e("Bounce GI", new d()));
        steppedArrayList.add(F5.c.e("Ambient Occlusion", new e()));
        steppedArrayList.add(F5.c.e("Texture settings", new f()));
        return steppedArrayList;
    }

    public int getLightTexelsPerUnit() {
        return this.lightTexelsPerUnit;
    }

    public int getMipmapLevels() {
        return this.mipmapLevels;
    }

    public s getMode() {
        return this.mode;
    }

    public int getPadding() {
        return this.padding;
    }

    public int getQuality() {
        return this.quality;
    }

    public int getTexelsPerUnit() {
        return this.texelsPerUnit;
    }

    @Override
    public String getTitle() {
        return f69958I;
    }

    public boolean isBakeAmbientOcclusion() {
        return this.bakeAmbientOcclusion;
    }

    public boolean isBaking() {
        return this.f69961F.get();
    }

    public boolean isBounceGIVisibility() {
        return this.bounceGIVisibility;
    }

    public boolean isEnableGI() {
        return this.enableGI;
    }

    public boolean isGenMipmaps() {
        return this.genMipmaps;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        updateMode();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        updateMode();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject.D() > 1) {
            gameObject.C(gameObject.D() - 1).destroy();
        }
    }

    public void setAmbientOcclusionIntensity(float ambientOcclusionIntensity) {
        if (!Float.isFinite(ambientOcclusionIntensity)) {
            ambientOcclusionIntensity = 0.0f;
        }
        this.ambientOcclusionIntensity = Nc.b.I(ambientOcclusionIntensity);
    }

    public void setAmbientOcclusionPower(float ambientOcclusionPower) {
        if (!Float.isFinite(ambientOcclusionPower)) {
            ambientOcclusionPower = 1.0f;
        }
        this.ambientOcclusionPower = Math.max(0.01f, ambientOcclusionPower);
    }

    public void setAmbientOcclusionQuality(q ambientOcclusionQuality) {
        if (ambientOcclusionQuality == null) {
            ambientOcclusionQuality = q.BALANCED;
        }
        this.ambientOcclusionQuality = ambientOcclusionQuality;
    }

    public void setAmbientOcclusionRadius(float ambientOcclusionRadius) {
        if (!Float.isFinite(ambientOcclusionRadius)) {
            ambientOcclusionRadius = 0.0f;
        }
        this.ambientOcclusionRadius = Math.max(0.0f, ambientOcclusionRadius);
    }

    public void setBakeAmbientOcclusion(boolean bakeAmbientOcclusion) {
        this.bakeAmbientOcclusion = bakeAmbientOcclusion;
    }

    public void setBounceGIIntensity(float bounceGIIntensity) {
        if (!Float.isFinite(bounceGIIntensity)) {
            bounceGIIntensity = 0.0f;
        }
        this.bounceGIIntensity = Math.max(0.0f, bounceGIIntensity);
    }

    public void setBounceGIRange(r bounceGIRange) {
        if (bounceGIRange == null) {
            bounceGIRange = r.BALANCED;
        }
        this.bounceGIRange = bounceGIRange;
    }

    public void setBounceGIVisibility(boolean bounceGIVisibility) {
        this.bounceGIVisibility = bounceGIVisibility;
    }

    public void setEnableGI(boolean enableGI) {
        this.enableGI = enableGI;
    }

    public void setFilter(TextureConfig.c filter) {
        this.filter = filter;
    }

    public void setGenMipmaps(boolean genMipmaps) {
        this.genMipmaps = genMipmaps;
    }

    public void setGiQuality(float giQuality) {
        this.giQuality = giQuality;
    }

    public void setLightTexelsPerUnit(int lightTexelsPerUnit) {
        this.lightTexelsPerUnit = lightTexelsPerUnit;
    }

    public void setMipmapLevels(int mipmapLevels) {
        this.mipmapLevels = mipmapLevels;
    }

    public void setMode(s mode) {
        this.mode = mode;
        K8.a.B(new k());
    }

    public void setPadding(int padding) {
        this.padding = padding;
    }

    public void setQuality(int quality) {
        this.quality = quality;
    }

    public void setTexelsPerUnit(int texelsPerUnit) {
        this.texelsPerUnit = texelsPerUnit;
    }
}

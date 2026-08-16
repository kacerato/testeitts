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
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import ic.C13663m;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import s8.InterfaceC15237a;

public class Bloom extends BasePostProcessing<p> implements Serializable {

    public static final String f74796J = "Bloom";

    public static final Class f74797K = Bloom.class;

    public final View.e f74798H;

    public Component f74799I;

    @Expose
    @eb.f
    private float chromaticAberrationV2;

    @Expose
    @eb.f
    private int ghostCount;

    @Expose
    @eb.f
    private float ghostSpacing;

    @Expose
    @eb.f
    private float ghostThreshold;

    @Expose
    @eb.f
    private float haloRadius;

    @Expose
    @eb.f
    private float haloThickness;

    @Expose
    @eb.f
    private float haloThreshold;

    @Expose
    @eb.f
    private float highlight;

    @Expose
    private boolean lensFlare;

    @Expose
    @eb.f
    private int levels;

    @NonNull
    @Expose
    private View.n quality;

    @Expose
    @eb.f
    private int resolutionID;

    @Expose
    private boolean starburst;

    @Expose
    @eb.f
    private float strength;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.getGhostCount() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setGhostCount(Math.max(0, v10.int_value));
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.getGhostSpacing() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setGhostSpacing(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.getGhostThreshold() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setGhostThreshold(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.getHaloThickness() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setHaloThickness(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.getHaloRadius() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setHaloRadius(v10.float_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.getHaloThreshold() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setHaloThreshold(v10.float_value);
        }
    }

    public class g extends AbstractC13203c {
        @Override
        public Class b() {
            return Bloom.f74797K;
        }

        @Override
        public String c() {
            return "Bloom";
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Highlights";
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.getStrength() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setStrength(v10.float_value);
        }
    }

    public class i implements c.s0 {
        public i() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b(int id2) {
            Bloom.this.resolutionID = id2;
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.getLevels() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setLevels(Math.max(1, v10.int_value));
        }
    }

    public class k implements D5.h {
        public k() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.getHighlight() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setHighlight(v10.float_value);
        }
    }

    public class l extends c.n0<View.n> {
        public l() {
        }

        @Override
        public void a() {
            Bloom.this.reloadInspector();
        }

        @Override
        public void set(View.n value) {
            Bloom.this.setQuality(value);
        }

        @Override
        public String c(View.n enumObject) {
            return Tc.b.d(enumObject.toString().toLowerCase(Locale.ROOT));
        }
    }

    public class m implements D5.h {
        public m() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.isLensFlare() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setLensFlare(v10.booolean_value.booleanValue());
        }
    }

    public class n implements D5.h {
        public n() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.isStarburst() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setStarburst(v10.booolean_value.booleanValue());
        }
    }

    public class o implements D5.h {
        public o() {
        }

        @Override
        public Variable get() {
            return new Variable("", Bloom.this.getChromaticAberration() + "");
        }

        @Override
        public void set(Variable v10) {
            Bloom.this.setChromaticAberration(v10.float_value);
        }
    }

    public static class p {
    }

    static {
        C13201a.b(new g());
    }

    public Bloom() {
        super("Bloom");
        this.strength = 0.1f;
        this.resolutionID = 6;
        this.levels = 6;
        this.highlight = 1.0f;
        this.quality = View.n.MEDIUM;
        this.lensFlare = true;
        this.starburst = true;
        this.chromaticAberrationV2 = 0.2f;
        this.ghostCount = 4;
        this.ghostSpacing = 0.6f;
        this.ghostThreshold = 1.0f;
        this.haloThickness = 0.1f;
        this.haloRadius = 0.08f;
        this.haloThreshold = 1.0f;
        this.f74798H = new View.e();
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            int i10 = TextureConfig.f79814s[this.resolutionID];
            View.e eVar = this.f74798H;
            eVar.f60241h = true;
            eVar.f60236c = Nc.b.I(this.strength);
            this.f74798H.f60237d = Math.max(32, i10);
            this.f74798H.f60238e = Nc.b.F(1, this.levels, 16);
            View.e eVar2 = this.f74798H;
            eVar2.f60239f = View.e.a.ADD;
            eVar2.f60240g = true;
            eVar2.f60242i = this.highlight * 2000.0f;
            eVar2.f60243j = this.quality;
            eVar2.f60244k = this.lensFlare;
            eVar2.f60245l = this.starburst;
            eVar2.f60246m = this.chromaticAberrationV2 * 0.05f;
            eVar2.f60247n = Math.max(0, this.ghostCount);
            View.e eVar3 = this.f74798H;
            eVar3.f60248o = this.ghostSpacing;
            eVar3.f60249p = Nc.b.I(this.ghostThreshold) * 10.0f;
            View.e eVar4 = this.f74798H;
            eVar4.f60250q = this.haloThickness;
            eVar4.f60251r = this.haloRadius;
            eVar4.f60252s = Nc.b.I(this.haloThreshold) * 10.0f;
            view.p().Y(this.f74798H);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
    }

    @InterfaceC15237a
    public float getChromaticAberration() {
        return this.chromaticAberrationV2;
    }

    @Override
    public String getDisplayableTitle() {
        return "Bloom";
    }

    @InterfaceC15237a
    public int getGhostCount() {
        return this.ghostCount;
    }

    @InterfaceC15237a
    public float getGhostSpacing() {
        return this.ghostSpacing;
    }

    @InterfaceC15237a
    public float getGhostThreshold() {
        return this.ghostThreshold;
    }

    @InterfaceC15237a
    public float getHaloRadius() {
        return this.haloRadius;
    }

    @InterfaceC15237a
    public float getHaloThickness() {
        return this.haloThickness;
    }

    @InterfaceC15237a
    public float getHaloThreshold() {
        return this.haloThreshold;
    }

    @InterfaceC15237a
    public float getHighlight() {
        return this.highlight;
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
        h hVar = new h();
        b.a aVar = b.a.SLFloat01;
        C5.b bVar = new C5.b(hVar, "Strength", aVar);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar.d(gameObject, this, "strength", cVar);
        linkedList.add(bVar);
        linkedList.add(F5.c.v(Lang.l(Lang.T.RESOLUTION), this.resolutionID, new i()));
        j jVar = new j();
        b.a aVar2 = b.a.SLInt;
        C5.b bVar2 = new C5.b(jVar, "Levels", aVar2);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.INT;
        bVar2.d(gameObject, this, "levels", cVar2);
        linkedList.add(bVar2);
        k kVar = new k();
        b.a aVar3 = b.a.SLFloat;
        C5.b bVar3 = new C5.b(kVar, "Highlight", aVar3);
        bVar3.d(gameObject, this, "highlight", cVar);
        linkedList.add(bVar3);
        linkedList.add(F5.c.i(Lang.l(Lang.T.QUALITY), View.n.class, getQuality(), new l()));
        m mVar = new m();
        b.a aVar4 = b.a.SLBoolean;
        linkedList.add(new C5.b(mVar, "Lens Flare", aVar4));
        linkedList.add(new C5.b(new n(), "Starburst", aVar4));
        C5.b bVar4 = new C5.b(new o(), C13663m.f91950e, aVar);
        bVar4.d(gameObject, this, "chromaticAberration", cVar);
        linkedList.add(bVar4);
        C5.b bVar5 = new C5.b(new a(), "Ghost Count", aVar2);
        bVar5.d(gameObject, this, "ghostCount", cVar2);
        linkedList.add(bVar5);
        C5.b bVar6 = new C5.b(new b(), "Ghost Spacing", aVar3);
        bVar6.d(gameObject, this, "ghostSpacing", cVar);
        linkedList.add(bVar6);
        C5.b bVar7 = new C5.b(new c(), "Ghost Threshold", aVar);
        bVar7.d(gameObject, this, "ghostThreshold", cVar);
        linkedList.add(bVar7);
        C5.b bVar8 = new C5.b(new d(), "Halo Thickness", aVar);
        bVar8.d(gameObject, this, "haloThickness", cVar);
        linkedList.add(bVar8);
        C5.b bVar9 = new C5.b(new e(), "Halo Radius", aVar3);
        bVar9.d(gameObject, this, "haloRadius", cVar);
        linkedList.add(bVar9);
        C5.b bVar10 = new C5.b(new f(), "Halo Threshold", aVar);
        bVar10.d(gameObject, this, "haloThreshold", cVar);
        linkedList.add(bVar10);
        return linkedList;
    }

    @InterfaceC15237a
    public int getLevels() {
        return this.levels;
    }

    @InterfaceC15237a
    public View.n getQuality() {
        return this.quality;
    }

    @InterfaceC15237a
    public int getResolutionID() {
        return this.resolutionID;
    }

    @InterfaceC15237a
    public float getStrength() {
        return this.strength;
    }

    @Override
    public String getTitle() {
        return "Bloom";
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
    public boolean isLensFlare() {
        return this.lensFlare;
    }

    @InterfaceC15237a
    public boolean isStarburst() {
        return this.starburst;
    }

    @InterfaceC15237a
    public void setChromaticAberration(float chromaticAberration) {
        this.chromaticAberrationV2 = chromaticAberration;
    }

    @InterfaceC15237a
    public void setGhostCount(int ghostCount) {
        this.ghostCount = ghostCount;
    }

    @InterfaceC15237a
    public void setGhostSpacing(float ghostSpacing) {
        this.ghostSpacing = ghostSpacing;
    }

    @InterfaceC15237a
    public void setGhostThreshold(float ghostThreshold) {
        this.ghostThreshold = ghostThreshold;
    }

    @InterfaceC15237a
    public void setHaloRadius(float haloRadius) {
        this.haloRadius = haloRadius;
    }

    @InterfaceC15237a
    public void setHaloThickness(float haloThickness) {
        this.haloThickness = haloThickness;
    }

    @InterfaceC15237a
    public void setHaloThreshold(float haloThreshold) {
        this.haloThreshold = haloThreshold;
    }

    @InterfaceC15237a
    public void setHighlight(float highlight) {
        this.highlight = highlight;
    }

    @InterfaceC15237a
    public void setLensFlare(boolean lensFlare) {
        this.lensFlare = lensFlare;
    }

    @InterfaceC15237a
    public void setLevels(int levels) {
        this.levels = levels;
    }

    @InterfaceC15237a
    public void setQuality(View.n quality) {
        this.quality = quality;
    }

    @InterfaceC15237a
    public void setResolutionID(int resolutionID) {
        if (resolutionID >= 0 && resolutionID < TextureConfig.f79814s.length) {
            this.resolutionID = resolutionID;
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
        this.f74799I = run;
    }

    @InterfaceC15237a
    public void setStarburst(boolean starburst) {
        this.starburst = starburst;
    }

    @InterfaceC15237a
    public void setStrength(float strength) {
        this.strength = strength;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74799I;
        if (component != null) {
            return component;
        }
        JAVARuntime.Bloom bloom = new JAVARuntime.Bloom(this);
        this.f74799I = bloom;
        return bloom;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        Bloom bloom = new Bloom();
        bloom.strength = this.strength;
        bloom.resolutionID = this.resolutionID;
        bloom.levels = this.levels;
        bloom.highlight = this.highlight;
        bloom.quality = this.quality;
        bloom.lensFlare = this.lensFlare;
        bloom.starburst = this.starburst;
        bloom.chromaticAberrationV2 = this.chromaticAberrationV2;
        bloom.ghostCount = this.ghostCount;
        bloom.ghostSpacing = this.ghostSpacing;
        bloom.ghostThreshold = this.ghostThreshold;
        bloom.haloThickness = this.haloThickness;
        bloom.haloRadius = this.haloRadius;
        bloom.haloThreshold = this.haloThreshold;
        return bloom;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public p newCacheInstance() {
        return new p();
    }
}

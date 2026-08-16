package com.itsmagic.engine.Engines.Engine.ComponentsV2.Light;

import C5.b;
import F5.c;
import Ic.C;
import JAVARuntime.Color;
import JAVARuntime.Component;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import a9.C3591a;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.filament.LightManager;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentLight;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import ib.InterfaceC13601h;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class PointLight extends BaseLightComponent implements Serializable {

    public static final String f73488M = "PointLight";

    public static final Class f73489N = PointLight.class;

    public boolean f73490E;

    public boolean f73491F;

    public C3591a f73492G;

    public final GizmoObject f73493H;

    public FilamentLight f73494I;

    public boolean f73495J;

    public final InterfaceC13601h f73496K;

    public Component f73497L;

    @Expose
    @eb.f
    private boolean allowShadow;

    @Keep
    public final ec.d allowShadow_OFCBRL;

    @Expose
    @eb.f
    private ColorINT color;

    @Keep
    public final ec.d color_OFCBRL;

    @Expose
    @eb.f
    private float falloffRadius;

    @Keep
    public final ec.d falloffRadius_OFCBRL;

    @Expose
    @eb.f
    private float lumens;

    @Keep
    public final ec.d lumens_OFCBRL;

    @Expose
    @eb.f
    private float shadowBiasV4;

    @Keep
    public final ec.d shadowBias_OFCBRL;

    @Expose
    @eb.f
    private float shadowFarDistance;

    @Keep
    public final ec.d shadowFarDistance_OFCBRL;

    @Expose
    @eb.f
    private float shadowNormalBias;

    @Keep
    public final ec.d shadowNormalBias_OFCBRL;

    @Expose
    @eb.f
    private int shadowResolutionIDV2;

    @Keep
    public final ec.d shadowResolutionIDV2_OFCBRL;

    public class a extends GizmoObject {
        public a() {
            setColor(new Color(255, 220, 100));
            setRenderMode(GizmoElement.RenderMode.WireFrame);
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            if (PointLight.this.f73494I != null) {
                Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
                PointLight.this.f73494I.i(PointLight.this.f79250n.transform.u0(vector3));
                JP.release(vector3);
            }
        }
    }

    public class c implements D5.h {

        public class a implements Runnable {

            public final Variable f73501b;

            public a(final Variable val$variable) {
                this.f73501b = val$variable;
            }

            @Override
            public void run() {
                PointLight.this.setLumens(this.f73501b.float_value);
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", PointLight.this.lumens + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f73504b;

            public a(final Variable val$variable) {
                this.f73504b = val$variable;
            }

            @Override
            public void run() {
                PointLight.this.setColor(new ColorINT(this.f73504b.color_value.intColor));
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", PointLight.this.color);
        }

        @Override
        public void set(Variable variable) {
            if (variable == null || variable.e()) {
                return;
            }
            K8.a.I(new a(variable));
        }
    }

    public class e implements D5.h {

        public class a implements Runnable {

            public final Variable f73507b;

            public a(final Variable val$variable) {
                this.f73507b = val$variable;
            }

            @Override
            public void run() {
                PointLight.this.setFalloffRadius(this.f73507b.float_value);
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", PointLight.this.falloffRadius + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements c.o0 {

        public class a implements D5.h {

            public class RunnableC1198a implements Runnable {

                public final Variable f73511b;

                public RunnableC1198a(final Variable val$variable) {
                    this.f73511b = val$variable;
                }

                @Override
                public void run() {
                    PointLight.this.setAllowShadow(this.f73511b.booolean_value.booleanValue());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", PointLight.this.allowShadow + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1198a(variable));
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", TextureConfig.f79814s[PointLight.this.shadowResolutionIDV2] + "x" + TextureConfig.f79814s[PointLight.this.shadowResolutionIDV2]);
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    PointLight.this.setShadowResolutionIDV2(variable.int_value);
                }
            }
        }

        public class c implements D5.h {

            public class a implements Runnable {

                public final Variable f73515b;

                public a(final Variable val$variable) {
                    this.f73515b = val$variable;
                }

                @Override
                public void run() {
                    PointLight.this.setShadowBias(this.f73515b.float_value);
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", PointLight.this.shadowBiasV4 + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class d implements D5.h {

            public class a implements Runnable {

                public final Variable f73518b;

                public a(final Variable val$variable) {
                    this.f73518b = val$variable;
                }

                @Override
                public void run() {
                    PointLight.this.setShadowNormalBias(this.f73518b.float_value);
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", PointLight.this.shadowNormalBias + "");
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

                public final Variable f73521b;

                public a(final Variable val$variable) {
                    this.f73521b = val$variable;
                }

                @Override
                public void run() {
                    PointLight.this.setShadowFarDistance(this.f73521b.float_value);
                }
            }

            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", PointLight.this.shadowFarDistance + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
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
            entries.add(new C5.b(new a(), Lang.l(Lang.T.ENABLE), b.a.SLBoolean));
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i10 : TextureConfig.f79814s) {
                steppedArrayList.add(i10 + "x" + i10);
            }
            entries.add(new C5.b(new b(), TextureConfig.f79814s[PointLight.this.shadowResolutionIDV2] + "x" + TextureConfig.f79814s[PointLight.this.shadowResolutionIDV2], steppedArrayList, b.a.SLDropdown, Lang.l(Lang.T.RESOLUTION)));
            c cVar = new c();
            String l10 = Lang.l(Lang.T.BIAS);
            b.a aVar = b.a.SLFloat;
            C5.b bVar = new C5.b(cVar, l10, aVar);
            PointLight pointLight = PointLight.this;
            GameObject gameObject = pointLight.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            entries.add(bVar.d(gameObject, pointLight, "shadowBias", cVar2));
            C5.b bVar2 = new C5.b(new d(), Lang.l(Lang.T.NORMAL_BIAS), aVar);
            PointLight pointLight2 = PointLight.this;
            entries.add(bVar2.d(pointLight2.f79250n, pointLight2, "shadowNormalBias", cVar2));
            C5.b bVar3 = new C5.b(new e(), Lang.l(Lang.T.FAR_DISTANCE), aVar);
            PointLight pointLight3 = PointLight.this;
            entries.add(bVar3.d(pointLight3.f79250n, pointLight3, "shadowFarDistance", cVar2));
            return entries;
        }
    }

    public class g extends AbstractC13203c {
        @Override
        public Class b() {
            return PointLight.f73489N;
        }

        @Override
        public String c() {
            return PointLight.f73488M;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.LIGHT);
        }

        @Override
        public String f() {
            return PointLight.f73488M;
        }
    }

    public class h implements ec.d {
        public h() {
        }

        @Override
        public void a() {
            if (PointLight.this.f73494I != null) {
                PointLight.this.f73494I.setIntensity(PointLight.this.getFinalIntensity());
            }
        }
    }

    public class i implements ec.d {
        public i() {
        }

        @Override
        public void a() {
            if (PointLight.this.f73494I != null) {
                PointLight.this.f73494I.setColor(PointLight.this.color);
            }
        }
    }

    public class j implements ec.d {
        public j() {
        }

        @Override
        public void a() {
            PointLight.this.f73495J = true;
        }
    }

    public class k implements ec.d {
        public k() {
        }

        @Override
        public void a() {
            if (PointLight.this.f73494I != null) {
                PointLight.this.f73494I.j(PointLight.this.allowShadow);
            }
        }
    }

    public class l implements ec.d {
        public l() {
        }

        @Override
        public void a() {
            PointLight.this.f73495J = true;
        }
    }

    public class m implements ec.d {
        public m() {
        }

        @Override
        public void a() {
            PointLight.this.f73495J = true;
        }
    }

    public class n implements ec.d {
        public n() {
        }

        @Override
        public void a() {
            PointLight.this.f73495J = true;
        }
    }

    public class o implements ec.d {
        public o() {
        }

        @Override
        public void a() {
            PointLight.this.f73495J = true;
        }
    }

    static {
        C13201a.b(new g());
    }

    public PointLight() {
        super(f73488M);
        this.lumens = 1.0f;
        this.lumens_OFCBRL = new h();
        this.color = new ColorINT(android.graphics.Color.argb(255, 255, 255, 255));
        this.color_OFCBRL = new i();
        this.falloffRadius = 10.0f;
        this.falloffRadius_OFCBRL = new j();
        this.allowShadow = true;
        this.allowShadow_OFCBRL = new k();
        this.shadowBiasV4 = 0.001f;
        this.shadowBias_OFCBRL = new l();
        this.shadowNormalBias = 1.0f;
        this.shadowNormalBias_OFCBRL = new m();
        this.shadowResolutionIDV2 = 4;
        this.shadowResolutionIDV2_OFCBRL = new n();
        this.shadowFarDistance = 32.0f;
        this.shadowFarDistance_OFCBRL = new o();
        this.f73491F = false;
        this.f73493H = new a();
        this.f73495J = false;
        this.f73496K = new b();
    }

    public float getFinalIntensity() {
        return (GraphicsSettings.d() ? this.lumens : this.lumens * 2.0f) * 1000000.0f;
    }

    public boolean canDrawShadows() {
        return !com.itsmagic.engine.Engines.Engine.World.a.y() && this.allowShadow && GraphicsSettings.d();
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        removeFromGraphics();
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    @InterfaceC15237a
    public float getFalloffRadius() {
        return this.falloffRadius;
    }

    @Override
    public int getIconResource() {
        return R.drawable.wo_light;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_light;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        c cVar = new c();
        String l10 = Lang.l(Lang.T.LUMENS);
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(cVar, l10, aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar.d(gameObject, this, "lumens", cVar2));
        linkedList.add(new C5.b(new d(), Lang.l(Lang.T.COLOR), b.a.Color, context).d(this.f79250n, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
        linkedList.add(new C5.b(new e(), Lang.l(Lang.T.FALLOFF_RADIUS), aVar).d(this.f79250n, this, "falloffRadius", cVar2));
        if (!com.itsmagic.engine.Engines.Engine.World.a.y()) {
            linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.SHADOW), new f()));
        }
        return linkedList;
    }

    @InterfaceC15237a
    public float getLumens() {
        return this.lumens;
    }

    @InterfaceC15237a
    public float getShadowBias() {
        return this.shadowBiasV4;
    }

    @InterfaceC15237a
    public float getShadowFarDistance() {
        return this.shadowFarDistance;
    }

    @InterfaceC15237a
    public float getShadowNormalBias() {
        return this.shadowNormalBias;
    }

    @InterfaceC15237a
    public int getShadowResolutionIDV2() {
        return this.shadowResolutionIDV2;
    }

    @Override
    public String getTitle() {
        return f73488M;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isAllowShadow() {
        return this.allowShadow;
    }

    @InterfaceC15237a
    public boolean isSuppressRender() {
        return this.f73491F;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f79250n.transform.u(this.f73496K);
    }

    @Override
    public void onDetach() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f73496K);
        }
        removeFromGraphics();
        super.onDetach();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (C13317e.G(gameObject)) {
            return;
        }
        if (this.f73491F) {
            removeFromGraphics();
            return;
        }
        FilamentLight filamentLight = this.f73494I;
        if (filamentLight == null || this.f73495J) {
            this.f73495J = false;
            if (filamentLight != null) {
                getEffectiveScene().s(this.f73494I.e());
                this.f73494I.destroyImmediate();
                this.f73494I = null;
                this.f73490E = false;
            }
            LightManager.c cVar = new LightManager.c();
            cVar.f59981d = this.shadowBiasV4;
            cVar.f59982e = this.shadowNormalBias;
            cVar.f59978a = TextureConfig.f79814s[this.shadowResolutionIDV2];
            cVar.f59983f = Nc.b.J(this.shadowFarDistance, this.falloffRadius * 1.2f);
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 u02 = gameObject.transform.u0(vector3);
            this.f73494I = new FilamentLight(new LightManager.a(LightManager.d.POINT).k(u02.getX(), u02.getY(), u02.getZ()).g(getFinalIntensity()).d(this.color.w(), this.color.u(), this.color.s()).f(this.falloffRadius).c(canDrawShadows()).l(cVar));
            JP.release(vector3);
        }
        if (!this.f73490E) {
            if (this.f73494I != null) {
                getEffectiveScene().j(this.f73494I.e());
            }
            this.f73490E = true;
        }
        if (this.f79250n.f1()) {
            if (this.f73492G == null) {
                C3591a c3591a = new C3591a();
                this.f73492G = c3591a;
                c3591a.c(this);
            }
            this.f73492G.d(this, this.f73493H);
            C3591a c3591a2 = this.f73492G;
            if (c3591a2 != null) {
                this.f73493H.setVertex(c3591a2.b().x2());
                Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
                this.f79250n.transform.u0(vector32);
                this.f73493H.setPosition(vector32.toJAVARuntime());
                JP.release(vector32);
                Ub.a.a(this.f73493H);
            }
        }
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof C) {
            this.f73495J = true;
        }
    }

    public void removeFromGraphics() {
        if (this.f73490E) {
            if (this.f73494I != null) {
                getEffectiveScene().s(this.f73494I.e());
            }
            this.f73490E = false;
        }
    }

    @InterfaceC15237a
    public void setAllowShadow(boolean allowShadow) {
        FilamentLight filamentLight;
        boolean z10 = this.allowShadow != allowShadow;
        this.allowShadow = allowShadow;
        if (!z10 || (filamentLight = this.f73494I) == null) {
            return;
        }
        filamentLight.j(allowShadow);
    }

    @InterfaceC15237a
    public void setColor(ColorINT color) {
        if (this.color.intColor != color.intColor) {
            ColorINT clone = color.clone();
            this.color = clone;
            FilamentLight filamentLight = this.f73494I;
            if (filamentLight != null) {
                filamentLight.setColor(clone);
            }
        }
    }

    @InterfaceC15237a
    public void setFalloffRadius(float falloffRadius) {
        if (this.falloffRadius != falloffRadius) {
            this.f73495J = true;
        }
        this.falloffRadius = falloffRadius;
    }

    @InterfaceC15237a
    public void setLumens(float lumens) {
        FilamentLight filamentLight;
        boolean z10 = this.lumens != lumens;
        this.lumens = lumens;
        if (!z10 || (filamentLight = this.f73494I) == null) {
            return;
        }
        filamentLight.setIntensity(getFinalIntensity());
    }

    @Override
    public void setRuntime(Component run) {
        this.f73497L = run;
    }

    @InterfaceC15237a
    public void setShadowBias(float shadowBias) {
        if (this.shadowBiasV4 != shadowBias) {
            this.f73495J = true;
        }
        this.shadowBiasV4 = shadowBias;
    }

    @InterfaceC15237a
    public void setShadowFarDistance(float shadowFarDistance) {
        if (this.shadowFarDistance != shadowFarDistance) {
            this.f73495J = true;
        }
        this.shadowFarDistance = shadowFarDistance;
    }

    @InterfaceC15237a
    public void setShadowNormalBias(float shadowNormalBias) {
        if (this.shadowNormalBias != shadowNormalBias) {
            this.f73495J = true;
        }
        this.shadowNormalBias = shadowNormalBias;
    }

    @InterfaceC15237a
    public void setShadowResolutionIDV2(int shadowResolutionIDV2) {
        if (this.shadowResolutionIDV2 != shadowResolutionIDV2) {
            this.f73495J = true;
        }
        this.shadowResolutionIDV2 = shadowResolutionIDV2;
    }

    @InterfaceC15237a
    public void setSuppressRender(boolean suppressRender) {
        if (this.f73491F != suppressRender) {
            this.f73491F = suppressRender;
            if (suppressRender) {
                removeFromGraphics();
            } else {
                this.f73495J = true;
            }
        }
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f73497L;
        if (component != null) {
            return component;
        }
        JAVARuntime.PointLight pointLight = new JAVARuntime.PointLight(this);
        this.f73497L = pointLight;
        return pointLight;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        PointLight pointLight = new PointLight();
        pointLight.lumens = this.lumens;
        pointLight.color = ColorINT.k(this.color);
        pointLight.falloffRadius = this.falloffRadius;
        pointLight.f73491F = this.f73491F;
        return pointLight;
    }
}

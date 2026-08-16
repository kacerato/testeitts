package com.itsmagic.engine.Engines.Engine.ComponentsV2.Light;

import C5.b;
import F5.c;
import Ic.C;
import JAVARuntime.Color;
import JAVARuntime.Component;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import a9.C3592b;
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

public class SpotLight extends BaseLightComponent implements Serializable {

    public static final String f73531M = "SpotLight";

    public static final Class f73532N = SpotLight.class;

    public boolean f73533E;

    public boolean f73534F;

    public C3592b f73535G;

    public final GizmoObject f73536H;

    public FilamentLight f73537I;

    public boolean f73538J;

    public final InterfaceC13601h f73539K;

    public Component f73540L;

    @Expose
    private boolean allowShadow;

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
    private float innerConeAngle;

    @Keep
    public final ec.d innerConeAngle_OFCBRL;

    @Expose
    @eb.f
    private float lumens;

    @Keep
    public final ec.d lumens_OFCBRL;

    @Expose
    @eb.f
    private float outerConeAngle;

    @Keep
    public final ec.d outerConeAngle_OFCBRL;

    @Expose
    @eb.f
    private float shadowBiasV3;

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
    private int shadowResolutionID;

    @Keep
    public final ec.d shadowResolutionID_OFCBRL;

    public class a implements ec.d {
        public a() {
        }

        @Override
        public void a() {
            SpotLight.this.f73538J = true;
        }
    }

    public class b extends GizmoObject {
        public b() {
            setColor(new Color(255, 180, 50));
            setRenderMode(GizmoElement.RenderMode.WireFrame);
        }
    }

    public class c implements InterfaceC13601h {
        public c() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            if (SpotLight.this.f73537I != null) {
                Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
                Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
                Vector3 u02 = SpotLight.this.f79250n.transform.u0(vector3);
                Vector3 a02 = SpotLight.this.f79250n.transform.a0(vector32);
                SpotLight.this.f73537I.i(u02);
                SpotLight.this.f73537I.h(a02);
                JP.release(vector3);
                JP.release(vector32);
            }
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f73545b;

            public a(final Variable val$variable) {
                this.f73545b = val$variable;
            }

            @Override
            public void run() {
                SpotLight.this.setLumens(this.f73545b.float_value);
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", SpotLight.this.lumens + "");
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

            public final Variable f73548b;

            public a(final Variable val$variable) {
                this.f73548b = val$variable;
            }

            @Override
            public void run() {
                SpotLight.this.setColor(new ColorINT(this.f73548b.color_value.intColor));
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", SpotLight.this.color);
        }

        @Override
        public void set(Variable variable) {
            if (variable == null || variable.e()) {
                return;
            }
            K8.a.I(new a(variable));
        }
    }

    public class f implements D5.h {

        public class a implements Runnable {

            public final Variable f73551b;

            public a(final Variable val$variable) {
                this.f73551b = val$variable;
            }

            @Override
            public void run() {
                SpotLight.this.setFalloffRadius(this.f73551b.float_value);
            }
        }

        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", SpotLight.this.falloffRadius + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class g implements c.o0 {

        public final GameObject f73553a;

        public class a implements D5.h {

            public class RunnableC1199a implements Runnable {

                public final Variable f73556b;

                public RunnableC1199a(final Variable val$variable) {
                    this.f73556b = val$variable;
                }

                @Override
                public void run() {
                    SpotLight.this.setInnerConeAngle(this.f73556b.float_value);
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", SpotLight.this.innerConeAngle + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1199a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f73559b;

                public a(final Variable val$variable) {
                    this.f73559b = val$variable;
                }

                @Override
                public void run() {
                    SpotLight.this.setOuterConeAngle(this.f73559b.float_value);
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", SpotLight.this.outerConeAngle + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public g(final GameObject val$animationObject) {
            this.f73553a = val$animationObject;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat;
            C5.b bVar = new C5.b(aVar, "Inner Angle", aVar2);
            GameObject gameObject = this.f73553a;
            SpotLight spotLight = SpotLight.this;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            bVar.d(gameObject, spotLight, "innerConeAngle", cVar);
            entries.add(bVar);
            C5.b bVar2 = new C5.b(new b(), "Outer Angle", aVar2);
            bVar2.d(this.f73553a, SpotLight.this, "outerConeAngle", cVar);
            entries.add(bVar2);
            return entries;
        }
    }

    public class h implements c.o0 {

        public final GameObject f73561a;

        public class a implements D5.h {

            public class RunnableC1200a implements Runnable {

                public final Variable f73564b;

                public RunnableC1200a(final Variable val$variable) {
                    this.f73564b = val$variable;
                }

                @Override
                public void run() {
                    SpotLight.this.setAllowShadow(this.f73564b.booolean_value.booleanValue());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", SpotLight.this.allowShadow + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1200a(variable));
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", TextureConfig.f79814s[SpotLight.this.shadowResolutionID] + "x" + TextureConfig.f79814s[SpotLight.this.shadowResolutionID]);
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SpotLight.this.setShadowResolutionID(variable.int_value);
                }
            }
        }

        public class c implements D5.h {

            public class a implements Runnable {

                public final Variable f73568b;

                public a(final Variable val$variable) {
                    this.f73568b = val$variable;
                }

                @Override
                public void run() {
                    SpotLight.this.setAllowShadow(this.f73568b.booolean_value.booleanValue());
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", SpotLight.this.allowShadow + "");
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

                public final Variable f73571b;

                public a(final Variable val$variable) {
                    this.f73571b = val$variable;
                }

                @Override
                public void run() {
                    SpotLight.this.setShadowNormalBias(this.f73571b.float_value);
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", SpotLight.this.shadowNormalBias + "");
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

                public final Variable f73574b;

                public a(final Variable val$variable) {
                    this.f73574b = val$variable;
                }

                @Override
                public void run() {
                    SpotLight.this.setShadowFarDistance(this.f73574b.float_value);
                }
            }

            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", SpotLight.this.shadowFarDistance + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public h(final GameObject val$animationObject) {
            this.f73561a = val$animationObject;
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
            entries.add(new C5.b(new b(), TextureConfig.f79814s[SpotLight.this.shadowResolutionID] + "x" + TextureConfig.f79814s[SpotLight.this.shadowResolutionID], steppedArrayList, b.a.SLDropdown, Lang.l(Lang.T.RESOLUTION)));
            C5.b bVar = new C5.b(new c(), Lang.l(Lang.T.ENABLE), b.a.SLBoolean);
            GameObject gameObject = this.f73561a;
            SpotLight spotLight = SpotLight.this;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            bVar.d(gameObject, spotLight, "shadowBias", cVar);
            entries.add(bVar);
            d dVar = new d();
            String l10 = Lang.l(Lang.T.NORMAL_BIAS);
            b.a aVar = b.a.SLFloat;
            C5.b bVar2 = new C5.b(dVar, l10, aVar);
            bVar2.d(this.f73561a, SpotLight.this, "shadowNormalBias", cVar);
            entries.add(bVar2);
            C5.b bVar3 = new C5.b(new e(), Lang.l(Lang.T.FAR_DISTANCE), aVar);
            bVar3.d(this.f73561a, SpotLight.this, "shadowFarDistance", cVar);
            entries.add(bVar3);
            return entries;
        }
    }

    public class i extends AbstractC13203c {
        @Override
        public Class b() {
            return SpotLight.f73532N;
        }

        @Override
        public String c() {
            return SpotLight.f73531M;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.LIGHT);
        }

        @Override
        public String f() {
            return SpotLight.f73531M;
        }
    }

    public class j implements ec.d {
        public j() {
        }

        @Override
        public void a() {
            if (SpotLight.this.f73537I != null) {
                SpotLight.this.f73537I.setIntensity(SpotLight.this.getFinalIntensity());
            }
        }
    }

    public class k implements ec.d {
        public k() {
        }

        @Override
        public void a() {
            if (SpotLight.this.f73537I != null) {
                SpotLight.this.f73537I.setColor(SpotLight.this.color);
            }
        }
    }

    public class l implements ec.d {
        public l() {
        }

        @Override
        public void a() {
            SpotLight.this.f73538J = true;
        }
    }

    public class m implements ec.d {
        public m() {
        }

        @Override
        public void a() {
            SpotLight.this.f73538J = true;
        }
    }

    public class n implements ec.d {
        public n() {
        }

        @Override
        public void a() {
            SpotLight.this.f73538J = true;
        }
    }

    public class o implements ec.d {
        public o() {
        }

        @Override
        public void a() {
            SpotLight.this.f73538J = true;
        }
    }

    public class p implements ec.d {
        public p() {
        }

        @Override
        public void a() {
            SpotLight.this.f73538J = true;
        }
    }

    public class q implements ec.d {
        public q() {
        }

        @Override
        public void a() {
            SpotLight.this.f73538J = true;
        }
    }

    static {
        C13201a.b(new i());
    }

    public SpotLight() {
        super(f73531M);
        this.lumens = 1.0f;
        this.lumens_OFCBRL = new j();
        this.color = new ColorINT(android.graphics.Color.argb(255, 255, 255, 255));
        this.color_OFCBRL = new k();
        this.falloffRadius = 10.0f;
        this.falloffRadius_OFCBRL = new l();
        this.innerConeAngle = 22.5f;
        this.innerConeAngle_OFCBRL = new m();
        this.outerConeAngle = 45.0f;
        this.outerConeAngle_OFCBRL = new n();
        this.allowShadow = true;
        this.shadowBiasV3 = 0.001f;
        this.shadowBias_OFCBRL = new o();
        this.shadowNormalBias = 1.0f;
        this.shadowNormalBias_OFCBRL = new p();
        this.shadowResolutionID = 10;
        this.shadowResolutionID_OFCBRL = new q();
        this.shadowFarDistance = 32.0f;
        this.shadowFarDistance_OFCBRL = new a();
        this.f73534F = false;
        this.f73536H = new b();
        this.f73538J = false;
        this.f73539K = new c();
    }

    public float getFinalIntensity() {
        return ((GraphicsSettings.d() ? this.lumens : this.lumens * 2.0f) / ((float) ((1.0d - Math.cos(((float) Math.toRadians(this.outerConeAngle)) * 0.5f)) * 6.283185307179586d))) * 1000000.0f;
    }

    public boolean canDrawShadows() {
        if (com.itsmagic.engine.Engines.Engine.World.a.y()) {
            return false;
        }
        return this.allowShadow;
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

    @InterfaceC15237a
    public float getInnerConeAngle() {
        return this.innerConeAngle;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_light;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        if (context == null) {
            return linkedList;
        }
        d dVar = new d();
        String l10 = Lang.l(Lang.T.LUMENS);
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(dVar, l10, aVar);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar.d(gameObject, this, "lumens", cVar);
        linkedList.add(bVar);
        C5.b bVar2 = new C5.b(new e(), Lang.l(Lang.T.COLOR), b.a.Color, context);
        bVar2.d(gameObject, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new f(), Lang.l(Lang.T.FALLOFF_RADIUS), aVar);
        bVar3.d(gameObject, this, "falloffRadius", cVar);
        linkedList.add(bVar3);
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.CONE), new g(gameObject)));
        if (!com.itsmagic.engine.Engines.Engine.World.a.y()) {
            linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.SHADOW), new h(gameObject)));
        }
        return linkedList;
    }

    @InterfaceC15237a
    public float getLumens() {
        return this.lumens;
    }

    @InterfaceC15237a
    public float getOuterConeAngle() {
        return this.outerConeAngle;
    }

    @InterfaceC15237a
    public float getShadowBias() {
        return this.shadowBiasV3;
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
    public int getShadowResolutionID() {
        return this.shadowResolutionID;
    }

    @Override
    public String getTitle() {
        return f73531M;
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
        return this.f73534F;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f79250n.transform.u(this.f73539K);
    }

    @Override
    public void onDetach() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f73539K);
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
        if (this.f73534F) {
            removeFromGraphics();
            return;
        }
        FilamentLight filamentLight = this.f73537I;
        if (filamentLight == null || this.f73538J) {
            this.f73538J = false;
            if (filamentLight != null) {
                getEffectiveScene().s(this.f73537I.e());
                this.f73537I.destroyImmediate();
                this.f73537I = null;
                this.f73533E = false;
            }
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
            Vector3 u02 = gameObject.transform.u0(vector3);
            Vector3 a02 = gameObject.transform.a0(vector32);
            LightManager.c cVar = new LightManager.c();
            cVar.f59981d = this.shadowBiasV3;
            cVar.f59982e = this.shadowNormalBias;
            cVar.f59978a = TextureConfig.f79814s[this.shadowResolutionID];
            cVar.f59983f = this.shadowFarDistance;
            this.f73537I = new FilamentLight(new LightManager.a(LightManager.d.SPOT).k(u02.getX(), u02.getY(), u02.getZ()).e(a02.getX(), a02.getY(), a02.getZ()).g(getFinalIntensity()).d(this.color.w(), this.color.u(), this.color.s()).f(this.falloffRadius).m((float) Math.toRadians(this.innerConeAngle), (float) Math.toRadians(this.outerConeAngle)).c(canDrawShadows()).l(cVar));
            JP.release(vector3);
            JP.release(vector32);
        }
        if (!this.f73533E) {
            if (this.f73537I != null) {
                getEffectiveScene().j(this.f73537I.e());
            }
            this.f73533E = true;
        }
        if (this.f79250n.f1()) {
            if (this.f73535G == null) {
                C3592b c3592b = new C3592b();
                this.f73535G = c3592b;
                c3592b.c(this);
            }
            this.f73535G.d(this, this.f73536H);
            C3592b c3592b2 = this.f73535G;
            if (c3592b2 != null) {
                this.f73536H.setVertex(c3592b2.b().x2());
                Vector3 vector33 = (Vector3) JP.acquire(Vector3.class);
                this.f79250n.transform.u0(vector33);
                this.f73536H.setPosition(vector33.toJAVARuntime());
                JP.release(vector33);
                Ub.a.a(this.f73536H);
            }
        }
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof C) {
            this.f73538J = true;
        }
    }

    public void removeFromGraphics() {
        if (this.f73533E) {
            if (this.f73537I != null) {
                getEffectiveScene().s(this.f73537I.e());
            }
            this.f73533E = false;
        }
    }

    @InterfaceC15237a
    public void setAllowShadow(boolean allowShadow) {
        FilamentLight filamentLight;
        boolean z10 = this.allowShadow != allowShadow;
        this.allowShadow = allowShadow;
        if (!z10 || (filamentLight = this.f73537I) == null) {
            return;
        }
        filamentLight.j(allowShadow);
    }

    @InterfaceC15237a
    public void setColor(ColorINT color) {
        if (this.color.intColor != color.intColor) {
            ColorINT clone = color.clone();
            this.color = clone;
            FilamentLight filamentLight = this.f73537I;
            if (filamentLight != null) {
                filamentLight.setColor(clone);
            }
        }
    }

    @InterfaceC15237a
    public void setFalloffRadius(float falloffRadius) {
        if (this.falloffRadius != falloffRadius) {
            this.f73538J = true;
        }
        this.falloffRadius = falloffRadius;
    }

    @InterfaceC15237a
    public void setInnerConeAngle(float innerConeAngle) {
        if (this.innerConeAngle != innerConeAngle) {
            this.f73538J = true;
        }
        this.innerConeAngle = innerConeAngle;
    }

    @InterfaceC15237a
    public void setLumens(float lumens) {
        FilamentLight filamentLight;
        boolean z10 = this.lumens != lumens;
        this.lumens = lumens;
        if (!z10 || (filamentLight = this.f73537I) == null) {
            return;
        }
        filamentLight.setIntensity(getFinalIntensity());
    }

    @InterfaceC15237a
    public void setOuterConeAngle(float outerConeAngle) {
        if (this.outerConeAngle != outerConeAngle) {
            this.f73538J = true;
        }
        this.outerConeAngle = outerConeAngle;
    }

    @Override
    public void setRuntime(Component run) {
        this.f73540L = run;
    }

    @InterfaceC15237a
    public void setShadowBias(float shadowBias) {
        if (this.shadowBiasV3 != shadowBias) {
            this.f73538J = true;
        }
        this.shadowBiasV3 = shadowBias;
    }

    @InterfaceC15237a
    public void setShadowFarDistance(float shadowFarDistance) {
        if (this.shadowFarDistance != shadowFarDistance) {
            this.f73538J = true;
        }
        this.shadowFarDistance = shadowFarDistance;
    }

    @InterfaceC15237a
    public void setShadowNormalBias(float shadowNormalBias) {
        if (this.shadowNormalBias != shadowNormalBias) {
            this.f73538J = true;
        }
        this.shadowNormalBias = shadowNormalBias;
    }

    @InterfaceC15237a
    public void setShadowResolutionID(int shadowResolutionID) {
        if (this.shadowResolutionID != shadowResolutionID) {
            this.f73538J = true;
        }
        this.shadowResolutionID = shadowResolutionID;
    }

    @InterfaceC15237a
    public void setSuppressRender(boolean suppressRender) {
        if (this.f73534F != suppressRender) {
            this.f73534F = suppressRender;
            if (suppressRender) {
                removeFromGraphics();
            } else {
                this.f73538J = true;
            }
        }
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f73540L;
        if (component != null) {
            return component;
        }
        JAVARuntime.SpotLight spotLight = new JAVARuntime.SpotLight(this);
        this.f73540L = spotLight;
        return spotLight;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        SpotLight spotLight = new SpotLight();
        spotLight.lumens = this.lumens;
        spotLight.color = ColorINT.k(this.color);
        spotLight.falloffRadius = this.falloffRadius;
        spotLight.innerConeAngle = this.innerConeAngle;
        spotLight.outerConeAngle = this.outerConeAngle;
        spotLight.allowShadow = this.allowShadow;
        spotLight.shadowBiasV3 = this.shadowBiasV3;
        spotLight.shadowNormalBias = this.shadowNormalBias;
        spotLight.shadowResolutionID = this.shadowResolutionID;
        spotLight.shadowFarDistance = this.shadowFarDistance;
        spotLight.f73534F = this.f73534F;
        return spotLight;
    }
}

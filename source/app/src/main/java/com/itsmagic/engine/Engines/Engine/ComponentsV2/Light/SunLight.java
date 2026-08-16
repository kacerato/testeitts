package com.itsmagic.engine.Engines.Engine.ComponentsV2.Light;

import C5.b;
import F5.c;
import Ic.C;
import JAVARuntime.Component;
import android.content.Context;
import android.graphics.Color;
import androidx.annotation.Keep;
import com.google.android.filament.LightManager;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.InspectorMemory;
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

public class SunLight extends BaseLightComponent implements Serializable {

    public static final String f73584K = "SunLight";

    public static final Class f73585L = SunLight.class;

    public boolean f73586E;

    public boolean f73587F;

    public FilamentLight f73588G;

    public boolean f73589H;

    public final InterfaceC13601h f73590I;

    public Component f73591J;

    @Expose
    private boolean allowShadow;

    @Expose
    @eb.f
    private float cascadeFarHint;

    @Keep
    public final ec.d cascadeFarHint_OFCBRL;

    @Expose
    @eb.f
    private float cascadeNearHint;

    @Keep
    public final ec.d cascadeNearHint_OFCBRL;

    @Expose
    @eb.f
    private ColorINT color;

    @Keep
    public final ec.d color_OFCBRL;

    @Expose
    @eb.f
    private float lux;

    @Expose
    private Curve luxCurve;

    @Keep
    public final ec.d lux_OFCBRL;

    @Expose
    @eb.f
    private float shadowBiasV2;

    @Keep
    public final ec.d shadowBias_OFCBRL;

    @Expose
    @eb.f
    private int shadowCascades;

    @Keep
    public final ec.d shadowCascades_OFCBRL;

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

    @Expose
    private boolean stableCascades;

    public class a implements ec.d {
        public a() {
        }

        @Override
        public void a() {
            SunLight.this.f73589H = true;
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            if (SunLight.this.f73588G != null) {
                Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
                SunLight.this.f73588G.h(SunLight.this.f79250n.transform.a0(vector3));
                SunLight.this.f73588G.setIntensity(SunLight.this.getFinalIntensity());
                JP.release(vector3);
            }
        }
    }

    public class c implements D5.h {

        public class a implements Runnable {

            public final Variable f73595b;

            public a(final Variable val$variable) {
                this.f73595b = val$variable;
            }

            @Override
            public void run() {
                SunLight.this.setLux(this.f73595b.float_value);
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", SunLight.this.lux + "");
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

            public final Variable f73598b;

            public a(final Variable val$variable) {
                this.f73598b = val$variable;
            }

            @Override
            public void run() {
                SunLight.this.setColor(new ColorINT(this.f73598b.color_value.intColor));
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", SunLight.this.color);
        }

        @Override
        public void set(Variable variable) {
            if (variable == null || variable.e()) {
                return;
            }
            K8.a.I(new a(variable));
        }
    }

    public class e implements c.o0 {

        public final GameObject f73600a;

        public class a implements D5.h {

            public class RunnableC1201a implements Runnable {

                public final Variable f73603b;

                public RunnableC1201a(final Variable val$variable) {
                    this.f73603b = val$variable;
                }

                @Override
                public void run() {
                    SunLight.this.setAllowShadow(this.f73603b.booolean_value.booleanValue());
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", SunLight.this.allowShadow + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1201a(variable));
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", TextureConfig.f79814s[SunLight.this.shadowResolutionID] + "x" + TextureConfig.f79814s[SunLight.this.shadowResolutionID]);
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SunLight.this.setShadowResolutionID(variable.int_value);
                }
            }
        }

        public class c implements D5.h {

            public class a implements Runnable {

                public final Variable f73607b;

                public a(final Variable val$variable) {
                    this.f73607b = val$variable;
                }

                @Override
                public void run() {
                    SunLight.this.setShadowBias(this.f73607b.float_value);
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", SunLight.this.shadowBiasV2 + "");
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

                public final Variable f73610b;

                public a(final Variable val$variable) {
                    this.f73610b = val$variable;
                }

                @Override
                public void run() {
                    SunLight.this.setShadowNormalBias(this.f73610b.float_value);
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", SunLight.this.shadowNormalBias + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class C1202e implements D5.h {

            public class a implements Runnable {

                public final Variable f73613b;

                public a(final Variable val$variable) {
                    this.f73613b = val$variable;
                }

                @Override
                public void run() {
                    SunLight.this.setShadowFarDistance(this.f73613b.float_value);
                }
            }

            public C1202e() {
            }

            @Override
            public Variable get() {
                return new Variable("", SunLight.this.shadowFarDistance + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public e(final GameObject val$animationObject) {
            this.f73600a = val$animationObject;
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
            entries.add(new C5.b(new b(), TextureConfig.f79814s[SunLight.this.shadowResolutionID] + "x" + TextureConfig.f79814s[SunLight.this.shadowResolutionID], steppedArrayList, b.a.SLDropdown, Lang.l(Lang.T.RESOLUTION)));
            c cVar = new c();
            String l10 = Lang.l(Lang.T.BIAS);
            b.a aVar = b.a.SLFloat;
            C5.b bVar = new C5.b(cVar, l10, aVar);
            GameObject gameObject = this.f73600a;
            SunLight sunLight = SunLight.this;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            entries.add(bVar.d(gameObject, sunLight, "shadowBias", cVar2));
            C5.b bVar2 = new C5.b(new d(), Lang.l(Lang.T.NORMAL_BIAS), aVar);
            bVar2.d(this.f73600a, SunLight.this, "shadowNormalBias", cVar2);
            entries.add(bVar2);
            C5.b bVar3 = new C5.b(new C1202e(), Lang.l(Lang.T.FAR_DISTANCE), aVar);
            bVar3.d(this.f73600a, SunLight.this, "shadowFarDistance", cVar2);
            entries.add(bVar3);
            return entries;
        }
    }

    public class f implements c.o0 {

        public final GameObject f73615a;

        public class a implements D5.h {

            public final List f73617a;

            public class RunnableC1203a implements Runnable {

                public final int f73619b;

                public RunnableC1203a(final int val$cascades) {
                    this.f73619b = val$cascades;
                }

                @Override
                public void run() {
                    SunLight.this.setShadowCascades(this.f73619b);
                }
            }

            public a(final List val$cascadeOptions) {
                this.f73617a = val$cascadeOptions;
            }

            @Override
            public Variable get() {
                return new Variable("", (String) this.f73617a.get(Math.max(0, Math.min(3, SunLight.this.shadowCascades - 1))));
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1203a(variable.int_value + 1));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f73622b;

                public a(final Variable val$variable) {
                    this.f73622b = val$variable;
                }

                @Override
                public void run() {
                    SunLight.this.setCascadeNearHint(this.f73622b.float_value);
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", SunLight.this.cascadeNearHint + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class c implements D5.h {

            public class a implements Runnable {

                public final Variable f73625b;

                public a(final Variable val$variable) {
                    this.f73625b = val$variable;
                }

                @Override
                public void run() {
                    SunLight.this.setCascadeFarHint(this.f73625b.float_value);
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", SunLight.this.cascadeFarHint + "");
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

                public final Variable f73628b;

                public a(final Variable val$variable) {
                    this.f73628b = val$variable;
                }

                @Override
                public void run() {
                    SunLight.this.setStableCascades(this.f73628b.booolean_value.booleanValue());
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", SunLight.this.stableCascades + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public f(final GameObject val$animationObject) {
            this.f73615a = val$animationObject;
        }

        @Override
        public boolean a() {
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public List<C5.b> b(List<C5.b> entries) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add("1 (no cascades)");
            steppedArrayList.add("2");
            steppedArrayList.add("3");
            steppedArrayList.add("4");
            entries.add(new C5.b(new a(steppedArrayList), (String) steppedArrayList.get(Math.max(0, Math.min(3, SunLight.this.shadowCascades - 1))), steppedArrayList, b.a.SLDropdown, Lang.l(Lang.T.CASCADES)));
            b bVar = new b();
            b.a aVar = b.a.SLFloat;
            C5.b bVar2 = new C5.b(bVar, "Cascade Near Hint", aVar);
            GameObject gameObject = this.f73615a;
            SunLight sunLight = SunLight.this;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            bVar2.d(gameObject, sunLight, "cascadeNearHint", cVar);
            entries.add(bVar2);
            C5.b bVar3 = new C5.b(new c(), "Cascade Far Hint", aVar);
            bVar3.d(this.f73615a, SunLight.this, "cascadeFarHint", cVar);
            entries.add(bVar3);
            entries.add(new C5.b(new d(), Lang.l(Lang.T.STABLE_CASCADES), b.a.SLBoolean));
            return entries;
        }
    }

    public class g extends AbstractC13203c {
        @Override
        public Class b() {
            return SunLight.f73585L;
        }

        @Override
        public String c() {
            return SunLight.f73584K;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.LIGHT);
        }

        @Override
        public String f() {
            return SunLight.f73584K;
        }
    }

    public class h implements ec.d {
        public h() {
        }

        @Override
        public void a() {
            if (SunLight.this.f73588G != null) {
                SunLight.this.f73588G.setIntensity(SunLight.this.getFinalIntensity());
            }
        }
    }

    public class i implements ec.d {
        public i() {
        }

        @Override
        public void a() {
            if (SunLight.this.f73588G != null) {
                SunLight.this.f73588G.setColor(SunLight.this.color);
            }
        }
    }

    public class j implements ec.d {
        public j() {
        }

        @Override
        public void a() {
            SunLight.this.f73589H = true;
        }
    }

    public class k implements ec.d {
        public k() {
        }

        @Override
        public void a() {
            SunLight.this.f73589H = true;
        }
    }

    public class l implements ec.d {
        public l() {
        }

        @Override
        public void a() {
            SunLight.this.f73589H = true;
        }
    }

    public class m implements ec.d {
        public m() {
        }

        @Override
        public void a() {
            SunLight.this.f73589H = true;
        }
    }

    public class n implements ec.d {
        public n() {
        }

        @Override
        public void a() {
            SunLight.this.f73589H = true;
        }
    }

    public class o implements ec.d {
        public o() {
        }

        @Override
        public void a() {
            SunLight.this.f73589H = true;
        }
    }

    static {
        C13201a.b(new g());
    }

    public SunLight() {
        super(f73584K);
        this.lux = 50.0f;
        this.lux_OFCBRL = new h();
        this.color = new ColorINT(Color.argb(255, 255, 255, 255));
        this.color_OFCBRL = new i();
        this.allowShadow = true;
        this.shadowBiasV2 = 0.1f;
        this.shadowBias_OFCBRL = new j();
        this.shadowNormalBias = 1.0f;
        this.shadowNormalBias_OFCBRL = new k();
        this.shadowResolutionID = 12;
        this.shadowResolutionID_OFCBRL = new l();
        this.shadowFarDistance = 100.0f;
        this.shadowFarDistance_OFCBRL = new m();
        this.shadowCascades = 1;
        this.shadowCascades_OFCBRL = new n();
        this.cascadeNearHint = 1.0f;
        this.cascadeNearHint_OFCBRL = new o();
        this.cascadeFarHint = 100.0f;
        this.cascadeFarHint_OFCBRL = new a();
        this.stableCascades = false;
        this.f73587F = false;
        this.f73589H = false;
        this.f73590I = new b();
        ensureLuxCurve();
    }

    private void ensureLuxCurve() {
        if (this.luxCurve != null) {
            return;
        }
        Curve curve = new Curve(N7.c.t());
        this.luxCurve = curve;
        curve.clear();
        this.luxCurve.f(0.0f, 0.0f);
        this.luxCurve.f(0.25f, 1.0f);
        this.luxCurve.f(0.75f, 1.0f);
        this.luxCurve.f(1.0f, 1.0f);
        this.luxCurve.G(Curve.a.ClampToBorder);
        this.luxCurve.apply();
    }

    public float getFinalIntensity() {
        float f10;
        ensureLuxCurve();
        float f11 = GraphicsSettings.d() ? this.lux : this.lux * 2.0f;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.transform == null) {
            f10 = 1.0f;
        } else {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            f10 = Nc.b.I(this.luxCurve.p(Nc.b.I(this.f79250n.transform.B(vector3).getY())));
            JP.release(vector3);
        }
        return Nc.b.M(2.0f, f11 * f10 * 1000.0f);
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
    public float getCascadeFarHint() {
        return this.cascadeFarHint;
    }

    @InterfaceC15237a
    public float getCascadeNearHint() {
        return this.cascadeNearHint;
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
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
        GameObject gameObject = this.f79250n;
        if (context == null) {
            return linkedList;
        }
        C5.b bVar = new C5.b(new c(), "Lux", b.a.SLFloat);
        bVar.d(gameObject, this, "lux", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        linkedList.add(bVar);
        ensureLuxCurve();
        linkedList.add(J9.c.a("Lux curve", this.luxCurve, context));
        C5.b bVar2 = new C5.b(new d(), Lang.l(Lang.T.COLOR), b.a.Color, context);
        bVar2.d(gameObject, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        linkedList.add(bVar2);
        if (!com.itsmagic.engine.Engines.Engine.World.a.y()) {
            InspectorMemory inspectorMemory = getInspectorMemory();
            Ac.b bVar3 = Lang.T.SHADOW;
            linkedList.add(F5.c.d(inspectorMemory, Lang.l(bVar3), new e(gameObject)));
            linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(bVar3) + " Cascades", new f(gameObject)));
        }
        return linkedList;
    }

    @InterfaceC15237a
    public float getLux() {
        return this.lux;
    }

    @InterfaceC15237a
    public float getShadowBias() {
        return this.shadowBiasV2;
    }

    @InterfaceC15237a
    public int getShadowCascades() {
        return this.shadowCascades;
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
        return f73584K;
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
    public boolean isStableCascades() {
        return this.stableCascades;
    }

    @InterfaceC15237a
    public boolean isSuppressRender() {
        return this.f73587F;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f79250n.transform.u(this.f73590I);
    }

    @Override
    public void onDetach() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f73590I);
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
        if (this.f73587F) {
            removeFromGraphics();
            return;
        }
        FilamentLight filamentLight = this.f73588G;
        if (filamentLight == null || this.f73589H) {
            this.f73589H = false;
            if (filamentLight != null) {
                getEffectiveScene().s(this.f73588G.e());
                this.f73588G.destroyImmediate();
                this.f73588G = null;
                this.f73586E = false;
            }
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 a02 = gameObject.transform.a0(vector3);
            LightManager.a d10 = new LightManager.a(LightManager.d.SUN).e(a02.getX(), a02.getY(), a02.getZ()).g(getFinalIntensity()).d(this.color.w(), this.color.u(), this.color.s());
            if (canDrawShadows()) {
                d10.c(canDrawShadows());
                LightManager.c cVar = new LightManager.c();
                cVar.f59981d = this.shadowBiasV2;
                cVar.f59982e = this.shadowNormalBias;
                cVar.f59978a = TextureConfig.f79814s[this.shadowResolutionID];
                cVar.f59984g = this.cascadeNearHint;
                cVar.f59985h = this.cascadeFarHint;
                cVar.f59986i = this.stableCascades;
                if (this.shadowCascades < 1) {
                    this.shadowCascades = 1;
                }
                if (this.shadowCascades > 4) {
                    this.shadowCascades = 4;
                }
                if (GraphicsSettings.d()) {
                    cVar.f59979b = this.shadowCascades;
                    cVar.f59983f = this.shadowFarDistance;
                } else {
                    cVar.f59979b = 1;
                    cVar.f59983f = this.shadowFarDistance / (this.shadowCascades * 2.0f);
                }
                int i10 = this.shadowCascades;
                if (i10 > 1) {
                    try {
                        float[] fArr = new float[i10];
                        LightManager.b.a(fArr, i10, this.cascadeNearHint, this.cascadeFarHint);
                        cVar.f59980c = fArr;
                    } catch (Throwable unused) {
                    }
                }
                d10.l(cVar);
            } else if (GraphicsSettings.d()) {
                d10.c(true);
                LightManager.c cVar2 = new LightManager.c();
                cVar2.f59981d = 1.0f;
                cVar2.f59982e = 1.0f;
                cVar2.f59978a = 16;
                cVar2.f59983f = 1.1f;
                cVar2.f59984g = 1.0f;
                cVar2.f59985h = 1.1f;
                cVar2.f59986i = false;
                cVar2.f59979b = 1;
                d10.l(cVar2);
            } else {
                d10.c(false);
            }
            this.f73588G = new FilamentLight(d10);
            JP.release(vector3);
        }
        FilamentLight filamentLight2 = this.f73588G;
        if (filamentLight2 != null) {
            filamentLight2.setIntensity(getFinalIntensity());
        }
        if (this.f73586E) {
            return;
        }
        if (this.f73588G != null) {
            getEffectiveScene().j(this.f73588G.e());
        }
        this.f73586E = true;
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof C) {
            this.f73589H = true;
        }
    }

    public void removeFromGraphics() {
        if (this.f73586E) {
            if (this.f73588G != null) {
                getEffectiveScene().s(this.f73588G.e());
            }
            this.f73586E = false;
        }
    }

    @InterfaceC15237a
    public void setAllowShadow(boolean allowShadow) {
        FilamentLight filamentLight;
        boolean z10 = this.allowShadow != allowShadow;
        this.allowShadow = allowShadow;
        if (!z10 || (filamentLight = this.f73588G) == null) {
            return;
        }
        filamentLight.j(allowShadow);
    }

    @InterfaceC15237a
    public void setCascadeFarHint(float cascadeFarHint) {
        if (this.cascadeFarHint != cascadeFarHint) {
            this.f73589H = true;
        }
        this.cascadeFarHint = cascadeFarHint;
    }

    @InterfaceC15237a
    public void setCascadeNearHint(float cascadeNearHint) {
        if (this.cascadeNearHint != cascadeNearHint) {
            this.f73589H = true;
        }
        this.cascadeNearHint = cascadeNearHint;
    }

    @InterfaceC15237a
    public void setColor(ColorINT color) {
        if (this.color.intColor != color.intColor) {
            ColorINT clone = color.clone();
            this.color = clone;
            FilamentLight filamentLight = this.f73588G;
            if (filamentLight != null) {
                filamentLight.setColor(clone);
            }
        }
    }

    @InterfaceC15237a
    public void setLux(float lux) {
        FilamentLight filamentLight;
        boolean z10 = this.lux != lux;
        this.lux = lux;
        if (!z10 || (filamentLight = this.f73588G) == null) {
            return;
        }
        filamentLight.setIntensity(getFinalIntensity());
    }

    @Override
    public void setRuntime(Component run) {
        this.f73591J = run;
    }

    @InterfaceC15237a
    public void setShadowBias(float shadowBias) {
        if (this.shadowBiasV2 != shadowBias) {
            this.f73589H = true;
        }
        this.shadowBiasV2 = shadowBias;
    }

    @InterfaceC15237a
    public void setShadowCascades(int shadowCascades) {
        if (shadowCascades < 1) {
            shadowCascades = 1;
        }
        if (shadowCascades > 4) {
            shadowCascades = 4;
        }
        if (this.shadowCascades != shadowCascades) {
            this.f73589H = true;
        }
        this.shadowCascades = shadowCascades;
    }

    @InterfaceC15237a
    public void setShadowFarDistance(float shadowFarDistance) {
        if (this.shadowFarDistance != shadowFarDistance) {
            this.f73589H = true;
        }
        this.shadowFarDistance = shadowFarDistance;
    }

    @InterfaceC15237a
    public void setShadowNormalBias(float shadowNormalBias) {
        if (this.shadowNormalBias != shadowNormalBias) {
            this.f73589H = true;
        }
        this.shadowNormalBias = shadowNormalBias;
    }

    @InterfaceC15237a
    public void setShadowResolutionID(int shadowResolutionID) {
        if (this.shadowResolutionID != shadowResolutionID) {
            this.f73589H = true;
        }
        this.shadowResolutionID = shadowResolutionID;
    }

    @InterfaceC15237a
    public void setStableCascades(boolean stableCascades) {
        if (this.stableCascades != stableCascades) {
            this.f73589H = true;
        }
        this.stableCascades = stableCascades;
    }

    @InterfaceC15237a
    public void setSuppressRender(boolean suppressRender) {
        if (this.f73587F != suppressRender) {
            this.f73587F = suppressRender;
            if (suppressRender) {
                removeFromGraphics();
            } else {
                this.f73589H = true;
            }
        }
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f73591J;
        if (component != null) {
            return component;
        }
        JAVARuntime.SunLight sunLight = new JAVARuntime.SunLight(this);
        this.f73591J = sunLight;
        return sunLight;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        SunLight sunLight = new SunLight();
        sunLight.lux = this.lux;
        sunLight.luxCurve = Curve.k(this.luxCurve);
        sunLight.color = ColorINT.k(this.color);
        sunLight.allowShadow = this.allowShadow;
        sunLight.shadowBiasV2 = this.shadowBiasV2;
        sunLight.shadowNormalBias = this.shadowNormalBias;
        sunLight.shadowResolutionID = this.shadowResolutionID;
        sunLight.shadowFarDistance = this.shadowFarDistance;
        sunLight.shadowCascades = this.shadowCascades;
        sunLight.cascadeNearHint = this.cascadeNearHint;
        sunLight.cascadeFarHint = this.cascadeFarHint;
        sunLight.stableCascades = this.stableCascades;
        sunLight.f73587F = this.f73587F;
        return sunLight;
    }
}

package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class Fog extends BasePostProcessing<k> implements Serializable {

    public static final String f75106I = "Fog";

    public static final Class f75107J = Fog.class;

    public Component f75108H;

    @Expose
    @eb.f
    private ColorINT color;

    @Expose
    @eb.f
    private float cutOffDistance;

    @Expose
    @eb.f
    private float density;

    @Expose
    @eb.f
    private float distance;

    @Expose
    private boolean fogColorFromIbl;

    @Expose
    @eb.f
    private float height;

    @Expose
    @eb.f
    private float heightFalloff;

    @Expose
    @eb.f
    private float inScatteringSize;

    @Expose
    @eb.f
    private float inScatteringStart;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", Fog.this.getInScatteringSize() + "");
        }

        @Override
        public void set(Variable v10) {
            Fog.this.setInScatteringSize(v10.float_value);
        }
    }

    public class b extends AbstractC13203c {
        @Override
        public Class b() {
            return Fog.f75107J;
        }

        @Override
        public String c() {
            return Fog.f75106I;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Volumetric";
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", Fog.this.color);
        }

        @Override
        public void set(Variable v10) {
            ColorINT colorINT;
            if (v10 == null || (colorINT = v10.color_value) == null) {
                return;
            }
            Fog.this.color = colorINT;
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Fog.this.fogColorFromIbl + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Fog.this.fogColorFromIbl = variable.booolean_value.booleanValue();
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", Fog.this.getDistance() + "");
        }

        @Override
        public void set(Variable v10) {
            Fog.this.setDistance(v10.float_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", Fog.this.getCutOffDistance() + "");
        }

        @Override
        public void set(Variable v10) {
            Fog.this.setCutOffDistance(v10.float_value);
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", Fog.this.getHeight() + "");
        }

        @Override
        public void set(Variable v10) {
            Fog.this.setHeight(v10.float_value);
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", Fog.this.getHeightFalloff() + "");
        }

        @Override
        public void set(Variable v10) {
            Fog.this.setHeightFalloff(v10.float_value);
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", Fog.this.getDensity() + "");
        }

        @Override
        public void set(Variable v10) {
            Fog.this.setDensity(v10.float_value);
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", Fog.this.getInScatteringStart() + "");
        }

        @Override
        public void set(Variable v10) {
            Fog.this.setInScatteringStart(v10.float_value);
        }
    }

    public static class k {
    }

    static {
        C13201a.b(new b());
    }

    public Fog() {
        super(f75106I);
        this.distance = 0.0f;
        this.cutOffDistance = Float.POSITIVE_INFINITY;
        this.height = 0.0f;
        this.heightFalloff = 1.0f;
        this.color = new ColorINT();
        this.density = 0.1f;
        this.inScatteringStart = 0.0f;
        this.inScatteringSize = -1.0f;
        this.fogColorFromIbl = false;
        super.setRequireFullVersion(false);
    }

    private static float clamp01(float v10) {
        float f10 = 0.0f;
        if (v10 >= 0.0f) {
            f10 = 1.0f;
            if (v10 <= 1.0f) {
                return v10;
            }
        }
        return f10;
    }

    private static float safe01(float v10) {
        return clamp01(v10);
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.renderFog()) {
            View.i o10 = view.p().o();
            o10.f60270a = Math.max(0.0f, this.distance);
            o10.f60271b = this.cutOffDistance;
            o10.f60272c = clamp01(this.color.r());
            o10.f60273d = this.height;
            o10.f60274e = Math.max(0.0f, this.heightFalloff);
            float[] fArr = o10.f60275f;
            if (fArr == null || fArr.length < 3) {
                o10.f60275f = new float[3];
            }
            o10.f60275f[0] = safe01(this.color.w());
            o10.f60275f[1] = safe01(this.color.u());
            o10.f60275f[2] = safe01(this.color.s());
            o10.f60276g = Math.max(0.0f, this.density);
            o10.f60277h = Math.max(0.0f, this.inScatteringStart);
            o10.f60278i = this.inScatteringSize;
            o10.f60279j = this.fogColorFromIbl;
            o10.f60281l = true;
            view.p().g0(o10);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        View.i o10 = view.p().o();
        o10.f60281l = false;
        view.p().g0(o10);
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    @InterfaceC15237a
    public float getCutOffDistance() {
        return this.cutOffDistance;
    }

    @InterfaceC15237a
    public float getDensity() {
        return this.density;
    }

    @Override
    public String getDisplayableTitle() {
        return f75106I;
    }

    @InterfaceC15237a
    public float getDistance() {
        return this.distance;
    }

    @InterfaceC15237a
    public float getHeight() {
        return this.height;
    }

    @InterfaceC15237a
    public float getHeightFalloff() {
        return this.heightFalloff;
    }

    @Override
    public int getIconResource() {
        return R.drawable.vulkan_icon;
    }

    @InterfaceC15237a
    public float getInScatteringSize() {
        return this.inScatteringSize;
    }

    @InterfaceC15237a
    public float getInScatteringStart() {
        return this.inScatteringStart;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        C5.b bVar = new C5.b(new c(), SerializableShaderEntry.f81153g, b.a.Color, context);
        bVar.d(gameObject, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        linkedList.add(bVar);
        linkedList.add(new C5.b(new d(), "Environment color", b.a.SLBoolean));
        e eVar = new e();
        b.a aVar = b.a.SLFloat;
        C5.b bVar2 = new C5.b(eVar, "Distance", aVar);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "distance", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new f(), "Cut-off Distance", aVar);
        bVar3.d(gameObject, this, "cutOffDistance", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new g(), "Height", aVar);
        bVar4.d(gameObject, this, "height", cVar);
        linkedList.add(bVar4);
        C5.b bVar5 = new C5.b(new h(), "Height Falloff", aVar);
        bVar5.d(gameObject, this, "heightFalloff", cVar);
        linkedList.add(bVar5);
        C5.b bVar6 = new C5.b(new i(), "Density", b.a.SLFloat01, 0.5f);
        bVar6.d(gameObject, this, "density", cVar);
        linkedList.add(bVar6);
        C5.b bVar7 = new C5.b(new j(), "In-Scattering Start", aVar);
        bVar7.d(gameObject, this, "inScatteringStart", cVar);
        linkedList.add(bVar7);
        C5.b bVar8 = new C5.b(new a(), "In-Scattering Size", aVar);
        bVar8.d(gameObject, this, "inScatteringSize", cVar);
        linkedList.add(bVar8);
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f75106I;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public boolean isFogColorFromIbl() {
        return this.fogColorFromIbl;
    }

    @InterfaceC15237a
    public void setColor(ColorINT color) {
        this.color = color;
    }

    @InterfaceC15237a
    public void setCutOffDistance(float v10) {
        this.cutOffDistance = v10;
    }

    @InterfaceC15237a
    public void setDensity(float v10) {
        this.density = Math.max(0.0f, v10);
    }

    @InterfaceC15237a
    public void setDistance(float v10) {
        this.distance = Math.max(0.0f, v10);
    }

    @InterfaceC15237a
    public void setFogColorFromIbl(boolean v10) {
        this.fogColorFromIbl = v10;
    }

    @InterfaceC15237a
    public void setHeight(float v10) {
        this.height = v10;
    }

    @InterfaceC15237a
    public void setHeightFalloff(float v10) {
        this.heightFalloff = Math.max(0.0f, v10);
    }

    @InterfaceC15237a
    public void setInScatteringSize(float v10) {
        this.inScatteringSize = v10;
    }

    @InterfaceC15237a
    public void setInScatteringStart(float v10) {
        this.inScatteringStart = Math.max(0.0f, v10);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75108H = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75108H;
        if (component != null) {
            return component;
        }
        JAVARuntime.Fog fog = new JAVARuntime.Fog(this);
        this.f75108H = fog;
        return fog;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        Fog fog = new Fog();
        fog.distance = this.distance;
        fog.cutOffDistance = this.cutOffDistance;
        fog.height = this.height;
        fog.heightFalloff = this.heightFalloff;
        fog.color = ColorINT.k(this.color);
        fog.density = this.density;
        fog.inScatteringStart = this.inScatteringStart;
        fog.inScatteringSize = this.inScatteringSize;
        fog.fogColorFromIbl = this.fogColorFromIbl;
        return fog;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public k newCacheInstance() {
        return new k();
    }
}

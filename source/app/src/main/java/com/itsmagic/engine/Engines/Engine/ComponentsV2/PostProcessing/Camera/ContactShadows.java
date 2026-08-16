package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
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

public class ContactShadows extends BasePostProcessing<j> implements Serializable {

    public static final String f74850I = "ContactShadows";

    public static final Class f74851J = ContactShadows.class;

    public Component f74852H;

    @Expose
    @eb.f
    private float ssctContactDistanceMax;

    @Expose
    @eb.f
    private float ssctDepthBias;

    @Expose
    @eb.f
    private float ssctDepthSlopeBias;

    @Expose
    @eb.f
    private float ssctIntensity;

    @Expose
    @eb.f
    private float ssctLightConeRad;

    @Expose
    @eb.f
    private int ssctRayCount;

    @Expose
    @eb.f
    private int ssctSampleCount;

    @Expose
    @eb.f
    private float ssctShadowDistance;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return ContactShadows.f74851J;
        }

        @Override
        public String c() {
            return ContactShadows.f74850I;
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
            return new Variable("", ContactShadows.this.getSsctIntensity() + "");
        }

        @Override
        public void set(Variable v10) {
            ContactShadows.this.setSsctIntensity(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", ContactShadows.this.getSsctLightConeRad() + "");
        }

        @Override
        public void set(Variable v10) {
            ContactShadows.this.setSsctLightConeRad(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", ContactShadows.this.getSsctShadowDistance() + "");
        }

        @Override
        public void set(Variable v10) {
            ContactShadows.this.setSsctShadowDistance(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", ContactShadows.this.getSsctContactDistanceMax() + "");
        }

        @Override
        public void set(Variable v10) {
            ContactShadows.this.setSsctContactDistanceMax(v10.float_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", ContactShadows.this.getSsctDepthBias() + "");
        }

        @Override
        public void set(Variable v10) {
            ContactShadows.this.setSsctDepthBias(v10.float_value);
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", ContactShadows.this.getSsctDepthSlopeBias() + "");
        }

        @Override
        public void set(Variable v10) {
            ContactShadows.this.setSsctDepthSlopeBias(v10.float_value);
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", ContactShadows.this.getSsctSampleCount() + "");
        }

        @Override
        public void set(Variable v10) {
            ContactShadows.this.setSsctSampleCount(v10.int_value);
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", ContactShadows.this.getSsctRayCount() + "");
        }

        @Override
        public void set(Variable v10) {
            ContactShadows.this.setSsctRayCount(v10.int_value);
        }
    }

    public static class j {

        public float[] f74861a = {0.0f, -1.0f, 0.0f};
    }

    static {
        C13201a.b(new a());
    }

    public ContactShadows() {
        super(f74850I);
        this.ssctLightConeRad = (float) Math.toRadians(45.0d);
        this.ssctShadowDistance = 2.0f;
        this.ssctContactDistanceMax = 1.0f;
        this.ssctIntensity = 0.25f;
        this.ssctDepthBias = 0.01f;
        this.ssctDepthSlopeBias = 0.01f;
        this.ssctSampleCount = 8;
        this.ssctRayCount = 4;
    }

    public float getSsctLightConeRad() {
        return this.ssctLightConeRad;
    }

    public void setSsctLightConeRad(float ssctLightConeRad) {
        this.ssctLightConeRad = ssctLightConeRad;
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            j cache = getCache(camera);
            View.b d10 = view.p().d();
            d10.f60218k = true;
            d10.f60230w = true;
            d10.f60221n = Math.max(0.0f, this.ssctLightConeRad);
            d10.f60222o = Math.max(0.0f, this.ssctShadowDistance);
            d10.f60223p = Math.max(0.0f, this.ssctContactDistanceMax);
            d10.f60224q = Math.max(0.0f, this.ssctIntensity);
            float[] fArr = d10.f60225r;
            float[] fArr2 = cache.f74861a;
            fArr[0] = fArr2[0];
            fArr[1] = fArr2[1];
            fArr[2] = fArr2[2];
            d10.f60226s = Math.max(0.0f, this.ssctDepthBias);
            d10.f60227t = Math.max(0.0f, this.ssctDepthSlopeBias);
            d10.f60228u = Math.max(1, this.ssctSampleCount);
            d10.f60229v = Math.max(1, this.ssctRayCount);
            view.p().V(d10);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            j cache = getCache(camera);
            try {
                List<com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component> h10 = R8.f.h(SunLight.class);
                float[] fArr = cache.f74861a;
                fArr[0] = 0.0f;
                fArr[1] = -1.0f;
                fArr[2] = 0.0f;
                if (h10.isEmpty()) {
                    return;
                }
                for (int i10 = 0; i10 < h10.size(); i10++) {
                    com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component = h10.get(i10);
                    if (component.isHierarchyActive()) {
                        component.f79250n.transform.d0(cache.f74861a);
                        return;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        View.b d10 = view.p().d();
        d10.f60230w = false;
        view.p().V(d10);
    }

    @Override
    public String getDisplayableTitle() {
        return "Contact Shadows";
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
        b bVar = new b();
        b.a aVar = b.a.SLFloat01;
        C5.b bVar2 = new C5.b(bVar, "Intensity", aVar, 5.0f);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "ssctIntensity", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), "Light Cone", aVar);
        bVar3.d(gameObject, this, "ssctLightConeRad", cVar);
        linkedList.add(bVar3);
        d dVar = new d();
        b.a aVar2 = b.a.SLFloat;
        C5.b bVar4 = new C5.b(dVar, "Shadow Distance", aVar2);
        bVar4.d(gameObject, this, "ssctShadowDistance", cVar);
        linkedList.add(bVar4);
        C5.b bVar5 = new C5.b(new e(), "Contact Distance Max", aVar2);
        bVar5.d(gameObject, this, "ssctContactDistanceMax", cVar);
        linkedList.add(bVar5);
        C5.b bVar6 = new C5.b(new f(), "Depth Bias", aVar2);
        bVar6.d(gameObject, this, "ssctDepthBias", cVar);
        linkedList.add(bVar6);
        C5.b bVar7 = new C5.b(new g(), "Depth Slope Bias", aVar2);
        bVar7.d(gameObject, this, "ssctDepthSlopeBias", cVar);
        linkedList.add(bVar7);
        h hVar = new h();
        b.a aVar3 = b.a.SLInt;
        C5.b bVar8 = new C5.b(hVar, "Sample Count", aVar3);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.INT;
        bVar8.d(gameObject, this, "ssctSampleCount", cVar2);
        linkedList.add(bVar8);
        C5.b bVar9 = new C5.b(new i(), "Ray Count", aVar3);
        bVar9.d(gameObject, this, "ssctRayCount", cVar2);
        linkedList.add(bVar9);
        return linkedList;
    }

    @InterfaceC15237a
    public float getSsctContactDistanceMax() {
        return this.ssctContactDistanceMax;
    }

    @InterfaceC15237a
    public float getSsctDepthBias() {
        return this.ssctDepthBias;
    }

    @InterfaceC15237a
    public float getSsctDepthSlopeBias() {
        return this.ssctDepthSlopeBias;
    }

    @InterfaceC15237a
    public float getSsctIntensity() {
        return this.ssctIntensity;
    }

    @InterfaceC15237a
    public float getSsctLightCone() {
        return Nc.b.J1(this.ssctLightConeRad);
    }

    @InterfaceC15237a
    public int getSsctRayCount() {
        return this.ssctRayCount;
    }

    @InterfaceC15237a
    public int getSsctSampleCount() {
        return this.ssctSampleCount;
    }

    @InterfaceC15237a
    public float getSsctShadowDistance() {
        return this.ssctShadowDistance;
    }

    @Override
    public String getTitle() {
        return f74850I;
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
    public void setRuntime(Component run) {
        this.f74852H = run;
    }

    @InterfaceC15237a
    public void setSsctContactDistanceMax(float v10) {
        this.ssctContactDistanceMax = Math.max(0.0f, v10);
    }

    @InterfaceC15237a
    public void setSsctDepthBias(float v10) {
        this.ssctDepthBias = Math.max(0.0f, v10);
    }

    @InterfaceC15237a
    public void setSsctDepthSlopeBias(float v10) {
        this.ssctDepthSlopeBias = Math.max(0.0f, v10);
    }

    @InterfaceC15237a
    public void setSsctIntensity(float v10) {
        this.ssctIntensity = Math.max(0.0f, v10);
    }

    @InterfaceC15237a
    public void setSsctLightCone(float v10) {
        this.ssctLightConeRad = (float) Math.max(0.0d, Nc.b.K1(v10));
    }

    @InterfaceC15237a
    public void setSsctRayCount(int v10) {
        this.ssctRayCount = Math.max(1, v10);
    }

    @InterfaceC15237a
    public void setSsctSampleCount(int v10) {
        this.ssctSampleCount = Math.max(1, v10);
    }

    @InterfaceC15237a
    public void setSsctShadowDistance(float v10) {
        this.ssctShadowDistance = Math.max(0.0f, v10);
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74852H;
        if (component != null) {
            return component;
        }
        JAVARuntime.ContactShadows contactShadows = new JAVARuntime.ContactShadows(this);
        this.f74852H = contactShadows;
        return contactShadows;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        ContactShadows contactShadows = new ContactShadows();
        contactShadows.ssctLightConeRad = this.ssctLightConeRad;
        contactShadows.ssctShadowDistance = this.ssctShadowDistance;
        contactShadows.ssctContactDistanceMax = this.ssctContactDistanceMax;
        contactShadows.ssctIntensity = this.ssctIntensity;
        contactShadows.ssctDepthBias = this.ssctDepthBias;
        contactShadows.ssctDepthSlopeBias = this.ssctDepthSlopeBias;
        contactShadows.ssctSampleCount = this.ssctSampleCount;
        contactShadows.ssctRayCount = this.ssctRayCount;
        return contactShadows;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public j newCacheInstance() {
        return new j();
    }
}

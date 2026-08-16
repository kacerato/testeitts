package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import android.os.BatteryManager;
import com.google.android.filament.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.Layer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import rb.InterfaceC15168a;
import s8.InterfaceC15237a;

public class DepthOfField extends BasePostProcessing<i> implements Serializable {

    public static final String f75032I = "DepthOfField";

    public static final Class f75033J = DepthOfField.class;

    public static final int f75034K = 32;

    public Component f75035H;

    @Expose
    private boolean autoFocus;

    @Expose
    @eb.f
    private float focusDistance;

    @Expose
    public ExposableLayerReference layerReference;

    @Expose
    @eb.f
    private float maxApertureDiameterCm;

    @Expose
    @eb.f
    private float scale;

    @Expose
    private boolean usePhysicsLaser;

    @Expose
    private boolean useVertexLaser;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DepthOfField.f75033J;
        }

        @Override
        public String c() {
            return DepthOfField.f75032I;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Lens";
        }
    }

    public class b implements D5.h {

        public class a implements Runnable {

            public final Variable f75037b;

            public a(final Variable val$v) {
                this.f75037b = val$v;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("DepthOfField - set auto focus") : null;
                try {
                    DepthOfField.this.setAutoFocus(this.f75037b.booolean_value.booleanValue());
                    DepthOfField.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", DepthOfField.this.isAutoFocus() + "");
        }

        @Override
        public void set(Variable v10) {
            K8.a.I(new a(v10));
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", DepthOfField.this.getScale() + "");
        }

        @Override
        public void set(Variable v10) {
            DepthOfField.this.setScale(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", DepthOfField.this.getMaxApertureDiameterCm() + "");
        }

        @Override
        public void set(Variable v10) {
            DepthOfField.this.setMaxApertureDiameterCm(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", DepthOfField.this.getFocusDistance() + "");
        }

        @Override
        public void set(Variable v10) {
            DepthOfField.this.setFocusDistance(v10.float_value);
        }
    }

    public class f implements InterfaceC15168a {
        public f() {
        }

        @Override
        public void a(Layer newLayer) {
        }
    }

    public class g implements D5.h {

        public class a implements Runnable {

            public final Variable f75044b;

            public a(final Variable val$v) {
                this.f75044b = val$v;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("DepthOfField - use physics laser") : null;
                try {
                    DepthOfField.this.setUsePhysicsLaser(this.f75044b.booolean_value.booleanValue());
                    DepthOfField.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", DepthOfField.this.isUsePhysicsLaser() + "");
        }

        @Override
        public void set(Variable v10) {
            K8.a.I(new a(v10));
        }
    }

    public class h implements D5.h {

        public class a implements Runnable {

            public final Variable f75047b;

            public a(final Variable val$v) {
                this.f75047b = val$v;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("DepthOfField - use vertex laser") : null;
                try {
                    DepthOfField.this.setUseVertexLaser(this.f75047b.booolean_value.booleanValue());
                    DepthOfField.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", DepthOfField.this.isUseVertexLaser() + "");
        }

        @Override
        public void set(Variable v10) {
            K8.a.I(new a(v10));
        }
    }

    public static class i {

        public final U8.a f75049a = new U8.a();

        public float f75050b = 0.0f;

        public float f75051c = 0.0f;

        public float f75052d = 0.0f;
    }

    static {
        C13201a.b(new a());
    }

    public DepthOfField() {
        super(f75032I);
        this.autoFocus = true;
        this.scale = 50.0f;
        this.maxApertureDiameterCm = 30.0f;
        this.focusDistance = 5.0f;
        this.layerReference = new ExposableLayerReference();
        this.usePhysicsLaser = true;
        this.useVertexLaser = false;
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            getCache(camera);
            View.f j10 = view.p().j();
            j10.f60256d = true;
            j10.f60257e = View.f.a.MEDIAN;
            j10.f60253a = this.scale;
            j10.f60255c = this.maxApertureDiameterCm / 100.0f;
            view.p().c0(j10);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            i cache = getCache(camera);
            if (!this.autoFocus) {
                float N02 = Nc.b.N0(cache.f75050b, this.focusDistance, K8.d.e() * 4.0f);
                cache.f75050b = N02;
                filamentCamera.setFocusDistance(N02);
                return;
            }
            float f10 = cache.f75052d;
            if (f10 <= 0.0f) {
                cache.f75049a.g(camera, camera.getRenderCameraPosition(), camera.getRenderCameraDirection(), this.usePhysicsLaser, this.useVertexLaser, this.layerReference);
                cache.f75051c = cache.f75049a.e() + camera.getNearPlane();
            } else {
                cache.f75052d = f10 - K8.d.e();
            }
            float N03 = Nc.b.N0(cache.f75050b, cache.f75051c, K8.d.e() * 4.0f);
            cache.f75050b = N03;
            filamentCamera.setFocusDistance(N03);
        }
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
    }

    @Override
    public String getDisplayableTitle() {
        return f75032I;
    }

    @InterfaceC15237a
    public float getFocusDistance() {
        return this.focusDistance;
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
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(bVar, "auto focus", aVar));
        c cVar = new c();
        b.a aVar2 = b.a.SLFloat;
        C5.b bVar2 = new C5.b(cVar, "Scale", aVar2);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, BatteryManager.EXTRA_SCALE, cVar2);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new d(), "Max aperture diameter cm", aVar2);
        bVar3.d(gameObject, this, "maxApertureDiameterCm", cVar2);
        linkedList.add(bVar3);
        if (isAutoFocus()) {
            linkedList.add(this.layerReference.d(Lang.l(Lang.T.LAYER), context, new f()));
            linkedList.add(new C5.b(new g(), "Use physics laser", aVar));
            linkedList.add(new C5.b(new h(), "Use vertex laser", aVar));
        } else {
            C5.b bVar4 = new C5.b(new e(), "Focus distance", aVar2);
            bVar4.d(gameObject, this, "focusDistance", cVar2);
            linkedList.add(bVar4);
        }
        return linkedList;
    }

    @InterfaceC15237a
    public float getMaxApertureDiameterCm() {
        return this.maxApertureDiameterCm;
    }

    @InterfaceC15237a
    public float getScale() {
        return this.scale;
    }

    @Override
    public String getTitle() {
        return f75032I;
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
    public boolean isAutoFocus() {
        return this.autoFocus;
    }

    @InterfaceC15237a
    public boolean isUsePhysicsLaser() {
        return this.usePhysicsLaser;
    }

    @InterfaceC15237a
    public boolean isUseVertexLaser() {
        return this.useVertexLaser;
    }

    @InterfaceC15237a
    public void setAutoFocus(boolean autoFocus) {
        this.autoFocus = autoFocus;
    }

    @InterfaceC15237a
    public void setFocusDistance(float focusDistance) {
        this.focusDistance = focusDistance;
    }

    @InterfaceC15237a
    public void setMaxApertureDiameterCm(float maxApertureDiameterCm) {
        this.maxApertureDiameterCm = maxApertureDiameterCm;
    }

    @Override
    public void setRuntime(Component run) {
        this.f75035H = run;
    }

    @InterfaceC15237a
    public void setScale(float scale) {
        this.scale = scale;
    }

    @InterfaceC15237a
    public void setUsePhysicsLaser(boolean usePhysicsLaser) {
        this.usePhysicsLaser = usePhysicsLaser;
    }

    @InterfaceC15237a
    public void setUseVertexLaser(boolean useVertexLaser) {
        this.useVertexLaser = useVertexLaser;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75035H;
        if (component != null) {
            return component;
        }
        JAVARuntime.DepthOfField depthOfField = new JAVARuntime.DepthOfField(this);
        this.f75035H = depthOfField;
        return depthOfField;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        DepthOfField depthOfField = new DepthOfField();
        depthOfField.autoFocus = this.autoFocus;
        depthOfField.scale = this.scale;
        depthOfField.maxApertureDiameterCm = this.maxApertureDiameterCm;
        depthOfField.focusDistance = this.focusDistance;
        depthOfField.usePhysicsLaser = this.usePhysicsLaser;
        depthOfField.useVertexLaser = this.useVertexLaser;
        depthOfField.layerReference = this.layerReference.clone();
        return depthOfField;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public i newCacheInstance() {
        return new i();
    }
}

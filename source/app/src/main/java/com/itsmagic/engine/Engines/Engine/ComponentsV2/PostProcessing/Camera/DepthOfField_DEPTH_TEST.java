package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import android.content.Context;
import com.google.android.filament.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.Texture.DepthTexture;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.io.File;
import java.io.PrintStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import s8.InterfaceC15237a;

public class DepthOfField_DEPTH_TEST extends BasePostProcessing<e> implements Serializable {

    public static final String f75053H = "DepthOfField_DEPTH_TEST";

    public static final Class f75054I = DepthOfField_DEPTH_TEST.class;

    public static final int f75055J = 32;

    @Expose
    private boolean autoFocus;

    @Expose
    @eb.f
    private float focusDistance;

    @Expose
    @eb.f
    private float maxApertureDiameterCm;

    @Expose
    @eb.f
    private float scale;

    public class a implements D5.h {

        public class RunnableC1221a implements Runnable {

            public final Variable f75057b;

            public RunnableC1221a(final Variable val$v) {
                this.f75057b = val$v;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("DepthOfField_DEPTH_TEST - set auto focus") : null;
                try {
                    DepthOfField_DEPTH_TEST.this.setAutoFocus(this.f75057b.booolean_value.booleanValue());
                    DepthOfField_DEPTH_TEST.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", DepthOfField_DEPTH_TEST.this.isAutoFocus() + "");
        }

        @Override
        public void set(Variable v10) {
            K8.a.I(new RunnableC1221a(v10));
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", DepthOfField_DEPTH_TEST.this.getScale() + "");
        }

        @Override
        public void set(Variable v10) {
            DepthOfField_DEPTH_TEST.this.setScale(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", DepthOfField_DEPTH_TEST.this.getMaxApertureDiameterCm() + "");
        }

        @Override
        public void set(Variable v10) {
            DepthOfField_DEPTH_TEST.this.setMaxApertureDiameterCm(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", DepthOfField_DEPTH_TEST.this.getFocusDistance() + "");
        }

        @Override
        public void set(Variable v10) {
            DepthOfField_DEPTH_TEST.this.setFocusDistance(v10.float_value);
        }
    }

    public static class e {

        public boolean f75065d;

        public ByteBuffer f75066e;

        public float f75068g;

        public float f75069h;

        public float f75062a = 0.0f;

        public float f75063b = 0.0f;

        public float f75064c = 0.0f;

        public Tb.a f75067f = null;

        public final AtomicBoolean f75070i = new AtomicBoolean();

        public final DepthTexture.d f75071j = new a();

        public class a implements DepthTexture.d {
            public a() {
            }

            @Override
            public void a(float depth) {
                if (depth < 1.0E-4f) {
                    depth = 1.0E-4f;
                }
                e eVar = e.this;
                float f10 = eVar.f75069h / depth;
                eVar.f75063b = f10;
                eVar.f75070i.set(false);
                PrintStream printStream = System.out;
                printStream.println("DEPTH VALUE:" + depth);
                printStream.println("DEPTH DISTANCE:" + f10);
            }
        }
    }

    public DepthOfField_DEPTH_TEST() {
        super(f75053H);
        this.autoFocus = true;
        this.scale = 50.0f;
        this.maxApertureDiameterCm = 30.0f;
        this.focusDistance = 5.0f;
    }

    @Override
    public void applyAfterRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        super.applyAfterRender(camera, filamentCamera, view, frameBuffer, cacheBuffer);
        if (camera.renderPostProcessing()) {
            e cache = getCache(camera);
            if (this.autoFocus) {
                if (cache.f75065d && cache.f75067f != null && cache.f75070i.compareAndSet(false, true)) {
                    cache.f75065d = false;
                    camera.getRenderDistance();
                    cache.f75068g = camera.getFarPlane();
                    cache.f75069h = camera.getNearPlane();
                    if (cache.f75066e == null) {
                        cache.f75066e = ByteBuffer.allocateDirect(4).order(ByteOrder.nativeOrder());
                    }
                    DepthTexture n10 = cache.f75067f.n();
                    n10.W(0, 0, n10.getWidth(), n10.getHeight(), new File(W7.b.f27306f.f2458a.f() + "/prints/depth_" + camera.f79250n.getName() + ".jpg"));
                    n10.D0(n10.getWidth() / 2, n10.getHeight() / 2, cache.f75066e, cache.f75071j);
                }
                float z10 = Nc.b.z(cache.f75062a, cache.f75063b, K8.d.e() * 4.0f);
                cache.f75062a = z10;
                filamentCamera.setFocusDistance(z10);
            }
        }
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            e cache = getCache(camera);
            View.f j10 = view.p().j();
            j10.f60256d = true;
            j10.f60257e = View.f.a.MEDIAN;
            j10.f60253a = this.scale;
            j10.f60255c = this.maxApertureDiameterCm / 100.0f;
            view.p().c0(j10);
            Tb.a aVar = cache.f75067f;
            if (aVar != null) {
                float f10 = cache.f75064c;
                if (f10 > 0.0f) {
                    cache.f75064c = f10 - K8.d.e();
                    return;
                }
                cache.f75065d = true;
                aVar.a(view);
                view.z(false);
                Qb.a.o(view);
                view.z(camera.renderPostProcessing());
                cache.f75067f.z();
            }
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            e cache = getCache(camera);
            if (this.autoFocus) {
                if (cache.f75067f == null) {
                    cache.f75067f = new Tb.a(32, 32);
                    return;
                }
                return;
            }
            Tb.a aVar = cache.f75067f;
            if (aVar != null) {
                aVar.c();
                cache.f75067f = null;
            }
            cache.f75066e = null;
            float z10 = Nc.b.z(cache.f75062a, this.focusDistance, K8.d.e() * 4.0f);
            cache.f75062a = z10;
            filamentCamera.setFocusDistance(z10);
        }
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
    }

    @Override
    public String getDisplayableTitle() {
        return DepthOfField.f75032I;
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
        linkedList.add(new C5.b(new a(), "auto focus", b.a.SLBoolean));
        b bVar = new b();
        b.a aVar = b.a.SLFloat;
        linkedList.add(new C5.b(bVar, "Scale", aVar));
        linkedList.add(new C5.b(new c(), "Max aperture diameter cm", aVar));
        if (!isAutoFocus()) {
            linkedList.add(new C5.b(new d(), "Focus distance", aVar));
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
        return DepthOfField.f75032I;
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

    @InterfaceC15237a
    public void setScale(float scale) {
        this.scale = scale;
    }

    @Override
    public Component mo1248clone() {
        DepthOfField_DEPTH_TEST depthOfField_DEPTH_TEST = new DepthOfField_DEPTH_TEST();
        depthOfField_DEPTH_TEST.autoFocus = this.autoFocus;
        depthOfField_DEPTH_TEST.scale = this.scale;
        depthOfField_DEPTH_TEST.maxApertureDiameterCm = this.maxApertureDiameterCm;
        depthOfField_DEPTH_TEST.focusDistance = this.focusDistance;
        return depthOfField_DEPTH_TEST;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public e newCacheInstance() {
        return new e();
    }
}

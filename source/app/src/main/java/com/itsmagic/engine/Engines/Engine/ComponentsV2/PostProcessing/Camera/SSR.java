package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import android.media.MediaFormat;
import com.google.android.filament.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
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

public class SSR extends BasePostProcessing<f> implements Serializable {

    public static final String f75705I = "SSR";

    public static final Class f75706J = SSR.class;

    public Component f75707H;

    @Expose
    @eb.f
    private float bias;

    @Expose
    @eb.f
    private float maxDistance;

    @Expose
    @eb.f
    private float stride;

    @Expose
    @eb.f
    private float thickness;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return SSR.f75706J;
        }

        @Override
        public String c() {
            return SSR.f75705I;
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
            return new Variable("", SSR.this.getThickness() + "");
        }

        @Override
        public void set(Variable v10) {
            SSR.this.setThickness(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", SSR.this.getBias() + "");
        }

        @Override
        public void set(Variable v10) {
            SSR.this.setBias(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", SSR.this.getMaxDistance() + "");
        }

        @Override
        public void set(Variable v10) {
            SSR.this.setMaxDistance(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", SSR.this.getStride() + "");
        }

        @Override
        public void set(Variable v10) {
            SSR.this.setStride(v10.float_value);
        }
    }

    public static class f {
    }

    static {
        C13201a.b(new a());
    }

    public SSR() {
        super(f75705I);
        this.thickness = 0.1f;
        this.bias = 0.01f;
        this.maxDistance = 500.0f;
        this.stride = 2.0f;
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            View.p A10 = view.p().A();
            A10.f60294e = true;
            A10.f60290a = this.thickness;
            A10.f60291b = this.bias;
            A10.f60292c = this.maxDistance;
            A10.f60293d = this.stride;
            view.p().u0(A10);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
    }

    @InterfaceC15237a
    public float getBias() {
        return this.bias;
    }

    @Override
    public String getDisplayableTitle() {
        return f75705I;
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
        b bVar = new b();
        b.a aVar = b.a.SLFloat01;
        C5.b bVar2 = new C5.b(bVar, "Thickness", aVar, 1.0f);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar2.d(gameObject, this, "thickness", cVar));
        linkedList.add(new C5.b(new c(), "Bias", aVar, 1.0f).d(this.f79250n, this, "bias", cVar));
        d dVar = new d();
        b.a aVar2 = b.a.SLFloat;
        linkedList.add(new C5.b(dVar, "Max Distance", aVar2).d(this.f79250n, this, "maxDistance", cVar));
        linkedList.add(new C5.b(new e(), "Stride", aVar2, 5.0f).d(this.f79250n, this, MediaFormat.KEY_STRIDE, cVar));
        return linkedList;
    }

    @InterfaceC15237a
    public float getMaxDistance() {
        return this.maxDistance;
    }

    @InterfaceC15237a
    public float getStride() {
        return this.stride;
    }

    @InterfaceC15237a
    public float getThickness() {
        return this.thickness;
    }

    @Override
    public String getTitle() {
        return f75705I;
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
    public void setBias(float bias) {
        this.bias = bias;
    }

    @InterfaceC15237a
    public void setMaxDistance(float maxDistance) {
        this.maxDistance = maxDistance;
    }

    @Override
    public void setRuntime(Component run) {
        this.f75707H = run;
    }

    @InterfaceC15237a
    public void setStride(float stride) {
        this.stride = stride;
    }

    @InterfaceC15237a
    public void setThickness(float thickness) {
        this.thickness = thickness;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75707H;
        if (component != null) {
            return component;
        }
        JAVARuntime.SSR ssr = new JAVARuntime.SSR(this);
        this.f75707H = ssr;
        return ssr;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        SSR ssr = new SSR();
        ssr.thickness = this.thickness;
        ssr.bias = this.bias;
        ssr.maxDistance = this.maxDistance;
        ssr.stride = this.stride;
        return ssr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public f newCacheInstance() {
        return new f();
    }
}

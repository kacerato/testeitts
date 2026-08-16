package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
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

public class PCSSShadow extends BasePostProcessing<d> implements Serializable {

    public static final String f75424I = "PCSSShadow";

    public static final Class f75425J = PCSSShadow.class;

    public static final float f75426K = 1.0f;

    public static final float f75427L = 1.0f;

    public Component f75428H;

    @Expose
    @eb.f
    private float penumbraRatioScale;

    @Expose
    @eb.f
    private float penumbraScale;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return PCSSShadow.f75425J;
        }

        @Override
        public String c() {
            return PCSSShadow.f75424I;
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
            return new Variable("", PCSSShadow.this.getPenumbraScale() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                PCSSShadow.this.setPenumbraScale(variable.float_value);
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", PCSSShadow.this.getPenumbraRatioScale() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                PCSSShadow.this.setPenumbraRatioScale(variable.float_value);
            }
        }
    }

    public static class d {
    }

    static {
        C13201a.b(new a());
    }

    public PCSSShadow() {
        super(f75424I);
        this.penumbraScale = 1.0f;
        this.penumbraRatioScale = 1.0f;
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            view.p().w0(View.q.PCSS);
            View.r B10 = view.p().B();
            B10.f60295a = Math.max(0.0f, this.penumbraScale);
            B10.f60296b = Math.max(0.0f, this.penumbraRatioScale);
            view.p().y0(B10);
        }
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
    }

    @Override
    public String getDisplayableTitle() {
        return "PCSS Shadow";
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
        b.a aVar = b.a.SLFloat;
        linkedList.add(new C5.b(bVar, "Penumbra Scale", aVar));
        linkedList.add(new C5.b(new c(), "Penumbra Ratio Scale", aVar));
        return linkedList;
    }

    @InterfaceC15237a
    public float getPenumbraRatioScale() {
        return this.penumbraRatioScale;
    }

    @InterfaceC15237a
    public float getPenumbraScale() {
        return this.penumbraScale;
    }

    @Override
    public String getTitle() {
        return f75424I;
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
    public void setPenumbraRatioScale(float penumbraRatioScale) {
        this.penumbraRatioScale = Math.max(0.0f, penumbraRatioScale);
    }

    @InterfaceC15237a
    public void setPenumbraScale(float penumbraScale) {
        this.penumbraScale = Math.max(0.0f, penumbraScale);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75428H = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75428H;
        if (component != null) {
            return component;
        }
        JAVARuntime.PCSSShadow pCSSShadow = new JAVARuntime.PCSSShadow(this);
        this.f75428H = pCSSShadow;
        return pCSSShadow;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        PCSSShadow pCSSShadow = new PCSSShadow();
        pCSSShadow.penumbraScale = this.penumbraScale;
        pCSSShadow.penumbraRatioScale = this.penumbraRatioScale;
        return pCSSShadow;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public d newCacheInstance() {
        return new d();
    }
}

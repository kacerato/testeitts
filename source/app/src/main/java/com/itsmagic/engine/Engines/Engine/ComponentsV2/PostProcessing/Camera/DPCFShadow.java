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

public class DPCFShadow extends BasePostProcessing<d> implements Serializable {

    public static final String f75025I = "DPCFShadow";

    public static final Class f75026J = DPCFShadow.class;

    public static final float f75027K = 1.0f;

    public static final float f75028L = 1.0f;

    public Component f75029H;

    @Expose
    @eb.f
    private float penumbraRatioScale;

    @Expose
    @eb.f
    private float penumbraScale;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DPCFShadow.f75026J;
        }

        @Override
        public String c() {
            return DPCFShadow.f75025I;
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
            return new Variable("", DPCFShadow.this.getPenumbraScale() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                DPCFShadow.this.setPenumbraScale(variable.float_value);
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", DPCFShadow.this.getPenumbraRatioScale() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                DPCFShadow.this.setPenumbraRatioScale(variable.float_value);
            }
        }
    }

    public static class d {
    }

    static {
        C13201a.b(new a());
    }

    public DPCFShadow() {
        super(f75025I);
        this.penumbraScale = 1.0f;
        this.penumbraRatioScale = 1.0f;
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            view.p().w0(View.q.DPCF);
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
        return "DPCF Shadow";
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
        return f75025I;
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
        this.f75029H = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75029H;
        if (component != null) {
            return component;
        }
        JAVARuntime.DPCFShadow dPCFShadow = new JAVARuntime.DPCFShadow(this);
        this.f75029H = dPCFShadow;
        return dPCFShadow;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        DPCFShadow dPCFShadow = new DPCFShadow();
        dPCFShadow.penumbraScale = this.penumbraScale;
        dPCFShadow.penumbraRatioScale = this.penumbraRatioScale;
        return dPCFShadow;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public d newCacheInstance() {
        return new d();
    }
}

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

public class VSMShadow extends BasePostProcessing<h> implements Serializable {

    public static final String f75809I = "VSMShadow";

    public static final Class f75810J = VSMShadow.class;

    public static final int f75811K = 0;

    public static final boolean f75812L = false;

    public static final int f75813M = 1;

    public static final boolean f75814N = false;

    public static final float f75815O = 0.5f;

    public static final float f75816P = 0.15f;

    public Component f75817H;

    @Expose
    @eb.f
    private int anisotropy;

    @Expose
    @eb.f
    private boolean highPrecision;

    @Expose
    @eb.f
    private float lightBleedReduction;

    @Expose
    @eb.f
    private float minVarianceScale;

    @Expose
    @eb.f
    private boolean mipmapping;

    @Expose
    @eb.f
    private int msaaSamples;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return VSMShadow.f75810J;
        }

        @Override
        public String c() {
            return VSMShadow.f75809I;
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
            return new Variable("", VSMShadow.this.getAnisotropy() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VSMShadow.this.setAnisotropy(variable.int_value);
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", VSMShadow.this.isMipmapping() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VSMShadow.this.setMipmapping(variable.booolean_value.booleanValue());
            }
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", VSMShadow.this.getMsaaSamples() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VSMShadow.this.setMsaaSamples(variable.int_value);
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", VSMShadow.this.isHighPrecision() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VSMShadow.this.setHighPrecision(variable.booolean_value.booleanValue());
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", VSMShadow.this.getMinVarianceScale() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VSMShadow.this.setMinVarianceScale(variable.float_value);
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", VSMShadow.this.getLightBleedReduction() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                VSMShadow.this.setLightBleedReduction(variable.float_value);
            }
        }
    }

    public static class h {
    }

    static {
        C13201a.b(new a());
    }

    public VSMShadow() {
        super(f75809I);
        this.anisotropy = 0;
        this.mipmapping = false;
        this.msaaSamples = 1;
        this.highPrecision = false;
        this.minVarianceScale = 0.5f;
        this.lightBleedReduction = 0.15f;
    }

    private static float clamp01(float value) {
        if (value < 0.0f) {
            return 0.0f;
        }
        if (value > 1.0f) {
            return 1.0f;
        }
        return value;
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            view.p().w0(View.q.VSM);
            View.x J10 = view.p().J();
            J10.f60319a = Math.max(0, this.anisotropy);
            J10.f60320b = this.mipmapping;
            J10.f60321c = Math.max(1, this.msaaSamples);
            J10.f60322d = this.highPrecision;
            J10.f60323e = Math.max(0.0f, this.minVarianceScale);
            J10.f60324f = clamp01(this.lightBleedReduction);
            view.p().H0(J10);
        }
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
    }

    @InterfaceC15237a
    public int getAnisotropy() {
        return this.anisotropy;
    }

    @Override
    public String getDisplayableTitle() {
        return "VSM Shadow";
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
        b.a aVar = b.a.SLInt;
        linkedList.add(new C5.b(bVar, "Anisotropy", aVar));
        c cVar = new c();
        b.a aVar2 = b.a.SLBoolean;
        linkedList.add(new C5.b(cVar, "Mipmapping", aVar2));
        linkedList.add(new C5.b(new d(), "MSAA Samples", aVar));
        linkedList.add(new C5.b(new e(), "High Precision", aVar2));
        f fVar = new f();
        b.a aVar3 = b.a.SLFloat01;
        linkedList.add(new C5.b(fVar, "Min Variance Scale", aVar3));
        linkedList.add(new C5.b(new g(), "Light Bleed Reduction", aVar3));
        return linkedList;
    }

    @InterfaceC15237a
    public float getLightBleedReduction() {
        return this.lightBleedReduction;
    }

    @InterfaceC15237a
    public float getMinVarianceScale() {
        return this.minVarianceScale;
    }

    @InterfaceC15237a
    public int getMsaaSamples() {
        return this.msaaSamples;
    }

    @Override
    public String getTitle() {
        return f75809I;
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
    public boolean isHighPrecision() {
        return this.highPrecision;
    }

    @InterfaceC15237a
    public boolean isMipmapping() {
        return this.mipmapping;
    }

    @InterfaceC15237a
    public void setAnisotropy(int anisotropy) {
        this.anisotropy = Math.max(0, anisotropy);
    }

    @InterfaceC15237a
    public void setHighPrecision(boolean highPrecision) {
        this.highPrecision = highPrecision;
    }

    @InterfaceC15237a
    public void setLightBleedReduction(float lightBleedReduction) {
        this.lightBleedReduction = clamp01(lightBleedReduction);
    }

    @InterfaceC15237a
    public void setMinVarianceScale(float minVarianceScale) {
        this.minVarianceScale = Math.max(0.0f, minVarianceScale);
    }

    @InterfaceC15237a
    public void setMipmapping(boolean mipmapping) {
        this.mipmapping = mipmapping;
    }

    @InterfaceC15237a
    public void setMsaaSamples(int msaaSamples) {
        this.msaaSamples = Math.max(1, msaaSamples);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75817H = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75817H;
        if (component != null) {
            return component;
        }
        JAVARuntime.VSMShadow vSMShadow = new JAVARuntime.VSMShadow(this);
        this.f75817H = vSMShadow;
        return vSMShadow;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        VSMShadow vSMShadow = new VSMShadow();
        vSMShadow.anisotropy = this.anisotropy;
        vSMShadow.mipmapping = this.mipmapping;
        vSMShadow.msaaSamples = this.msaaSamples;
        vSMShadow.highPrecision = this.highPrecision;
        vSMShadow.minVarianceScale = this.minVarianceScale;
        vSMShadow.lightBleedReduction = this.lightBleedReduction;
        return vSMShadow;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public h newCacheInstance() {
        return new h();
    }
}

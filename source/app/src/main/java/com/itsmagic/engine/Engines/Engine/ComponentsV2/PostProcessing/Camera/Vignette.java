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
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
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

public class Vignette extends BasePostProcessing<f> implements Serializable {

    public static final String f75824J = "Vignette";

    public static final Class f75825K = Vignette.class;

    public final float[] f75826H;

    public Component f75827I;

    @Expose
    @eb.f
    private ColorINT colorINT;

    @Expose
    @eb.f
    private float feather;

    @Expose
    @eb.f
    private float midPoint;

    @Expose
    @eb.f
    private float roundness;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Vignette.f75825K;
        }

        @Override
        public String c() {
            return Vignette.f75824J;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Lens";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", Vignette.this.getMidPoint() + "");
        }

        @Override
        public void set(Variable v10) {
            Vignette.this.setMidPoint(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", Vignette.this.getRoundness() + "");
        }

        @Override
        public void set(Variable v10) {
            Vignette.this.setRoundness(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Vignette.this.getFeather() + "");
        }

        @Override
        public void set(Variable v10) {
            Vignette.this.setFeather(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", Vignette.this.colorINT);
        }

        @Override
        public void set(Variable v10) {
            Vignette.this.colorINT.intColor = v10.color_value.intColor;
        }
    }

    public static class f {
    }

    static {
        C13201a.b(new a());
    }

    public Vignette() {
        super(f75824J);
        this.midPoint = 0.5f;
        this.roundness = 0.5f;
        this.feather = 0.5f;
        this.colorINT = new ColorINT(0, 0, 0);
        this.f75826H = new float[4];
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.renderPostProcessing() && GraphicsSettings.d()) {
            this.f75826H[0] = this.colorINT.w();
            this.f75826H[1] = this.colorINT.u();
            this.f75826H[2] = this.colorINT.s();
            this.f75826H[3] = this.colorINT.r();
            View.w G10 = view.p().G();
            G10.f60318e = true;
            G10.f60314a = this.midPoint;
            G10.f60316c = this.feather;
            G10.f60315b = this.roundness;
            G10.f60317d = this.f75826H;
            view.p().F0(G10);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
    }

    @InterfaceC15237a
    public ColorINT getColorINT() {
        return this.colorINT;
    }

    @Override
    public String getDisplayableTitle() {
        return f75824J;
    }

    @InterfaceC15237a
    public float getFeather() {
        return this.feather;
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
        C5.b bVar2 = new C5.b(bVar, "Midpoint", aVar);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "midPoint", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), "Roundness", aVar);
        bVar3.d(gameObject, this, "roundness", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new d(), "Feather", aVar);
        bVar4.d(gameObject, this, "feather", cVar);
        linkedList.add(bVar4);
        C5.b bVar5 = new C5.b(new e(), SerializableShaderEntry.f81153g, b.a.Color);
        bVar5.d(gameObject, this, "colorINT", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        linkedList.add(bVar5);
        return linkedList;
    }

    @InterfaceC15237a
    public float getMidPoint() {
        return this.midPoint;
    }

    @InterfaceC15237a
    public float getRoundness() {
        return this.roundness;
    }

    @Override
    public String getTitle() {
        return f75824J;
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
    public void setColorINT(ColorINT colorINT) {
        this.colorINT = colorINT;
    }

    @InterfaceC15237a
    public void setFeather(float feather) {
        this.feather = feather;
    }

    @InterfaceC15237a
    public void setMidPoint(float midPoint) {
        this.midPoint = midPoint;
    }

    @InterfaceC15237a
    public void setRoundness(float roundness) {
        this.roundness = roundness;
    }

    @Override
    public void setRuntime(Component run) {
        this.f75827I = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75827I;
        if (component != null) {
            return component;
        }
        JAVARuntime.Vignette vignette = new JAVARuntime.Vignette(this);
        this.f75827I = vignette;
        return vignette;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        Vignette vignette = new Vignette();
        vignette.colorINT = ColorINT.k(this.colorINT);
        vignette.feather = this.feather;
        vignette.midPoint = this.midPoint;
        vignette.roundness = this.roundness;
        return vignette;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public f newCacheInstance() {
        return new f();
    }
}

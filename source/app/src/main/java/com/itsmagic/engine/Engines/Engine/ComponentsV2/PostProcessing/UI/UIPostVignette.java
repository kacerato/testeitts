package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.DoublePassUIPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class UIPostVignette extends DoublePassUIPostProcessPass implements Serializable {

    public static final int f76089T = 0;

    public static final int f76090U = 1;

    public static final int f76091V = 2;

    public static final int f76092W = 3;

    public static final int f76093X = 4;

    public static final String f76094Y = "UIPostVignette";

    public static final Class f76095Z = UIPostVignette.class;

    public static final Map<String, MaterialBuilder.r> f76096q0;

    public static final Map<String, MaterialBuilder.m> f76097v0;

    public Component f76098S;

    @Expose
    @eb.f
    private ColorINT color;

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
            return UIPostVignette.f76095Z;
        }

        @Override
        public String c() {
            return UIPostVignette.f76094Y;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UI_POST_PROCESSING);
        }

        @Override
        public String h(boolean translate) {
            return "PostVignette";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIPostVignette.this.getMidPoint() + "");
        }

        @Override
        public void set(Variable v10) {
            UIPostVignette.this.setMidPoint(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIPostVignette.this.getRoundness() + "");
        }

        @Override
        public void set(Variable v10) {
            UIPostVignette.this.setRoundness(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIPostVignette.this.getFeather() + "");
        }

        @Override
        public void set(Variable v10) {
            UIPostVignette.this.setFeather(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIPostVignette.this.color);
        }

        @Override
        public void set(Variable v10) {
            ColorINT colorINT;
            if (v10 == null || (colorINT = v10.color_value) == null) {
                return;
            }
            UIPostVignette.this.setColor(colorINT);
        }
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("midPoint", rVar), new AbstractMap.SimpleEntry("roundness", rVar), new AbstractMap.SimpleEntry("feather", rVar), new AbstractMap.SimpleEntry("color", MaterialBuilder.r.FLOAT4), new AbstractMap.SimpleEntry("aspect", rVar)});
        f76096q0 = a10;
        f76097v0 = Collections.emptyMap();
    }

    public UIPostVignette() {
        super(f76094Y, "post_vignette", f76096q0, f76097v0);
        this.midPoint = 0.5f;
        this.roundness = 0.5f;
        this.feather = 0.5f;
        this.color = new ColorINT(0, 0, 0);
    }

    public static void buildShaderCache() {
        new UIPostVignette().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new UIPostVignette().buildShaderCacheFromDefaultsForce();
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    @Override
    public String getDisplayableTitle() {
        return "PostVignette";
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
        String l10 = Lang.l(Lang.T.MID_POINT);
        b.a aVar = b.a.SLFloat01;
        C5.b bVar2 = new C5.b(bVar, l10, aVar);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "midPoint", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), Lang.l(Lang.T.ROUNDNESS), aVar);
        bVar3.d(gameObject, this, "roundness", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new d(), Lang.l(Lang.T.FEATHER), aVar);
        bVar4.d(gameObject, this, "feather", cVar);
        linkedList.add(bVar4);
        C5.b bVar5 = new C5.b(new e(), Lang.l(Lang.T.COLOR), b.a.Color);
        bVar5.d(gameObject, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        linkedList.add(bVar5);
        return linkedList;
    }

    @InterfaceC15237a
    public float getMidPoint() {
        return this.midPoint;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(4);
    }

    @InterfaceC15237a
    public float getRoundness() {
        return this.roundness;
    }

    @Override
    public String getTitle() {
        return "UI PostVignette";
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3) | paramBit(4);
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public void setColor(ColorINT color) {
        this.color = color;
        markParameterDirty(3);
    }

    @InterfaceC15237a
    public void setFeather(float feather) {
        this.feather = feather;
        markParameterDirty(2);
    }

    @InterfaceC15237a
    public void setMidPoint(float midPoint) {
        this.midPoint = midPoint;
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setRoundness(float roundness) {
        this.roundness = roundness;
        markParameterDirty(1);
    }

    @Override
    public void setRuntime(Component run) {
        this.f76098S = run;
    }

    @Override
    public boolean shouldApplyPreUpdatePass(UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer) {
        ColorINT colorINT = this.color;
        return colorINT != null && colorINT.o() > 0;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f76098S;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIPostVignette uIPostVignette = new JAVARuntime.UIPostVignette(this);
        this.f76098S = uIPostVignette;
        return uIPostVignette;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassUIPostProcessPass.b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("midPoint", this.midPoint);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("roundness", this.roundness);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("feather", this.feather);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.c("color", this.color);
        }
        if ((dirtyMask & paramBit(4)) != 0) {
            writer.d("aspect", frameBuffer.i() / frameBuffer.h());
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIPostVignette uIPostVignette = new UIPostVignette();
        uIPostVignette.midPoint = this.midPoint;
        uIPostVignette.roundness = this.roundness;
        uIPostVignette.feather = this.feather;
        uIPostVignette.color = ColorINT.k(this.color);
        return uIPostVignette;
    }
}

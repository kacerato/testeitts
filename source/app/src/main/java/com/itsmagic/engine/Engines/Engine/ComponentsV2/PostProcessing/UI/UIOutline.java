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
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import s8.InterfaceC15237a;

public class UIOutline extends DoublePassUIPostProcessPass implements Serializable {

    public static final int f76059T = 0;

    public static final int f76060U = 1;

    public static final int f76061V = 2;

    public static final int f76062W = 3;

    public static final String f76063X = "UIOutline";

    public static final Class f76064Y = UIOutline.class;

    public static final Map<String, MaterialBuilder.r> f76065Z;

    public static final Map<String, MaterialBuilder.m> f76066q0;

    public Component f76067S;

    @Expose
    @eb.f
    private ColorINT outlineColor;

    @Expose
    @eb.f
    private float thickness;

    @Expose
    @eb.f
    private float threshold;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIOutline.f76064Y;
        }

        @Override
        public String c() {
            return UIOutline.f76063X;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UI_POST_PROCESSING);
        }

        @Override
        public String h(boolean translate) {
            return "Outline";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIOutline.this.getThickness() + "");
        }

        @Override
        public void set(Variable v10) {
            UIOutline.this.setThickness(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIOutline.this.getThreshold() + "");
        }

        @Override
        public void set(Variable v10) {
            UIOutline.this.setThreshold(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIOutline.this.outlineColor);
        }

        @Override
        public void set(Variable v10) {
            ColorINT colorINT;
            if (v10 == null || (colorINT = v10.color_value) == null) {
                return;
            }
            UIOutline.this.setOutlineColor(colorINT);
        }
    }

    static {
        C13201a.b(new a());
        HashMap hashMap = new HashMap();
        f76065Z = hashMap;
        hashMap.put("outlineColor", MaterialBuilder.r.FLOAT4);
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        hashMap.put("thickness", rVar);
        hashMap.put("threshold", rVar);
        hashMap.put("texelSize", MaterialBuilder.r.FLOAT2);
        f76066q0 = new HashMap();
    }

    public UIOutline() {
        super(f76063X, "outline", f76065Z, f76066q0);
        this.outlineColor = new ColorINT(0, 0, 0);
        this.thickness = 1.0f;
        this.threshold = 0.5f;
    }

    public static void buildShaderCache() {
        new UIOutline().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new UIOutline().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public String getDisplayableTitle() {
        return "Outline";
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
        String l10 = Lang.l(Lang.T.THICKNESS);
        b.a aVar = b.a.SLFloat01;
        C5.b bVar2 = new C5.b(bVar, l10, aVar, 5.0f);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "thickness", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), Lang.l(Lang.T.THRESHOLD), aVar);
        bVar3.d(gameObject, this, "threshold", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new d(), Lang.l(Lang.T.OUTLINE_COLOR), b.a.Color);
        bVar4.d(gameObject, this, "outlineColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        linkedList.add(bVar4);
        return linkedList;
    }

    @InterfaceC15237a
    public ColorINT getOutlineColor() {
        return this.outlineColor;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(3);
    }

    @InterfaceC15237a
    public float getThickness() {
        return this.thickness;
    }

    @InterfaceC15237a
    public float getThreshold() {
        return this.threshold;
    }

    @Override
    public String getTitle() {
        return "UI Outline";
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3);
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public void setOutlineColor(ColorINT color) {
        this.outlineColor = color;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f76067S = run;
    }

    @InterfaceC15237a
    public void setThickness(float thickness) {
        this.thickness = thickness;
        markParameterDirty(1);
    }

    @InterfaceC15237a
    public void setThreshold(float threshold) {
        this.threshold = threshold;
        markParameterDirty(2);
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f76067S;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIOutline uIOutline = new JAVARuntime.UIOutline(this);
        this.f76067S = uIOutline;
        return uIOutline;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassUIPostProcessPass.b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.c("outlineColor", this.outlineColor);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("thickness", this.thickness);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("threshold", this.threshold);
        }
        if ((dirtyMask & paramBit(3)) != 0) {
            int i10 = frameBuffer.i();
            int h10 = frameBuffer.h();
            writer.e("texelSize", i10 > 0 ? 1.0f / i10 : 0.0f, h10 > 0 ? 1.0f / h10 : 0.0f);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIOutline uIOutline = new UIOutline();
        uIOutline.outlineColor = ColorINT.k(this.outlineColor);
        uIOutline.thickness = this.thickness;
        uIOutline.threshold = this.threshold;
        return uIOutline;
    }
}

package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
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

public class UIFadeOut extends DoublePassUIPostProcessPass implements Serializable {

    public static final int f76026T = 0;

    public static final String f76027U = "UIFadeOut";

    public static final Class f76028V = UIFadeOut.class;

    public static final Map<String, MaterialBuilder.r> f76029W;

    public static final Map<String, MaterialBuilder.m> f76030X;

    public Component f76031S;

    @Expose
    @eb.f
    private float opacity;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIFadeOut.f76028V;
        }

        @Override
        public String c() {
            return UIFadeOut.f76027U;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UI_POST_PROCESSING);
        }

        @Override
        public String h(boolean translate) {
            return "Fade Out";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIFadeOut.this.getOpacity() + "");
        }

        @Override
        public void set(Variable v10) {
            UIFadeOut.this.setOpacity(v10.float_value);
        }
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("opacity", MaterialBuilder.r.FLOAT)});
        f76029W = a10;
        f76030X = Collections.emptyMap();
    }

    public UIFadeOut() {
        super(f76027U, "ui_fade_out", f76029W, f76030X);
        this.opacity = 1.0f;
    }

    public static void buildShaderCache() {
        new UIFadeOut().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new UIFadeOut().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public String getDisplayableTitle() {
        return "UI Fade Out";
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
        C5.b bVar = new C5.b(new b(), Lang.l(Lang.T.OPACITY), b.a.SLFloat01);
        bVar.d(gameObject, this, "opacity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        linkedList.add(bVar);
        return linkedList;
    }

    @InterfaceC15237a
    public float getOpacity() {
        return this.opacity;
    }

    @Override
    public String getTitle() {
        return "UI Fade Out";
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0);
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public void setOpacity(float opacity) {
        this.opacity = opacity;
        markParameterDirty(0);
    }

    @Override
    public void setRuntime(Component run) {
        this.f76031S = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f76031S;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIFadeOut uIFadeOut = new JAVARuntime.UIFadeOut(this);
        this.f76031S = uIFadeOut;
        return uIFadeOut;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassUIPostProcessPass.b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("opacity", this.opacity);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIFadeOut uIFadeOut = new UIFadeOut();
        uIFadeOut.opacity = this.opacity;
        return uIFadeOut;
    }
}

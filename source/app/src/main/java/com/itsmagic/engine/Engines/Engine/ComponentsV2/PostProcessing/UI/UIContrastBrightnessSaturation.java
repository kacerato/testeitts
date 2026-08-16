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

public class UIContrastBrightnessSaturation extends DoublePassUIPostProcessPass implements Serializable {

    public static final int f75984T = 0;

    public static final int f75985U = 1;

    public static final int f75986V = 2;

    public static final String f75987W = "UIContrastBrightnessSaturation";

    public static final Class f75988X = UIContrastBrightnessSaturation.class;

    public static final Map<String, MaterialBuilder.r> f75989Y;

    public static final Map<String, MaterialBuilder.m> f75990Z;

    public Component f75991S;

    @Expose
    @eb.f
    private float brightness;

    @Expose
    @eb.f
    private float contrast;

    @Expose
    @eb.f
    private float saturation;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIContrastBrightnessSaturation.f75988X;
        }

        @Override
        public String c() {
            return UIContrastBrightnessSaturation.f75987W;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UI_POST_PROCESSING);
        }

        @Override
        public String h(boolean translate) {
            return "Contrast/Brightness/Saturation";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIContrastBrightnessSaturation.this.getBrightness() + "");
        }

        @Override
        public void set(Variable v10) {
            UIContrastBrightnessSaturation.this.setBrightness(v10.float_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIContrastBrightnessSaturation.this.getContrast() + "");
        }

        @Override
        public void set(Variable v10) {
            UIContrastBrightnessSaturation.this.setContrast(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIContrastBrightnessSaturation.this.getSaturation() + "");
        }

        @Override
        public void set(Variable v10) {
            UIContrastBrightnessSaturation.this.setSaturation(v10.float_value);
        }
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("brightness", rVar), new AbstractMap.SimpleEntry("contrast", rVar), new AbstractMap.SimpleEntry("saturation", rVar)});
        f75989Y = a10;
        f75990Z = Collections.emptyMap();
    }

    public UIContrastBrightnessSaturation() {
        super(f75987W, "ui_contrast_brightness_saturation", f75989Y, f75990Z);
        this.brightness = 0.0f;
        this.contrast = 1.0f;
        this.saturation = 1.0f;
    }

    public static void buildShaderCache() {
        new UIContrastBrightnessSaturation().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new UIContrastBrightnessSaturation().buildShaderCacheFromDefaultsForce();
    }

    @InterfaceC15237a
    public float getBrightness() {
        return this.brightness;
    }

    @InterfaceC15237a
    public float getContrast() {
        return this.contrast;
    }

    @Override
    public String getDisplayableTitle() {
        return "Contrast/Brightness/Saturation";
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
        String l10 = Lang.l(Lang.T.BRIGHTNESS);
        b.a aVar = b.a.SLFloat01;
        C5.b bVar2 = new C5.b(bVar, l10, aVar, -1.0f, 1.0f, 0.01f);
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        bVar2.d(gameObject, this, "brightness", cVar);
        linkedList.add(bVar2);
        C5.b bVar3 = new C5.b(new c(), Lang.l(Lang.T.CONTRAST), aVar, 0.0f, 2.0f, 0.01f);
        bVar3.d(gameObject, this, "contrast", cVar);
        linkedList.add(bVar3);
        C5.b bVar4 = new C5.b(new d(), Lang.l(Lang.T.SATURATION), aVar, 0.0f, 2.0f, 0.01f);
        bVar4.d(gameObject, this, "saturation", cVar);
        linkedList.add(bVar4);
        return linkedList;
    }

    @InterfaceC15237a
    public float getSaturation() {
        return this.saturation;
    }

    @Override
    public String getTitle() {
        return "UI Contrast/Brightness/Saturation";
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2);
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public void setBrightness(float brightness) {
        this.brightness = brightness;
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setContrast(float contrast) {
        this.contrast = contrast;
        markParameterDirty(1);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75991S = run;
    }

    @InterfaceC15237a
    public void setSaturation(float saturation) {
        this.saturation = saturation;
        markParameterDirty(2);
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75991S;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIContrastBrightnessSaturation uIContrastBrightnessSaturation = new JAVARuntime.UIContrastBrightnessSaturation(this);
        this.f75991S = uIContrastBrightnessSaturation;
        return uIContrastBrightnessSaturation;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassUIPostProcessPass.b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.d("brightness", this.brightness);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.d("contrast", this.contrast);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.d("saturation", this.saturation);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIContrastBrightnessSaturation uIContrastBrightnessSaturation = new UIContrastBrightnessSaturation();
        uIContrastBrightnessSaturation.brightness = this.brightness;
        uIContrastBrightnessSaturation.contrast = this.contrast;
        uIContrastBrightnessSaturation.saturation = this.saturation;
        return uIContrastBrightnessSaturation;
    }
}

package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import android.content.Context;
import android.os.BatteryManager;
import androidx.constraintlayout.motion.widget.Key;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.DoublePassUIPostProcessPass;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
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

public class UIPostTransform extends DoublePassUIPostProcessPass implements Serializable {

    public static final Class f76071D0 = UIPostTransform.class;

    public static final int f76072U = 0;

    public static final int f76073V = 1;

    public static final int f76074W = 2;

    public static final int f76075X = 3;

    public static final int f76076Y = 4;

    public static final int f76077Z = 5;

    public static final Map<String, MaterialBuilder.r> f76078b1;

    public static final Map<String, MaterialBuilder.m> f76079i1;

    public static final int f76080q0 = 6;

    public static final String f76081v0 = "UITransform";

    public Vector2 f76082S;

    public Component f76083T;

    @Expose
    @eb.f
    private float fov;

    @Expose
    @eb.f
    private Vector2 pivot;

    @Expose
    @eb.f
    private Vector2 position;

    @Expose
    @eb.f
    private Vector3 rotation;

    @Expose
    @eb.f
    private Vector2 scale;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIPostTransform.f76071D0;
        }

        @Override
        public String c() {
            return UIPostTransform.f76081v0;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UI_POST_PROCESSING);
        }

        @Override
        public String h(boolean translate) {
            return "PostTransform";
        }
    }

    public class b implements c.u0 {
        public b() {
        }

        @Override
        public void a() {
            UIPostTransform.this.markParameterDirty(0);
        }
    }

    public class c implements c.u0 {
        public c() {
        }

        @Override
        public void a() {
            UIPostTransform.this.markParameterDirty(2);
        }
    }

    public class d implements c.u0 {
        public d() {
        }

        @Override
        public void a() {
            UIPostTransform.this.markParameterDirty(3);
        }
    }

    public class e implements c.u0 {
        public e() {
        }

        @Override
        public void a() {
            UIPostTransform.this.markParameterDirty(1);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIPostTransform.this.getFOV() + "");
        }

        @Override
        public void set(Variable v10) {
            UIPostTransform.this.setFOV(v10.float_value);
        }
    }

    static {
        Map<String, MaterialBuilder.r> a10;
        C13201a.b(new a());
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT2;
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT3;
        MaterialBuilder.r rVar3 = MaterialBuilder.r.FLOAT;
        a10 = com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.b.a(new Map.Entry[]{new AbstractMap.SimpleEntry("position", rVar), new AbstractMap.SimpleEntry("pivot", rVar), new AbstractMap.SimpleEntry(BatteryManager.EXTRA_SCALE, rVar), new AbstractMap.SimpleEntry(Key.ROTATION, rVar2), new AbstractMap.SimpleEntry("texelSize", rVar), new AbstractMap.SimpleEntry("fovDeg", rVar3), new AbstractMap.SimpleEntry("aspect", rVar3)});
        f76078b1 = a10;
        f76079i1 = Collections.emptyMap();
    }

    public UIPostTransform() {
        super(f76081v0, "ui_transform", f76078b1, f76079i1);
        this.position = new Vector2(0.0f, 0.0f);
        this.pivot = new Vector2(0.5f, 0.5f);
        this.scale = new Vector2(1.0f, 1.0f);
        this.rotation = new Vector3(0.0f, 0.0f, 0.0f);
        this.fov = 60.0f;
        this.f76082S = new Vector2();
    }

    public static void buildShaderCache() {
        new UIPostTransform().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new UIPostTransform().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public String getDisplayableTitle() {
        return "PostTransform";
    }

    @InterfaceC15237a
    public float getFOV() {
        return this.fov;
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
        C5.b z10 = F5.c.z(Lang.l(Lang.T.POSITION), this.position, new Vector2(0.0f, 0.0f), new b());
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.VEC2;
        z10.d(gameObject, this, "position", cVar);
        linkedList.add(z10);
        C5.b z11 = F5.c.z(Lang.l(Lang.T.SCALE), this.scale, new Vector2(1.0f, 1.0f), new c());
        z11.d(gameObject, this, BatteryManager.EXTRA_SCALE, cVar);
        linkedList.add(z11);
        C5.b M10 = F5.c.M(Lang.l(Lang.T.ROTATION), this.rotation, new Vector3(0.0f, 0.0f, 0.0f), new d());
        M10.d(gameObject, this, Key.ROTATION, com.itsmagic.engine.Engines.Engine.Animation.c.VEC3);
        linkedList.add(M10);
        C5.b z12 = F5.c.z(Lang.l(Lang.T.PIVOT), this.pivot, new Vector2(0.5f, 0.5f), new e());
        z12.d(gameObject, this, "pivot", cVar);
        linkedList.add(z12);
        C5.b bVar = new C5.b(new f(), Lang.l(Lang.T.FOV), b.a.SLFloat);
        bVar.d(gameObject, this, "fov", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        linkedList.add(bVar);
        return linkedList;
    }

    @InterfaceC15237a
    public Vector2 getPivot() {
        return this.pivot;
    }

    @InterfaceC15237a
    public Vector2 getPosition() {
        return this.position;
    }

    @Override
    public long getResolutionDependentParameterMask() {
        return paramBit(2) | paramBit(4) | paramBit(6);
    }

    @InterfaceC15237a
    public Vector3 getRotation() {
        return this.rotation;
    }

    @InterfaceC15237a
    public Vector2 getScale() {
        return this.scale;
    }

    @Override
    public String getTitle() {
        return "UI PostTransform";
    }

    @Override
    public long getTrackedParameterMask() {
        return paramBit(0) | paramBit(1) | paramBit(2) | paramBit(3) | paramBit(4) | paramBit(5) | paramBit(6);
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public void setFOV(float fov) {
        this.fov = fov;
        markParameterDirty(5);
    }

    @InterfaceC15237a
    public void setPivot(Vector2 pivot) {
        this.pivot = pivot;
        markParameterDirty(1);
    }

    @InterfaceC15237a
    public void setPosition(Vector2 position) {
        this.position = position;
        markParameterDirty(0);
    }

    @InterfaceC15237a
    public void setRotation(Vector3 rotation) {
        this.rotation = rotation;
        markParameterDirty(3);
    }

    @Override
    public void setRuntime(Component run) {
        this.f76083T = run;
    }

    @InterfaceC15237a
    public void setScale(Vector2 scale) {
        this.scale = scale;
        markParameterDirty(2);
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f76083T;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIPostTransform uIPostTransform = new JAVARuntime.UIPostTransform(this);
        this.f76083T = uIPostTransform;
        return uIPostTransform;
    }

    @Override
    public void uploadDirtyParametersDirect(DoublePassUIPostProcessPass.b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        int max = Math.max(1, frameBuffer.i());
        int max2 = Math.max(1, frameBuffer.h());
        this.f76082S.x0(this.scale);
        float f10 = max;
        float f11 = max2;
        float f12 = f10 / f11;
        this.f76082S.a0(f12, 1.0f);
        if ((paramBit(0) & dirtyMask) != 0) {
            writer.h("position", this.position);
        }
        if ((paramBit(1) & dirtyMask) != 0) {
            writer.h("pivot", this.pivot);
        }
        if ((paramBit(2) & dirtyMask) != 0) {
            writer.h(BatteryManager.EXTRA_SCALE, this.f76082S);
        }
        if ((paramBit(3) & dirtyMask) != 0) {
            writer.i(Key.ROTATION, this.rotation);
        }
        if ((paramBit(4) & dirtyMask) != 0) {
            writer.e("texelSize", 1.0f / f10, 1.0f / f11);
        }
        if ((paramBit(5) & dirtyMask) != 0) {
            writer.d("fovDeg", this.fov);
        }
        if ((paramBit(6) & dirtyMask) != 0) {
            writer.d("aspect", f12);
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIPostTransform uIPostTransform = new UIPostTransform();
        uIPostTransform.position = new Vector2(this.position);
        uIPostTransform.pivot = new Vector2(this.pivot);
        uIPostTransform.scale = new Vector2(this.scale);
        uIPostTransform.rotation = new Vector3(this.rotation);
        return uIPostTransform;
    }
}

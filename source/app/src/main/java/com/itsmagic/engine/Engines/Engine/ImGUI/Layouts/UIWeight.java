package com.itsmagic.engine.Engines.Engine.ImGUI.Layouts;

import C5.b;
import D5.h;
import JAVARuntime.Component;
import android.content.Context;
import android.media.tv.TvContract;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Animation.c;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiComponent;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;

public class UIWeight extends ImGuiComponent {

    public static final String f78184F = "UIWeight";

    public static final Class f78185G = UIWeight.class;

    public Component f78186E;

    @Expose
    @f
    private float weight;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIWeight.f78185G;
        }

        @Override
        public String c() {
            return UIWeight.f78184F;
        }

        @Override
        public String e() {
            return "UI/Layouts";
        }

        @Override
        public String h(boolean translate) {
            return "Weight";
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIWeight.this.weight + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIWeight.this.setWeight(variable.float_value);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIWeight() {
        super(f78184F);
        this.weight = 1.0f;
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_linear_ver;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        List<C5.b> inspectorEntries = super.getInspectorEntries(context);
        if (inspectorEntries == null) {
            inspectorEntries = new SteppedArrayList<>();
        }
        if (context == null) {
            return inspectorEntries;
        }
        inspectorEntries.add(new C5.b(new b(), TvContract.PreviewPrograms.COLUMN_WEIGHT, b.a.SLFloat).d(this.f79250n, this, TvContract.PreviewPrograms.COLUMN_WEIGHT, c.FLOAT));
        return inspectorEntries;
    }

    @Override
    public String getTitle() {
        return "Weight";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIWeight;
    }

    @InterfaceC15237a
    public float getWeight() {
        return this.weight;
    }

    @Override
    public int iconPriority() {
        return 4;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78186E = run;
    }

    @InterfaceC15237a
    public void setWeight(float weight) {
        this.weight = Math.max(0.0f, weight);
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78186E;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIWeight uIWeight = new JAVARuntime.UIWeight(this);
        this.f78186E = uIWeight;
        return uIWeight;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIWeight uIWeight = new UIWeight();
        uIWeight.weight = this.weight;
        return uIWeight;
    }
}

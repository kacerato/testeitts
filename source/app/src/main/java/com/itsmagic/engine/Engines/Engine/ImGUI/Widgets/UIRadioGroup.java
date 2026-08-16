package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;

public class UIRadioGroup extends Component {

    public static final String f78681F = "UIRadioGroup";

    public static final Class f78682G = UIRadioGroup.class;

    public JAVARuntime.Component f78683E;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UIRadioGroup.f78682G;
        }

        @Override
        public String c() {
            return UIRadioGroup.f78681F;
        }

        @Override
        public String e() {
            return "UI/Utils";
        }

        @Override
        public String h(boolean translate) {
            return "RadioGroup";
        }
    }

    static {
        C13201a.b(new a());
    }

    public UIRadioGroup() {
        super(f78681F);
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_button_v3;
    }

    @Override
    public List<b> getInspectorEntries(Context context) {
        List<b> inspectorEntries = super.getInspectorEntries(context);
        return inspectorEntries == null ? new SteppedArrayList() : inspectorEntries;
    }

    @Override
    public String getTitle() {
        return "RadioGroup";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIRadioGroup;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78683E = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78683E;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIRadioGroup uIRadioGroup = new JAVARuntime.UIRadioGroup(this);
        this.f78683E = uIRadioGroup;
        return uIRadioGroup;
    }

    @Override
    public Component mo1248clone() {
        return new UIRadioGroup();
    }
}

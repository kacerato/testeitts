package com.itsmagic.engine.Engines.Engine.ComponentsV2.LOD;

import C5.b;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

public class LODTarget extends Component implements Serializable {

    public static final String f73473F = "LODTarget";

    public static final Class f73474G = LODTarget.class;

    public JAVARuntime.Component f73475E;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return LODTarget.f73474G;
        }

        @Override
        public String c() {
            return LODTarget.f73473F;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.LEVEL_OF_DETAIL);
        }

        @Override
        public String f() {
            return "LOD Target";
        }
    }

    static {
        C13201a.b(new a());
    }

    public LODTarget() {
        super(f73473F);
    }

    @Override
    public int getIconResource() {
        return R.drawable.fab;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_physics;
    }

    @Override
    public List<b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public String getTitle() {
        return "LOD Target";
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73475E = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73475E;
        if (component != null) {
            return component;
        }
        JAVARuntime.LODTarget lODTarget = new JAVARuntime.LODTarget(this);
        this.f73475E = lODTarget;
        return lODTarget;
    }

    @Override
    public Component mo1248clone() {
        return new LODTarget();
    }
}

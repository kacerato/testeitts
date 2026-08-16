package com.itsmagic.engine.Engines.Engine.ComponentsV2.PhysicsConstraint;

import C5.b;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;

public class ConstraintPivot extends Component {

    public static final String f74536F = "ConstraintPivot";

    public static final Class f74537G = ConstraintPivot.class;

    public JAVARuntime.Component f74538E;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return ConstraintPivot.f74537G;
        }

        @Override
        public String c() {
            return ConstraintPivot.f74536F;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PHYSICS);
        }

        @Override
        public String f() {
            return ConstraintPivot.f74536F;
        }
    }

    static {
        C13201a.b(new a());
    }

    public ConstraintPivot() {
        super(f74536F);
    }

    @Override
    public String getDisplayableTitle() {
        return f74536F;
    }

    @Override
    public int getIconResource() {
        return R.drawable.chain_2;
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
        return f74536F;
    }

    @Override
    public Component.e getType() {
        return Component.e.ConstraintPivot;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f74538E = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f74538E;
        if (component != null) {
            return component;
        }
        JAVARuntime.ConstraintPivot constraintPivot = new JAVARuntime.ConstraintPivot(this);
        this.f74538E = constraintPivot;
        return constraintPivot;
    }

    @Override
    public Component mo1248clone() {
        return new ConstraintPivot();
    }
}

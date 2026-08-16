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

public class ConstraintHitch extends Component {

    public static final String f74534E = "ConstraintHitch";

    public static final Class f74535F = ConstraintHitch.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return ConstraintHitch.f74535F;
        }

        @Override
        public String c() {
            return ConstraintHitch.f74534E;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PHYSICS);
        }

        @Override
        public String f() {
            return ConstraintHitch.f74534E;
        }
    }

    static {
        C13201a.b(new a());
    }

    public ConstraintHitch() {
        super(f74534E);
    }

    @Override
    public String getDisplayableTitle() {
        return f74534E;
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
        return f74534E;
    }

    @Override
    public Component.e getType() {
        return Component.e.ConstraintHitch;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public Component mo1248clone() {
        return new ConstraintHitch();
    }
}

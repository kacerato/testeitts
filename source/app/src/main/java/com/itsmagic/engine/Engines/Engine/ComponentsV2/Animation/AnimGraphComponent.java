package com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class AnimGraphComponent extends Component implements Serializable {

    public static final String f72957E = "AnimGraphComponent";

    public static final Class f72958F = AnimGraphComponent.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return AnimGraphComponent.f72958F;
        }

        @Override
        public String c() {
            return AnimGraphComponent.f72957E;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.ANIMATION);
        }

        @Override
        public String h(boolean translate) {
            return "AnimGraph";
        }
    }

    static {
        C13201a.b(new a());
    }

    public AnimGraphComponent() {
        super(f72957E);
    }
}

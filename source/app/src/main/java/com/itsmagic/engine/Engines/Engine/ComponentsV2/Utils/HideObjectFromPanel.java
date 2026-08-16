package com.itsmagic.engine.Engines.Engine.ComponentsV2.Utils;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import fb.AbstractC13203c;
import fb.C13201a;

public class HideObjectFromPanel extends Component {

    public static final String f77383E = "HideObjectFromPanel";

    public static final Class f77384F = HideObjectFromPanel.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return HideObjectFromPanel.f77384F;
        }

        @Override
        public String c() {
            return HideObjectFromPanel.f77383E;
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    static {
        C13201a.b(new a());
    }

    public HideObjectFromPanel() {
        super(f77383E);
    }

    @Override
    public String getTitle() {
        return f77383E;
    }
}

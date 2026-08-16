package com.itsmagic.engine.Engines.Engine.ComponentsV2.IgnoreSave;

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
import s8.InterfaceC15238b;

@InterfaceC15238b
public class IgnoreSave extends Component implements Serializable {

    public static final String f73315E = "IgnoreSave";

    public static final Class f73316F = IgnoreSave.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return IgnoreSave.f73316F;
        }

        @Override
        public String c() {
            return IgnoreSave.f73315E;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.UTILS);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.IGNORE_SAVE);
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    static {
        C13201a.b(new a());
    }

    public IgnoreSave() {
        super(f73315E);
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.IGNORE_SAVE);
    }

    @Override
    public int getIconResource() {
        return R.drawable.unknow_component_icon_2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    @Override
    public List<b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public String getTitle() {
        return f73315E;
    }

    @Override
    public Component.e getType() {
        return Component.e.IgnoreSave;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public Component mo1248clone() {
        return new IgnoreSave();
    }
}

package S9;

import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UITouchTrigger;

public class a {

    public tc.h f23017a;

    public int f23018b;

    public UITouchTrigger f23019c;

    public EnumC0554a f23020d;

    public enum EnumC0554a {
        IsOver
    }

    public a(tc.h touch, int idx, UITouchTrigger listener) {
        this.f23020d = EnumC0554a.IsOver;
        this.f23017a = touch;
        this.f23018b = idx;
        this.f23019c = listener;
    }

    public a(tc.h touch, int idx, UITouchTrigger listener, EnumC0554a mode) {
        EnumC0554a enumC0554a = EnumC0554a.IsOver;
        this.f23017a = touch;
        this.f23018b = idx;
        this.f23019c = listener;
        this.f23020d = mode;
    }
}

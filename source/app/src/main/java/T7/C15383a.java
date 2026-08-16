package t7;

import N7.c;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import r4.C15147a;
import s7.C15235a;
import s7.C15236b;
import u7.C15578a;

public class C15383a extends C15236b<C15235a> {

    public static final String f117182m0 = "ExemplePanel";

    public final C15578a f117183l0;

    public C15383a() {
        super("Example panel");
        C15578a c15578a = new C15578a();
        this.f117183l0 = c15578a;
        super.C1(c15578a);
    }

    public static FloatingPanelArea E1() {
        C15383a c15383a = new C15383a();
        float g10 = c.g(450);
        float f10 = c.f(T6.a.f24083g0);
        FloatingPanelArea n10 = C15147a.n(c15383a, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
        n10.T();
        return n10;
    }
}

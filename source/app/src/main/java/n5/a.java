package N5;

import N7.c;
import O5.b;
import android.view.MotionEvent;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import r4.C15147a;
import rc.C15169a;
import s7.C15236b;

public class a extends C15236b<b> {

    public static final String f15498o0 = "AccountItsmagicPanel";

    public final P5.a f15499l0;

    public final float f15500m0;

    public FloatingPanelArea f15501n0;

    public class ViewOnTouchListenerC0436a implements View.OnTouchListener {
        public ViewOnTouchListenerC0436a() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public a(float wantedHeight) {
        super(Lang.l(Lang.T.ACCOUNT_ITSMAGIC));
        P5.a aVar = new P5.a();
        this.f15499l0 = aVar;
        this.f15500m0 = wantedHeight;
        super.C1(aVar);
        super.B1(new b());
        this.f15501n0 = this.f15501n0;
    }

    public static FloatingPanelArea E1() {
        float g10 = c.g(450);
        float f10 = c.f(315);
        a aVar = new a(f10);
        FloatingPanelArea m10 = C15147a.m(aVar, g10, f10);
        m10.N1(false);
        m10.F1(false);
        m10.T();
        aVar.f15501n0 = m10;
        return m10;
    }

    @Override
    public View C0() {
        View C02 = super.C0();
        C02.setOnTouchListener(new ViewOnTouchListenerC0436a());
        return C02;
    }

    @Override
    public void n1() {
        super.n1();
        R0();
        if (C15169a.q()) {
            this.f15501n0.J1(1.0f);
        } else {
            this.f15501n0.J1(this.f15500m0);
        }
    }
}

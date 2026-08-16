package t4;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.HUBPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine.Activities.Editor.Panels.AIAgent.AIAgentChatPanel;
import com.itsmagic.engine.Activities.Editor.Panels.AIAgent.AIAgentWelcomePanel;
import i4.C13580a;
import i4.InterfaceC13584e;
import k0.i;
import org.json.JSONObject;

@i
public class C15379b extends HUBPanel {

    public static final String f116969y = "AIAgentHUB";

    public static final Class f116970z = C15379b.class;

    public class a extends Panel.h {
        @Override
        public Class b() {
            return C15379b.f116970z;
        }

        @Override
        public String c() {
            return C15379b.f116969y;
        }
    }

    public class RunnableC2011b implements Runnable {
        public RunnableC2011b() {
        }

        @Override
        public void run() {
            N7.c.D().w0(C15379b.this);
        }
    }

    public class c implements Runnable {

        public final AIAgentChatPanel f116972b;

        public c(final AIAgentChatPanel val$chatPanel) {
            this.f116972b = val$chatPanel;
        }

        @Override
        public void run() {
            C15379b.this.l(this.f116972b);
            this.f116972b.X1();
        }
    }

    public class d implements Runnable {

        public final AIAgentChatPanel f116974b;

        public d(final AIAgentChatPanel val$chatPanel) {
            this.f116974b = val$chatPanel;
        }

        @Override
        public void run() {
            C15379b.this.l(this.f116974b);
            this.f116974b.X1();
        }
    }

    public class e implements Runnable {

        public final AIAgentChatPanel f116976b;

        public e(final AIAgentChatPanel val$chatPanel) {
            this.f116976b = val$chatPanel;
        }

        @Override
        public void run() {
            C15379b.this.l(this.f116976b);
        }
    }

    static {
        Panel.u(new a());
    }

    public C15379b() {
        super(f116969y, Lang.l(Lang.T.AI_HUB));
        G0();
    }

    public static C15379b M0() {
        N7.c.h0();
        Panel K10 = N7.c.D().K(C15379b.class);
        C15379b c15379b = K10 instanceof C15379b ? (C15379b) K10 : null;
        if (c15379b != null) {
            N7.c.D().w0(c15379b);
            c15379b.G0();
            return c15379b;
        }
        C15379b c15379b2 = new C15379b();
        N7.c.D().v(c15379b2);
        N7.c.c0(new RunnableC2011b());
        return c15379b2;
    }

    public final void G0() {
        if (J0() != null) {
            return;
        }
        A0(new AIAgentWelcomePanel());
    }

    public AIAgentChatPanel H0(String sessionId) {
        if (sessionId != null && !sessionId.isEmpty()) {
            for (int i10 = 0; i10 < E0(); i10++) {
                Panel D02 = D0(i10);
                if (D02 != null && (D02.M() instanceof AIAgentChatPanel)) {
                    AIAgentChatPanel aIAgentChatPanel = (AIAgentChatPanel) D02.M();
                    if (sessionId.equals(aIAgentChatPanel.S1())) {
                        return aIAgentChatPanel;
                    }
                }
            }
        }
        return null;
    }

    public AIAgentChatPanel I0(String sessionId) {
        if (sessionId == null || sessionId.isEmpty()) {
            return null;
        }
        AIAgentChatPanel H02 = H0(sessionId);
        if (H02 != null) {
            l(H02);
            return H02;
        }
        d.b j10 = com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.j(sessionId);
        if (j10 == null || j10.d() == null) {
            return null;
        }
        AIAgentChatPanel aIAgentChatPanel = new AIAgentChatPanel(j10.j(), sessionId);
        aIAgentChatPanel.P1(j10.d());
        A0(aIAgentChatPanel);
        N7.c.c0(new e(aIAgentChatPanel));
        return aIAgentChatPanel;
    }

    public AIAgentWelcomePanel J0() {
        for (int i10 = 0; i10 < E0(); i10++) {
            Panel D02 = D0(i10);
            if (D02 != null && (D02.M() instanceof AIAgentWelcomePanel)) {
                return (AIAgentWelcomePanel) D02.M();
            }
        }
        return null;
    }

    public AIAgentChatPanel K0(g specialist) {
        AIAgentChatPanel aIAgentChatPanel = new AIAgentChatPanel(specialist);
        A0(aIAgentChatPanel);
        N7.c.c0(new c(aIAgentChatPanel));
        return aIAgentChatPanel;
    }

    public AIAgentChatPanel L0(g specialist, String sessionId) {
        AIAgentChatPanel aIAgentChatPanel = new AIAgentChatPanel(specialist, sessionId);
        A0(aIAgentChatPanel);
        N7.c.c0(new d(aIAgentChatPanel));
        return aIAgentChatPanel;
    }

    @Override
    public boolean e0(String json, JSONObject jsonObj) {
        boolean e02 = super.e0(json, jsonObj);
        F0(Lang.l(Lang.T.AI_HUB));
        G0();
        return e02;
    }

    @Override
    public void x0(LinearLayout parent, FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, float x10, float y10, float w10, float h10, float ax, float ay, float aw, float ah2, FrameLayout panelContentLayout, View fullPanelArea, InterfaceC13584e panelsControllerListener) {
        G0();
        super.x0(parent, screenArea, activity, context, layoutInflater, editor3DScreen, x10, y10, w10, h10, ax, ay, aw, ah2, panelContentLayout, fullPanelArea, panelsControllerListener);
    }
}

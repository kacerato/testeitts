package t4;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine.Activities.Editor.Panels.AIAgent.AIAgentChatPanel;
import com.itsmagic.engine.Activities.Editor.Panels.AIAgent.AIAgentWelcomePanel;
import k0.i;
import r4.C15147a;

@i
public final class C15378a {

    public static final int f116962a = 300;

    public static final int f116963b = 760;

    public class RunnableC2010a implements Runnable {

        public final FloatingPanelArea f116964b;

        public RunnableC2010a(final FloatingPanelArea val$floatingPanelArea) {
            this.f116964b = val$floatingPanelArea;
        }

        @Override
        public void run() {
            C15378a.e(this.f116964b);
        }
    }

    public class b implements Runnable {

        public final FloatingPanelArea f116965b;

        public final AIAgentChatPanel f116966c;

        public b(final FloatingPanelArea val$hub, final AIAgentChatPanel val$chatPanel) {
            this.f116965b = val$hub;
            this.f116966c = val$chatPanel;
        }

        @Override
        public void run() {
            this.f116965b.D0(this.f116966c);
            this.f116966c.X1();
            C15378a.e(this.f116965b);
        }
    }

    public class c implements Runnable {

        public final FloatingPanelArea f116967b;

        public final AIAgentChatPanel f116968c;

        public c(final FloatingPanelArea val$hubFinal, final AIAgentChatPanel val$chatPanel) {
            this.f116967b = val$hubFinal;
            this.f116968c = val$chatPanel;
        }

        @Override
        public void run() {
            this.f116967b.D0(this.f116968c);
            C15378a.e(this.f116967b);
        }
    }

    public static AIAgentChatPanel b(FloatingPanelArea area, String sessionId) {
        if (area != null && sessionId != null && !sessionId.isEmpty()) {
            for (int i10 = 0; i10 < area.B1(); i10++) {
                Panel A12 = area.A1(i10);
                if (A12 != null && (A12.M() instanceof AIAgentChatPanel)) {
                    AIAgentChatPanel aIAgentChatPanel = (AIAgentChatPanel) A12.M();
                    if (sessionId.equals(aIAgentChatPanel.S1())) {
                        return aIAgentChatPanel;
                    }
                }
            }
        }
        return null;
    }

    public static FloatingPanelArea c() {
        for (int i10 = 0; i10 < N7.c.D().M(); i10++) {
            FloatingPanelArea O10 = N7.c.D().O(i10);
            if (g(O10)) {
                return O10;
            }
        }
        return null;
    }

    public static AIAgentWelcomePanel d(FloatingPanelArea area) {
        if (area == null) {
            return null;
        }
        for (int i10 = 0; i10 < area.B1(); i10++) {
            Panel A12 = area.A1(i10);
            if (A12 != null && (A12.M() instanceof AIAgentWelcomePanel)) {
                AIAgentWelcomePanel aIAgentWelcomePanel = (AIAgentWelcomePanel) A12.M();
                if (aIAgentWelcomePanel.s1()) {
                    return aIAgentWelcomePanel;
                }
            }
        }
        return null;
    }

    public static void e(FloatingPanelArea area) {
        if (area == null) {
            return;
        }
        if (area.M() != null) {
            N7.c.D().w(area.M());
        }
        AIAgentWelcomePanel d10 = d(area);
        if (d10 != null) {
            area.D0(d10);
        }
    }

    public static AIAgentChatPanel f(String sessionId) {
        if (sessionId == null || sessionId.isEmpty()) {
            return null;
        }
        FloatingPanelArea c10 = c();
        if (c10 == null) {
            c10 = j();
        }
        AIAgentChatPanel b10 = b(c10, sessionId);
        if (b10 != null) {
            c10.D0(b10);
            e(c10);
            return b10;
        }
        d.b j10 = d.j(sessionId);
        if (j10 == null || j10.d() == null) {
            return null;
        }
        AIAgentChatPanel aIAgentChatPanel = new AIAgentChatPanel(j10.j(), sessionId);
        aIAgentChatPanel.P1(j10.d());
        c10.g(aIAgentChatPanel);
        N7.c.c0(new c(c10, aIAgentChatPanel));
        return aIAgentChatPanel;
    }

    public static boolean g(FloatingPanelArea area) {
        if (area == null) {
            return false;
        }
        for (int i10 = 0; i10 < area.B1(); i10++) {
            Panel A12 = area.A1(i10);
            if (A12 != null) {
                EditorPanel M10 = A12.M();
                if (((M10 instanceof AIAgentWelcomePanel) && ((AIAgentWelcomePanel) M10).s1()) || (M10 instanceof AIAgentChatPanel)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static AIAgentChatPanel h(g specialist) {
        return i(specialist, null);
    }

    public static AIAgentChatPanel i(g specialist, String sessionId) {
        FloatingPanelArea j10 = j();
        if (j10 == null) {
            return null;
        }
        AIAgentChatPanel aIAgentChatPanel = sessionId == null ? new AIAgentChatPanel(specialist) : new AIAgentChatPanel(specialist, sessionId);
        j10.g(aIAgentChatPanel);
        N7.c.c0(new b(j10, aIAgentChatPanel));
        return aIAgentChatPanel;
    }

    public static FloatingPanelArea j() {
        N7.c.h0();
        FloatingPanelArea c10 = c();
        if (c10 != null) {
            e(c10);
            return c10;
        }
        FloatingPanelArea n10 = C15147a.n(new AIAgentWelcomePanel(true), 1.0f, 0.0f, N7.c.g(300), N7.c.f(f116963b));
        N7.c.c0(new RunnableC2010a(n10));
        return n10;
    }
}

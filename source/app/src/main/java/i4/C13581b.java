package i4;

import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.PanelsController;
import com.itsmagic.engine.Activities.Editor.Panels.NoCode.NoCodePanel;
import com.itsmagic.engine.Activities.Editor.Panels.Scripting.ScriptingHUB;
import com.itsmagic.engine.Activities.Editor.Panels.ShaderGraph.ShaderGraphPanel;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import n4.C14351c;
import n4.C14352d;
import n4.f;

public class C13581b {

    public static final List<InterfaceC1750b> f91409a = new a();

    public class a extends SteppedArrayList<InterfaceC1750b> {

        public class C1747a implements InterfaceC1750b {

            public class RunnableC1748a implements Runnable {

                public final ScriptingHUB f91411b;

                public final f f91412c;

                public RunnableC1748a(final ScriptingHUB val$hub, final f val$panelIntent) {
                    this.f91411b = val$hub;
                    this.f91412c = val$panelIntent;
                }

                @Override
                public void run() {
                    this.f91411b.q0(this.f91412c);
                }
            }

            public C1747a() {
            }

            @Override
            public boolean a(f panelIntent, PanelsController panelsController) {
                if (!(panelIntent instanceof C14351c) || !ScriptingHUB.K0(((C14351c) panelIntent).f97724a)) {
                    return false;
                }
                ScriptingHUB scriptingHUB = new ScriptingHUB();
                N7.c.c0(new RunnableC1748a(scriptingHUB, panelIntent));
                panelsController.v(scriptingHUB);
                return true;
            }
        }

        public class C1749b implements InterfaceC1750b {
            public C1749b() {
            }

            @Override
            public boolean a(f panelIntent, PanelsController panelsController) {
                if (!(panelIntent instanceof C14352d)) {
                    return false;
                }
                C14352d c14352d = (C14352d) panelIntent;
                EditorPanel editorPanel = (NoCodePanel) panelsController.G(NoCodePanel.class);
                if (editorPanel != null) {
                    editorPanel.O0(c14352d);
                    panelsController.v0(editorPanel);
                    return true;
                }
                NoCodePanel noCodePanel = new NoCodePanel();
                String str = c14352d.f97726b;
                if (str != null) {
                    noCodePanel.v1(str);
                } else {
                    noCodePanel.u1(c14352d.f97725a);
                }
                FloatingPanelArea floatingPanelArea = new FloatingPanelArea(0.1f, 0.1f, 0.8f, 0.8f);
                floatingPanelArea.g(noCodePanel);
                N7.c.D().t(floatingPanelArea);
                return true;
            }
        }

        public class c implements InterfaceC1750b {
            public c() {
            }

            @Override
            public boolean a(f panelIntent, PanelsController panelsController) {
                if (!(panelIntent instanceof n4.e)) {
                    return false;
                }
                n4.e eVar = (n4.e) panelIntent;
                EditorPanel editorPanel = (ShaderGraphPanel) panelsController.G(ShaderGraphPanel.class);
                if (editorPanel != null) {
                    editorPanel.O0(eVar);
                    panelsController.v0(editorPanel);
                    return true;
                }
                ShaderGraphPanel shaderGraphPanel = new ShaderGraphPanel();
                String str = eVar.f97728b;
                if (str != null) {
                    shaderGraphPanel.s1(str);
                } else {
                    shaderGraphPanel.t1(eVar.f97727a);
                }
                FloatingPanelArea floatingPanelArea = new FloatingPanelArea(0.1f, 0.1f, 0.8f, 0.8f);
                floatingPanelArea.g(shaderGraphPanel);
                N7.c.D().t(floatingPanelArea);
                return true;
            }
        }

        public a() {
            add(new C1747a());
            add(new C1749b());
            add(new c());
        }
    }

    public interface InterfaceC1750b {
        boolean a(f panelIntent, PanelsController panelsController);
    }

    public static boolean a(f panelIntent, PanelsController panelsController) {
        int i10 = 0;
        while (true) {
            List<InterfaceC1750b> list = f91409a;
            if (i10 >= list.size()) {
                return false;
            }
            if (list.get(i10).a(panelIntent, panelsController)) {
                return true;
            }
            i10++;
        }
    }
}

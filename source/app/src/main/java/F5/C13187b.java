package f5;

import M7.g;
import M7.k;
import android.app.Activity;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import java.util.List;
import l5.C14052a;

public class C13187b extends C13189d {
    @Override
    public String i() {
        return Lang.l(Lang.T.OBJECT_MODE);
    }

    @Override
    public void o(List<g> elements, Activity activity, Panel3DView panel3DView) {
        super.o(elements, activity, panel3DView);
    }

    @Override
    public void p(List<g> elements, Activity activity, Panel3DView panel3DView) {
        super.r(elements, activity, panel3DView);
        C14052a.f(elements, activity, panel3DView);
        C14052a.h(elements, activity, panel3DView);
    }

    @Override
    public void r(List<g> elements, Activity activity, Panel3DView panel3DView) {
        super.r(elements, activity, panel3DView);
        elements.add(new k(Nc.b.l0(2.0f, activity)));
        C14052a.d(elements, activity, panel3DView);
        C14052a.c(elements, activity, panel3DView);
    }
}

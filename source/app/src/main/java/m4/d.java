package m4;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.PanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine2.R;
import i4.C13580a;
import java.util.Iterator;
import java.util.List;

public class d extends FloatingPanelArea {
    public d(float x10, float y10, float width, float height) {
        super(x10, y10, width, height);
        T();
        N1(false);
    }

    @Override
    public PanelArea g(EditorPanel panel) {
        panel.a1(false);
        return super.g(panel);
    }

    @Override
    public PanelArea h(Panel panel) {
        panel.t0(false);
        return super.h(panel);
    }

    @Override
    public PanelArea i(List<Panel> panel) {
        Iterator<Panel> it = panel.iterator();
        while (it.hasNext()) {
            it.next().t0(false);
        }
        return super.i(panel);
    }

    @Override
    public View s1(FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        return super.V(screenArea, activity, context, layoutInflater, editor3DScreen, R.layout.editor_transparent_floating_panel, false);
    }
}

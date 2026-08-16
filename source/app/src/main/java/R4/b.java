package R4;

import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

public abstract class b {
    public abstract boolean a(GameObject selectedObject, Panel3DView panel3DView);

    public abstract N4.a b();

    public final boolean c(GameObject selectedObject, Panel3DView panel3DView) {
        if (C13317e.J(selectedObject) && !selectedObject.c1()) {
            return panel3DView.F1() == Panel3DView.j.All ? panel3DView.E1(b()) : a(selectedObject, panel3DView);
        }
        return false;
    }
}

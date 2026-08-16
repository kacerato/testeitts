package S4;

import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

@Deprecated
public class a extends R4.b {
    @Override
    public boolean a(GameObject selectedObject, Panel3DView panel3DView) {
        C13317e.J(selectedObject);
        return false;
    }

    @Override
    public N4.a b() {
        return N4.a.SideScale;
    }
}

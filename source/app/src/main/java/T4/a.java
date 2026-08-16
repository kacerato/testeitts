package T4;

import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

public class a extends R4.b {
    @Override
    public boolean a(GameObject selectedObject, Panel3DView panel3DView) {
        if (!C13317e.J(selectedObject)) {
            return false;
        }
        if (panel3DView.F1() == Panel3DView.j.All) {
            return true;
        }
        return (panel3DView.snapToSurfaceConfigs.useOldAxisMode || panel3DView.F1() != Panel3DView.j.SnapToSurface || panel3DView.snapToSurfaceConfigs.snapToSurface) ? false : true;
    }

    @Override
    public N4.a b() {
        return N4.a.SideScale;
    }
}

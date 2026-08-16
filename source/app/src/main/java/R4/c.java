package R4;

import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

public abstract class c extends b {
    @Override
    public boolean a(GameObject selectedObject, Panel3DView panel3DView) {
        if (!C13317e.J(selectedObject)) {
            return false;
        }
        if (panel3DView.F1() == Panel3DView.j.All) {
            return true;
        }
        return (panel3DView.snapToSurfaceConfigs.useOldAxisMode && panel3DView.F1() == Panel3DView.j.SnapToSurface && !panel3DView.snapToSurfaceConfigs.snapToSurface) || panel3DView.F1() == Panel3DView.j.Position;
    }
}

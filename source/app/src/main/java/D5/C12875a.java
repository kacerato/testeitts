package d5;

import N4.d;
import R4.b;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;

public class C12875a extends b {
    @Override
    public boolean a(GameObject selectedObject, Panel3DView panel3DView) {
        try {
            if (panel3DView instanceof d) {
                return ((d) panel3DView).d2().d();
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override
    public N4.a b() {
        return N4.a.MousePicker;
    }
}

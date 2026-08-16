package V9;

import com.itsmagic.engine.Engines.Engine.ComponentUtils.ObjectReference;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.io.Serializable;

public class p extends ObjectReference implements Serializable {

    public UIRect f26713e;

    public p() {
    }

    @Override
    public p clone() {
        return new p(this.guid);
    }

    public UIRect l() {
        j();
        GameObject e10 = e();
        UIRect uIRect = this.f26713e;
        if (uIRect != null && uIRect.f79250n != e10) {
            this.f26713e = null;
        }
        if (this.f26713e == null && e10 != null) {
            this.f26713e = (UIRect) e10.c0(Component.e.UIRect);
        }
        return this.f26713e;
    }

    public p(String guid) {
        super(guid);
    }

    public p(String guid, GameObject object) {
        super(guid, object);
    }
}

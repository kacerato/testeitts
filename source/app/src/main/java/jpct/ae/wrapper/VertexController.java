package jpct.ae.wrapper;

import anywheresoftware.b4a.BA;
import com.threed.jpct.GenericVertexController;

@BA.Hide
class VertexController extends GenericVertexController {
    private static final long serialVersionUID = 1;

    private final BA f94405ba;
    private final String eventName;
    private final JGenericVertexController sender;

    public VertexController(BA ba2, JGenericVertexController jGenericVertexController, String str) {
        this.f94405ba = ba2;
        this.eventName = str;
        this.sender = jGenericVertexController;
    }

    @Override
    public void apply() {
        vcCallBack(1);
    }

    @Override
    public void cleanup() {
        vcCallBack(3);
    }

    @Override
    public boolean setup() {
        vcCallBack(2);
        return super.setup();
    }

    public void vcCallBack(int i10) {
        this.f94405ba.raiseEvent(this.sender, (String.valueOf(this.eventName) + "_VertexController").toLowerCase(BA.cul), new Object[]{Integer.valueOf(i10)});
    }
}

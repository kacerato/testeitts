package jpct.ae.wrapper;

import anywheresoftware.b4a.BA;
import com.threed.jpct.IPaintListener;

@BA.Hide
class PaintListener implements IPaintListener {
    private static final long serialVersionUID = 1;

    private final BA f94401ba;
    private final String eventName;
    private final JPaintListener sender;

    public PaintListener(BA ba2, JPaintListener jPaintListener, String str) {
        this.eventName = str;
        this.f94401ba = ba2;
        this.sender = jPaintListener;
    }

    @Override
    public void finishedPainting() {
        this.f94401ba.raiseEvent(this.sender, (String.valueOf(this.eventName) + "_PaintListener").toLowerCase(BA.cul), new Object[]{0});
    }

    @Override
    public void startPainting() {
        this.f94401ba.raiseEvent(this.sender, (String.valueOf(this.eventName) + "_PaintListener").toLowerCase(BA.cul), new Object[]{1});
    }
}

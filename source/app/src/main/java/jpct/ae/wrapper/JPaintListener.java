package jpct.ae.wrapper;

import android.util.Log;
import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;

@BA.ShortName("JpctPaintListener")
public class JPaintListener extends AbsObjectWrapper<PaintListener> {
    public static final int EVENT_FINISHED() {
        return 0;
    }

    public static final int EVENT_START() {
        return 1;
    }

    public void Initialize(BA ba2, String str) {
        if (ba2.subExists((String.valueOf(str) + "_PaintListener").toLowerCase(BA.cul))) {
            setObject(new PaintListener(ba2, this, str));
            return;
        }
        Log.e("JPCT", "Sub " + str + "_PaintListener - Doesn't exist!");
    }

    @BA.Hide
    public void finishedPainting() {
        ((PaintListener) getObject()).finishedPainting();
    }

    @BA.Hide
    public void startPainting() {
        ((PaintListener) getObject()).startPainting();
    }
}

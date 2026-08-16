package jpct.ae.wrapper;

import android.util.Log;
import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.FrameBuffer;

@BA.ShortName("JpctPostProcessor")
public class JPostProcessor extends AbsObjectWrapper<PostProcessor> {
    public static final int EVENT_DISPOSE() {
        return 3;
    }

    public static final int EVENT_INIT() {
        return 1;
    }

    public static final int EVENT_PROCESS() {
        return 2;
    }

    public void Initialize(BA ba2, String str) {
        if (ba2.subExists((String.valueOf(str) + "_PostProcessor").toLowerCase(BA.cul))) {
            setObject(new PostProcessor(ba2, this, str));
            return;
        }
        Log.e("JPCT", "Sub " + str + "_PostProcessor - Doesn't exist!");
    }

    @BA.Hide
    public void dispose() {
        ((PostProcessor) getObject()).dispose();
    }

    @BA.Hide
    public void init(FrameBuffer frameBuffer) {
        ((PostProcessor) getObject()).init(frameBuffer);
    }

    @BA.Hide
    public boolean isInitialized() {
        return ((PostProcessor) getObject()).isInitialized();
    }

    @BA.Hide
    public void process() {
        ((PostProcessor) getObject()).process();
    }
}

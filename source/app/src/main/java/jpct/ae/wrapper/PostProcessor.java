package jpct.ae.wrapper;

import anywheresoftware.b4a.BA;
import com.threed.jpct.FrameBuffer;
import com.threed.jpct.IPostProcessor;

@BA.Hide
class PostProcessor implements IPostProcessor {

    private final BA f94402ba;
    private FrameBuffer buffer;
    private final String eventName;
    private boolean isInitialized;
    private final JPostProcessor sender;

    public PostProcessor(BA ba2, JPostProcessor jPostProcessor, String str) {
        this.eventName = str;
        this.f94402ba = ba2;
        this.sender = jPostProcessor;
    }

    private void callBack(int i10) {
        this.f94402ba.raiseEvent(this.sender, (String.valueOf(this.eventName) + "_PostProcessor").toLowerCase(BA.cul), new Object[]{Integer.valueOf(i10), this.buffer});
    }

    @Override
    public void dispose() {
        callBack(3);
        this.isInitialized = false;
    }

    @Override
    public void init(FrameBuffer frameBuffer) {
        this.isInitialized = true;
        this.buffer = frameBuffer;
        callBack(1);
    }

    @Override
    public boolean isInitialized() {
        return this.isInitialized;
    }

    @Override
    public void process() {
        callBack(2);
    }
}

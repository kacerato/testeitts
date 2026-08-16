package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.DepthBuffer;

@BA.ShortName("JpctDepthBuffer")
public class JDepthBuffer extends AbsObjectWrapper<DepthBuffer> {
    public void Initialize(int i10, int i11) {
        setObject(new DepthBuffer(i10, i11));
    }

    public int getHeight() {
        return ((DepthBuffer) getObject()).getHeight();
    }

    public int getWidth() {
        return ((DepthBuffer) getObject()).getWidth();
    }
}

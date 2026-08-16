package jpct.ae.wrapper;

import anywheresoftware.b4a.BA;
import com.threed.jpct.GLSLShader;
import com.threed.jpct.IRenderHook;
import com.threed.jpct.Object3D;

@BA.Hide
class RenderHook implements IRenderHook {
    public static final int EVENT_AFTER_RENDERING = 2;
    public static final int EVENT_BEFORE_RENDERING = 1;
    public static final int EVENT_DISPOSE = 3;
    public static final int EVENT_SET_OBJECT3D = 4;
    public static final int EVENT_SET_SHADER = 6;
    public static final int EVENT_SET_TRANSPARENCY = 5;

    private final BA f94403ba;
    private final String eventName;
    private final boolean repeatRendering;
    private final JRenderHook sender;

    public RenderHook(BA ba2, JRenderHook jRenderHook, String str, boolean z10) {
        this.eventName = str;
        this.f94403ba = ba2;
        this.repeatRendering = z10;
        this.sender = jRenderHook;
    }

    private void callBack(int i10, int i11, Object3D object3D, float f10, GLSLShader gLSLShader) {
        this.f94403ba.raiseEvent(this.sender, (String.valueOf(this.eventName) + "_RenderHook").toLowerCase(BA.cul), new Object[]{Integer.valueOf(i10), Integer.valueOf(i11), object3D, Float.valueOf(f10), gLSLShader});
    }

    @Override
    public void afterRendering(int i10) {
        callBack(2, i10, null, -1.0f, null);
    }

    @Override
    public void beforeRendering(int i10) {
        callBack(1, i10, null, -1.0f, null);
    }

    @Override
    public void onDispose() {
        callBack(3, -1, null, -1.0f, null);
    }

    @Override
    public boolean repeatRendering() {
        return this.repeatRendering;
    }

    @Override
    public void setCurrentObject3D(Object3D object3D) {
        callBack(4, -1, object3D, -1.0f, null);
    }

    @Override
    public void setCurrentShader(GLSLShader gLSLShader) {
        callBack(6, -1, null, -1.0f, gLSLShader);
    }

    @Override
    public void setTransparency(float f10) {
        callBack(5, -1, null, f10, null);
    }
}

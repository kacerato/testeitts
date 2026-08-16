package jpct.ae.wrapper;

import android.util.Log;
import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.GLSLShader;
import com.threed.jpct.Object3D;

@BA.ShortName("JpctRenderHook")
public class JRenderHook extends AbsObjectWrapper<RenderHook> {
    public static final int EVENT_AFTER_RENDERING() {
        return 2;
    }

    public static final int EVENT_BEFORE_RENDERING() {
        return 1;
    }

    public static final int EVENT_DISPOSE() {
        return 3;
    }

    public static final int EVENT_SET_OBJECT3D() {
        return 4;
    }

    public static final int EVENT_SET_SHADER() {
        return 6;
    }

    public static final int EVENT_SET_TRANSPARENCY() {
        return 5;
    }

    public void Initialize(BA ba2, String str, boolean z10) {
        if (ba2.subExists((String.valueOf(str) + "_RenderHook").toLowerCase(BA.cul))) {
            setObject(new RenderHook(ba2, this, str, z10));
            return;
        }
        Log.e("JPCT", "Sub " + str + "_RenderHook - Doesn't exist!");
    }

    @BA.Hide
    public void afterRendering(int i10) {
        ((RenderHook) getObject()).afterRendering(i10);
    }

    @BA.Hide
    public void beforeRendering(int i10) {
        ((RenderHook) getObject()).beforeRendering(i10);
    }

    @BA.Hide
    public void onDispose() {
        ((RenderHook) getObject()).onDispose();
    }

    @BA.Hide
    public boolean repeatRendering() {
        return ((RenderHook) getObject()).repeatRendering();
    }

    @BA.Hide
    public void setCurrentObject3D(Object3D object3D) {
        ((RenderHook) getObject()).setCurrentObject3D(object3D);
    }

    @BA.Hide
    public void setCurrentShader(GLSLShader gLSLShader) {
        ((RenderHook) getObject()).setCurrentShader(gLSLShader);
    }

    @BA.Hide
    public void setTransparency(float f10) {
        ((RenderHook) getObject()).setTransparency(f10);
    }
}

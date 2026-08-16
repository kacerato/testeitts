package jpct.ae.wrapper;

import android.opengl.GLSurfaceView;
import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.util.AAConfigChooser;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

@BA.ShortName("JpctAAConfigChooser")
public class JAAConfigChooser extends AbsObjectWrapper<AAConfigChooser> {
    public void Initialize(GLSurfaceView gLSurfaceView) {
        setObject(new AAConfigChooser(gLSurfaceView));
    }

    public void Initialize2(GLSurfaceView gLSurfaceView, boolean z10) {
        setObject(new AAConfigChooser(gLSurfaceView, z10));
    }

    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        return ((AAConfigChooser) getObject()).chooseConfig(egl10, eGLDisplay);
    }
}

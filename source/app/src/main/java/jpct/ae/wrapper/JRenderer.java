package jpct.ae.wrapper;

import android.opengl.GLSurfaceView;
import android.util.Log;
import anywheresoftware.b4a.BA;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

@BA.Hide
public class JRenderer implements GLSurfaceView.Renderer {

    public static GL10 f94399gl;
    public static int glHeight;
    public static int glWidth;

    private final BA f94400ba;
    private final String eventName;

    public JRenderer(BA ba2, String str) {
        this.eventName = str;
        this.f94400ba = ba2;
    }

    @Override
    public void onDrawFrame(GL10 gl10) {
        if (this.f94400ba.subExists((String.valueOf(this.eventName) + "_SurfaceDraw").toLowerCase(BA.cul))) {
            this.f94400ba.raiseEvent(this, (String.valueOf(this.eventName) + "_SurfaceDraw").toLowerCase(BA.cul), new Object[0]);
            return;
        }
        Log.e("JPCT", "Sub " + this.eventName + "_SurfaceDraw - Doesn't Exist!");
    }

    @Override
    public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
        f94399gl = gl10;
        glWidth = i10;
        glHeight = i11;
        if (this.f94400ba.subExists((String.valueOf(this.eventName) + "_SurfaceChanged").toLowerCase(BA.cul))) {
            this.f94400ba.raiseEvent(this, (String.valueOf(this.eventName) + "_SurfaceChanged").toLowerCase(BA.cul), new Object[]{Integer.valueOf(i10), Integer.valueOf(i11)});
            return;
        }
        Log.e("JPCT", "Sub " + this.eventName + "_SurfaceChanged - Doesn't Exist");
    }

    @Override
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        f94399gl = gl10;
        if (this.f94400ba.subExists((String.valueOf(this.eventName) + "_SurfaceCreated").toLowerCase(BA.cul))) {
            this.f94400ba.raiseEvent(this, (String.valueOf(this.eventName) + "_SurfaceCreated").toLowerCase(BA.cul), new Object[0]);
            return;
        }
        Log.e("JPCT", "Sub " + this.eventName + "_SurfaceCreated - Doesn't Exist");
    }
}

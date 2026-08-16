package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Camera;
import com.threed.jpct.FrameBuffer;
import com.threed.jpct.Interact2D;
import com.threed.jpct.Object3D;
import com.threed.jpct.SimpleVector;

@BA.ShortName("JpctInteract2D")
public class JInteract2D extends AbsObjectWrapper<Interact2D> {
    public static SimpleVector project3D2D(Camera camera, FrameBuffer frameBuffer, SimpleVector simpleVector) {
        return Interact2D.project3D2D(camera, frameBuffer, simpleVector);
    }

    public static SimpleVector project3D2D2(Camera camera, FrameBuffer frameBuffer, SimpleVector simpleVector, SimpleVector simpleVector2) {
        return Interact2D.project3D2D(camera, frameBuffer, simpleVector, simpleVector2);
    }

    public static SimpleVector projectCenter3D2D(FrameBuffer frameBuffer, Object3D object3D) {
        return Interact2D.projectCenter3D2D(frameBuffer, object3D);
    }

    public static SimpleVector projectCenter3D2D2(Camera camera, FrameBuffer frameBuffer, Object3D object3D) {
        return Interact2D.projectCenter3D2D(camera, frameBuffer, object3D);
    }

    public static SimpleVector reproject2D3D(Camera camera, FrameBuffer frameBuffer, int i10, int i11) {
        return Interact2D.reproject2D3D(camera, frameBuffer, i10, i11);
    }

    public static SimpleVector reproject2D3D2(Camera camera, FrameBuffer frameBuffer, int i10, int i11, SimpleVector simpleVector) {
        return Interact2D.reproject2D3D(camera, frameBuffer, i10, i11, simpleVector);
    }

    public static SimpleVector reproject2D3D3(Camera camera, FrameBuffer frameBuffer, int i10, int i11, float f10) {
        return Interact2D.reproject2D3D(camera, frameBuffer, i10, i11, f10);
    }

    public static SimpleVector reproject2D3D4(Camera camera, FrameBuffer frameBuffer, int i10, int i11, float f10, SimpleVector simpleVector) {
        return Interact2D.reproject2D3D(camera, frameBuffer, i10, i11, f10, simpleVector);
    }

    public static SimpleVector reproject2D3DWS(Camera camera, FrameBuffer frameBuffer, int i10, int i11) {
        return Interact2D.reproject2D3DWS(camera, frameBuffer, i10, i11);
    }

    public static SimpleVector reproject2D3DWS2(Camera camera, FrameBuffer frameBuffer, int i10, int i11, SimpleVector simpleVector) {
        return Interact2D.reproject2D3DWS(camera, frameBuffer, i10, i11, simpleVector);
    }
}

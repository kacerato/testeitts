package jpct.ae.wrapper;

import android.opengl.GLSurfaceView;
import android.util.Log;
import anywheresoftware.b4a.BA;
import anywheresoftware.b4a.objects.ViewWrapper;
import com.threed.jpct.util.AAConfigChooser;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

@BA.ActivityObject
@BA.ShortName("JpctSurface")
public class JGLSurfaceView extends ViewWrapper<GLSurfaceView> {
    public static final int DEBUG_CHECK_GL_ERROR() {
        return 1;
    }

    public static final int DEBUG_LOG_GL_CALLS() {
        return 2;
    }

    public static final int OPAQUE() {
        return -1;
    }

    public static final int RENDER_CONTINUOUSLY() {
        return 1;
    }

    public static final int RENDER_WHEN_DIRTY() {
        return 0;
    }

    public static final int RGBA_4444() {
        return 7;
    }

    public static final int RGBA_5551() {
        return 6;
    }

    public static final int RGBA_8888() {
        return 1;
    }

    public static final int RGBX_8888() {
        return 2;
    }

    public static final int RGB_332() {
        return 11;
    }

    public static final int RGB_565() {
        return 4;
    }

    public static final int RGB_888() {
        return 3;
    }

    public static final int TRANSLUCENT() {
        return -3;
    }

    public static final int TRANSPARENT() {
        return -2;
    }

    public int BufferHeight() {
        return JRenderer.glHeight;
    }

    public int BufferWidth() {
        return JRenderer.glWidth;
    }

    public void Initialize(BA ba2, String str, int i10, int i11) {
        super.Initialize(ba2, str);
        ((GLSurfaceView) getObject()).setEGLConfigChooser(true);
        if (i10 == 2) {
            ((GLSurfaceView) getObject()).setEGLContextClientVersion(i10);
        }
        ((GLSurfaceView) getObject()).setRenderer(new JRenderer(ba2, str));
        ((GLSurfaceView) getObject()).setRenderMode(i11);
    }

    public void Initialize1(BA ba2, String str, int i10, boolean z10, int i11, boolean z11, int i12) {
        super.Initialize(ba2, str);
        ((GLSurfaceView) getObject()).setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        if (i10 == 2) {
            ((GLSurfaceView) getObject()).setEGLContextClientVersion(i10);
            if (z10) {
                ((GLSurfaceView) getObject()).setEGLConfigChooser(new AAConfigChooser((GLSurfaceView) getObject()));
            }
        }
        if (z11) {
            ((GLSurfaceView) getObject()).setDebugFlags(3);
        }
        ((GLSurfaceView) getObject()).setRenderer(new JRenderer(ba2, str));
        ((GLSurfaceView) getObject()).setRenderMode(i11);
        ((GLSurfaceView) getObject()).getHolder().setFormat(i12);
        ((GLSurfaceView) getObject()).setZOrderOnTop(true);
    }

    public void Initialize2(BA ba2, String str, int i10, int i11, boolean z10) {
        super.Initialize(ba2, str);
        if (z10) {
            ((GLSurfaceView) getObject()).setDebugFlags(3);
        }
        ((GLSurfaceView) getObject()).setEGLConfigChooser(new GLSurfaceView.EGLConfigChooser() {
            @Override
            public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                egl10.eglChooseConfig(eGLDisplay, new int[]{12325, 16, 12344}, eGLConfigArr, 1, new int[1]);
                return eGLConfigArr[0];
            }
        });
        if (i10 == 2) {
            ((GLSurfaceView) getObject()).setEGLContextClientVersion(i10);
        }
        ((GLSurfaceView) getObject()).setRenderer(new JRenderer(ba2, str));
        ((GLSurfaceView) getObject()).setRenderMode(i11);
    }

    public void Initialize3(BA ba2, String str, int i10, int i11, int i12, int i13, int i14, int i15, int i16, boolean z10, int i17, boolean z11, int i18) {
        super.Initialize(ba2, str);
        if (z11) {
            ((GLSurfaceView) getObject()).setDebugFlags(3);
        }
        if (i10 == 2) {
            ((GLSurfaceView) getObject()).setEGLContextClientVersion(i10);
            if (z10) {
                ((GLSurfaceView) getObject()).setEGLConfigChooser(new AAConfigChooser((GLSurfaceView) getObject()));
            }
        }
        ((GLSurfaceView) getObject()).setEGLConfigChooser(i11, i12, i13, i14, i15, i16);
        ((GLSurfaceView) getObject()).setRenderer(new JRenderer(ba2, str));
        ((GLSurfaceView) getObject()).setRenderMode(i17);
        ((GLSurfaceView) getObject()).getHolder().setFormat(i18);
        ((GLSurfaceView) getObject()).setZOrderOnTop(true);
    }

    public void RequestRender() {
        ((GLSurfaceView) getObject()).requestRender();
    }

    public void SendArrayDataTo(String str, Object[] objArr) {
        this.ba.raiseEventFromDifferentThread(this, (Object) null, 0, str.toLowerCase(BA.cul), true, new Object[]{objArr});
    }

    public void SendDataTo(String str, Object obj) {
        this.ba.raiseEventFromDifferentThread(this, (Object) null, 0, str.toLowerCase(BA.cul), true, new Object[]{obj});
    }

    public void destroyDrawingCache() {
        ((GLSurfaceView) getObject()).destroyDrawingCache();
    }

    public int getDebugFlags() {
        return ((GLSurfaceView) getObject()).getDebugFlags();
    }

    public int getRenderMode() {
        return ((GLSurfaceView) getObject()).getRenderMode();
    }

    public GL10 glContext() {
        return JRenderer.f94399gl;
    }

    @BA.Hide
    public void innerInitialize(BA ba2, String str, boolean z10) {
        if (!z10) {
            setObject(new GLSurfaceView(ba2.context));
        }
        if (ba2.subExists((String.valueOf(str) + "_SurfaceTouch").toLowerCase(BA.cul))) {
            ((GLSurfaceView) getObject()).setOnTouchListener(new JMultiTouch(ba2, str, this));
        } else {
            Log.w("JPCT", "Sub " + str + "_SurfaceTouch - Doesn't exist!");
        }
        super.innerInitialize(ba2, str, true);
    }

    public void onPause() {
        ((GLSurfaceView) getObject()).onPause();
    }

    public void onResume() {
        ((GLSurfaceView) getObject()).onResume();
    }

    public void setDebugFlags(int i10) {
        ((GLSurfaceView) getObject()).setDebugFlags(i10);
    }

    public void setGLWrapper(GLSurfaceView.GLWrapper gLWrapper) {
        ((GLSurfaceView) getObject()).setGLWrapper(gLWrapper);
    }
}

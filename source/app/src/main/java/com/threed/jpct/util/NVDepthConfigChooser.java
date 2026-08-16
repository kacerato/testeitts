package com.threed.jpct.util;

import android.opengl.GLSurfaceView;
import com.threed.jpct.Logger;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

public class NVDepthConfigChooser implements GLSurfaceView.EGLConfigChooser {
    private GLSurfaceView view;
    private boolean withAlpha;

    public NVDepthConfigChooser(GLSurfaceView gLSurfaceView) {
        this.withAlpha = false;
        this.view = gLSurfaceView;
    }

    private void error() {
        Logger.log("Failed to choose config!", 0);
    }

    private int findConfigAttrib(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i10, int i11) {
        int[] iArr = new int[1];
        return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i10, iArr) ? iArr[0] : i11;
    }

    @Override
    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int i10;
        int[] iArr;
        EGLConfig[] eGLConfigArr;
        boolean z10 = this.withAlpha;
        int i11 = z10 ? 5 : 6;
        int i12 = 0;
        try {
            this.view.setEGLContextClientVersion(2);
        } catch (IllegalStateException unused) {
        } catch (Throwable unused2) {
            Logger.log("Couldn't initialize OpenGL ES 2.0", 0);
            return null;
        }
        int[] iArr2 = new int[1];
        int[] iArr3 = {12324, 5, 12323, i11, 12322, 5, 12321, z10 ? 1 : 0, 12325, 16, 12352, 4, 12514, 12515, 12344};
        int i13 = egl10.eglChooseConfig(eGLDisplay, iArr3, null, 0, iArr2) ? iArr2[0] : 0;
        if (i13 <= 0) {
            Logger.log("No nonlinear depth buffer config found...using default mode!");
            int[] iArr4 = {12324, 5, 12323, i11, 12322, 5, 12321, z10 ? 1 : 0, 12325, 16, 12352, 4, 12344};
            if (!egl10.eglChooseConfig(eGLDisplay, iArr4, null, 0, iArr2)) {
                error();
            }
            int i14 = iArr2[0];
            if (i14 <= 0) {
                error();
            }
            iArr = iArr4;
            i10 = i14;
        } else {
            Logger.log("Nonlinear depth buffer enabled!");
            i10 = i13;
            iArr = iArr3;
        }
        EGLConfig[] eGLConfigArr2 = new EGLConfig[i10];
        if (!egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr2, i10, iArr2)) {
            error();
        }
        int i15 = 0;
        while (true) {
            if (i15 >= i10) {
                i15 = -1;
                eGLConfigArr = eGLConfigArr2;
                break;
            }
            eGLConfigArr = eGLConfigArr2;
            if (findConfigAttrib(egl10, eGLDisplay, eGLConfigArr2[i15], 12324, 0) == 5) {
                break;
            }
            i15++;
            eGLConfigArr2 = eGLConfigArr;
        }
        if (i15 == -1) {
            Logger.log("Unable to find a matching config...using default!");
        } else {
            i12 = i15;
        }
        EGLConfig eGLConfig = i10 > 0 ? eGLConfigArr[i12] : null;
        if (eGLConfig == null) {
            error();
        }
        return eGLConfig;
    }

    public NVDepthConfigChooser(GLSurfaceView gLSurfaceView, boolean z10) {
        this.view = gLSurfaceView;
        this.withAlpha = z10;
    }
}

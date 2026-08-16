package com.threed.jpct.util;

import android.opengl.GLSurfaceView;
import com.threed.jpct.Config;
import com.threed.jpct.Logger;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

public class AAConfigChooser implements GLSurfaceView.EGLConfigChooser {
    private int depth;
    private GLSurfaceView view;
    private boolean withAlpha;

    public AAConfigChooser(GLSurfaceView gLSurfaceView) {
        this.withAlpha = false;
        this.depth = 16;
        this.view = gLSurfaceView;
    }

    private void error() {
        Config.aaMode = 0;
        Logger.log("Failed to choose config!", 0);
    }

    private int findConfigAttrib(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i10, int i11) {
        int[] iArr = new int[1];
        return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i10, iArr) ? iArr[0] : i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x016d A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int i10;
        int i11;
        int i12;
        int[] iArr;
        EGLConfig[] eGLConfigArr;
        int i13;
        EGLConfig eGLConfig;
        boolean z10 = this.withAlpha;
        int i14 = z10 != 0 ? 5 : 6;
        int i15 = 0;
        if (this.depth > 24) {
            i14 = 8;
            i10 = 8;
            i11 = z10 != 0 ? 8 : 0;
        } else {
            i10 = 5;
            i11 = z10;
        }
        int i16 = i10;
        try {
            this.view.setEGLContextClientVersion(2);
        } catch (IllegalStateException unused) {
        } catch (Throwable unused2) {
            Logger.log("Couldn't initialize OpenGL ES 2.0", 0);
            return null;
        }
        int[] iArr2 = new int[1];
        int[] iArr3 = {12324, i10, 12323, i14, 12322, i16, 12321, i11, 12325, this.depth, 12352, 4, 12338, 1, 12337, 2, 12344};
        int[] iArr4 = iArr3;
        if (!egl10.eglChooseConfig(eGLDisplay, iArr3, null, 0, iArr2)) {
            error();
        }
        int i17 = iArr2[0];
        if (i17 <= 0) {
            int[] iArr5 = {12324, i10, 12323, i14, 12322, i16, 12321, i11, 12325, this.depth, 12352, 4, 12514, 12515, 12512, 1, 12513, 2, 12344};
            iArr4 = iArr5;
            if (!egl10.eglChooseConfig(eGLDisplay, iArr5, null, 0, iArr2)) {
                error();
            }
            i17 = iArr2[0];
            if (i17 <= 0) {
                Logger.log("No AA config found...defaulting to non-AA modes!");
                int[] iArr6 = {12324, i10, 12323, i14, 12322, i16, 12321, i11, 12325, this.depth, 12352, 4, 12344};
                if (!egl10.eglChooseConfig(eGLDisplay, iArr6, null, 0, iArr2)) {
                    error();
                }
                int i18 = iArr2[0];
                if (i18 <= 0) {
                    error();
                }
                Config.aaMode = 0;
                Logger.log("No AA enabled!");
                iArr = iArr6;
                i12 = i18;
                eGLConfigArr = new EGLConfig[i12];
                if (!egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, i12, iArr2)) {
                    error();
                }
                i13 = 0;
                while (true) {
                    if (i13 < i12) {
                        i13 = -1;
                        break;
                    }
                    if (findConfigAttrib(egl10, eGLDisplay, eGLConfigArr[i13], 12324, 0) == 5) {
                        break;
                    }
                    i13++;
                }
                if (i13 != -1) {
                    Logger.log("Unable to find a matching config...using default!");
                } else {
                    i15 = i13;
                }
                eGLConfig = i12 <= 0 ? eGLConfigArr[i15] : null;
                if (eGLConfig == null) {
                    error();
                }
                return eGLConfig;
            }
            Config.aaMode = 2;
            Logger.log("CSAA enabled!");
        } else {
            Config.aaMode = 1;
            Logger.log("MSAA enabled with 2 samples!");
        }
        i12 = i17;
        iArr = iArr4;
        eGLConfigArr = new EGLConfig[i12];
        if (!egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, i12, iArr2)) {
        }
        i13 = 0;
        while (true) {
            if (i13 < i12) {
            }
            i13++;
        }
        if (i13 != -1) {
        }
        if (i12 <= 0) {
        }
        if (eGLConfig == null) {
        }
        return eGLConfig;
    }

    public AAConfigChooser(GLSurfaceView gLSurfaceView, boolean z10) {
        this.depth = 16;
        this.view = gLSurfaceView;
        this.withAlpha = z10;
    }

    private AAConfigChooser(GLSurfaceView gLSurfaceView, boolean z10, int i10) {
        this.view = gLSurfaceView;
        this.withAlpha = z10;
        this.depth = i10;
    }
}

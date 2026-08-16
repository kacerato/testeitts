package com.threed.jpct;

import android.icu.text.DateFormat;
import android.opengl.ETC1Util;
import android.opengl.GLES20;
import android.text.style.SuggestionSpan;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Fog;
import java.lang.constant.ConstantDescs;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.BitSet;
import javax.microedition.khronos.opengles.GL11;
import org.luaj.vm2.Lua;

class GL20 implements GL11, GL20Handler {
    private static int NEXT;
    private IntBuffer buffy4;
    private float[] currentMatrixPointer;
    private GLSLShader defaultShader;
    private GLSLShader defaultShaderDepth;
    private GLSLShader defaultShaderFog;
    private GLSLShader defaultShaderFogLight0;
    private GLSLShader defaultShaderTex0;
    private GLSLShader defaultShaderTex0Amb;
    private GLSLShader defaultShaderTex0Light0;
    private GLSLShader defaultShaderTex1;
    private boolean depthMode;
    private int fbo;
    private Texture fboColorStorage;
    private Texture fboDepthStorage;
    private int fboTexture;

    private int f83613id;
    private GLSLShader storedShader;
    private GLSLShader storedUserShader;
    private GLSLShader userShader = null;
    private float[] curColor = new float[4];
    private int currentTextureStage = 0;
    private BitSet textureStates = new BitSet(64);
    private int[] textureModes = new int[4];
    private int textureCombineRgb = 0;
    private int textureRgbScale = 1;
    private boolean flatShading = false;
    private float[] projectionMatrix = new float[16];
    private float[] modelviewMatrix = new float[16];
    private float[] textureMatrix = new float[16];
    private float[] tempMatrix = new float[16];
    private boolean textureMatrixUsed = false;
    private GLSLShader activeShader = null;
    private float alpha = 1.0f;
    private boolean useColors = false;
    private float[] additionalColor = new float[4];
    private float[] ambientColor = new float[4];
    private float[] lightPositions = new float[24];
    private float[] diffuseColors = new float[24];
    private float[] specularColors = new float[24];
    private float[] attenuation = new float[8];
    private float shininess = 0.0f;
    private int lightCount = 0;
    private boolean fogEnabled = false;
    private float fogStart = -1.0f;
    private float fogEnd = -1.0f;
    private float[] fogColor = new float[3];
    private boolean lightsEnabled = false;
    private BitSet lightsState = new BitSet(64);

    public GL20() {
        this.defaultShader = null;
        this.defaultShaderTex0 = null;
        this.defaultShaderTex1 = null;
        this.defaultShaderTex0Light0 = null;
        this.defaultShaderFog = null;
        this.defaultShaderFogLight0 = null;
        this.defaultShaderTex0Amb = null;
        this.defaultShaderDepth = null;
        this.currentMatrixPointer = null;
        int i10 = NEXT;
        NEXT = i10 + 1;
        this.f83613id = i10;
        this.fbo = -1;
        this.fboTexture = -1;
        this.depthMode = false;
        this.storedShader = null;
        this.storedUserShader = null;
        this.fboColorStorage = null;
        this.fboDepthStorage = null;
        this.buffy4 = ByteBuffer.allocateDirect(4).order(ByteOrder.nativeOrder()).asIntBuffer();
        Logger.log("Initializing GL20 render pipeline...");
        boolean z10 = Config.useVBO;
        this.defaultShader = new GLSLShader(null);
        this.defaultShaderTex0 = new GLSLShader("Tex0");
        this.defaultShaderTex1 = new GLSLShader("Tex1");
        this.defaultShaderTex0Light0 = new GLSLShader("Tex0Light0");
        this.defaultShaderFog = new GLSLShader(Fog.f75106I);
        this.defaultShaderFogLight0 = new GLSLShader("FogLight0");
        this.defaultShaderTex0Amb = new GLSLShader("Tex0Amb");
        this.defaultShaderDepth = new GLSLShader("Depth");
        setIdentity(this.projectionMatrix);
        setIdentity(this.modelviewMatrix);
        setIdentity(this.textureMatrix);
        setIdentity(this.tempMatrix);
        this.currentMatrixPointer = this.projectionMatrix;
        resetShaderData();
        updateShaderData();
        Logger.log("GL20 render pipeline initialized!");
    }

    private void checkError(String str) {
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                return;
            }
            Logger.log(String.valueOf(str) + ": glError " + glGetError, 0);
            System.exit(glGetError);
        }
    }

    private void checkFrameBufferObject() {
        int glCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
        switch (glCheckFramebufferStatus) {
            case 36053:
                break;
            case 36054:
                Logger.log("FrameBuffer: " + this.fbo + " has caused a GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT exception", 0);
                break;
            case 36055:
                Logger.log("FrameBuffer: " + this.fbo + ", has caused a GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT exception", 0);
                break;
            case 36056:
            default:
                Logger.log("Unexpected reply from glCheckFramebufferStatus: " + glCheckFramebufferStatus, 0);
                break;
            case 36057:
                Logger.log("FrameBuffer: " + this.fbo + ", has caused a GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS exception", 0);
                break;
        }
        if (glCheckFramebufferStatus != 36053) {
            this.fbo = -1;
        }
    }

    private void clearErrors() {
        do {
        } while (GLES20.glGetError() != 0);
    }

    private int getTextureStageIndex() {
        int i10 = this.currentTextureStage;
        if (i10 != -1) {
            return i10 - 33984;
        }
        return 0;
    }

    private boolean hasCap(int i10) {
        if (i10 == 3553) {
            return true;
        }
        return ((i10 >= 16384 && i10 <= 16391) || i10 == 2896 || i10 == 2903 || i10 == 3008 || i10 == 2977 || i10 == 2912) ? false : true;
    }

    private void setIdentity(float[] fArr) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 1.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
    }

    @Override
    public void clearShader() {
        setShader(null);
    }

    @Override
    public void clearTangents(int i10) {
        int i11 = this.activeShader.tangentHandle;
        if (i11 != -1) {
            GLES20.glDisableVertexAttribArray(i11);
            if (i10 > 0) {
                GLES20.glBindBuffer(34962, 0);
            }
        }
    }

    @Override
    public void glActiveTexture(int i10) {
        GLES20.glActiveTexture(i10);
        this.currentTextureStage = i10;
    }

    @Override
    public void glAlphaFunc(int i10, float f10) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glAlphaFuncx(int i10, int i11) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glBindBuffer(int i10, int i11) {
        GLES20.glBindBuffer(i10, i11);
    }

    @Override
    public void glBindTexture(int i10, int i11) {
        GLES20.glBindTexture(i10, i11);
    }

    @Override
    public void glBlendFunc(int i10, int i11) {
        GLES20.glBlendFunc(i10, i11);
    }

    @Override
    public void glBufferData(int i10, int i11, Buffer buffer, int i12) {
        GLES20.glBufferData(i10, i11, buffer, i12);
    }

    @Override
    public void glBufferSubData(int i10, int i11, int i12, Buffer buffer) {
        GLES20.glBufferSubData(i10, i11, i12, buffer);
    }

    @Override
    public void glClear(int i10) {
        GLES20.glClear(i10);
    }

    @Override
    public void glClearColor(float f10, float f11, float f12, float f13) {
        GLES20.glClearColor(f10, f11, f12, f13);
    }

    @Override
    public void glClearColorx(int i10, int i11, int i12, int i13) {
        GLES20.glClearColor((int) (i10 * 255.0f), (int) (i11 * 255.0f), (int) (i12 * 255.0f), (int) (i13 * 255.0f));
    }

    @Override
    public void glClearDepthf(float f10) {
        GLES20.glClearDepthf(f10);
    }

    @Override
    public void glClearDepthx(int i10) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glClearStencil(int i10) {
        GLES20.glClearStencil(i10);
    }

    @Override
    public void glClientActiveTexture(int i10) {
        GLES20.glActiveTexture(i10);
        this.currentTextureStage = i10;
    }

    @Override
    public void glClipPlanef(int i10, FloatBuffer floatBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glClipPlanex(int i10, IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glColor4f(float f10, float f11, float f12, float f13) {
        float[] fArr = this.curColor;
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[2] = f12;
        fArr[3] = f13;
    }

    @Override
    public void glColor4ub(byte b10, byte b11, byte b12, byte b13) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glColor4x(int i10, int i11, int i12, int i13) {
        float[] fArr = this.curColor;
        fArr[0] = (int) (i10 * 255.0f);
        fArr[1] = (int) (i11 * 255.0f);
        fArr[2] = (int) (i12 * 255.0f);
        fArr[3] = (int) (i13 * 255.0f);
    }

    @Override
    public void glColorMask(boolean z10, boolean z11, boolean z12, boolean z13) {
        GLES20.glColorMask(z10, z11, z12, z13);
    }

    @Override
    public void glColorPointer(int i10, int i11, int i12, Buffer buffer) {
        int i13 = this.activeShader.colorHandle;
        if (i13 != -1) {
            GLES20.glVertexAttribPointer(i13, i10, i11, false, i12, buffer);
            if (buffer == null) {
                this.useColors = false;
            }
        }
    }

    @Override
    public void glCompressedTexImage2D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, Buffer buffer) {
        GLES20.glCompressedTexImage2D(i10, i11, i12, i13, i14, i15, i16, buffer);
    }

    @Override
    public void glCompressedTexSubImage2D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, Buffer buffer) {
        GLES20.glCompressedTexSubImage2D(i10, i11, i12, i13, i14, i15, i16, i17, buffer);
    }

    @Override
    public void glCopyTexImage2D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        GLES20.glCopyTexImage2D(i10, i11, i12, i13, i14, i15, i16, i17);
    }

    @Override
    public void glCopyTexSubImage2D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        GLES20.glCopyTexSubImage2D(i10, i11, i12, i13, i14, i15, i16, i17);
    }

    @Override
    public void glCullFace(int i10) {
        GLES20.glCullFace(i10);
    }

    @Override
    public void glDeleteBuffers(int i10, IntBuffer intBuffer) {
        GLES20.glDeleteBuffers(i10, intBuffer);
    }

    @Override
    public void glDeleteTextures(int i10, IntBuffer intBuffer) {
        GLES20.glDeleteTextures(i10, intBuffer);
    }

    @Override
    public void glDepthFunc(int i10) {
        GLES20.glDepthFunc(i10);
    }

    @Override
    public void glDepthMask(boolean z10) {
        GLES20.glDepthMask(z10);
    }

    @Override
    public void glDepthRangef(float f10, float f11) {
        GLES20.glDepthRangef(f10, f11);
    }

    @Override
    public void glDepthRangex(int i10, int i11) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glDisable(int i10) {
        if (hasCap(i10)) {
            if (i10 == 3553) {
                this.textureStates.set(getTextureStageIndex(), false);
                return;
            } else {
                GLES20.glDisable(i10);
                return;
            }
        }
        if (i10 == 2896) {
            this.lightsEnabled = false;
            return;
        }
        if (i10 >= 16384 && i10 <= 16391) {
            this.lightsState.set(i10 - 16384, false);
        } else if (i10 == 2912) {
            this.fogEnabled = false;
        }
    }

    @Override
    public void glDisableClientState(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        if (i10 == 32886 && (i14 = this.activeShader.colorHandle) != -1) {
            GLES20.glDisableVertexAttribArray(i14);
            int i15 = this.activeShader.useColorsHandle;
            if (i15 != -1) {
                GLES20.glUniform1i(i15, 0);
            }
            this.useColors = false;
        }
        if (i10 == 32884 && (i13 = this.activeShader.vertexHandle) != -1) {
            GLES20.glDisableVertexAttribArray(i13);
        }
        if (i10 == 32885 && (i12 = this.activeShader.normalHandle) != -1) {
            GLES20.glDisableVertexAttribArray(i12);
        }
        int textureStageIndex = getTextureStageIndex();
        if (i10 != 32888 || (i11 = this.activeShader.textureHandle[textureStageIndex]) == -1) {
            return;
        }
        GLES20.glDisableVertexAttribArray(i11);
    }

    @Override
    public void glDrawArrays(int i10, int i11, int i12) {
        GLES20.glDrawArrays(i10, i11, i12);
    }

    @Override
    public void glDrawElements(int i10, int i11, int i12, Buffer buffer) {
        GLES20.glDrawElements(i10, i11, i12, buffer);
    }

    @Override
    public void glEnable(int i10) {
        if (hasCap(i10)) {
            if (i10 == 3553) {
                this.textureStates.set(getTextureStageIndex(), true);
                return;
            } else {
                GLES20.glEnable(i10);
                return;
            }
        }
        if (i10 == 2896) {
            this.lightsEnabled = true;
            return;
        }
        if (i10 >= 16384 && i10 <= 16391) {
            this.lightsState.set(i10 - 16384, true);
        } else if (i10 == 2912) {
            this.fogEnabled = true;
        }
    }

    @Override
    public void glEnableClientState(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        if (i10 == 32886 && (i14 = this.activeShader.colorHandle) != -1) {
            GLES20.glEnableVertexAttribArray(i14);
            int i15 = this.activeShader.useColorsHandle;
            if (i15 != -1) {
                GLES20.glUniform1i(i15, 1);
            }
            this.useColors = true;
        }
        if (i10 == 32884 && (i13 = this.activeShader.vertexHandle) != -1) {
            GLES20.glEnableVertexAttribArray(i13);
        }
        if (i10 == 32885 && (i12 = this.activeShader.normalHandle) != -1) {
            GLES20.glEnableVertexAttribArray(i12);
        }
        int textureStageIndex = getTextureStageIndex();
        if (i10 != 32888 || (i11 = this.activeShader.textureHandle[textureStageIndex]) == -1) {
            return;
        }
        GLES20.glEnableVertexAttribArray(i11);
    }

    @Override
    public void glFinish() {
        GLES20.glFinish();
    }

    @Override
    public void glFlush() {
        GLES20.glFlush();
    }

    @Override
    public void glFogf(int i10, float f10) {
        if (i10 == 2915) {
            this.fogStart = f10;
        } else if (i10 == 2916) {
            this.fogEnd = f10;
        }
    }

    @Override
    public void glFogfv(int i10, float[] fArr, int i11) {
    }

    @Override
    public void glFogx(int i10, int i11) {
    }

    @Override
    public void glFogxv(int i10, IntBuffer intBuffer) {
    }

    @Override
    public void glFrontFace(int i10) {
        GLES20.glFrontFace(i10);
    }

    @Override
    public void glFrustumf(float f10, float f11, float f12, float f13, float f14, float f15) {
        android.opengl.Matrix.frustumM(this.currentMatrixPointer, 0, f10, f11, f12, f13, f14, f15);
    }

    @Override
    public void glFrustumx(int i10, int i11, int i12, int i13, int i14, int i15) {
        android.opengl.Matrix.frustumM(this.currentMatrixPointer, 0, i10, i11, i12, i13, i14, i15);
    }

    @Override
    public void glGenBuffers(int i10, IntBuffer intBuffer) {
        GLES20.glGenBuffers(i10, intBuffer);
    }

    @Override
    public void glGenTextures(int i10, IntBuffer intBuffer) {
        GLES20.glGenTextures(i10, intBuffer);
    }

    @Override
    public void glGetBooleanv(int i10, IntBuffer intBuffer) {
        GLES20.glGetBooleanv(i10, intBuffer);
    }

    @Override
    public void glGetBufferParameteriv(int i10, int i11, IntBuffer intBuffer) {
        GLES20.glGetBufferParameteriv(i10, i11, intBuffer);
    }

    @Override
    public void glGetClipPlanef(int i10, FloatBuffer floatBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetClipPlanex(int i10, IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public int glGetError() {
        return GLES20.glGetError();
    }

    @Override
    public void glGetFixedv(int i10, IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetFloatv(int i10, FloatBuffer floatBuffer) {
        GLES20.glGetFloatv(i10, floatBuffer);
    }

    @Override
    public void glGetIntegerv(int i10, IntBuffer intBuffer) {
        GLES20.glGetIntegerv(i10, intBuffer);
    }

    @Override
    public void glGetLightfv(int i10, int i11, FloatBuffer floatBuffer) {
    }

    @Override
    public void glGetLightxv(int i10, int i11, IntBuffer intBuffer) {
    }

    @Override
    public void glGetMaterialfv(int i10, int i11, FloatBuffer floatBuffer) {
    }

    @Override
    public void glGetMaterialxv(int i10, int i11, IntBuffer intBuffer) {
    }

    @Override
    public void glGetPointerv(int i10, Buffer[] bufferArr) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public String glGetString(int i10) {
        return GLES20.glGetString(i10);
    }

    @Override
    public void glGetTexEnviv(int i10, int i11, IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetTexEnvxv(int i10, int i11, IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetTexParameterfv(int i10, int i11, FloatBuffer floatBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetTexParameteriv(int i10, int i11, IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetTexParameterxv(int i10, int i11, IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glHint(int i10, int i11) {
        GLES20.glHint(i10, i11);
    }

    @Override
    public boolean glIsBuffer(int i10) {
        return GLES20.glIsBuffer(i10);
    }

    @Override
    public boolean glIsEnabled(int i10) {
        if (hasCap(i10)) {
            return GLES20.glIsEnabled(i10);
        }
        return false;
    }

    @Override
    public boolean glIsTexture(int i10) {
        return GLES20.glIsTexture(i10);
    }

    @Override
    public void glLightModelf(int i10, float f10) {
    }

    @Override
    public void glLightModelfv(int i10, FloatBuffer floatBuffer) {
    }

    @Override
    public void glLightModelx(int i10, int i11) {
    }

    @Override
    public void glLightModelxv(int i10, IntBuffer intBuffer) {
    }

    @Override
    public void glLightf(int i10, int i11, float f10) {
        int i12 = i10 + Lua.MASK_Bx;
        if (i11 == 4616) {
            this.attenuation[i12] = f10;
        }
    }

    @Override
    public void glLightfv(int i10, int i11, FloatBuffer floatBuffer) {
    }

    @Override
    public void glLightx(int i10, int i11, int i12) {
    }

    @Override
    public void glLightxv(int i10, int i11, IntBuffer intBuffer) {
    }

    @Override
    public void glLineWidth(float f10) {
        GLES20.glLineWidth(f10);
    }

    @Override
    public void glLineWidthx(int i10) {
        GLES20.glLineWidth(i10);
    }

    @Override
    public void glLoadIdentity() {
        setIdentity(this.currentMatrixPointer);
        if (this.currentMatrixPointer == this.textureMatrix) {
            this.textureMatrixUsed = false;
        }
    }

    @Override
    public void glLoadMatrixf(FloatBuffer floatBuffer) {
        System.arraycopy(floatBuffer.array(), 0, this.currentMatrixPointer, 0, 16);
        if (this.currentMatrixPointer == this.textureMatrix) {
            this.textureMatrixUsed = true;
        }
    }

    @Override
    public void glLoadMatrixx(IntBuffer intBuffer) {
        for (int i10 = 0; i10 < 16; i10++) {
            this.currentMatrixPointer[i10] = intBuffer.get(i10);
        }
        if (this.currentMatrixPointer == this.textureMatrix) {
            this.textureMatrixUsed = true;
        }
    }

    @Override
    public void glLogicOp(int i10) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glMaterialf(int i10, int i11, float f10) {
        if (i10 == 1032 && i11 == 5632) {
            this.shininess = f10;
        }
    }

    @Override
    public void glMaterialfv(int i10, int i11, FloatBuffer floatBuffer) {
    }

    @Override
    public void glMaterialx(int i10, int i11, int i12) {
    }

    @Override
    public void glMaterialxv(int i10, int i11, IntBuffer intBuffer) {
    }

    @Override
    public void glMatrixMode(int i10) {
        if (i10 == 5888) {
            this.currentMatrixPointer = this.modelviewMatrix;
            return;
        }
        if (i10 == 5890) {
            this.currentMatrixPointer = this.textureMatrix;
        } else if (i10 == 5889) {
            this.currentMatrixPointer = this.projectionMatrix;
        } else {
            throw new RuntimeException("Unsupported matrix mode: " + i10);
        }
    }

    @Override
    public void glMultMatrixf(FloatBuffer floatBuffer) {
        android.opengl.Matrix.multiplyMM(this.tempMatrix, 0, this.currentMatrixPointer, 0, floatBuffer.array(), 0);
        System.arraycopy(this.tempMatrix, 0, this.currentMatrixPointer, 0, 16);
    }

    @Override
    public void glMultMatrixx(IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glMultiTexCoord4f(int i10, float f10, float f11, float f12, float f13) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glMultiTexCoord4x(int i10, int i11, int i12, int i13, int i14) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glNormal3f(float f10, float f11, float f12) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glNormal3x(int i10, int i11, int i12) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glNormalPointer(int i10, int i11, Buffer buffer) {
        int i12 = this.activeShader.normalHandle;
        if (i12 != -1) {
            GLES20.glVertexAttribPointer(i12, 3, i10, false, i11, buffer);
        }
    }

    @Override
    public void glOrthof(float f10, float f11, float f12, float f13, float f14, float f15) {
        android.opengl.Matrix.orthoM(this.currentMatrixPointer, 0, f10, f11, f12, f13, f14, f15);
    }

    @Override
    public void glOrthox(int i10, int i11, int i12, int i13, int i14, int i15) {
        android.opengl.Matrix.orthoM(this.currentMatrixPointer, 0, i10, i11, i12, i13, i14, i15);
    }

    @Override
    public void glPixelStorei(int i10, int i11) {
        GLES20.glPixelStorei(i10, i11);
    }

    @Override
    public void glPointParameterf(int i10, float f10) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glPointParameterfv(int i10, FloatBuffer floatBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glPointParameterx(int i10, int i11) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glPointParameterxv(int i10, IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glPointSize(float f10) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glPointSizePointerOES(int i10, int i11, Buffer buffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glPointSizex(int i10) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glPolygonOffset(float f10, float f11) {
        GLES20.glPolygonOffset(f10, f11);
    }

    @Override
    public void glPolygonOffsetx(int i10, int i11) {
        GLES20.glPolygonOffset(i10, i11);
    }

    @Override
    public void glPopMatrix() {
        setIdentity(this.currentMatrixPointer);
        if (this.currentMatrixPointer == this.textureMatrix) {
            this.textureMatrixUsed = false;
        }
    }

    @Override
    public void glPushMatrix() {
    }

    @Override
    public void glReadPixels(int i10, int i11, int i12, int i13, int i14, int i15, Buffer buffer) {
        GLES20.glReadPixels(i10, i11, i12, i13, i14, i15, buffer);
    }

    @Override
    public void glRotatef(float f10, float f11, float f12, float f13) {
        android.opengl.Matrix.rotateM(this.currentMatrixPointer, 0, f10, f11, f12, f13);
    }

    @Override
    public void glRotatex(int i10, int i11, int i12, int i13) {
        android.opengl.Matrix.rotateM(this.currentMatrixPointer, 0, i10, i11, i12, i13);
    }

    @Override
    public void glSampleCoverage(float f10, boolean z10) {
        GLES20.glSampleCoverage(f10, z10);
    }

    @Override
    public void glSampleCoveragex(int i10, boolean z10) {
        GLES20.glSampleCoverage(i10, z10);
    }

    @Override
    public void glScalef(float f10, float f11, float f12) {
        android.opengl.Matrix.scaleM(this.currentMatrixPointer, 0, f10, f11, f12);
    }

    @Override
    public void glScalex(int i10, int i11, int i12) {
        android.opengl.Matrix.scaleM(this.currentMatrixPointer, 0, i10, i11, i12);
    }

    @Override
    public void glScissor(int i10, int i11, int i12, int i13) {
        GLES20.glScissor(i10, i11, i12, i13);
    }

    @Override
    public void glShadeModel(int i10) {
        if (i10 == 7424) {
            this.flatShading = true;
        } else {
            this.flatShading = false;
        }
    }

    @Override
    public void glStencilFunc(int i10, int i11, int i12) {
        GLES20.glStencilFunc(i10, i11, i12);
    }

    @Override
    public void glStencilMask(int i10) {
        GLES20.glStencilMask(i10);
    }

    @Override
    public void glStencilOp(int i10, int i11, int i12) {
        GLES20.glStencilOp(i10, i11, i12);
    }

    @Override
    public void glTexCoordPointer(int i10, int i11, int i12, Buffer buffer) {
        int i13 = this.activeShader.textureHandle[getTextureStageIndex()];
        if (i13 != -1) {
            GLES20.glVertexAttribPointer(i13, i10, i11, false, i12, buffer);
        }
    }

    @Override
    public void glTexEnvf(int i10, int i11, float f10) {
        glTexEnvx(i10, i11, (int) f10);
    }

    @Override
    public void glTexEnvfv(int i10, int i11, FloatBuffer floatBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glTexEnvi(int i10, int i11, int i12) {
        glTexEnvx(i10, i11, i12);
    }

    @Override
    public void glTexEnviv(int i10, int i11, IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glTexEnvx(int i10, int i11, int i12) {
        if (i10 != 8960) {
            throw new RuntimeException("Not implemented: " + i10);
        }
        if (i11 == 8704) {
            this.textureModes[getTextureStageIndex()] = i12 == 260 ? 1 : i12 == 7681 ? 2 : i12 == 3042 ? 3 : 0;
            return;
        }
        if (i11 == 34161) {
            this.textureCombineRgb = i12;
        } else if (i11 == 34163) {
            this.textureRgbScale = i12;
        } else {
            throw new RuntimeException("Parameter not supported: " + i11);
        }
    }

    @Override
    public void glTexEnvxv(int i10, int i11, IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glTexImage2D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, Buffer buffer) {
        GLES20.glTexImage2D(i10, i11, i12, i13, i14, i15, i16, i17, buffer);
    }

    @Override
    public void glTexParameterf(int i10, int i11, float f10) {
        GLES20.glTexParameterf(i10, i11, f10);
    }

    @Override
    public void glTexParameterfv(int i10, int i11, FloatBuffer floatBuffer) {
        GLES20.glTexParameterfv(i10, i11, floatBuffer);
    }

    @Override
    public void glTexParameteri(int i10, int i11, int i12) {
        GLES20.glTexParameteri(i10, i11, i12);
    }

    @Override
    public void glTexParameteriv(int i10, int i11, IntBuffer intBuffer) {
        GLES20.glTexParameteriv(i10, i11, intBuffer);
    }

    @Override
    public void glTexParameterx(int i10, int i11, int i12) {
        GLES20.glTexParameteri(i10, i11, i12);
    }

    @Override
    public void glTexParameterxv(int i10, int i11, IntBuffer intBuffer) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glTexSubImage2D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, Buffer buffer) {
        GLES20.glTexSubImage2D(i10, i11, i12, i13, i14, i15, i16, i17, buffer);
    }

    @Override
    public void glTranslatef(float f10, float f11, float f12) {
        android.opengl.Matrix.translateM(this.currentMatrixPointer, 0, f10, f11, f12);
    }

    @Override
    public void glTranslatex(int i10, int i11, int i12) {
        android.opengl.Matrix.translateM(this.currentMatrixPointer, 0, i10, i11, i12);
    }

    @Override
    public void glVertexPointer(int i10, int i11, int i12, Buffer buffer) {
        int i13 = this.activeShader.vertexHandle;
        if (i13 != -1) {
            GLES20.glVertexAttribPointer(i13, i10, i11, false, i12, buffer);
        }
    }

    @Override
    public void glViewport(int i10, int i11, int i12, int i13) {
        GLES20.glViewport(i10, i11, i12, i13);
    }

    @Override
    public void reset() {
        if (this.depthMode) {
            return;
        }
        this.activeShader = null;
    }

    @Override
    public void resetShaderData() {
        this.alpha = 1.0f;
        this.useColors = false;
        this.shininess = 0.0f;
        for (int i10 = 0; i10 < 4; i10++) {
            this.additionalColor[i10] = 0.0f;
            this.ambientColor[i10] = 1.0f;
        }
    }

    @Override
    public void setRenderTarget(Texture texture, GLRenderer gLRenderer, FrameBuffer frameBuffer) {
        boolean z10;
        int i10 = gLRenderer.myID;
        if (texture == null) {
            GLES20.glColorMask(true, true, true, true);
            if (this.fbo != -1) {
                if (Logger.isDebugEnabled()) {
                    Logger.log("Unbinding buffers (" + this.fbo + ")!", 3);
                }
                GLES20.glBindFramebuffer(36160, 0);
                GLES20.glBindRenderbuffer(36161, 0);
                gLRenderer.resetViewport(frameBuffer);
            }
            if (this.storedShader != null && this.depthMode) {
                this.depthMode = false;
                if (this.activeShader != this.defaultShaderDepth) {
                    Logger.log("Exiting from depth mode without the shader being set...strange...", 1);
                }
                this.activeShader = this.storedShader;
                this.userShader = this.storedUserShader;
            }
            this.storedUserShader = null;
            this.storedShader = null;
            return;
        }
        GLES20.glViewport(0, 0, texture.getWidth(), texture.getHeight());
        IntBuffer intBuffer = this.buffy4;
        intBuffer.rewind();
        this.depthMode = texture.isShadowMap;
        this.fbo = texture.fbo;
        int i11 = texture.renderBuffer;
        int i12 = texture.lastHandlerId;
        if (i12 != this.f83613id && i12 != -1) {
            this.fbo = -1;
            if (texture.getDepthBuffer() == null) {
                i11 = -1;
            } else if (texture.getDepthBuffer().lastHandlerId != this.f83613id && texture.getDepthBuffer().lastHandlerId != -1) {
                texture.getDepthBuffer().renderBuffer = -1;
            }
        }
        texture.lastHandlerId = this.f83613id;
        if (texture.getDepthBuffer() != null) {
            texture.getDepthBuffer().lastHandlerId = this.f83613id;
            i11 = texture.getDepthBuffer().renderBuffer;
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.fbo == -1) {
            GLES20.glGenFramebuffers(1, intBuffer);
            this.fbo = intBuffer.get(0);
            if (texture.getOpenGLID(i10) == 0) {
                texture.setMarker(i10, Texture.MARKER_NOTHING);
                gLRenderer.convertTexture(texture);
                gLRenderer.lastTextures[0] = -1;
            }
            int openGLID = texture.getOpenGLID(i10);
            gLRenderer.bindTexture(0, openGLID);
            this.fboTexture = texture.getOpenGLID(i10);
            GLES20.glBindFramebuffer(36160, this.fbo);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, openGLID, 0);
            checkError("Failed to create frame buffer (" + this.fbo + ")");
            if (!z10 || i11 == -1) {
                if (Logger.isDebugEnabled()) {
                    StringBuilder sb2 = new StringBuilder("Creating render buffer ");
                    sb2.append(z10 ? "for depth buffer!" : "in depth mode!");
                    Logger.log(sb2.toString(), 3);
                }
                intBuffer.rewind();
                GLES20.glGenRenderbuffers(1, intBuffer);
                int i13 = intBuffer.get(0);
                GLES20.glBindRenderbuffer(36161, i13);
                GLES20.glRenderbufferStorage(36161, 33189, texture.getWidth(), texture.getHeight());
                GLES20.glFramebufferRenderbuffer(36160, 36096, 36161, i13);
                if (z10) {
                    texture.getDepthBuffer().renderBuffer = i13;
                } else {
                    texture.renderBuffer = i13;
                }
                if (Logger.isDebugEnabled()) {
                    Logger.log("Render buffer created: " + i13, 3);
                }
            } else {
                if (Logger.isDebugEnabled()) {
                    Logger.log("Using depth buffer's render buffer " + i11 + "!", 3);
                }
                GLES20.glBindRenderbuffer(36161, i11);
                GLES20.glRenderbufferStorage(36161, 33189, texture.getWidth(), texture.getHeight());
                GLES20.glFramebufferRenderbuffer(36160, 36096, 36161, i11);
            }
            checkFrameBufferObject();
            texture.fbo = this.fbo;
        } else {
            if (Logger.isDebugEnabled()) {
                Logger.log("Binding buffers (" + this.fbo + "/" + i11 + ")!", 3);
            }
            GLES20.glBindFramebuffer(36160, this.fbo);
            GLES20.glBindRenderbuffer(36161, i11);
        }
        GLSLShader gLSLShader = this.activeShader;
        GLSLShader gLSLShader2 = this.defaultShaderDepth;
        if (gLSLShader == gLSLShader2 || !this.depthMode) {
            return;
        }
        this.storedShader = gLSLShader;
        this.storedUserShader = this.userShader;
        this.activeShader = gLSLShader2;
        this.userShader = null;
        gLSLShader2.activate(this.f83613id);
    }

    @Override
    public void setShader(GLSLShader gLSLShader) {
        if (this.depthMode) {
            return;
        }
        this.userShader = gLSLShader;
        if (gLSLShader != null) {
            gLSLShader.preInit();
        }
        GLSLShader gLSLShader2 = this.activeShader;
        GLSLShader gLSLShader3 = this.userShader;
        if (gLSLShader2 != gLSLShader3) {
            if (gLSLShader3 != null) {
                gLSLShader3.activate(this.f83613id);
                this.activeShader = this.userShader;
            } else {
                this.defaultShader.activate(this.f83613id);
                this.activeShader = this.defaultShader;
            }
        }
    }

    @Override
    public void setTangents(Buffer buffer) {
        int i10 = this.activeShader.tangentHandle;
        if (i10 != -1) {
            GLES20.glEnableVertexAttribArray(i10);
            GLES20.glVertexAttribPointer(this.activeShader.tangentHandle, 4, 5132, false, 16, buffer);
        }
    }

    @Override
    public void unloadRenderTarget(Texture texture) {
        IntBuffer intBuffer = this.buffy4;
        int i10 = texture.fbo;
        int i11 = texture.renderBuffer;
        if (i10 == -1) {
            GLES20.glBindFramebuffer(36160, 0);
            intBuffer.rewind();
            if (i10 != -1) {
                intBuffer.put(i10);
                intBuffer.rewind();
                GLES20.glDeleteFramebuffers(1, intBuffer);
                intBuffer.rewind();
                texture.fbo = -1;
            }
            if (i11 != -1) {
                GLES20.glBindRenderbuffer(36161, 0);
                if (i11 != -1) {
                    intBuffer.put(i11);
                    intBuffer.rewind();
                    GLES20.glDeleteRenderbuffers(1, intBuffer);
                    intBuffer.rewind();
                    texture.renderBuffer = -1;
                }
            }
        }
    }

    @Override
    public GLSLShader updateShaderData() {
        int i10;
        GLSLShader gLSLShader;
        if (this.activeShader != this.defaultShaderDepth && this.depthMode) {
            Logger.log("Can't render into a depth map without the shader being set!", 0);
        }
        if (this.activeShader == null) {
            GLSLShader gLSLShader2 = this.defaultShader;
            this.activeShader = gLSLShader2;
            gLSLShader2.activate(this.f83613id);
        }
        int length = this.lightsState.length();
        this.lightCount = length;
        if (!this.lightsEnabled) {
            length = 0;
        }
        if (this.userShader == null && this.activeShader != this.defaultShaderDepth) {
            int length2 = this.textureStates.length();
            GLSLShader gLSLShader3 = this.activeShader;
            if (length2 > 1) {
                gLSLShader = length2 == 2 ? this.defaultShaderTex1 : this.defaultShader;
            } else {
                gLSLShader = this.defaultShaderTex0;
                if (this.fogEnabled) {
                    gLSLShader = length != 1 ? this.defaultShaderFog : this.defaultShaderFogLight0;
                } else if (!this.textureMatrixUsed) {
                    if (length == 0) {
                        gLSLShader = this.defaultShaderTex0Amb;
                    } else if (length == 1) {
                        gLSLShader = this.defaultShaderTex0Light0;
                    }
                }
            }
            if (gLSLShader != gLSLShader3) {
                gLSLShader.activate(this.f83613id);
                this.activeShader = gLSLShader;
            }
        }
        GLSLShader gLSLShader4 = this.activeShader;
        gLSLShader4.checkContext(this.f83613id);
        GLSLShader gLSLShader5 = this.userShader;
        if (gLSLShader5 == this.activeShader) {
            gLSLShader5.update();
        }
        if (gLSLShader4.mvpMatrixHandle != -1) {
            android.opengl.Matrix.multiplyMM(this.tempMatrix, 0, this.projectionMatrix, 0, this.modelviewMatrix, 0);
            GLES20.glUniformMatrix4fv(gLSLShader4.mvpMatrixHandle, 1, false, this.tempMatrix, 0);
        }
        int i11 = gLSLShader4.mvMatrixHandle;
        if (i11 != -1) {
            GLES20.glUniformMatrix4fv(i11, 1, false, this.modelviewMatrix, 0);
        }
        int i12 = gLSLShader4.texMatrixHandle;
        if (i12 != -1) {
            GLES20.glUniformMatrix4fv(i12, 1, false, this.textureMatrix, 0);
        }
        int i13 = gLSLShader4.pMatrixHandle;
        if (i13 != -1) {
            GLES20.glUniformMatrix4fv(i13, 1, false, this.projectionMatrix, 0);
        }
        int i14 = gLSLShader4.alphaHandle;
        if (i14 != -1) {
            GLES20.glUniform1f(i14, this.alpha);
        }
        int i15 = gLSLShader4.useColorsHandle;
        if (i15 != -1) {
            GLES20.glUniform1i(i15, this.useColors ? 1 : 0);
        }
        int i16 = gLSLShader4.additionalColorHandle;
        if (i16 != -1) {
            GLES20.glUniform4fv(i16, 1, this.additionalColor, 0);
        }
        int i17 = gLSLShader4.ambientColorHandle;
        if (i17 != -1) {
            GLES20.glUniform4fv(i17, 1, this.ambientColor, 0);
        }
        if (this.lightsEnabled && (i10 = this.lightCount) > 0) {
            int i18 = length * 3;
            float[] fArr = this.diffuseColors;
            if (i18 < fArr.length) {
                fArr[i18] = -999.0f;
                fArr[i18 + 1] = -999.0f;
                fArr[i18 + 2] = -999.0f;
            }
            int i19 = gLSLShader4.lightPositionsHandle;
            if (i19 != -1) {
                GLES20.glUniform3fv(i19, i10, this.lightPositions, 0);
            }
            int i20 = gLSLShader4.attenuationHandle;
            if (i20 != -1) {
                GLES20.glUniform1fv(i20, this.lightCount, this.attenuation, 0);
            }
            int i21 = gLSLShader4.diffuseColorsHandle;
            if (i21 != -1) {
                GLES20.glUniform3fv(i21, this.lightCount, this.diffuseColors, 0);
            }
            int i22 = gLSLShader4.specularColorsHandle;
            if (i22 != -1) {
                GLES20.glUniform3fv(i22, this.lightCount, this.specularColors, 0);
            }
        }
        int i23 = gLSLShader4.lightCountHandle;
        if (i23 != -1) {
            GLES20.glUniform1i(i23, length);
        }
        int i24 = gLSLShader4.shininessHandle;
        if (i24 != 0) {
            GLES20.glUniform1f(i24, this.shininess);
        }
        if (this.fogEnabled) {
            int i25 = gLSLShader4.fogStartHandle;
            if (i25 != -1) {
                GLES20.glUniform1f(i25, this.fogStart);
            }
            int i26 = gLSLShader4.fogEndHandle;
            if (i26 != -1) {
                GLES20.glUniform1f(i26, this.fogEnd);
            }
            int i27 = gLSLShader4.fogColorHandle;
            if (i27 != -1) {
                GLES20.glUniform3fv(i27, 1, this.fogColor, 0);
            }
        } else {
            int i28 = gLSLShader4.fogStartHandle;
            if (i28 != -1) {
                GLES20.glUniform1f(i28, -1.0f);
            }
        }
        int length3 = this.textureStates.length();
        int i29 = gLSLShader4.textureCountHandle;
        if (i29 != -1) {
            GLES20.glUniform1i(i29, length3);
        }
        int i30 = gLSLShader4.blendingModeHandle;
        if (i30 != -1) {
            GLES20.glUniform1iv(i30, length3, this.textureModes, 0);
        }
        return gLSLShader4;
    }

    @Override
    public boolean uploadTexture(int i10, int i11, int i12, int i13, boolean z10, ByteBuffer byteBuffer) {
        ETC1Util.ETC1Texture eTC1Texture;
        ByteBuffer readFromCache;
        int i14;
        int i15 = i10;
        int i16 = i11;
        int i17 = i13;
        ByteBuffer byteBuffer2 = byteBuffer;
        if (!ETC1Util.isETC1Supported()) {
            return false;
        }
        Virtualizer virtualizer = TextureManager.getInstance().getVirtualizer();
        boolean z11 = virtualizer != null && Config.cacheCompressedTextures;
        long currentTimeMillis = System.currentTimeMillis();
        Logger.log("Compressing texture to ETC1...");
        int i18 = 3;
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i15 * i16 * 3);
        int limit = byteBuffer.limit();
        byte[] bArr = new byte[15];
        long j10 = (limit * 111) + (i17 * 1781);
        int i19 = 0;
        while (i19 < limit) {
            byteBuffer2.get(bArr, 0, i18);
            byteBuffer.get();
            int i20 = i19 + 4;
            int i21 = i19 + 8;
            if (i21 < limit) {
                byteBuffer2.get(bArr, i18, i18);
                byteBuffer.get();
                i20 = i21;
                i14 = 6;
            } else {
                i14 = i18;
            }
            int i22 = i20 + 4;
            if (i22 < limit) {
                byteBuffer2.get(bArr, i14, i18);
                byteBuffer.get();
                i14 += 3;
                i20 = i22;
            }
            int i23 = i20 + 4;
            if (i23 < limit) {
                byteBuffer2.get(bArr, i14, i18);
                byteBuffer.get();
                i14 += 3;
                i20 = i23;
            }
            int i24 = i20 + 4;
            if (i24 < limit) {
                byteBuffer2.get(bArr, i14, i18);
                byteBuffer.get();
                i14 += 3;
                i20 = i24;
            }
            allocateDirect.put(bArr, 0, i14);
            int i25 = 0;
            int i26 = 15;
            while (i25 < i26) {
                j10 += (i20 * 10) + (bArr[i25] * ((i20 & 1) == 1 ? 1 : -1));
                i25++;
                i16 = i11;
                i17 = i13;
                byteBuffer2 = byteBuffer;
                virtualizer = virtualizer;
                bArr = bArr;
                i26 = 15;
                i18 = 3;
            }
            i15 = i10;
            i19 = i20;
        }
        allocateDirect.rewind();
        long currentTimeMillis2 = System.currentTimeMillis();
        String str = "etc1_" + i17 + ConstantDescs.DEFAULT_NAME + j10 + ".tex";
        ETC1Util.ETC1Texture eTC1Texture2 = (!z11 || (readFromCache = virtualizer.readFromCache(str)) == null) ? null : new ETC1Util.ETC1Texture(i15, i16, readFromCache);
        if (eTC1Texture2 == null) {
            ETC1Util.ETC1Texture compressTexture = ETC1Util.compressTexture(allocateDirect, i15, i16, i18, i15 * 3);
            if (z11) {
                virtualizer.storeInCache(compressTexture.getData(), str);
            }
            eTC1Texture = compressTexture;
        } else {
            eTC1Texture = eTC1Texture2;
        }
        ETC1Util.loadTexture(3553, i13, 0, 6407, 5121, eTC1Texture);
        long currentTimeMillis3 = System.currentTimeMillis();
        Logger.log("...done in " + (currentTimeMillis3 - currentTimeMillis) + "/" + (currentTimeMillis3 - currentTimeMillis2) + DateFormat.MINUTE_SECOND);
        return true;
    }

    @Override
    public void glClipPlanef(int i10, float[] fArr, int i11) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glClipPlanex(int i10, int[] iArr, int i11) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glDeleteBuffers(int i10, int[] iArr, int i11) {
        GLES20.glDeleteBuffers(i10, iArr, i11);
    }

    @Override
    public void glDeleteTextures(int i10, int[] iArr, int i11) {
        GLES20.glDeleteTextures(i10, iArr, i11);
    }

    @Override
    public void glDrawElements(int i10, int i11, int i12, int i13) {
        GLES20.glDrawElements(i10, i11, i12, i13);
    }

    @Override
    public void glFogfv(int i10, FloatBuffer floatBuffer) {
        if (i10 == 2918) {
            this.fogColor[0] = floatBuffer.get(0);
            this.fogColor[1] = floatBuffer.get(1);
            this.fogColor[2] = floatBuffer.get(2);
        }
    }

    @Override
    public void glFogxv(int i10, int[] iArr, int i11) {
    }

    @Override
    public void glGenBuffers(int i10, int[] iArr, int i11) {
        checkError(SuggestionSpan.SUGGESTION_SPAN_PICKED_BEFORE);
        GLES20.glGenBuffers(i10, iArr, i11);
    }

    @Override
    public void glGenTextures(int i10, int[] iArr, int i11) {
        GLES20.glGenTextures(i10, iArr, i11);
    }

    @Override
    public void glGetBooleanv(int i10, boolean[] zArr, int i11) {
        GLES20.glGetBooleanv(i10, zArr, i11);
    }

    @Override
    public void glGetBufferParameteriv(int i10, int i11, int[] iArr, int i12) {
        GLES20.glGetBufferParameteriv(i10, i11, iArr, i12);
    }

    @Override
    public void glGetClipPlanef(int i10, float[] fArr, int i11) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetClipPlanex(int i10, int[] iArr, int i11) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetFixedv(int i10, int[] iArr, int i11) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetFloatv(int i10, float[] fArr, int i11) {
        GLES20.glGetFloatv(i10, fArr, i11);
    }

    @Override
    public void glGetIntegerv(int i10, int[] iArr, int i11) {
        GLES20.glGetIntegerv(i10, iArr, i11);
    }

    @Override
    public void glGetLightfv(int i10, int i11, float[] fArr, int i12) {
    }

    @Override
    public void glGetLightxv(int i10, int i11, int[] iArr, int i12) {
    }

    @Override
    public void glGetMaterialfv(int i10, int i11, float[] fArr, int i12) {
    }

    @Override
    public void glGetMaterialxv(int i10, int i11, int[] iArr, int i12) {
    }

    @Override
    public void glGetTexEnviv(int i10, int i11, int[] iArr, int i12) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetTexEnvxv(int i10, int i11, int[] iArr, int i12) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetTexParameterfv(int i10, int i11, float[] fArr, int i12) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetTexParameteriv(int i10, int i11, int[] iArr, int i12) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glGetTexParameterxv(int i10, int i11, int[] iArr, int i12) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glLightModelfv(int i10, float[] fArr, int i11) {
        if (i10 == 2899) {
            float[] fArr2 = this.ambientColor;
            fArr2[0] = fArr[0];
            fArr2[1] = fArr[1];
            fArr2[2] = fArr[2];
            fArr2[3] = fArr[3];
        }
    }

    @Override
    public void glLightModelxv(int i10, int[] iArr, int i11) {
    }

    @Override
    public void glLightfv(int i10, int i11, float[] fArr, int i12) {
        int i13 = (i10 + Lua.MASK_Bx) * 3;
        if (i11 == 4611) {
            float[] fArr2 = this.lightPositions;
            fArr2[i13] = fArr[0];
            fArr2[i13 + 1] = fArr[1];
            fArr2[i13 + 2] = fArr[2];
            return;
        }
        if (i11 == 4609) {
            float[] fArr3 = this.diffuseColors;
            fArr3[i13] = fArr[0];
            fArr3[i13 + 1] = fArr[1];
            fArr3[i13 + 2] = fArr[2];
            return;
        }
        if (i11 == 4610) {
            float[] fArr4 = this.specularColors;
            fArr4[i13] = fArr[0];
            fArr4[i13 + 1] = fArr[1];
            fArr4[i13 + 2] = fArr[2];
        }
    }

    @Override
    public void glLightxv(int i10, int i11, int[] iArr, int i12) {
    }

    @Override
    public void glMaterialfv(int i10, int i11, float[] fArr, int i12) {
        if (i10 == 1032 && i11 == 5632) {
            this.alpha = fArr[3];
            float[] fArr2 = this.additionalColor;
            fArr2[0] = fArr[0];
            fArr2[1] = fArr[1];
            fArr2[2] = fArr[2];
        }
    }

    @Override
    public void glMaterialxv(int i10, int i11, int[] iArr, int i12) {
    }

    @Override
    public void glMultMatrixx(int[] iArr, int i10) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glPointParameterfv(int i10, float[] fArr, int i11) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glPointParameterxv(int i10, int[] iArr, int i11) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glTexEnvfv(int i10, int i11, float[] fArr, int i12) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glTexEnviv(int i10, int i11, int[] iArr, int i12) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glTexEnvxv(int i10, int i11, int[] iArr, int i12) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glTexParameterfv(int i10, int i11, float[] fArr, int i12) {
        GLES20.glTexParameterfv(i10, i11, fArr, i12);
    }

    @Override
    public void glTexParameteriv(int i10, int i11, int[] iArr, int i12) {
        GLES20.glTexParameteriv(i10, i11, iArr, i12);
    }

    @Override
    public void glTexParameterxv(int i10, int i11, int[] iArr, int i12) {
        throw new RuntimeException("Not implemented!");
    }

    @Override
    public void glMultMatrixf(float[] fArr, int i10) {
        android.opengl.Matrix.multiplyMM(this.tempMatrix, 0, this.currentMatrixPointer, 0, fArr, 0);
        System.arraycopy(this.tempMatrix, 0, this.currentMatrixPointer, 0, 16);
    }

    @Override
    public void glNormalPointer(int i10, int i11, int i12) {
        int i13 = this.activeShader.normalHandle;
        if (i13 != -1) {
            GLES20.glVertexAttribPointer(i13, 3, i10, false, i11, i12);
        }
    }

    @Override
    public void glVertexPointer(int i10, int i11, int i12, int i13) {
        int i14 = this.activeShader.vertexHandle;
        if (i14 != -1) {
            GLES20.glVertexAttribPointer(i14, i10, i11, false, i12, i13);
        }
    }

    @Override
    public void clearTangents() {
        int i10 = this.activeShader.tangentHandle;
        if (i10 != -1) {
            GLES20.glDisableVertexAttribArray(i10);
        }
    }

    @Override
    public void glColorPointer(int i10, int i11, int i12, int i13) {
        int i14 = this.activeShader.colorHandle;
        if (i14 != -1) {
            GLES20.glVertexAttribPointer(i14, i10, i11, false, i12, i13);
        }
    }

    @Override
    public void glLoadMatrixf(float[] fArr, int i10) {
        System.arraycopy(fArr, i10, this.currentMatrixPointer, 0, 16);
        if (this.currentMatrixPointer == this.textureMatrix) {
            this.textureMatrixUsed = true;
        }
    }

    @Override
    public void glLoadMatrixx(int[] iArr, int i10) {
        for (int i11 = 0; i11 < 16; i11++) {
            this.currentMatrixPointer[i11] = iArr[i11 + i10];
        }
        if (this.currentMatrixPointer == this.textureMatrix) {
            this.textureMatrixUsed = true;
        }
    }

    @Override
    public void glTexCoordPointer(int i10, int i11, int i12, int i13) {
        int i14 = this.activeShader.textureHandle[getTextureStageIndex()];
        if (i14 != -1) {
            GLES20.glVertexAttribPointer(i14, i10, i11, false, i12, i13);
        }
    }

    @Override
    public void setTangents(int i10) {
        if (this.activeShader.tangentHandle != -1) {
            GLES20.glBindBuffer(34962, i10);
            GLES20.glEnableVertexAttribArray(this.activeShader.tangentHandle);
            GLES20.glVertexAttribPointer(this.activeShader.tangentHandle, 4, 5132, false, 16, 0);
        }
    }
}

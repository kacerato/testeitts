package com.jme3.shader;

import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.renderer.Camera;
import com.jme3.system.Timer;
import java.util.ArrayList;

public class UniformBindingManager {
    private float far;
    private float near;
    private Float time;
    private Timer timer;
    private Float tpf;
    private int viewHeight;
    private int viewWidth;
    private int viewX;
    private int viewY;
    private final Vector3f camUp = new Vector3f();
    private final Vector3f camLeft = new Vector3f();
    private final Vector3f camDir = new Vector3f();
    private final Vector3f camLoc = new Vector3f();
    private final Matrix4f tempMatrix = new Matrix4f();
    private final Matrix4f viewMatrix = new Matrix4f();
    private final Matrix4f projMatrix = new Matrix4f();
    private final Matrix4f viewProjMatrix = new Matrix4f();
    private final Matrix4f worldMatrix = new Matrix4f();
    private final Matrix4f worldViewMatrix = new Matrix4f();
    private final Matrix4f worldViewProjMatrix = new Matrix4f();
    private final Matrix3f normalMatrix = new Matrix3f();
    private final Matrix3f worldNormalMatrix = new Matrix3f();
    private final Matrix4f worldMatrixInv = new Matrix4f();
    private final Matrix3f worldMatrixInvTrsp = new Matrix3f();
    private final Matrix4f viewMatrixInv = new Matrix4f();
    private final Matrix4f projMatrixInv = new Matrix4f();
    private final Matrix4f viewProjMatrixInv = new Matrix4f();
    private final Matrix4f worldViewMatrixInv = new Matrix4f();
    private final Matrix3f normalMatrixInv = new Matrix3f();
    private final Matrix4f worldViewProjMatrixInv = new Matrix4f();
    private final Vector4f viewPort = new Vector4f();
    private final Vector2f resolution = new Vector2f();
    private final Vector2f resolutionInv = new Vector2f();
    private final Vector2f nearFar = new Vector2f();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$shader$UniformBinding;

        static {
            int[] iArr = new int[UniformBinding.values().length];
            $SwitchMap$com$jme3$shader$UniformBinding = iArr;
            try {
                iArr[UniformBinding.WorldMatrix.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.ViewMatrix.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.ProjectionMatrix.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.ViewProjectionMatrix.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.WorldViewMatrix.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.NormalMatrix.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.WorldNormalMatrix.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.WorldViewProjectionMatrix.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.WorldMatrixInverse.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.WorldMatrixInverseTranspose.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.ViewMatrixInverse.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.ProjectionMatrixInverse.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.ViewProjectionMatrixInverse.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.WorldViewMatrixInverse.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.NormalMatrixInverse.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.WorldViewProjectionMatrixInverse.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.ViewPort.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.Resolution.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.ResolutionInverse.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.Aspect.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.FrustumNearFar.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.CameraPosition.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.CameraDirection.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.CameraLeft.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.CameraUp.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.Time.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.Tpf.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$jme3$shader$UniformBinding[UniformBinding.FrameRate.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
        }
    }

    public void newFrame() {
        this.time = Float.valueOf(this.timer.getTimeInSeconds());
        this.tpf = Float.valueOf(this.timer.getTimePerFrame());
    }

    public void setCamera(Camera camera, Matrix4f matrix4f, Matrix4f matrix4f2, Matrix4f matrix4f3) {
        this.viewMatrix.set(matrix4f);
        this.projMatrix.set(matrix4f2);
        this.viewProjMatrix.set(matrix4f3);
        this.camLoc.set(camera.getLocation());
        camera.getLeft(this.camLeft);
        camera.getUp(this.camUp);
        camera.getDirection(this.camDir);
        this.near = camera.getFrustumNear();
        this.far = camera.getFrustumFar();
    }

    public void setTimer(Timer timer) {
        this.timer = timer;
    }

    public void setViewPort(int i10, int i11, int i12, int i13) {
        this.viewX = i10;
        this.viewY = i11;
        this.viewWidth = i12;
        this.viewHeight = i13;
    }

    public void setWorldMatrix(Matrix4f matrix4f) {
        this.worldMatrix.set(matrix4f);
    }

    public void updateUniformBindings(Shader shader) {
        ArrayList<Uniform> boundUniforms = shader.getBoundUniforms();
        for (int i10 = 0; i10 < boundUniforms.size(); i10++) {
            Uniform uniform = boundUniforms.get(i10);
            switch (AnonymousClass1.$SwitchMap$com$jme3$shader$UniformBinding[uniform.getBinding().ordinal()]) {
                case 1:
                    uniform.setValue(VarType.Matrix4, this.worldMatrix);
                    break;
                case 2:
                    uniform.setValue(VarType.Matrix4, this.viewMatrix);
                    break;
                case 3:
                    uniform.setValue(VarType.Matrix4, this.projMatrix);
                    break;
                case 4:
                    uniform.setValue(VarType.Matrix4, this.viewProjMatrix);
                    break;
                case 5:
                    this.worldViewMatrix.set(this.viewMatrix);
                    this.worldViewMatrix.multLocal(this.worldMatrix);
                    uniform.setValue(VarType.Matrix4, this.worldViewMatrix);
                    break;
                case 6:
                    this.tempMatrix.set(this.viewMatrix);
                    this.tempMatrix.multLocal(this.worldMatrix);
                    this.tempMatrix.toRotationMatrix(this.normalMatrix);
                    this.normalMatrix.invertLocal();
                    this.normalMatrix.transposeLocal();
                    uniform.setValue(VarType.Matrix3, this.normalMatrix);
                    break;
                case 7:
                    this.tempMatrix.set(this.worldMatrix);
                    this.tempMatrix.toRotationMatrix(this.worldNormalMatrix);
                    this.worldNormalMatrix.invertLocal();
                    this.worldNormalMatrix.transposeLocal();
                    uniform.setValue(VarType.Matrix3, this.worldNormalMatrix);
                    break;
                case 8:
                    this.worldViewProjMatrix.set(this.viewProjMatrix);
                    this.worldViewProjMatrix.multLocal(this.worldMatrix);
                    uniform.setValue(VarType.Matrix4, this.worldViewProjMatrix);
                    break;
                case 9:
                    this.worldMatrixInv.set(this.worldMatrix);
                    this.worldMatrixInv.invertLocal();
                    uniform.setValue(VarType.Matrix4, this.worldMatrixInv);
                    break;
                case 10:
                    this.worldMatrix.toRotationMatrix(this.worldMatrixInvTrsp);
                    this.worldMatrixInvTrsp.invertLocal().transposeLocal();
                    uniform.setValue(VarType.Matrix3, this.worldMatrixInvTrsp);
                    break;
                case 11:
                    this.viewMatrixInv.set(this.viewMatrix);
                    this.viewMatrixInv.invertLocal();
                    uniform.setValue(VarType.Matrix4, this.viewMatrixInv);
                    break;
                case 12:
                    this.projMatrixInv.set(this.projMatrix);
                    this.projMatrixInv.invertLocal();
                    uniform.setValue(VarType.Matrix4, this.projMatrixInv);
                    break;
                case 13:
                    this.viewProjMatrixInv.set(this.viewProjMatrix);
                    this.viewProjMatrixInv.invertLocal();
                    uniform.setValue(VarType.Matrix4, this.viewProjMatrixInv);
                    break;
                case 14:
                    this.worldViewMatrixInv.set(this.viewMatrix);
                    this.worldViewMatrixInv.multLocal(this.worldMatrix);
                    this.worldViewMatrixInv.invertLocal();
                    uniform.setValue(VarType.Matrix4, this.worldViewMatrixInv);
                    break;
                case 15:
                    this.tempMatrix.set(this.viewMatrix);
                    this.tempMatrix.multLocal(this.worldMatrix);
                    this.tempMatrix.toRotationMatrix(this.normalMatrixInv);
                    this.normalMatrixInv.invertLocal();
                    this.normalMatrixInv.transposeLocal();
                    this.normalMatrixInv.invertLocal();
                    uniform.setValue(VarType.Matrix3, this.normalMatrixInv);
                    break;
                case 16:
                    this.worldViewProjMatrixInv.set(this.viewProjMatrix);
                    this.worldViewProjMatrixInv.multLocal(this.worldMatrix);
                    this.worldViewProjMatrixInv.invertLocal();
                    uniform.setValue(VarType.Matrix4, this.worldViewProjMatrixInv);
                    break;
                case 17:
                    this.viewPort.set(this.viewX, this.viewY, this.viewWidth, this.viewHeight);
                    uniform.setValue(VarType.Vector4, this.viewPort);
                    break;
                case 18:
                    this.resolution.set(this.viewWidth, this.viewHeight);
                    uniform.setValue(VarType.Vector2, this.resolution);
                    break;
                case 19:
                    this.resolutionInv.set(1.0f / this.viewWidth, 1.0f / this.viewHeight);
                    uniform.setValue(VarType.Vector2, this.resolutionInv);
                    break;
                case 20:
                    uniform.setValue(VarType.Float, Float.valueOf(this.viewWidth / this.viewHeight));
                    break;
                case 21:
                    this.nearFar.set(this.near, this.far);
                    uniform.setValue(VarType.Vector2, this.nearFar);
                    break;
                case 22:
                    uniform.setValue(VarType.Vector3, this.camLoc);
                    break;
                case 23:
                    uniform.setValue(VarType.Vector3, this.camDir);
                    break;
                case 24:
                    uniform.setValue(VarType.Vector3, this.camLeft);
                    break;
                case 25:
                    uniform.setValue(VarType.Vector3, this.camUp);
                    break;
                case 26:
                    uniform.setValue(VarType.Float, this.time);
                    break;
                case 27:
                    uniform.setValue(VarType.Float, this.tpf);
                    break;
                case 28:
                    uniform.setValue(VarType.Float, Float.valueOf(this.timer.getFrameRate()));
                    break;
            }
        }
    }
}

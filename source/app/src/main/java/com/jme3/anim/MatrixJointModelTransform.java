package com.jme3.anim;

import com.jme3.anim.util.JointModelTransform;
import com.jme3.math.Matrix4f;
import com.jme3.math.Transform;

public class MatrixJointModelTransform implements JointModelTransform {
    private final Matrix4f modelTransformMatrix = new Matrix4f();
    private final Transform modelTransform = new Transform();

    @Override
    public void applyBindPose(Transform transform, Matrix4f matrix4f, Joint joint) {
        this.modelTransformMatrix.set(matrix4f).invertLocal();
        if (joint != null) {
            Matrix4f invert = ((MatrixJointModelTransform) joint.getJointModelTransform()).getModelTransformMatrix().invert();
            Matrix4f matrix4f2 = this.modelTransformMatrix;
            invert.mult(matrix4f2, matrix4f2);
        }
        transform.fromTransformMatrix(this.modelTransformMatrix);
    }

    @Override
    public Transform getModelTransform() {
        this.modelTransform.fromTransformMatrix(this.modelTransformMatrix);
        return this.modelTransform;
    }

    public Matrix4f getModelTransformMatrix() {
        return this.modelTransformMatrix;
    }

    @Override
    public void getOffsetTransform(Matrix4f matrix4f, Matrix4f matrix4f2) {
        this.modelTransformMatrix.mult(matrix4f2, matrix4f);
    }

    @Override
    public void updateModelTransform(Transform transform, Joint joint) {
        transform.toTransformMatrix(this.modelTransformMatrix);
        if (joint != null) {
            Matrix4f modelTransformMatrix = ((MatrixJointModelTransform) joint.getJointModelTransform()).getModelTransformMatrix();
            Matrix4f matrix4f = this.modelTransformMatrix;
            modelTransformMatrix.mult(matrix4f, matrix4f);
        }
    }
}

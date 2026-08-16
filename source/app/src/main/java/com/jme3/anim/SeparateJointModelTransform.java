package com.jme3.anim;

import com.jme3.anim.util.JointModelTransform;
import com.jme3.math.Matrix4f;
import com.jme3.math.Transform;

public class SeparateJointModelTransform implements JointModelTransform {
    private final Transform modelTransform = new Transform();

    @Override
    public void applyBindPose(Transform transform, Matrix4f matrix4f, Joint joint) {
        transform.fromTransformMatrix(matrix4f.invert());
        if (joint != null) {
            transform.combineWithParent(joint.getModelTransform().invert());
        }
    }

    @Override
    public Transform getModelTransform() {
        return this.modelTransform;
    }

    @Override
    public void getOffsetTransform(Matrix4f matrix4f, Matrix4f matrix4f2) {
        this.modelTransform.toTransformMatrix(matrix4f).mult(matrix4f2, matrix4f);
    }

    @Override
    public void updateModelTransform(Transform transform, Joint joint) {
        this.modelTransform.set(transform);
        if (joint != null) {
            this.modelTransform.combineWithParent(joint.getModelTransform());
        }
    }
}

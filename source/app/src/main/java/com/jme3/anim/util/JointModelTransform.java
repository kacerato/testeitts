package com.jme3.anim.util;

import com.jme3.anim.Joint;
import com.jme3.math.Matrix4f;
import com.jme3.math.Transform;

public interface JointModelTransform {
    void applyBindPose(Transform transform, Matrix4f matrix4f, Joint joint);

    Transform getModelTransform();

    void getOffsetTransform(Matrix4f matrix4f, Matrix4f matrix4f2);

    void updateModelTransform(Transform transform, Joint joint);
}

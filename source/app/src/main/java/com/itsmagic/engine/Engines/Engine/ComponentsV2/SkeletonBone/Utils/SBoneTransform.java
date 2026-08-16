package com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.Utils;

import androidx.annotation.NonNull;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import eb.f;
import java.io.Serializable;

public class SBoneTransform implements Serializable {

    @Expose
    @f
    public Vector3 f76392p;

    @Expose
    @f
    @Deprecated
    private Vector3 position;

    @Expose
    @f
    public Quaternion f76393r;

    @Expose
    @f
    @Deprecated
    private Quaternion rotation;

    @Expose
    @f
    public Vector3 f76394s;

    @Expose
    @f
    @Deprecated
    private Vector3 scale;

    public SBoneTransform() {
        this.f76392p = null;
        this.f76393r = null;
        this.f76394s = null;
    }

    public SBoneTransform clone() {
        return new SBoneTransform(Vector3.clone(this.f76392p), Quaternion.k(this.f76393r), Vector3.clone(this.f76394s));
    }

    public Vector3 b() {
        return this.f76392p;
    }

    public Quaternion c() {
        return this.f76393r;
    }

    public Vector3 d() {
        return this.f76394s;
    }

    public void e(Vector3 position) {
        this.f76392p = position;
    }

    public void f(Quaternion rotation) {
        this.f76393r = rotation;
    }

    public void g(Vector3 scale) {
        this.f76394s = scale;
    }

    public void h() {
        Vector3 vector3 = this.position;
        if (vector3 != null) {
            this.f76392p = vector3;
            this.position = null;
        }
        Quaternion quaternion = this.rotation;
        if (quaternion != null) {
            this.f76393r = quaternion;
            this.rotation = null;
        }
        Vector3 vector32 = this.scale;
        if (vector32 != null) {
            this.f76394s = vector32;
            this.scale = null;
        }
    }

    @NonNull
    public String toString() {
        Vector3 vector3 = this.f76392p;
        String vector32 = vector3 != null ? vector3.toString(2) : "(null position)";
        Quaternion quaternion = this.f76393r;
        String quaternion2 = quaternion != null ? quaternion.toString() : "(null rotation)";
        Vector3 vector33 = this.f76394s;
        return vector32 + " " + quaternion2 + " " + (vector33 != null ? vector33.toString(2) : "(null scale)");
    }

    public SBoneTransform(Vector3 position) {
        this.f76392p = position;
        this.f76393r = null;
        this.f76394s = null;
    }

    public SBoneTransform(Vector3 position, Quaternion rotation, Vector3 scale) {
        this.f76392p = position;
        this.f76393r = rotation;
        this.f76394s = scale;
    }
}

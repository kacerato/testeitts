package com.itsmagic.engine.Engines.Engine.Animation;

import androidx.annotation.NonNull;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.Utils.SBoneTransform;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.io.Serializable;

@Deprecated
class FrameEntry implements Serializable {

    public GameObject f72589b = null;

    public FrameEntry f72590c = null;

    @Expose
    @Deprecated
    private String objectUID;

    @Expose
    public String ou;

    @Expose
    public SBoneTransform f72591t;

    @Expose
    @Deprecated
    private SBoneTransform transform;

    public FrameEntry(String objectUID) {
        this.ou = objectUID;
    }

    public FrameEntry a() {
        FrameEntry frameEntry = new FrameEntry(this.ou);
        SBoneTransform sBoneTransform = this.f72591t;
        if (sBoneTransform != null) {
            frameEntry.f72591t = sBoneTransform.clone();
        }
        return frameEntry;
    }

    public GameObject b(GameObject animationPlayerObject) {
        if (C13317e.G(this.f72589b)) {
            this.f72589b = C13317e.m(animationPlayerObject, this.ou);
        }
        return this.f72589b;
    }

    public SBoneTransform c() {
        if (this.f72591t == null) {
            this.f72591t = new SBoneTransform(null, null, null);
        }
        return this.f72591t;
    }

    public void d() {
        this.f72589b = null;
        this.f72590c = null;
    }

    public void e(Vector3 position) {
        c();
        if (position == null) {
            this.f72591t.f76392p = null;
            return;
        }
        SBoneTransform sBoneTransform = this.f72591t;
        if (sBoneTransform.f76392p == null) {
            sBoneTransform.f76392p = new Vector3(1.0f);
        }
        this.f72591t.f76392p.set(position);
    }

    public void f(Quaternion rotation) {
        c();
        if (rotation == null) {
            this.f72591t.f76393r = null;
            return;
        }
        SBoneTransform sBoneTransform = this.f72591t;
        if (sBoneTransform.f76393r == null) {
            sBoneTransform.f76393r = new Quaternion();
        }
        this.f72591t.f76393r.u0(rotation);
    }

    public void g(Vector3 scale) {
        c();
        if (scale == null) {
            this.f72591t.f76394s = null;
            return;
        }
        SBoneTransform sBoneTransform = this.f72591t;
        if (sBoneTransform.f76394s == null) {
            sBoneTransform.f76394s = new Vector3(1.0f);
        }
        this.f72591t.f76394s.set(scale);
    }

    public void h() {
        String str = this.objectUID;
        if (str != null) {
            this.ou = str;
            this.objectUID = null;
        }
        SBoneTransform sBoneTransform = this.transform;
        if (sBoneTransform != null) {
            this.f72591t = sBoneTransform;
            this.transform = null;
        }
        SBoneTransform sBoneTransform2 = this.f72591t;
        if (sBoneTransform2 != null) {
            sBoneTransform2.h();
        }
    }

    @NonNull
    public String toString() {
        SBoneTransform sBoneTransform = this.f72591t;
        return "Entry (" + this.ou + ") (" + (sBoneTransform != null ? sBoneTransform.toString() : "(null transform)") + ")";
    }

    public FrameEntry(String objectUID, SBoneTransform transform) {
        this.ou = objectUID;
        this.f72591t = transform;
    }
}

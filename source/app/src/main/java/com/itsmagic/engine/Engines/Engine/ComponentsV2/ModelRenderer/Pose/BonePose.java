package com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.Pose;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import eb.f;
import java.io.Serializable;

public class BonePose implements Serializable {

    @Expose
    public SteppedArrayList<BonePose> children = new SteppedArrayList<>();

    @Expose
    public String objectGUID;

    @Expose
    @f
    public Vector3 position;

    @Expose
    @f
    public Quaternion rotation;

    @Expose
    @f
    public Vector3 scale;

    public BonePose(String objectGUID, Vector3 position, Quaternion rotation, Vector3 scale) {
        this.objectGUID = objectGUID;
        this.position = position;
        this.rotation = rotation;
        this.scale = scale;
    }
}

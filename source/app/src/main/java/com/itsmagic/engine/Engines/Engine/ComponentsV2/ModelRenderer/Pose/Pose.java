package com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.Pose;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

@Deprecated
public class Pose implements Serializable {

    @Expose
    public String name;

    @Expose
    public BonePose rootBone = null;

    public Pose(String name) {
        this.name = name;
    }
}

package com.itsmagic.engine.Engines.Engine.World.Settings;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.io.Serializable;

public class EditorCameraSettings implements Serializable {

    @Expose
    public Vector3 cameraPos = new Vector3();

    @Expose
    public float cameraZoom = 7.0f;

    @Expose
    public float cameraPitch = 0.0f;

    @Expose
    public float cameraYaw = 0.0f;
}

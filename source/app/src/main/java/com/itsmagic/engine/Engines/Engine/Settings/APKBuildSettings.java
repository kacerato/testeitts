package com.itsmagic.engine.Engines.Engine.Settings;

import com.google.gson.annotations.Expose;

public class APKBuildSettings {

    @Expose
    public a orientation = null;

    public enum a {
        UNLOCK,
        PORTRAIT,
        LANDSCAPE
    }
}

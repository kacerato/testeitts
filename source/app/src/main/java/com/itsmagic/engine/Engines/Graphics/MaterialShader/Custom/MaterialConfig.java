package com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom;

import com.google.gson.annotations.Expose;
import java.util.HashMap;
import java.util.Map;

public class MaterialConfig {

    @Expose
    public String name = null;

    @Expose
    public boolean doubleSided = false;

    @Expose
    public String blendingMode = "opaque";

    @Expose
    public String shadingModel = "lit";

    @Expose
    public String refraction = "false";

    @Expose
    public int max_simultaneous_emitters = 6;

    @Expose
    public Map<String, String> params = new HashMap();

    @Expose
    public Map<String, String> defaults = new HashMap();

    @Expose
    public Map<String, String> precision = new HashMap();
}

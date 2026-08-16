package com.itsmagic.engine.Engines.Graphics.Utils;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class ShaderConfig implements Serializable {

    @Expose
    public boolean compiledFragment;

    @Expose
    public boolean compiledVertex;

    @Expose
    public String name;

    @Expose
    public int version;

    public ShaderConfig(String name, int version, boolean compiledVertex, boolean compiledFragment) {
        this.name = name;
        this.version = version;
        this.compiledVertex = compiledVertex;
        this.compiledFragment = compiledFragment;
    }
}

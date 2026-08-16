package com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class PendingCompilation implements Serializable {

    @Expose
    public String apkToken;

    @Expose
    public String localProjectName;

    @Expose
    public int status = 0;

    @Expose
    public String worldZero;
}

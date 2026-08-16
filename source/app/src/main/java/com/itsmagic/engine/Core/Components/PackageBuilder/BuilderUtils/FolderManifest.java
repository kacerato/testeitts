package com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils;

import com.google.gson.annotations.Expose;
import java.io.File;
import java.io.Serializable;

public class FolderManifest implements Serializable {

    public File f72539b;

    @Expose
    public boolean excludeFromAPK;

    @Expose
    public boolean forceHide;

    @Expose
    public boolean hide;

    @Expose
    public boolean open;

    public FolderManifest() {
        this.excludeFromAPK = false;
        this.hide = false;
        this.forceHide = false;
        this.open = false;
    }

    public FolderManifest(boolean excludeFromAPK) {
        this.hide = false;
        this.forceHide = false;
        this.open = false;
        this.excludeFromAPK = excludeFromAPK;
    }
}

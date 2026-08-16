package com.itsmagic.engine.Core.Components.ProjectController.Utils;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.Serializable;

public class DownloadedPackage implements Serializable {

    @Expose
    public String packID;

    @Expose
    public SteppedArrayList<String> usefulFiles;

    public DownloadedPackage(String packID, SteppedArrayList<String> usefulFiles) {
        this.packID = packID;
        this.usefulFiles = usefulFiles;
    }
}

package com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.Db;

import com.google.gson.annotations.Expose;

public class SyncOperation {

    public static final String f70057a = "exclusion";

    @Expose
    public String ipp;

    @Expose
    public String mode;

    public SyncOperation(String ipp, String mode) {
        this.ipp = ipp;
        this.mode = mode;
    }
}

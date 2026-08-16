package com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class Database {

    @Expose
    private final List<Package> packages = new SteppedArrayList();

    public List<Package> a() {
        return this.packages;
    }
}

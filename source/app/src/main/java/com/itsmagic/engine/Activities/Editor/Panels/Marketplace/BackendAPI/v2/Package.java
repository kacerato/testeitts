package com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class Package {

    @Expose
    public String date;

    @Expose
    public String descriptionB64;

    @Expose
    public String f71742id;

    @Expose
    public boolean isTemplate;

    @Expose
    public String licenseB64;

    @Expose
    public String repositoryURL;

    @Expose
    public String tags;

    @Expose
    public String thumbnail;

    @Expose
    public String titleB64;

    @Expose
    public String userName;

    @Expose
    public int version;

    @Expose
    public int appMajorVersion = 2;

    @Expose
    public List<String> images = new SteppedArrayList();
}

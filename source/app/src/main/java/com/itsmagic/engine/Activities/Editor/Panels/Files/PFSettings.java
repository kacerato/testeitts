package com.itsmagic.engine.Activities.Editor.Panels.Files;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.ProjectController.PFOptions;
import java.io.Serializable;

public class PFSettings implements Serializable {

    @Expose
    public boolean foldersOnTop;

    @Expose
    public boolean inverse;

    @Expose
    public PFOptions.a order;

    @Expose
    public boolean showHide;

    @Expose
    public boolean showextension;

    public PFSettings() {
        this.order = PFOptions.a.Alphabetical;
        this.inverse = false;
        this.showHide = false;
        this.showextension = true;
        this.foldersOnTop = true;
    }

    public PFSettings(PFOptions.a order, boolean inverse, boolean showHide, boolean showextension, boolean foldersOnTop) {
        PFOptions.a aVar = PFOptions.a.Alphabetical;
        this.order = order;
        this.inverse = inverse;
        this.showHide = showHide;
        this.showextension = showextension;
        this.foldersOnTop = foldersOnTop;
    }
}

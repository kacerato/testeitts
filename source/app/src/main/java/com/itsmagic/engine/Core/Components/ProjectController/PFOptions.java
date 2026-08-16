package com.itsmagic.engine.Core.Components.ProjectController;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class PFOptions implements Serializable {

    @Expose
    public boolean foldersOnTop;

    @Expose
    public boolean foldersOnly;

    @Expose
    public boolean inverse;

    @Expose
    public a orderBy;

    @Expose
    public boolean showExtensions;

    @Expose
    public boolean showHide;

    public enum a {
        CreationDate,
        Alphabetical
    }

    public PFOptions(a orderBy, boolean inverse) {
        this.orderBy = orderBy;
        this.inverse = inverse;
        this.showHide = false;
        this.showExtensions = true;
    }

    public PFOptions(a orderBy, boolean inverse, boolean showHide) {
        this.orderBy = orderBy;
        this.inverse = inverse;
        this.showHide = showHide;
        this.showExtensions = true;
    }

    public PFOptions(a orderBy, boolean inverse, boolean showHide, boolean showExtensions) {
        this.orderBy = orderBy;
        this.inverse = inverse;
        this.showHide = showHide;
        this.showExtensions = showExtensions;
    }

    public PFOptions(a orderBy, boolean inverse, boolean showHide, boolean showExtensions, boolean foldersOnTop) {
        this.orderBy = orderBy;
        this.inverse = inverse;
        this.showHide = showHide;
        this.showExtensions = showExtensions;
        this.foldersOnTop = foldersOnTop;
    }

    public PFOptions(a orderBy, boolean inverse, boolean showHide, boolean showExtensions, boolean foldersOnTop, boolean foldersOnly) {
        this.orderBy = orderBy;
        this.inverse = inverse;
        this.showHide = showHide;
        this.showExtensions = showExtensions;
        this.foldersOnTop = foldersOnTop;
        this.foldersOnly = foldersOnly;
    }
}

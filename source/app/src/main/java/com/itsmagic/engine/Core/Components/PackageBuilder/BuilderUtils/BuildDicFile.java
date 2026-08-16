package com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class BuildDicFile implements Serializable {

    @Expose
    private String newName;

    @Expose
    private String orig;

    @Expose
    private int usageCount = 0;

    public BuildDicFile(String orig, String newName) {
        this.orig = orig;
        this.newName = newName;
    }

    public void a() {
        this.usageCount++;
    }

    public String b() {
        return this.newName;
    }

    public String c() {
        return this.orig;
    }

    public int d() {
        return this.usageCount;
    }

    public void e(String newName) {
        this.newName = newName;
    }

    public void f(String orig) {
        this.orig = orig;
    }

    public void g(int usageCount) {
        this.usageCount = usageCount;
    }
}

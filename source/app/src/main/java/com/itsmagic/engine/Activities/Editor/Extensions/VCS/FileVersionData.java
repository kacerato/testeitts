package com.itsmagic.engine.Activities.Editor.Extensions.VCS;

import com.google.gson.annotations.Expose;

public class FileVersionData {

    @Expose
    private String dataFileName;

    @Expose
    private String date;

    @Expose
    private String inProjectName;

    @Expose
    private int mode;

    @Expose
    private String revertFromCommit;

    @Expose
    private long sizeInBytes;

    public String a() {
        return this.dataFileName;
    }

    public String b() {
        return this.date;
    }

    public String c() {
        return this.inProjectName;
    }

    public int d() {
        return this.mode;
    }

    public String e() {
        return this.revertFromCommit;
    }

    public long f() {
        return this.sizeInBytes;
    }

    public void g(String dataFileName) {
        this.dataFileName = dataFileName;
    }

    public void h(String date) {
        this.date = date;
    }

    public void i(String inProjectName) {
        this.inProjectName = inProjectName;
    }

    public void j(int mode) {
        this.mode = mode;
    }

    public void k(String revertFromCommit) {
        this.revertFromCommit = revertFromCommit;
    }

    public void l(long sizeInBytes) {
        this.sizeInBytes = sizeInBytes;
    }
}

package com.itsmagic.engine.Activities.Editor.Panels.AI;

import com.google.gson.annotations.Expose;

public class AIModel {

    @Expose
    private String artStyle;

    @Expose
    private int polyCount;

    @Expose
    private String prompt;

    @Expose
    private String requested_at;

    @Expose
    private String tag;

    public String a() {
        return this.artStyle;
    }

    public int b() {
        return this.polyCount;
    }

    public String c() {
        return this.prompt;
    }

    public String d() {
        return this.requested_at;
    }

    public String e() {
        return this.tag;
    }

    public void f(String artStyle) {
        this.artStyle = artStyle;
    }

    public void g(int polyCount) {
        this.polyCount = polyCount;
    }

    public void h(String prompt) {
        this.prompt = prompt;
    }

    public void i(String requested_at) {
        this.requested_at = requested_at;
    }

    public void j(String tag) {
        this.tag = tag;
    }
}

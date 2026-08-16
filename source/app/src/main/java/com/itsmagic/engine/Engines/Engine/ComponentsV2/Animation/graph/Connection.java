package com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.graph;

import com.google.gson.annotations.Expose;

public class Connection {

    @Expose
    private String from;

    @Expose
    private String to;

    public Connection() {
    }

    public String a() {
        return this.from;
    }

    public String b() {
        return this.to;
    }

    public void c(String from) {
        this.from = from;
    }

    public void d(String to) {
        this.to = to;
    }

    public Connection(String from, String b10) {
        this.from = from;
        this.to = b10;
    }

    public Connection(Node node, Node node1) {
        this(node.a(), node1.a());
    }
}

package com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.graph;

import Tc.b;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import eb.f;

public class Node {

    @Expose
    private final String guid;

    @Expose
    @f
    private final Vector2 position;

    @Expose
    private String title;

    public Node() {
        this.guid = b.L();
        this.position = new Vector2();
    }

    public String a() {
        return this.guid;
    }

    public Vector2 b() {
        return this.position;
    }

    public String c() {
        return this.title;
    }

    public void d(String title) {
        this.title = title;
    }

    public Node(String title, Vector2 position) {
        this.guid = b.L();
        Vector2 vector2 = new Vector2();
        this.position = vector2;
        this.title = title;
        vector2.x0(position);
    }
}

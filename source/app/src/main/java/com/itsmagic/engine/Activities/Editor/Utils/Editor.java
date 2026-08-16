package com.itsmagic.engine.Activities.Editor.Utils;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.io.Serializable;

public class Editor implements Serializable {

    @Expose
    public int depth;

    @Expose
    public boolean open;

    @Expose
    public boolean visible;

    public Editor() {
        this.depth = 0;
        this.open = false;
        this.visible = true;
    }

    public void a(GameObject parent, boolean visible) {
        this.visible = visible;
    }

    public Editor(boolean open) {
        this.depth = 0;
        this.open = open;
    }
}

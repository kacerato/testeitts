package com.itsmagic.engine.Engines.Engine.ComponentsV2.Path;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import f9.InterfaceC13197a;

public class PointReference {

    public boolean f74309a;

    @Expose
    public InterfaceC13197a component;

    @Expose
    public GameObject gameObject;

    public int f74310b = -1;

    public final Vector3 f74311c = new Vector3();

    public final Vector3 f74312d = new Vector3();

    public final Vector3 f74313e = new Vector3();

    public final Vector3 f74314f = new Vector3();

    public PointReference(GameObject gameObject) {
        this.gameObject = gameObject;
    }

    public void a(GameObject gameObject, InterfaceC13197a component) {
        this.gameObject = gameObject;
        this.component = component;
        this.f74310b = -1;
    }

    public PointReference(GameObject gameObject, InterfaceC13197a component) {
        this.gameObject = gameObject;
        this.component = component;
    }
}

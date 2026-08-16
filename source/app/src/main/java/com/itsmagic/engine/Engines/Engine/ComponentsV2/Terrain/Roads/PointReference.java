package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import y9.InterfaceC16153a;

public class PointReference {

    public boolean f76877a;

    @Expose
    public InterfaceC16153a component;

    @Expose
    public GameObject gameObject;

    public int f76878b = -1;

    public final Vector3 f76879c = new Vector3();

    public final Vector3 f76880d = new Vector3();

    public final Vector3 f76881e = new Vector3();

    public final Vector3 f76882f = new Vector3();

    public PointReference(GameObject gameObject) {
        this.gameObject = gameObject;
    }

    public void a(GameObject gameObject, InterfaceC16153a component) {
        this.gameObject = gameObject;
        this.component = component;
        this.f76878b = -1;
    }

    public PointReference(GameObject gameObject, InterfaceC16153a component) {
        this.gameObject = gameObject;
        this.component = component;
    }
}

package Mb;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;

public class a {

    public GameObject f14840a;

    public GameObject f14841b;

    public int f14842c;

    public boolean f14843d;

    public boolean f14844e;

    public boolean f14845f;

    public b f14846g;

    public a(GameObject gameObject, GameObject parent) {
        this.f14845f = true;
        this.f14840a = gameObject;
        this.f14841b = parent;
        this.f14843d = false;
    }

    public void a() {
        GameObject gameObject = this.f14840a;
        if (gameObject != null) {
            gameObject.Y1();
        }
        this.f14840a = null;
        GameObject gameObject2 = this.f14841b;
        if (gameObject2 != null) {
            gameObject2.Y1();
        }
        this.f14841b = null;
        this.f14846g = null;
    }

    public a(GameObject gameObject, GameObject parent, int index) {
        this.f14845f = true;
        this.f14840a = gameObject;
        this.f14841b = parent;
        this.f14842c = index;
        this.f14843d = true;
    }

    public a(b instantiateObj) {
        this.f14845f = true;
        this.f14846g = instantiateObj;
    }
}

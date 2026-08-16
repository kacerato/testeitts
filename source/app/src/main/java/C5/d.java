package C5;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;

public class d {

    public GameObject f2154a;

    public Component f2155b;

    public a f2156c;

    public C5.a f2157d;

    public String f2158e;

    public D5.a f2159f;

    public boolean f2160g;

    public enum a {
        GameObject,
        Renderer,
        Component,
        Button
    }

    public d(GameObject gameObject, a type, C5.a insComponent) {
        this.f2160g = false;
        this.f2154a = gameObject;
        this.f2156c = type;
        this.f2157d = insComponent;
    }

    public void a() {
        this.f2154a = null;
        this.f2155b = null;
        this.f2156c = null;
        C5.a aVar = this.f2157d;
        if (aVar != null) {
            aVar.a();
        }
        this.f2157d = null;
        this.f2158e = null;
        this.f2159f = null;
        this.f2160g = true;
    }

    public d(GameObject gameObject, a type, C5.a insComponent, Component component) {
        this.f2160g = false;
        this.f2154a = gameObject;
        this.f2156c = type;
        this.f2157d = insComponent;
        this.f2155b = component;
    }

    public d(a type, C5.a insComponent) {
        this.f2160g = false;
        this.f2156c = type;
        this.f2157d = insComponent;
    }

    public d(D5.a buttonEntryCallback, String buttonTittle) {
        this.f2160g = false;
        this.f2159f = buttonEntryCallback;
        this.f2158e = buttonTittle;
        this.f2156c = a.Button;
    }
}

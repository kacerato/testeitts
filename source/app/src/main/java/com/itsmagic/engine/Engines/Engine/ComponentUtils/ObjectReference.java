package com.itsmagic.engine.Engines.Engine.ComponentUtils;

import C5.b;
import D5.k;
import R8.e;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import java.io.Serializable;

public class ObjectReference implements Serializable {

    public GameObject f72633b;

    public int f72634c;

    public Component f72635d;

    @Expose
    public String guid;

    public class a implements k {

        public final e f72636a;

        public a(final e val$listener) {
            this.f72636a = val$listener;
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public GameObject get() {
            return ObjectReference.this.e();
        }

        @Override
        public String getExtraTittle() {
            return " (" + Lang.l(Lang.T.OBJECT) + ")";
        }

        @Override
        public GameObject getParent() {
            return null;
        }

        @Override
        public void set(GameObject gameObject) {
            if (!this.f72636a.c(gameObject)) {
                this.f72636a.a();
            } else {
                ObjectReference.this.h(gameObject);
                this.f72636a.b();
            }
        }
    }

    public ObjectReference() {
        this.guid = null;
    }

    public static ObjectReference b(ObjectReference reference) {
        if (reference != null) {
            return reference.clone();
        }
        return null;
    }

    @Override
    public ObjectReference clone() {
        return new ObjectReference(this.guid);
    }

    public String c() {
        return this.guid;
    }

    public b d(String tittle, e listener) {
        return new b(new a(listener), tittle);
    }

    public GameObject e() {
        return this.f72633b;
    }

    public boolean f() {
        if (C13317e.G(e())) {
            this.f72633b = null;
            j();
        }
        return C13317e.J(e());
    }

    public <T extends Component> T g(Component.e eVar) {
        j();
        if (e() == null) {
            return null;
        }
        Component component = this.f72635d;
        if (component != null && component.f79250n != e()) {
            this.f72635d = null;
        }
        if (this.f72635d == null) {
            this.f72635d = e().c0(eVar);
        }
        return (T) this.f72635d;
    }

    public void h(GameObject gameObject) {
        if (this.f72633b != gameObject) {
            this.f72633b = gameObject;
            if (gameObject != null) {
                this.guid = gameObject.getGuid().l();
            } else {
                this.guid = null;
            }
            this.f72634c = 0;
        }
    }

    public void i(String guid) {
        this.guid = guid;
    }

    public void j() {
        String str;
        String str2 = this.guid;
        if (str2 == null || str2.isEmpty()) {
            this.f72633b = null;
        }
        if (this.f72633b != null || this.f72634c >= 3 || (str = this.guid) == null || str.isEmpty()) {
            return;
        }
        this.f72633b = Lb.k.h(this.guid, com.itsmagic.engine.Engines.Engine.World.a.f80030c);
        this.f72634c++;
    }

    public ObjectReference(GameObject gameObject) {
        this.guid = null;
        h(gameObject);
    }

    public ObjectReference(String guid) {
        this.guid = guid;
    }

    public ObjectReference(String guid, GameObject object) {
        this.guid = guid;
        this.f72633b = object;
    }
}

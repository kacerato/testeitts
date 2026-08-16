package com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider;

import android.content.Context;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import gb.C13317e;
import java.util.LinkedList;
import java.util.List;
import xn.e;

public class c {

    public GameObject f73297a;

    public a f73298b;

    public interface a {
        Vertex a();

        String getError();

        float[] getMatrix();

        boolean isActive();
    }

    public static c b(c navmeshShape) {
        if (navmeshShape == null) {
            return null;
        }
        return new c();
    }

    public e a() {
        Vertex a10;
        if (!this.f73298b.isActive() || (a10 = this.f73298b.a()) == null) {
            return null;
        }
        NativeFloatBuffer i12 = a10.i1();
        NativeIntBuffer V02 = a10.V0();
        float[] fArr = new float[16];
        Nc.c.b(this.f73298b.getMatrix(), fArr);
        return new e(fArr, i12, V02);
    }

    public void c(GameObject gameObject, a listener) {
        this.f73297a = gameObject;
        this.f73298b = listener;
    }

    public List<C5.b> d(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        C13317e.J(this.f73297a);
        return linkedList;
    }

    public void e(GameObject gameObject, a listener) {
        if (C13317e.J(gameObject)) {
            this.f73297a = gameObject;
            this.f73298b = listener;
        }
    }
}

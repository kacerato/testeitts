package com.itsmagic.engine.Engines.Engine.ComponentsV2.Modifiers;

import C5.b;
import D5.h;
import android.content.Context;
import android.view.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class Array extends Component {

    public static final String f73819J = "Array";

    public static final Class f73820K = Array.class;

    public final AtomicBoolean f73821E;

    public boolean f73822F;

    public final Object f73823G;

    public final List<GameObject> f73824H;

    public final Vector3 f73825I;

    @Expose
    @f
    private int count;

    @Expose
    @f
    private Vector3 deslocation;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Array.f73820K;
        }

        @Override
        public String c() {
            return Array.f73819J;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.MODIFIERS);
        }

        @Override
        public String f() {
            return Array.f73819J;
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", Array.this.count + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Array.this.setCount(variable.int_value);
            }
        }
    }

    public class c implements D5.b {
        public c() {
        }

        @Override
        public void a(View view) {
            Array.this.requestRebuild();
        }
    }

    static {
        C13201a.b(new a());
    }

    public Array() {
        super(f73819J);
        this.count = 10;
        this.deslocation = new Vector3(0.0f, 0.0f, 1.0f);
        this.f73821E = new AtomicBoolean();
        this.f73822F = false;
        this.f73823G = new Object();
        this.f73824H = new SteppedArrayList();
        this.f73825I = new Vector3();
    }

    private void deleteSpawned() {
        synchronized (this.f73823G) {
            for (int i10 = 0; i10 < this.f73824H.size(); i10++) {
                try {
                    com.itsmagic.engine.Engines.Engine.World.b.c(this.f73824H.get(i10));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f73824H.clear();
        }
    }

    public void requestRebuild() {
        synchronized (this.f73823G) {
            this.f73821E.set(true);
        }
    }

    public int getCount() {
        return this.count;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.COLLIDER);
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        C5.b bVar = new C5.b((h) new b(), "Count", b.a.SLInt, false);
        if (gameObject != null) {
            bVar.d(gameObject, this, oc.c.f98682m, com.itsmagic.engine.Engines.Engine.Animation.c.INT);
        }
        linkedList.add(bVar);
        C5.b K10 = F5.c.K(Lang.l(Lang.T.OFFSET_POSITION), this.deslocation);
        if (gameObject != null) {
            K10.d(gameObject, this, "deslocation", com.itsmagic.engine.Engines.Engine.Animation.c.VEC3);
        }
        linkedList.add(K10);
        linkedList.add(new C5.b(new c(), "Rebuild", b.a.Button));
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f73819J;
    }

    @Override
    public Component.e getType() {
        return Component.e.Array;
    }

    @Override
    public void onDetach() {
        deleteSpawned();
        super.onDetach();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject != null) {
            synchronized (this.f73823G) {
                try {
                    if (!this.f73822F) {
                        requestRebuild();
                    }
                    if (!this.f73825I.equally(this.deslocation)) {
                        requestRebuild();
                    }
                    if (this.f73821E.compareAndSet(true, false)) {
                        this.f73825I.set(this.deslocation);
                        this.f73822F = true;
                        deleteSpawned();
                        for (int i10 = 0; i10 < this.count; i10++) {
                            GameObject clone = gameObject.clone();
                            for (int i11 = 0; i11 < clone.N(); i11++) {
                                Component L10 = clone.L(i11);
                                if ((L10 instanceof Array) && L10.getGuid().j().equals(getGuid().j())) {
                                    clone.u1(L10);
                                }
                            }
                            this.f73824H.add(clone);
                            if (gameObject.H0() != null) {
                                clone.transform.w(this.deslocation.mul(i10 + 1));
                                com.itsmagic.engine.Engines.Engine.World.b.h(clone, gameObject.H0());
                            } else {
                                clone.transform.p3(this.deslocation.mul(i10 + 1));
                                clone.transform.setScale(1.0f);
                                clone.transform.G3();
                                com.itsmagic.engine.Engines.Engine.World.b.h(clone, gameObject);
                            }
                        }
                    }
                } finally {
                }
            }
        }
    }

    public void setCount(int count) {
        synchronized (this.f73823G) {
            try {
                boolean z10 = this.count != count;
                this.count = count;
                if (z10) {
                    requestRebuild();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public Component mo1248clone() {
        Array array = new Array();
        array.count = this.count;
        array.deslocation = Vector3.clone(this.deslocation);
        return array;
    }
}

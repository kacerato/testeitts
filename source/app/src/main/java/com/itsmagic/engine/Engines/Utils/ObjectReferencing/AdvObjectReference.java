package com.itsmagic.engine.Engines.Utils.ObjectReferencing;

import Qc.a;
import Qc.c;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class AdvObjectReference extends a {

    public GameObject f81486a;

    public GameObject f81487b;

    public c f81488c;

    @Expose
    private int childCount;

    @Expose
    private boolean hasObject = false;

    @Expose
    public String uniqueGUID = null;

    @Expose
    public String duplicableGUID = null;

    @Expose
    public String name = null;

    @Expose
    public String parentName = null;

    @Expose
    private boolean childOfReference = false;

    @Expose
    private final List<CompData> componentList = new SteppedArrayList();

    public AdvObjectReference() {
    }

    public static AdvObjectReference j(AdvObjectReference reference) {
        if (reference != null) {
            return reference.i();
        }
        return null;
    }

    public final boolean e(GameObject gameObject) {
        return gameObject.D() == this.childCount;
    }

    public final int f(GameObject gameObject) {
        int i10 = 0;
        for (int i11 = 0; i11 < this.componentList.size(); i11++) {
            CompData compData = this.componentList.get(i11);
            if (gameObject.N() > i11) {
                Component L10 = gameObject.L(i11);
                boolean d10 = d(L10.getGuid().l(), compData.uniqueGUID);
                boolean d11 = d(L10.getGuid().j(), compData.duplicableGUID);
                boolean d12 = d(L10.getSerializedType(), compData.type);
                if (d10) {
                    i10++;
                }
                if (d11) {
                    i10++;
                }
                if (d12) {
                    i10++;
                }
            }
        }
        return i10;
    }

    public final boolean g(GameObject gameObject) {
        if (!this.childOfReference || n(gameObject)) {
            boolean d10 = d(gameObject.getGuid().l(), this.uniqueGUID);
            boolean d11 = d(gameObject.getGuid().j(), this.duplicableGUID);
            boolean d12 = d(gameObject.getName(), this.name);
            boolean h10 = h(gameObject);
            boolean e10 = e(gameObject);
            int f10 = f(gameObject);
            c cVar = new c();
            cVar.f22061a = gameObject;
            if (d10) {
                cVar.f22062b++;
            }
            if (d11) {
                cVar.f22062b++;
            }
            if (d12) {
                cVar.f22062b++;
            }
            if (h10) {
                cVar.f22062b++;
            }
            if (e10) {
                cVar.f22062b++;
            }
            int i10 = cVar.f22062b + f10;
            cVar.f22062b = i10;
            if (i10 > 0) {
                c cVar2 = this.f81488c;
                if (cVar2 == null) {
                    this.f81488c = cVar;
                } else if (cVar2.f22062b <= i10) {
                    this.f81488c = cVar;
                }
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            if (g(gameObject.C(i11))) {
                return true;
            }
        }
        return false;
    }

    public final boolean h(GameObject gameObject) {
        if (gameObject.H0() == null) {
            String str = this.parentName;
            return str == null || str.isEmpty();
        }
        String str2 = this.parentName;
        return (str2 == null || str2.isEmpty()) ? gameObject.H0() == null : this.parentName.equals(gameObject.H0().getName());
    }

    public AdvObjectReference i() {
        AdvObjectReference advObjectReference = new AdvObjectReference();
        advObjectReference.hasObject = this.hasObject;
        advObjectReference.uniqueGUID = this.uniqueGUID;
        advObjectReference.duplicableGUID = this.duplicableGUID;
        advObjectReference.name = this.name;
        advObjectReference.parentName = this.parentName;
        advObjectReference.childCount = this.childCount;
        advObjectReference.childOfReference = this.childOfReference;
        advObjectReference.componentList.clear();
        for (int i10 = 0; i10 < this.componentList.size(); i10++) {
            CompData compData = this.componentList.get(i10);
            if (compData != null) {
                CompData compData2 = new CompData();
                compData2.uniqueGUID = compData.uniqueGUID;
                compData2.duplicableGUID = compData.duplicableGUID;
                compData2.type = compData.type;
                advObjectReference.componentList.add(compData2);
            }
        }
        return advObjectReference;
    }

    public GameObject k() {
        GameObject gameObject = this.f81486a;
        if (gameObject != null) {
            return gameObject;
        }
        if (this.hasObject) {
            this.f81488c = null;
            List<GameObject> list = com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b;
            for (int i10 = 0; i10 < list.size() && !g(list.get(i10)); i10++) {
            }
            c cVar = this.f81488c;
            if (cVar != null) {
                this.f81486a = cVar.f22061a;
                this.f81488c = null;
            }
        }
        return this.f81486a;
    }

    public GameObject l() {
        return this.f81487b;
    }

    public GameObject m() {
        return this.f81486a;
    }

    public final boolean n(GameObject gameObject) {
        GameObject gameObject2 = this.f81487b;
        if (gameObject2 != null) {
            return gameObject.d1(gameObject2);
        }
        return false;
    }

    public void o(GameObject attachedTo) {
        this.f81487b = attachedTo;
    }

    public void p(GameObject gameObject) {
        this.f81486a = gameObject;
    }

    public void q() {
        GameObject gameObject = this.f81486a;
        if (gameObject == null) {
            this.hasObject = false;
            this.uniqueGUID = null;
            this.duplicableGUID = null;
            this.name = null;
            this.parentName = null;
            this.childCount = 0;
            this.componentList.clear();
            this.childOfReference = false;
            return;
        }
        this.hasObject = true;
        this.uniqueGUID = gameObject.getGuid().l();
        this.duplicableGUID = this.f81486a.getGuid().j();
        this.name = this.f81486a.getName();
        if (this.f81486a.H0() != null) {
            this.parentName = this.f81486a.H0().getName();
        } else {
            this.parentName = null;
        }
        this.childCount = this.f81486a.D();
        this.componentList.clear();
        for (int i10 = 0; i10 < this.f81486a.N(); i10++) {
            Component L10 = this.f81486a.L(i10);
            CompData compData = new CompData();
            compData.uniqueGUID = L10.getGuid().l();
            compData.duplicableGUID = L10.getGuid().j();
            compData.type = L10.getSerializedType();
            this.componentList.add(compData);
        }
        GameObject gameObject2 = this.f81487b;
        if (gameObject2 != null) {
            this.childOfReference = this.f81486a.d1(gameObject2);
        } else {
            this.childOfReference = false;
        }
    }

    public String r() {
        return X7.a.m().toJson(this);
    }

    public AdvObjectReference(GameObject gameObject) {
        this.f81486a = gameObject;
    }
}

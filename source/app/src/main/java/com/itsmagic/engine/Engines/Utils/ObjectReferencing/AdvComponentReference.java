package com.itsmagic.engine.Engines.Utils.ObjectReferencing;

import Qc.a;
import Qc.b;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;

public class AdvComponentReference extends a {

    public Component f81483a;

    public GameObject f81484b;

    public b f81485c;

    @Expose
    private boolean hasComp = false;

    @Expose
    public CompData componentData = null;

    @Expose
    public AdvObjectReference objectReference = null;

    public AdvComponentReference() {
    }

    public static AdvComponentReference f(AdvComponentReference reference) {
        if (reference != null) {
            return reference.e();
        }
        return null;
    }

    public AdvComponentReference e() {
        AdvComponentReference advComponentReference = new AdvComponentReference();
        advComponentReference.hasComp = this.hasComp;
        if (this.componentData != null) {
            CompData compData = new CompData();
            CompData compData2 = this.componentData;
            compData.uniqueGUID = compData2.uniqueGUID;
            compData.duplicableGUID = compData2.duplicableGUID;
            compData.type = compData2.type;
            advComponentReference.componentData = compData;
        }
        AdvObjectReference advObjectReference = this.objectReference;
        if (advObjectReference != null) {
            advComponentReference.objectReference = advObjectReference.i();
        }
        return advComponentReference;
    }

    public Component g() {
        Component component = this.f81483a;
        if (component != null) {
            return component;
        }
        if (this.hasComp) {
            this.f81485c = null;
            AdvObjectReference advObjectReference = this.objectReference;
            if (advObjectReference != null && this.componentData != null) {
                advObjectReference.o(this.f81484b);
                GameObject k10 = this.objectReference.k();
                if (k10 != null) {
                    for (int i10 = 0; i10 < k10.N(); i10++) {
                        Component L10 = k10.L(i10);
                        b bVar = new b();
                        bVar.f22059a = L10;
                        boolean d10 = d(L10.getGuid().l(), this.componentData.uniqueGUID);
                        boolean d11 = d(L10.getGuid().j(), this.componentData.duplicableGUID);
                        boolean d12 = d(L10.getSerializedType(), this.componentData.type);
                        if (d10) {
                            bVar.f22060b++;
                        }
                        if (d11) {
                            bVar.f22060b++;
                        }
                        if (d12) {
                            bVar.f22060b++;
                        }
                        int i11 = bVar.f22060b;
                        if (i11 > 0) {
                            b bVar2 = this.f81485c;
                            if (bVar2 == null) {
                                this.f81485c = bVar;
                            } else if (bVar2.f22060b <= i11) {
                                this.f81485c = bVar;
                            }
                        }
                    }
                }
            }
        }
        b bVar3 = this.f81485c;
        if (bVar3 != null) {
            this.f81483a = bVar3.f22059a;
            this.f81485c = null;
        }
        return this.f81483a;
    }

    public GameObject h() {
        return this.f81484b;
    }

    public void i(GameObject attachedTo) {
        this.f81484b = attachedTo;
    }

    public void j() {
        GameObject gameObject;
        Component component = this.f81483a;
        if (component == null || (gameObject = component.f79250n) == null) {
            this.hasComp = false;
            this.componentData = null;
            this.objectReference = null;
            return;
        }
        this.hasComp = true;
        AdvObjectReference advObjectReference = new AdvObjectReference(gameObject);
        this.objectReference = advObjectReference;
        advObjectReference.o(this.f81484b);
        this.objectReference.q();
        CompData compData = new CompData();
        compData.uniqueGUID = this.f81483a.getGuid().l();
        compData.duplicableGUID = this.f81483a.getGuid().j();
        compData.type = this.f81483a.getSerializedType();
        this.componentData = compData;
    }

    public String k() {
        return X7.a.m().toJson(this);
    }

    public AdvComponentReference(Component component) {
        this.f81483a = component;
    }
}

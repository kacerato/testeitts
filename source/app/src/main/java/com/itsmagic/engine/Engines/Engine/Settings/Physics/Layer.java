package com.itsmagic.engine.Engines.Engine.Settings.Physics;

import Ac.b;
import Ic.C2634m;
import JAVARuntime.PhysicsLayer;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class Layer extends C2634m {

    public int f79542b;

    public int f79543c;

    public PhysicsLayer f79544d;

    @Expose
    public boolean isDefault;

    @Expose
    public b name;

    @Expose
    public final b guid = new b(Tc.b.L());

    @Expose
    private final InspectorEditor inspectorEditor = new InspectorEditor();

    @Expose
    public final List<b> ignoreLayers = new SteppedArrayList();

    @Deprecated
    public Layer() {
    }

    public void e(b layer) {
        if (o(layer)) {
            return;
        }
        this.ignoreLayers.add(layer);
    }

    public void f(Layer layer) {
        if (p(layer)) {
            return;
        }
        this.ignoreLayers.add(layer.guid);
    }

    public void h() {
        for (int i10 = 0; i10 < this.ignoreLayers.size(); i10++) {
            System.out.println(this.ignoreLayers.get(i10).toString());
        }
    }

    public b i(int idx) {
        return this.ignoreLayers.get(idx);
    }

    public InspectorEditor j() {
        return this.inspectorEditor;
    }

    public b k() {
        return this.name;
    }

    public int l() {
        return this.ignoreLayers.size();
    }

    public int m(b layer) {
        for (int i10 = 0; i10 < this.ignoreLayers.size(); i10++) {
            if (this.ignoreLayers.get(i10).Y(layer)) {
                return i10;
            }
        }
        return -1;
    }

    public int n(Layer layer) {
        return m(layer.guid);
    }

    public boolean o(b layer) {
        for (int i10 = 0; i10 < this.ignoreLayers.size(); i10++) {
            if (this.ignoreLayers.get(i10).Y(layer)) {
                return true;
            }
        }
        return false;
    }

    public boolean p(Layer layer) {
        return o(layer.guid);
    }

    public void q(b layer) {
        int m10 = m(layer);
        if (m10 >= 0) {
            this.ignoreLayers.remove(m10);
        }
    }

    public void r(Layer layer) {
        int n10 = n(layer);
        if (n10 >= 0) {
            this.ignoreLayers.remove(n10);
        }
    }

    public void s(b name) {
        this.name = name;
    }

    public PhysicsLayer u() {
        PhysicsLayer physicsLayer = this.f79544d;
        if (physicsLayer != null) {
            return physicsLayer;
        }
        PhysicsLayer physicsLayer2 = new PhysicsLayer(this);
        this.f79544d = physicsLayer2;
        return physicsLayer2;
    }

    public Layer(b name) {
        this.name = name;
    }

    public Layer(b name, boolean isDefault) {
        this.name = name;
        this.isDefault = isDefault;
    }
}

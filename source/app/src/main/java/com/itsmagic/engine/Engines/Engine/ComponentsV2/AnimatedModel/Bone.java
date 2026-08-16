package com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class Bone {

    @Expose
    private String f72956id;

    @Expose
    public int index;

    @Expose
    private Vector3 position = new Vector3();

    @Expose
    private Quaternion rotation = new Quaternion();

    @Expose
    private Vector3 scale = new Vector3(1.0f);

    @Expose
    private final List<Bone> childList = new SteppedArrayList();

    public Bone a() {
        Bone bone = new Bone();
        bone.f72956id = this.f72956id;
        bone.index = this.index;
        bone.position = Vector3.clone(this.position);
        bone.rotation = Quaternion.k(this.rotation);
        bone.scale = Vector3.clone(this.scale);
        for (int i10 = 0; i10 < this.childList.size(); i10++) {
            bone.childList.add(this.childList.get(i10).a());
        }
        return bone;
    }

    public List<Bone> b() {
        return this.childList;
    }

    public String c() {
        return this.f72956id;
    }

    public int d() {
        return this.index;
    }

    public Vector3 e() {
        return this.position;
    }

    public Quaternion f() {
        return this.rotation;
    }

    public Vector3 g() {
        return this.scale;
    }

    public void h(String id2) {
        this.f72956id = id2;
    }

    public void i(int index) {
        this.index = index;
    }

    public void j(Vector3 position) {
        this.position = position;
    }

    public void k(Quaternion rotation) {
        this.rotation = rotation;
    }

    public void l(Vector3 scale) {
        this.scale = scale;
    }
}

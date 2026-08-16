package com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.Primitives;

import androidx.annotation.NonNull;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import eb.f;
import java.io.Serializable;

public class Triangle implements Serializable {

    @Expose
    @f
    public Vector3 normal;

    @Expose
    @f
    public Vector3 f73816v0;

    @Expose
    @f
    public Vector3 f73817v1;

    @Expose
    @f
    public Vector3 f73818v2;

    public Triangle() {
        this.f73816v0 = new Vector3();
        this.f73817v1 = new Vector3();
        this.f73818v2 = new Vector3();
        this.normal = new Vector3();
    }

    public Triangle clone() {
        return new Triangle(this.f73816v0.m1249clone(), this.f73817v1.m1249clone(), this.f73818v2.m1249clone(), this.normal.m1249clone());
    }

    @NonNull
    public String toString() {
        return "tri " + this.f73816v0.toString(2) + " | " + this.f73817v1.toString(2) + " | " + this.f73818v2.toString(2) + " | " + this.normal.toString(2);
    }

    public Triangle(Vector3 v02, Vector3 v12, Vector3 v22, Vector3 normal) {
        this.f73816v0 = v02;
        this.f73817v1 = v12;
        this.f73818v2 = v22;
        this.normal = normal;
    }
}

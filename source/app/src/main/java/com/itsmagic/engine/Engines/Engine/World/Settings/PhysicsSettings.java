package com.itsmagic.engine.Engines.Engine.World.Settings;

import c8.b;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.io.Serializable;

public class PhysicsSettings implements Serializable {

    public JAVARuntime.PhysicsSettings f80010b;

    @Expose
    public Vector3 gravity = new Vector3(0.0f, -9.81f, 0.0f);

    @Expose
    public int maxNumIterations = 10;

    public enum a {
        SlowDown,
        ForceReSimulation
    }

    public Vector3 a() {
        return b.j() ? b() : new Vector3();
    }

    public Vector3 b() {
        if (this.gravity == null) {
            this.gravity = new Vector3(0.0f, -9.81f, 0.0f);
        }
        return this.gravity;
    }

    public int c() {
        return this.maxNumIterations;
    }

    public void d(BuildDictionary dictionary) {
    }

    public void e(Vector3 gravity) {
        if (gravity == null) {
            throw new NullPointerException("Gravity can't be null");
        }
        this.gravity = gravity;
    }

    public void f(int maxNumIterations) {
        this.maxNumIterations = maxNumIterations;
    }

    public JAVARuntime.PhysicsSettings g() {
        JAVARuntime.PhysicsSettings physicsSettings = this.f80010b;
        if (physicsSettings != null) {
            return physicsSettings;
        }
        JAVARuntime.PhysicsSettings physicsSettings2 = new JAVARuntime.PhysicsSettings(this);
        this.f80010b = physicsSettings2;
        return physicsSettings2;
    }
}

package com.itsmagic.engine.Engines.Engine.Settings;

import Ic.C2629h;
import Ic.C2632k;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.PhysicsSettings;
import com.itsmagic.engine.Engines.Engine.World.World;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicBoolean;

public class GameSettings implements Serializable {

    @Expose
    public int buildID;

    public FloatingPanelArea f79519c;

    @Expose
    public boolean isFull;

    @Expose
    public PhysicsSettings physicsSettings = new PhysicsSettings();

    @Expose
    public GraphicsSettings graphicsSettings = new GraphicsSettings();

    @Expose
    public DecalSettings decalSettings = new DecalSettings();

    @Expose
    public APKBuildSettings apkBuildSettings = new APKBuildSettings();

    @Expose
    public NoCodeSettings noCodeSettings = new NoCodeSettings();

    @Expose
    public JavaSettings javaSettings = new JavaSettings();

    @Expose
    private VCSSettings vcsSettings = new VCSSettings();

    public final AtomicBoolean f79518b = new AtomicBoolean();

    public AtomicBoolean f79520d = new AtomicBoolean();

    public APKBuildSettings a() {
        if (this.apkBuildSettings == null) {
            this.apkBuildSettings = new APKBuildSettings();
        }
        return this.apkBuildSettings;
    }

    public DecalSettings b() {
        if (this.decalSettings == null) {
            this.decalSettings = new DecalSettings();
        }
        return this.decalSettings;
    }

    public C2632k c(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.addAll(f().c(dependencyRequest).f9114a);
        c2632k.f9114a.addAll(b().g(dependencyRequest).f9114a);
        return c2632k;
    }

    public GraphicsSettings d() {
        if (this.graphicsSettings == null) {
            this.graphicsSettings = new GraphicsSettings();
        }
        return this.graphicsSettings;
    }

    public JavaSettings e() {
        if (this.javaSettings == null) {
            this.javaSettings = new JavaSettings();
        }
        return this.javaSettings;
    }

    public NoCodeSettings f() {
        if (this.noCodeSettings == null) {
            this.noCodeSettings = new NoCodeSettings();
        }
        return this.noCodeSettings;
    }

    public PhysicsSettings g() {
        if (this.physicsSettings == null) {
            this.physicsSettings = new PhysicsSettings();
        }
        return this.physicsSettings;
    }

    public VCSSettings h() {
        if (this.vcsSettings == null) {
            this.vcsSettings = new VCSSettings();
        }
        return this.vcsSettings;
    }

    public void i() {
        g().k();
        b().k();
    }

    public void j(BuildDictionary dictionary) {
        f().e(dictionary);
        b().l(dictionary);
    }

    public void k() {
        this.f79518b.set(true);
    }

    public void l(World world) {
        if (this.f79518b.get()) {
            try {
                X7.a.a("_PROJECT/settings.config", X7.a.m().toJson(this));
                this.f79518b.set(false);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}

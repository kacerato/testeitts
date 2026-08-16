package com.itsmagic.engine.Engines.Engine.ImGUI.Vectors;

import com.google.gson.annotations.Expose;

public class Vec2I {

    @Expose
    private int f78350x;

    @Expose
    private int f78351y;

    public Vec2I() {
        this.f78350x = 0;
        this.f78351y = 0;
    }

    public static Vec2I e(Vec2I vector3) {
        if (vector3 != null) {
            return vector3.clone();
        }
        return null;
    }

    public Vec2I a(int x10, int y10) {
        return new Vec2I(this.f78350x + x10, this.f78351y + y10);
    }

    public void b(int x10, int y10) {
        this.f78350x += x10;
        this.f78351y += y10;
    }

    public void c(Vec2I localPosition) {
        this.f78350x += localPosition.f78350x;
        this.f78351y += localPosition.f78351y;
    }

    public Vec2I clone() {
        return new Vec2I(this.f78350x, this.f78351y);
    }

    public int f() {
        return this.f78350x;
    }

    public int g() {
        return this.f78351y;
    }

    public void h(int x10, int y10) {
        this.f78350x = x10;
        this.f78351y = y10;
    }

    public void i(Vec2I reset) {
        this.f78350x = reset.f78350x;
        this.f78351y = reset.f78351y;
    }

    public void j(int x10) {
        this.f78350x = x10;
    }

    public void k(int y10) {
        this.f78351y = y10;
    }

    public Vec2I(int x10, int y10) {
        this.f78350x = x10;
        this.f78351y = y10;
    }
}

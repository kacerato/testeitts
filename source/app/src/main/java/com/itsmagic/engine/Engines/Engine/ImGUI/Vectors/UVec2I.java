package com.itsmagic.engine.Engines.Engine.ImGUI.Vectors;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class UVec2I {

    @Expose
    private int f78348x;

    @Expose
    private int f78349y;

    public UVec2I() {
        this.f78348x = 0;
        this.f78349y = 0;
    }

    public static UVec2I d(UVec2I vector3) {
        if (vector3 != null) {
            return vector3.clone();
        }
        return null;
    }

    public void a(int x10, int y10) {
        this.f78348x += x10;
        this.f78349y += y10;
    }

    public void b(UVec2I localPosition) {
        this.f78348x += localPosition.f78348x;
        this.f78349y += localPosition.f78349y;
    }

    public UVec2I clone() {
        return new UVec2I(this.f78348x, this.f78349y);
    }

    public int e() {
        if (this.f78348x < 0) {
            this.f78348x = 0;
        }
        return this.f78348x;
    }

    public int f() {
        if (this.f78349y < 0) {
            this.f78349y = 0;
        }
        return this.f78349y;
    }

    public void g(int x10, int y10) {
        this.f78348x = x10;
        this.f78349y = y10;
    }

    public void h(UVec2I reset) {
        this.f78348x = reset.f78348x;
        this.f78349y = reset.f78349y;
    }

    public void i(Vector2 pos) {
        this.f78348x = (int) pos.f79838x;
        this.f78349y = (int) pos.f79839y;
    }

    public void j(int x10) {
        if (x10 < 0) {
            x10 = 0;
        }
        this.f78348x = x10;
    }

    public void k(int y10) {
        if (y10 < 0) {
            y10 = 0;
        }
        this.f78349y = y10;
    }

    public Vector2 l() {
        return new Vector2(this.f78348x, this.f78349y);
    }

    public UVec2I(int x10, int y10) {
        this.f78348x = 0;
        this.f78349y = 0;
        x10 = x10 < 0 ? 0 : x10;
        y10 = y10 < 0 ? 0 : y10;
        this.f78348x = x10;
        this.f78349y = y10;
    }
}

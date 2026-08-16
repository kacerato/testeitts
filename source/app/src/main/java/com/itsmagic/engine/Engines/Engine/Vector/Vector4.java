package com.itsmagic.engine.Engines.Engine.Vector;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;

public class Vector4 extends K8.f {

    public JAVARuntime.Vector4 f79843b;

    @Expose
    public float f79844w;

    @Expose
    public float f79845x;

    @Expose
    public float f79846y;

    @Expose
    public float f79847z;

    public Vector4() {
        this.f79845x = 0.0f;
        this.f79846y = 0.0f;
        this.f79847z = 0.0f;
        this.f79844w = 0.0f;
    }

    public void d(ColorINT color) {
        this.f79845x += color.w();
        this.f79846y += color.u();
        this.f79847z += color.s();
        this.f79844w += color.r();
    }

    public Vector4 clone() {
        return new Vector4(this.f79845x, this.f79846y, this.f79847z, this.f79844w);
    }

    public float f() {
        return this.f79844w;
    }

    public float getX() {
        return this.f79845x;
    }

    public float getY() {
        return this.f79846y;
    }

    public float getZ() {
        return this.f79847z;
    }

    public void h(ColorINT color) {
        this.f79845x *= color.w();
        this.f79846y *= color.u();
        this.f79847z *= color.s();
        this.f79844w *= color.r();
    }

    public void i(float a10) {
        this.f79845x = a10;
        this.f79846y = a10;
        this.f79847z = a10;
        this.f79844w = a10;
    }

    public void j(float x10, float y10, float z10, float w10) {
        this.f79845x = x10;
        this.f79846y = y10;
        this.f79847z = z10;
        this.f79844w = w10;
    }

    public void k(ColorINT color) {
        j(color.w(), color.u(), color.s(), color.r());
    }

    public void l(Vector4 vector) {
        this.f79845x = vector.f79845x;
        this.f79846y = vector.f79846y;
        this.f79847z = vector.f79847z;
        this.f79844w = vector.f79844w;
    }

    public void m(float w10) {
        this.f79844w = w10;
    }

    public void n(float x10) {
        this.f79845x = x10;
    }

    public void o(float y10) {
        this.f79846y = y10;
    }

    public void p(float z10) {
        this.f79847z = z10;
    }

    public JAVARuntime.Vector4 q() {
        JAVARuntime.Vector4 vector4 = this.f79843b;
        if (vector4 != null) {
            return vector4;
        }
        JAVARuntime.Vector4 vector42 = new JAVARuntime.Vector4(this);
        this.f79843b = vector42;
        return vector42;
    }

    public Vector4(float a10) {
        this.f79845x = a10;
        this.f79846y = a10;
        this.f79847z = a10;
        this.f79844w = a10;
    }

    public Vector4(Vector3 vector3, float w10) {
        this.f79845x = vector3.getX();
        this.f79846y = vector3.getY();
        this.f79847z = vector3.getZ();
        this.f79844w = w10;
    }

    public Vector4(float x10, float y10, float z10, float w10) {
        this.f79845x = x10;
        this.f79846y = y10;
        this.f79847z = z10;
        this.f79844w = w10;
    }
}

package com.itsmagic.engine.Engines.Engine.Quaternion;

import javax.vecmath.Quat4f;

public class b extends Quaternion {

    public final InterfaceC1345b f79467j;

    public Quaternion f79468k;

    public class a implements InterfaceC1345b {
        public a() {
        }

        @Override
        public void a(float w10, float x10, float y10, float z10) {
        }
    }

    public interface InterfaceC1345b {
        void a(float w10, float x10, float y10, float z10);
    }

    public b(Quaternion instance) {
        if (instance != null) {
            this.f79467j = new a();
            this.f79468k = instance;
            return;
        }
        throw new NullPointerException("instance can't be null");
    }

    @Override
    public void D0(Quat4f q10) {
        Quaternion quaternion = this.f79468k;
        float f10 = q10.f92850w;
        quaternion.f79462w = f10;
        float f11 = q10.f92851x;
        quaternion.f79463x = f11;
        float f12 = q10.f92852y;
        quaternion.f79464y = f12;
        float f13 = q10.f92853z;
        quaternion.f79465z = f13;
        this.f79467j.a(f10, f11, f12, f13);
        Y0(q10.f92850w, q10.f92851x, q10.f92852y, q10.f92853z);
    }

    @Override
    public float G0(float w10) {
        this.f79468k.G0(w10);
        float I10 = I();
        float x10 = getX();
        float y10 = getY();
        float z10 = getZ();
        this.f79467j.a(I10, x10, y10, z10);
        Y0(I10, x10, y10, z10);
        return w10;
    }

    @Override
    public float I() {
        return this.f79468k.I();
    }

    public void Y0(float w10, float x10, float y10, float z10) {
    }

    public void Z0(Quaternion instance) {
        this.f79468k = instance;
    }

    @Override
    public float getX() {
        return this.f79468k.getX();
    }

    @Override
    public float getY() {
        return this.f79468k.getY();
    }

    @Override
    public float getZ() {
        return this.f79468k.getZ();
    }

    @Override
    public void set(Float[] array) {
        float floatValue = array[3].floatValue();
        float floatValue2 = array[0].floatValue();
        float floatValue3 = array[1].floatValue();
        float floatValue4 = array[2].floatValue();
        Quaternion quaternion = this.f79468k;
        quaternion.f79462w = floatValue;
        quaternion.f79463x = floatValue2;
        quaternion.f79464y = floatValue3;
        quaternion.f79465z = floatValue4;
        this.f79467j.a(floatValue, floatValue2, floatValue3, floatValue4);
        Y0(floatValue, floatValue2, floatValue3, floatValue4);
    }

    @Override
    public float setX(float x10) {
        this.f79468k.setX(x10);
        float I10 = I();
        float x11 = getX();
        float y10 = getY();
        float z10 = getZ();
        this.f79467j.a(I10, x11, y10, z10);
        Y0(I10, x11, y10, z10);
        return x10;
    }

    @Override
    public float setY(float y10) {
        this.f79468k.setY(y10);
        float I10 = I();
        float x10 = getX();
        float y11 = getY();
        float z10 = getZ();
        this.f79467j.a(I10, x10, y11, z10);
        Y0(I10, x10, y11, z10);
        return y10;
    }

    @Override
    public float setZ(float z10) {
        this.f79468k.setZ(z10);
        float I10 = I();
        float x10 = getX();
        float y10 = getY();
        float z11 = getZ();
        this.f79467j.a(I10, x10, y10, z11);
        Y0(I10, x10, y10, z11);
        return z10;
    }

    @Override
    public void t0(float qw, float qx, float qy, float qz) {
        Quaternion quaternion = this.f79468k;
        quaternion.f79462w = qw;
        quaternion.f79463x = qx;
        quaternion.f79464y = qy;
        quaternion.f79465z = qz;
        this.f79467j.a(qw, qx, qy, qz);
        Y0(qw, qx, qy, qz);
    }

    @Override
    public void u0(Quaternion q10) {
        float I10 = q10.I();
        float x10 = q10.getX();
        float y10 = q10.getY();
        float z10 = q10.getZ();
        Quaternion quaternion = this.f79468k;
        quaternion.f79462w = I10;
        quaternion.f79463x = x10;
        quaternion.f79464y = y10;
        quaternion.f79465z = z10;
        this.f79467j.a(I10, x10, y10, z10);
        Y0(I10, x10, y10, z10);
    }

    @Override
    public void w0(Quat4f q10) {
        Quaternion quaternion = this.f79468k;
        float f10 = q10.f92850w;
        quaternion.f79462w = f10;
        float f11 = q10.f92851x;
        quaternion.f79463x = f11;
        float f12 = q10.f92852y;
        quaternion.f79464y = f12;
        float f13 = q10.f92853z;
        quaternion.f79465z = f13;
        this.f79467j.a(f10, f11, f12, f13);
        Y0(q10.f92850w, q10.f92851x, q10.f92852y, q10.f92853z);
    }

    public b(Quaternion instance, InterfaceC1345b listener) {
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        if (instance != null) {
            this.f79467j = listener;
            this.f79468k = instance;
            return;
        }
        throw new NullPointerException("instance can't be null");
    }

    @Override
    public void set(float[] array) {
        float f10 = array[3];
        float f11 = array[0];
        float f12 = array[1];
        float f13 = array[2];
        Quaternion quaternion = this.f79468k;
        quaternion.f79462w = f10;
        quaternion.f79463x = f11;
        quaternion.f79464y = f12;
        quaternion.f79465z = f13;
        this.f79467j.a(f10, f11, f12, f13);
        Y0(f10, f11, f12, f13);
    }
}

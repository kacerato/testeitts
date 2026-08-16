package com.itsmagic.engine.Engines.Engine.Vector;

public class i extends Vector3 {

    public final b f79907b;

    public Vector3 f79908c;

    public class a implements b {
        public a() {
        }

        @Override
        public void a(float x10, float y10, float z10) {
        }
    }

    public interface b {
        void a(float x10, float y10, float z10);
    }

    public i(Vector3 instance) {
        if (instance != null) {
            this.f79907b = new a();
            this.f79908c = instance;
            return;
        }
        throw new NullPointerException("instance can't be null");
    }

    public void d(float x10, float y10, float z10) {
    }

    public void e(Vector3 instance) {
        this.f79908c = instance;
    }

    @Override
    public float getX() {
        return this.f79908c.getX();
    }

    @Override
    public float getY() {
        return this.f79908c.getY();
    }

    @Override
    public float getZ() {
        return this.f79908c.getZ();
    }

    @Override
    public float setX(float x10) {
        this.f79908c.setX(x10);
        float x11 = getX();
        float y10 = getY();
        float z10 = getZ();
        this.f79907b.a(x11, y10, z10);
        d(x11, y10, z10);
        return x10;
    }

    @Override
    public float setY(float y10) {
        this.f79908c.setY(y10);
        float x10 = getX();
        float y11 = getY();
        float z10 = getZ();
        this.f79907b.a(x10, y11, z10);
        d(x10, y11, z10);
        return y10;
    }

    @Override
    public float setZ(float z10) {
        this.f79908c.setZ(z10);
        float x10 = getX();
        float y10 = getY();
        float z11 = getZ();
        this.f79907b.a(x10, y10, z11);
        d(x10, y10, z11);
        return z10;
    }

    public i(Vector3 instance, b listener) {
        if (instance == null) {
            throw new NullPointerException("instance can't be null");
        }
        if (listener != null) {
            this.f79907b = listener;
            this.f79908c = instance;
            return;
        }
        throw new NullPointerException("Listener can't be null");
    }
}

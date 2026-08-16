package eb;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;

public class C13052c extends K8.f {

    public float f85417b;

    public int f85418c;

    public float f85419d;

    public d f85420e;

    public Component f85421g;

    public C13052c(float delay, d invokeListener) {
        this.f85417b = 0.0f;
        this.f85418c = 0;
        this.f85419d = 0.0f;
        if (invokeListener != null) {
            this.f85417b = delay;
            this.f85420e = invokeListener;
            return;
        }
        throw new NullPointerException("listener can't be null");
    }

    public float d() {
        return this.f85417b;
    }

    public int e() {
        return this.f85418c;
    }

    public d f() {
        return this.f85420e;
    }

    public float getTimer() {
        return this.f85419d;
    }

    public void h(float delay) {
        this.f85417b = delay;
    }

    public void i(int frames) {
        this.f85418c = frames;
    }

    public void j(d invokeListener) {
        this.f85420e = invokeListener;
    }

    public void setTimer(float timer) {
        this.f85419d = timer;
    }

    public C13052c(int frames, d invokeListener) {
        this.f85417b = 0.0f;
        this.f85418c = 0;
        this.f85419d = 0.0f;
        if (invokeListener != null) {
            this.f85418c = frames;
            this.f85420e = invokeListener;
            return;
        }
        throw new NullPointerException("listener can't be null");
    }
}

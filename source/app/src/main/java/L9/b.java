package L9;

import K8.d;

public class b {

    public float f11661a;

    public float f11662b;

    public float f11663c;

    public a f11664d;

    public boolean f11665e = true;

    public b(int framesPerSecond, a fixedFrameListener) {
        this.f11661a = 1.0f / framesPerSecond;
        this.f11664d = fixedFrameListener;
    }

    public void a() {
        d(d.e());
    }

    public a b() {
        return this.f11664d;
    }

    public float c() {
        return 1.0f / this.f11661a;
    }

    public void d(float deltaTime) {
        this.f11663c += deltaTime;
        while (true) {
            float f10 = this.f11663c;
            float f11 = this.f11661a;
            if (f10 < f11) {
                return;
            }
            this.f11663c = f10 - f11;
            if (this.f11665e) {
                this.f11664d.repeat(f11 * d.c());
            } else {
                this.f11664d.repeat(f11);
            }
        }
    }

    public b e(boolean allowTimeScale) {
        this.f11665e = allowTimeScale;
        return this;
    }

    public b f(boolean desyncHighFrameRate) {
        return this;
    }

    public b g(boolean desyncLowFrameRate) {
        return this;
    }

    public b h(a fixedFrameListener) {
        this.f11664d = fixedFrameListener;
        return this;
    }

    public b i(int framesPerSecond) {
        this.f11661a = 1.0f / framesPerSecond;
        return this;
    }
}

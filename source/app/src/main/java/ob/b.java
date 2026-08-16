package ob;

import K8.d;
import K8.f;

public class b extends f {

    public a f98646b;

    public int f98647c;

    public float f98648d;

    public interface a {
        boolean run();
    }

    public b() {
    }

    public int d() {
        return this.f98647c;
    }

    public a e() {
        return this.f98646b;
    }

    public boolean f() {
        a aVar = this.f98646b;
        if (aVar == null) {
            return false;
        }
        int i10 = this.f98647c;
        if (i10 > 0) {
            this.f98647c = i10 - 1;
            return true;
        }
        float f10 = this.f98648d;
        if (f10 <= 0.0f) {
            return aVar.run();
        }
        this.f98648d = f10 - d.e();
        return true;
    }

    public void h(int delayFrames) {
        this.f98647c = delayFrames;
    }

    public void i(a runnable) {
        this.f98646b = runnable;
    }

    public b(a runnable) {
        runnable.getClass();
        this.f98646b = runnable;
    }

    public b(a runnable, int delayFrames) {
        runnable.getClass();
        this.f98646b = runnable;
        this.f98647c = delayFrames;
    }

    public b(a runnable, float delaySeconds) {
        runnable.getClass();
        this.f98646b = runnable;
        this.f98648d = delaySeconds;
    }
}

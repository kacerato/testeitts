package p2;

import androidx.annotation.Nullable;
import v1.C15791l;

public abstract class j implements Runnable {

    @Nullable
    public final C15791l f103423b;

    public j() {
        this.f103423b = null;
    }

    public abstract void a();

    @Nullable
    public final C15791l b() {
        return this.f103423b;
    }

    public final void c(Exception exc) {
        C15791l c15791l = this.f103423b;
        if (c15791l != null) {
            c15791l.d(exc);
        }
    }

    @Override
    public final void run() {
        try {
            a();
        } catch (Exception e10) {
            c(e10);
        }
    }

    public j(@Nullable C15791l c15791l) {
        this.f103423b = c15791l;
    }
}

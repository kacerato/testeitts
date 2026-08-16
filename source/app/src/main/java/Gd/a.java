package Gd;

import android.view.View;
import android.view.ViewGroup;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class a {

    public boolean f7771a;

    public final Set<Ed.c> f7772b;

    public final View f7773c;

    public a(@NotNull View targetView) {
        M.q(targetView, "targetView");
        this.f7773c = targetView;
        this.f7772b = new HashSet();
    }

    public final boolean a(@NotNull Ed.c fullScreenListener) {
        M.q(fullScreenListener, "fullScreenListener");
        return this.f7772b.add(fullScreenListener);
    }

    public final void b() {
        if (this.f7771a) {
            return;
        }
        this.f7771a = true;
        ViewGroup.LayoutParams layoutParams = this.f7773c.getLayoutParams();
        layoutParams.height = -1;
        layoutParams.width = -1;
        this.f7773c.setLayoutParams(layoutParams);
        Iterator<Ed.c> it = this.f7772b.iterator();
        while (it.hasNext()) {
            it.next().h();
        }
    }

    public final void c() {
        if (this.f7771a) {
            this.f7771a = false;
            ViewGroup.LayoutParams layoutParams = this.f7773c.getLayoutParams();
            layoutParams.height = -2;
            layoutParams.width = -1;
            this.f7773c.setLayoutParams(layoutParams);
            Iterator<Ed.c> it = this.f7772b.iterator();
            while (it.hasNext()) {
                it.next().g();
            }
        }
    }

    public final boolean d() {
        return this.f7771a;
    }

    public final boolean e(@NotNull Ed.c fullScreenListener) {
        M.q(fullScreenListener, "fullScreenListener");
        return this.f7772b.remove(fullScreenListener);
    }

    public final void f() {
        if (this.f7771a) {
            c();
        } else {
            b();
        }
    }
}

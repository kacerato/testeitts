package og;

import eg.W;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;

public final class n extends k {

    @Lf.g
    @NotNull
    public final Runnable f98750d;

    public n(@NotNull Runnable runnable, long j10, @NotNull l lVar) {
        super(j10, lVar);
        this.f98750d = runnable;
    }

    @Override
    public void run() {
        try {
            this.f98750d.run();
        } finally {
            this.f98748c.k();
        }
    }

    @NotNull
    public String toString() {
        return "Task[" + W.a(this.f98750d) + '@' + W.b(this.f98750d) + ", " + this.f98747b + ", " + ((Object) this.f98748c) + JavaElement.JEM_TYPE_PARAMETER;
    }
}

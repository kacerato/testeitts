package eg;

import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13134p0 implements D0 {

    public final boolean f85749b;

    public C13134p0(boolean z10) {
        this.f85749b = z10;
    }

    @Override
    @Nullable
    public W0 d() {
        return null;
    }

    @Override
    public boolean isActive() {
        return this.f85749b;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Empty{");
        sb2.append(isActive() ? "Active" : "New");
        sb2.append(JavaElement.JEM_ANNOTATION);
        return sb2.toString();
    }
}

package java.lang.module;

import java.util.Objects;
import java.util.Set;

public final class ResolvedModule {

    private final Configuration f92812cf;
    private final ModuleReference mref;

    public ResolvedModule(Configuration cf2, ModuleReference mref) {
        this.f92812cf = (Configuration) Objects.requireNonNull(cf2);
        this.mref = (ModuleReference) Objects.requireNonNull(mref);
    }

    public Configuration configuration() {
        return this.f92812cf;
    }

    public ModuleReference reference() {
        return this.mref;
    }

    public ModuleDescriptor descriptor() {
        return this.mref.descriptor();
    }

    public String name() {
        return this.mref.descriptor().name();
    }

    public Set<ResolvedModule> reads() {
        return this.f92812cf.reads(this);
    }

    public int hashCode() {
        return this.f92812cf.hashCode() ^ this.mref.hashCode();
    }

    public boolean equals(Object ob2) {
        if (ob2 instanceof ResolvedModule) {
            ResolvedModule that = (ResolvedModule) ob2;
            if (Objects.equals(this.f92812cf, that.f92812cf) && Objects.equals(this.mref, that.mref)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return System.identityHashCode(this.f92812cf) + "/" + name();
    }
}

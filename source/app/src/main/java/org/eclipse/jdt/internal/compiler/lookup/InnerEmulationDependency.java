package org.eclipse.jdt.internal.compiler.lookup;

public class InnerEmulationDependency {
    public BlockScope scope;
    public boolean wasEnclosingInstanceSupplied;

    public InnerEmulationDependency(BlockScope blockScope, boolean z10) {
        this.scope = blockScope;
        this.wasEnclosingInstanceSupplied = z10;
    }
}
